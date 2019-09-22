# openscad-3040ch80

## Software

1. Flash Raspbian with desktop
1. [Setup a headless Raspberry Pi](https://www.raspberrypi.org/documentation/configuration/wireless/headless.md)
1. Update hostname to cncjs
    ```bash
    raspi-config
    ```
1. Setup boot options to "Desktop Autologin"
    ```bash
    raspi-config
    ```
1. Run ansible to install cncjs
    ```
    ansible-playbook --inventory "cncjs.local," playbook.yaml
    ```
1. Run ansible to install lcd drivers if MPI3501 is used
    ```
    ansible-playbook --inventory "cncjs.local," lcd-playbook.yaml
    ```
