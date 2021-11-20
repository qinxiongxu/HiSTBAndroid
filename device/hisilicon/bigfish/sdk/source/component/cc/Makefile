#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../..

include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variable
#===============================================================================
CFLAGS += $(CFG_HI_CFLAGS)
CFLAGS += -I$(COMMON_DIR)/include
CFLAGS += -I$(CURDIR)/include
CFLAGS += -I$(CURDIR)/src/arib/include
CFLAGS += -I$(CURDIR)/src/cc608/include
CFLAGS += -I$(CURDIR)/src/cc708/include
CFLAGS += -I$(CURDIR)/src/ccdisp/include
CFLAGS += -I$(CURDIR)/src/common/include

VPATH += $(CURDIR)/src
VPATH += $(CURDIR)/src/arib/src
VPATH += $(CURDIR)/src/cc608/src
VPATH += $(CURDIR)/src/cc708/src
VPATH += $(CURDIR)/src/ccdisp/src
VPATH += $(CURDIR)/src/common/src

OBJ_DIR := $(CURDIR)/obj

SRCS := $(notdir $(shell find $(VPATH) -maxdepth 1 -name "*.c"))
OBJS := $(SRCS:%.c=$(OBJ_DIR)/%.o)
LIBS := libhi_cc

HEADER_FILES := $(CURDIR)/include/hi_unf_cc.h

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall $(LIBS)

all: $(LIBS)

clean:
	$(AT)rm -rf $(OBJS) $(LIBS).a $(LIBS).so

install: all
	$(AT)cp -af $(LIBS).a           $(STATIC_LIB_DIR)/
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cp -af $(LIBS).so          $(SHARED_LIB_DIR)/
endif
	$(AT)cp -f  $(HEADER_FILES)     $(INCLUDE_DIR)/

uninstall:
	$(AT)rm -rf $(STATIC_LIB_DIR)/$(LIBS).a
	$(AT)rm -rf $(SHARED_LIB_DIR)/$(LIBS).so
	$(AT)rm -rf $(foreach file, $(HEADER_FILES), $(INCLUDE_DIR)/$(notdir $(file)))

$(LIBS) : $(OBJS)
	$(AT)$(AR) -rc -o $@.a $^
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)$(CC) -shared -o $@.so $^
endif

$(OBJ_DIR)/%.o : %.c
	$(AT)test -d $(OBJ_DIR) || mkdir -p $(OBJ_DIR)
	$(AT)$(CC) $(CFLAGS) -c $^ -o "$(OBJ_DIR)/$(*F).o"

