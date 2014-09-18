Abusive-internet
================

An access point that abuses the user, uses a raspberry pi and geekcon magic

Developing
----------

Requirements
~~~~~~~~~~~~

#. `qemu-arm-static <http://packages.debian.org/sid/qemu-user-static>`_
#. Downloaded `Raspbian <http://www.raspbian.org/>`_ image.
#. root privileges for chroot
#. Bash
#. realpath

Build abusive-internet From within abusive-internet / Raspbian / Debian / Ubuntu
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

abusive-internet can be built from Debian, Ubuntu, Raspbian, or even abusive-internet.
Build requires about 3.5 GB of free space available.
You can build it by issuing the following commands::

    sudo apt-get install realpath qemu-user-static
    git clone https://github.com/guysoft/abusive-internet.git
    cd abusive-internet/src/image
    curl -J -O -L  http://downloads.raspberrypi.org/raspbian_latest
    cd ..
    sudo bash -x ./build

Usage
~~~~~

#. If needed, override existing config settings by creating a new file ``src/config.local``. You can override all settings found in ``src/config``. If you need to override the path to the Raspbian image to use for building abusive-internet, override the path to be used in ``ZIP_IMG``. By default the most recent file matching ``*-raspbian.zip`` found in ``src/image`` will be used.

#. Run ``src/build`` as root.
#. The final image will be created at the ``src/workspace``

Code contribution would be appreciated!

