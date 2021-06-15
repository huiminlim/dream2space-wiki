# User Guide - Payload Manager
<!-- markdownlint-disable MD033 -->

This User Guide presents the steps to operate the Payload Manager program on the Raspberry Pi single-board computer.

```bash
python3 /home/pi/Desktop/payload_manager-lite/payload_manager.py
```

## Items required

Here is a list of items required for the mass production of SD Card.

| Items                               | Remarks                                                                                    |
| ----------------------------------- | ------------------------------------------------------------------------------------------ |
| Raspberry Pi 3B+                    |                                                                                            |
| SanDisk 32 GB Ultra Micro SD Card   |                                                                                            |
| SD Card Reader                      | Optional, depends on PC type so that <br>Micro SD Card may be inserted into PC             |
| Raspberry Pi Micro-USB Power Supply |                                                                                            |
| Monitor                             |                                                                                            |
| HDMI Cable                          | HDMI on one side, and the other side <br>depends on the input required by the Monitor used |
| USB Keyboard                        | Can be wired or wireless                                                                   |
| USB Mouse                           | Can be wired or wireless                                                                   |

Setup and operations best done on a PC that runs on Windows 10.

## Step 1: Flashing the Raspbian OS to SD card

1. Download and install the Raspberry Pi Imager application from the website [here](https://www.raspberrypi.org/software/).

    Website: <https://www.raspberrypi.org/software/>

    ![Download and Install Raspberry Pi Imager](images/dowload_rp_imager.png)

2. Launch the Raspberry Pi Imager application.

    The Imager application should look like this:

    ![Raspberry Pi Imager](images/raspberry_pi_imager.png)

3. Click on the `Choose OS` button under the `Operating System` section.

    The `Choose OS` button is boxed in **<span style="color: lime">green</span>** in the image below.

    ![Raspberry Pi Imager Select OS](images/raspberry_pi_imager_select_os.png)

4. Select the first option, `Raspberry Pi OS (32-bit)`.

    The first option `Raspberry Pi OS (32-bit)` is boxed in **<span style="color: lime">green</span>** in the image below.

    ![Select Raspberry Pi OS](images/select_raspbian_os.png)

5. Click on the `Choose Storage` button under the `Storage` section.

    The `Choose Storage` button is boxed in **<span style="color: lime">green</span>** in the image below.

    ![Select Storage](images/raspberry_pi_select_storage.png)

6. Click on the SD Card storage to flash the OS onto.

    | ⚠️ | **To prevent overwriting your other drives, it is recommended to eject all drives before inserting the SD Card.** |
    | - | -------------------------------------------------------------------------------------- |

    For example, the SD Card detected is shown and boxed  in **<span style="color: lime">green</span>** in the image below.

    ![Storage Options](images/raspberry_pi_storage_options.png)

7. Click on the `Write` button to begin the flashing.

    The `Write` button is boxed in **<span style="color: lime">green</span>** in the image below.

    ![Write to SD Card](images/raspberry_pi_write.png)

    Click `Yes` to overwrite the SD Card.

    The `Yes` button is boxed in **<span style="color: lime">green</span>** in the image below.

    ![Confirm overwrite SD Card](images/raspberry_pi_overwrite_sd.png)

8. Wait for the OS write process to complete.

    Upon completion, click the `Continue` button boxed in **<span style="color: lime">green</span>** in the image below.

    ![OS Write Complete](images/raspberry_pi_os_completion.png)

9. Eject the SD Card and re-insert the SD Card into the PC again.

    Open the `File Explorer` and go to `This PC`.

    A `boot` drive should appear after re-insering the SD Card.

    ![Boot volume](images/this_pc_boot.png)
