# openscad-3040ch80

## Software

1. [Setup a headless Raspberry Pi](https://www.raspberrypi.org/documentation/configuration/wireless/headless.md)
1. Update hostname to cncjs
    ```bash
    raspi-config 
    ```
1. Run ansible to install cncjs
    ```
    ansible-playbook --inventory "cncjs.local," playbook.yaml
    ```
