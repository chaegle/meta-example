OpenEmbedded/Yocto Digi Embedded EXAMPLE Layer
===========================================

This layer is a collection of several useful Digi Embedded Yocto (DEY) modification examples.

SUPPORTED PLATFORMS
-------------------

This layer supports ALL supported Digi ConnectCore System on Module (SOM) devices, except where otherwise noted.

  * ConnectCore 6/6N/6Plus
  * ConnectCore 6UL
  * ConnectCore 8M Nano/Mini
  * ConnectCore 8X
  * ConnectCore 93
  * COnnectCore MP1 family

This layer was developed againt DEY-4.0-r3. 

INSTALLATION
------------

1. Install Digi Embedded Yocto (DEY), per the published instructions.


2. Clone meta-example layer to your local workstation.


CREATE AND BUILD A PROJECT
--------------------------

# CLOUDCONNECTOR variables
CC_DEVICE_TYPE      = "ccmp15-dvk"
CC_FIRMWARE_VERSION = "0.0.0.2"
CC_DESCRIPTION      = "Digi ConnectCore MP15 DVK"
CC_CONTACT          = "Cameron Haegle"
CC_LOCATION         = "MN"
#CC_FW_DWNLD_PATH    = "/run/media/mmcblk1p1"
#CC_VDIR_UPDATE_PATH = "/run/media/mmcblk1p1"
CC_LOG_LEVEL        = "debug"



1. Create a project for your target platform.

        #> mkdir <project-dir>
        #> cd <project-dir>
        #> . <DEY-INSTALLDIR>/mkproject.sh -p <target_platform>

2. Add the *cert-tools* layer to the project's *bblayers.conf*
  configuration file.

        #> bitbake-layers add-layer <DEY-INSTALLDIR>/sources/meta-cert-tools

3. Edit the project's local.conf, adding the below line.

        IMAGE_INSTALL_append = " cert-tools"
        
4. Build the images.

        #> bitbake dey-image-qt

5. Deploy the images.

6. The Btdiag and Qcmbr applications can be found in /usr/sbin.

LICENSE
-------
Insert appropriate license statement here...
