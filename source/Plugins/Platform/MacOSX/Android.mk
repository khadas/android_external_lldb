LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES := \
  DiagnosticCommonKinds.inc \
  DeclNodes.inc \
  StmtNodes.inc

lldb_PluginPlatformMacOSX_SRC_FILES := \
  PlatformDarwin.cpp \
  PlatformDarwinKernel.cpp \
  PlatformiOSSimulator.cpp \
  PlatformMacOSX.cpp \
  PlatformRemoteiOS.cpp

LOCAL_SRC_FILES := $(lldb_PluginPlatformMacOSX_SRC_FILES)

LOCAL_MODULE:= liblldbPluginPlatformMacOSX
LOCAL_MODULE_TAGS := optional

include $(LLDB_BUILD_MK)
include $(CLANG_VERSION_INC_MK)
include $(CLANG_TBLGEN_RULES_MK)
include $(BUILD_HOST_STATIC_LIBRARY)
