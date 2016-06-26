# arudino-workshop
A docker container which encapsulates the tooling needed to cross-compile an arduino binary and upload it to a board. 

## USB Shenanigans

### For OS X with docker-machine provided via VirtualBox

We usually flash Arduino devices via a USB flash programmer (either an external device or often an FTDI chipset embedded in the Arduino itself). Unfortunately it's a bit of a pain to expose the USB bus to a docker container which is running inside of a VirtualBox VM. Don't fear though, after following these step-by-step instructions you'll not have to think about USB again.

* create a docker machine using something like `docker-machine create default --provider virtualbox`, if you haven't already
* shutdown your docker machine using something like `docker-machine stop dev`
* attach your arduino to your mac's via USB as you would if you were going to flash it.
* configure the docker-machine VM to have access to USB flash programmer 
  * Fire up the VirtualBox UI open up the settings for your docker machine VM
    * Select Ports, select USB
      * Check the Enable USB Controller box
      * Check the USB 3.0 radio box. At this point you may get a warning about needing to install the Oracle VM Extensions in order to get USB 3.0 support. If so, follow those instructions. Flashing doesn't seem to work with a simulated USB 1.1 controller.
        * Add a USB Device Filter your USB Programmer. It will likely be listed as "FTDI FT232R" or similar.
        * remove the dongle
        * start up the newly configured docker machine VM with something like `docker-machine start default`
        * insert the dongle

        You should now be able to flash the dongle via the docker container. 

        The only thing you need to remember going forward is that you need to **insert the USB dongle *after* starting up the docker-machine VM**. If you're having trouble flashing from a docker container try just removing and re-inserting the dongle.

        # TODO list

* [ ] add a script to check whether USB is working and accessible from the container image
