#!/bin/bash

# Source: https://gist.github.com/damoclark/ab3d700aafa140efb97e510650d9b1be

echo "Running automated tasks to mass produce d2s Cubesat Payload Manager SD card"
for (( i=5; i>0; i--)); do
  sleep 1 &
  printf "Starting in $i ...\r"
  wait
done

# Don't change the following lines unless you know what you are doing
# They execute the config options starting with 'do_' below
grep -E -v -e '^\s*#' -e '^\s*$' <<END | \
sed -e 's/$//' -e 's/^\s*/\/usr\/bin\/raspi-config nonint /' | bash -x -

############# INSTRUCTIONS ###########
#
# Change following options starting with 'do_' to suit your configuration
# Anything after a has '#' is ignored and used for comments
# If on Windows, edit using Notepad++ or another editor that can save the file
# using UNIX-style line endings
# macOS and GNU/Linux use UNIX-style line endings - use whatever editor you like
# Then drop the file into the boot partition of your SD card
# After booting the Raspberry Pi, login as user 'pi' and run following command:
# sudo /boot/setup.sh
#
############# EDIT raspi-config SETTINGS BELOW ###########

# Hardware Configuration
do_boot_behaviour       B4      # Boot to Graphical & auto login as pi user
do_blanking             1       # Disable blanking of screen due to inactivity
do_camera               0       # Enable camera
do_serial               0       # Enable serial console
do_serial               2       # Disable serial console, but enable serial hardware (/dev/serial0)
do_vnc                  0       # Enable VNC

# Don't add any raspi-config configuration options after 'END' line below & don't remove 'END' line
END

# Reboot after all changes above complete
echo "Restarting to apply changes"
for (( i=10; i>0; i--)); do
  sleep 1 &
  printf "Rebooting in $i ...\r"
  wait
done
/sbin/shutdown -r now
