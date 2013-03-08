#/**********************************************************\ 
#
# Auto-Generated Plugin Configuration file
# for first
#
#\**********************************************************/

set(PLUGIN_NAME "first")
set(PLUGIN_PREFIX "FIRST")
set(COMPANY_NAME "Directi")

# ActiveX constants:
set(FBTYPELIB_NAME firstLib)
set(FBTYPELIB_DESC "first 1.0 Type Library")
set(IFBControl_DESC "first Control Interface")
set(FBControl_DESC "first Control Class")
set(IFBComJavascriptObject_DESC "first IComJavascriptObject Interface")
set(FBComJavascriptObject_DESC "first ComJavascriptObject Class")
set(IFBComEventSource_DESC "first IFBComEventSource Interface")
set(AXVERSION_NUM "1")

# NOTE: THESE GUIDS *MUST* BE UNIQUE TO YOUR PLUGIN/ACTIVEX CONTROL!  YES, ALL OF THEM!
set(FBTYPELIB_GUID d2e5cae6-8c1e-5efd-99fd-c24680288b9a)
set(IFBControl_GUID 7dbdbfac-c86a-5585-a30b-cddf329f20d3)
set(FBControl_GUID d287b602-8426-57c0-ab01-527829b2fd65)
set(IFBComJavascriptObject_GUID 59d19bb1-ac32-57f1-9f2e-1a4fa27cb921)
set(FBComJavascriptObject_GUID eb93dae0-9fcb-5d6f-9e2c-206d31460c93)
set(IFBComEventSource_GUID 8f1e553a-00bb-5a50-a579-059f169d538a)
if ( FB_PLATFORM_ARCH_32 )
    set(FBControl_WixUpgradeCode_GUID db6218db-bd75-5689-ae70-708ae7290d99)
else ( FB_PLATFORM_ARCH_32 )
    set(FBControl_WixUpgradeCode_GUID 27f50a0d-3bb7-5f05-9fa8-baf2903da1ee)
endif ( FB_PLATFORM_ARCH_32 )

# these are the pieces that are relevant to using it from Javascript
set(ACTIVEX_PROGID "Directi.first")
set(MOZILLA_PLUGINID "directi.com/first")

# strings
set(FBSTRING_CompanyName "Directi ")
set(FBSTRING_PluginDescription "first plugin")
set(FBSTRING_PLUGIN_VERSION "1.0.0.0")
set(FBSTRING_LegalCopyright "Copyright 2013 Directi ")
set(FBSTRING_PluginFileName "np${PLUGIN_NAME}.dll")
set(FBSTRING_ProductName "first")
set(FBSTRING_FileExtents "")
if ( FB_PLATFORM_ARCH_32 )
    set(FBSTRING_PluginName "first")  # No 32bit postfix to maintain backward compatability.
else ( FB_PLATFORM_ARCH_32 )
    set(FBSTRING_PluginName "first_${FB_PLATFORM_ARCH_NAME}")
endif ( FB_PLATFORM_ARCH_32 )
set(FBSTRING_MIMEType "application/x-first")

# Uncomment this next line if you're not planning on your plugin doing
# any drawing:

#set (FB_GUI_DISABLED 1)

# Mac plugin settings. If your plugin does not draw, set these all to 0
set(FBMAC_USE_QUICKDRAW 0)
set(FBMAC_USE_CARBON 1)
set(FBMAC_USE_COCOA 1)
set(FBMAC_USE_COREGRAPHICS 1)
set(FBMAC_USE_COREANIMATION 0)
set(FBMAC_USE_INVALIDATINGCOREANIMATION 0)

# If you want to register per-machine on Windows, uncomment this line
#set (FB_ATLREG_MACHINEWIDE 1)
