#include "RS_fec.h"
#include <cutils/log.h>

void RS_fec::matrix_invGF256(PBYTE* matrix, const int n) {
    int i, j, k, l, ll;
    int irow = 0, icol = 0;
    BYTE dum, big, temp;
    XWORD pivinv;
    
    int indxc[BOUND], indxr[BOUND], ipiv[BOUND];
    
    for (j = 0; j < n; ++j) {
        indxc[j] = 0;
        indxr[j] = 0;
        ipiv[j] = 0;
    }
    for (i = 0; i < n; ++i) {
        
        big = 0;
        for (j = 0; j < n; ++j)
            if (ipiv[j] != 1)
                for (k = 0; k < n; ++k) {
                    if (ipiv[k] == 0) {
                        if (matrix[j][k] >= big) {
                            big = matrix[j][k];
                            irow = j;
                            icol = k;    
                        }
                   
                    }
                    else if (ipiv[k] > 1){
                        ALOGE("TEST [%s:%d] ipiv[k] > 1#", __FUNCTION__, __LINE__);
						exit(0);
                    }
                }
        ++(ipiv[icol]);
        
        
        if (irow != icol)
            for (l = 0; l < n; ++l) SWAP(matrix[irow][l],matrix[icol][l])  
        
        indxr[i] = irow;
        indxc[i] = icol;
        if (matrix[icol][icol] == 0){
            ALOGE("TEST [%s:%d] matrix[icol][icol] == 0#", __FUNCTION__, __LINE__);
			exit(0);
        }
        pivinv = table.Q - table.m_log[matrix[icol][icol]];
        matrix[icol][icol] = 0x1;
        for (l = 0; l < n; ++l) 
			if ( matrix[icol][l] )
				matrix[icol][l] = table.m_exp[(table.m_log[matrix[icol][l]]+pivinv)%table.Q]; 
        for (ll = 0; ll < n; ++ll)
            if (ll != icol) {
                dum = matrix[ll][icol];
                matrix[ll][icol] = 0;
                for (l = 0; l < n; ++l) 
                    if (matrix[icol][l] && dum)
                        matrix[ll][l] ^= table.m_exp[(table.m_log[matrix[icol][l]]+table.m_log[dum]) % table.Q];    
            }
	}
    for (l = n-1; l >= 0; --l) {
		if (indxr[l] != indxc[l]) 
            for (k = 0; k < n; ++k)
                SWAP(matrix[k][indxr[l]], matrix[k][indxc[l]])
    }  
}; 


void RS_fec::matrix_mulGF256(PBYTE *a, PBYTE *b, PBYTE *c, int left, int mid, int right) {
    int i, j, k;
    for (i = 0; i < left; ++i)
        for (j = 0; j < right; ++j)
            for (k = 0; k < mid; ++k) {
                if (a[i][k] && b[k][j] ) {
                    c[i][j] ^= table.m_exp[(table.m_log[a[i][k]]+table.m_log[b[k][j]]) % table.Q];
                }
            }
};

int RS_fec::fec_encode(PBYTE *data, PBYTE *fec_data) {
	
	int K = this->data_pkt_num;
	int M = this->fec_pkt_num;
	int S = this->data_len;

	matrix_mulGF256(this->en_GM,data,fec_data,M,K,S);

	return 0;
};

int RS_fec::fec_decode(PBYTE *data, PBYTE *fec_data, int lost_map[]) {
	
	int K = this->data_pkt_num;
	const int M = this->fec_pkt_num;
	int N = K + M;
	int S = this->data_len;

	int recv_count = 0;
	int tmp_count = 0;

	int *lost_pkt_id = new int[M];
	for(int i = 0; i < M; ++i)
		lost_pkt_id[i] = 0;
	int lost_pkt_cnt = 0;

	PBYTE *de_subGM = new PBYTE[K];

	for (int i = 0; i < K; ++i) {
		de_subGM[i] = new BYTE[K];
		for (int j = 0; j < K; ++j)
			de_subGM[i][j] = 0;
	}

	for (int i = 0; i < K; ++i) { 
		if (lost_map[i] == 1) {
			de_subGM[recv_count][i] = 1;
			++recv_count;
		}
		else
			lost_pkt_id[lost_pkt_cnt++] = i;
	}

	for (int i = K; i < N; ++i) { 
		if (lost_map[i] == 1) {
			if (recv_count < K) {  
				for (int j = 0; j < K; ++j)
					de_subGM[recv_count][j] = RS_fec::en_GM[i-K][j];
				++recv_count;
			}
			else 
				break;
		}
	}

	matrix_invGF256(de_subGM,K);

	PBYTE *recv_data = new PBYTE[K];

	for (int i = 0; i < K; ++i) 
		recv_data[i] = new BYTE[S];

	for (int i = 0; i < N; ++i) {
		if (lost_map[i]) {
			if(i <  K) 
				memcpy(recv_data[tmp_count],data[i],S);
			else
				memcpy(recv_data[tmp_count],fec_data[i-K],S);
			++tmp_count;
		}
		if (tmp_count == K)
			break;
	}

	for(int i = 0; i < lost_pkt_cnt; ++i) {
		int cur_lost_pkt = lost_pkt_id[i];
		memset(data[cur_lost_pkt],0,S);
		for(int r = 0; r < S; ++r) {
			for(int l = 0; l < K; ++l) {
				if (de_subGM[cur_lost_pkt][l] && recv_data[l][r])
					data[cur_lost_pkt][r] ^= table.m_exp[(table.m_log[de_subGM[cur_lost_pkt][l]]+table.m_log[recv_data[l][r]]) % (table.Q)];
			}
		}
	}

	for (int i = 0; i < K; ++i) {
		delete de_subGM[i];
		delete recv_data[i];
	}
		
	delete[] de_subGM;
	delete[] recv_data;
	delete[] lost_pkt_id;

	return 0;
};

void RS_fec::fec_init(int data_pkt_num, int fec_pkt_num, int data_len) {
	this->data_pkt_num = data_pkt_num;
	this->fec_pkt_num = fec_pkt_num;
	this->data_len = data_len;

	const int K = this->data_pkt_num;
	const int M = this->fec_pkt_num;

	this->en_left = new PBYTE[M];
	this->en_right = new PBYTE[K];
	this->en_GM = new PBYTE[M];
	
	for (int i = 0, _i = K; i < M; ++i, ++_i) {
		en_left[i] = new BYTE[K];
		en_GM[i] = new BYTE[K];
		
		for (int j = 0; j < K; ++j) {
			en_left[i][j] = table.m_exp[(_i*j)%table.Q]; 
			en_GM[i][j] = 0;
		}
	}

	for (int i = 0; i < K; ++i) {
		en_right[i] = new BYTE[K];
		for (int j = 0; j < K; ++j)
			en_right[i][j] = table.m_exp[(i*j)%table.Q];
	}	

	matrix_invGF256(this->en_right, K);
	
	matrix_mulGF256(this->en_left,this->en_right,this->en_GM,M,K,K);
};

void RS_fec::fec_cleanup() {
	int K = this->data_pkt_num;
	int M = this->fec_pkt_num;

	for (int i = 0; i < K; ++i) 
		 delete en_right[i];

	 for (int i = 0; i < M; ++i) {
		 delete en_left[i];
		 delete en_GM[i];
	 }

	 delete [] en_left;
	 delete [] en_right;
	 delete [] en_GM;
};
