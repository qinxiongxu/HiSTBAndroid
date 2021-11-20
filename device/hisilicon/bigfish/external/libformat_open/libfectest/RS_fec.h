#include <stdio.h>
#include <iostream>

#define SWAP(a,b) {temp=(a);(a)=(b);(b)=temp;}

typedef unsigned char BYTE;              //GF256 symbol
typedef unsigned int XWORD;               //index of alpha
typedef BYTE* PBYTE;                     //pointer to BYTE
typedef PBYTE* PPBYTE;

const BYTE MODULUS = 0x1d;				 //00011101: x^8+x^4+x^3+x^2+1=0
const XWORD BOUND = 0x100;                //maximum matrix size

using namespace std;

struct udpdata {
    int beginseq;
    int endseq;
    int pktnum;
    int index;
    int length;
    BYTE data[1600];
};

class G_table256 {
    public:
        const static XWORD Q = 0xFF;
        const static BYTE ALPHA = 0x2;
        BYTE m_exp[Q + 1];
        XWORD m_log[Q + 1];

		G_table256() {
			BYTE x = 0x1;
			XWORD y = 0x1; 
		            
			m_exp[Q] = 0;
		            
			for (int i = 0; i < (int)Q; ++i) {
				m_exp[i] = x;
				y <<= 1;
				if (y & 0x100)
					y ^= MODULUS;
				y %= 0x100;
				x = y;
			}
		    
			for (int i = 0; i <= (int)Q; ++i) {
				m_log[m_exp[i]] = i;
			}
		};       
};

class RS_fec {
	public:
		PBYTE *en_GM;

		RS_fec() {};

		void matrix_invGF256(PBYTE* matrix, const int n);
		void matrix_mulGF256(PBYTE *a, PBYTE *b, PBYTE *c, int left, int mid, int right);
		void fec_init(int data_pkt_num, int fec_pkt_num, int data_len);
		void fec_cleanup();
		int fec_encode(PBYTE *data, PBYTE *fec_data);
		int fec_decode(PBYTE *data, PBYTE *fec_data, int lost_map[]);
	
	private:
		int data_pkt_num;
		int fec_pkt_num;
		int data_len;
		int *lost_map;
		G_table256 table;
		PBYTE *en_left;
		PBYTE *en_right;
};

