###############################################################################
# FILE: Makefile
#
# Top-level Makefile for ASR
###############################################################################

# remember root of ASR source tree
export ASR_ROOT_DIR := $(call my-dir)
export ASR_MAKE_DIR := $(ASR_ROOT_DIR)/make/asr

# perform sub-makes
ifneq ($(TARGET_SIMULATOR),true) # not 64 bit clean
include $(call all-subdir-makefiles)
endif
