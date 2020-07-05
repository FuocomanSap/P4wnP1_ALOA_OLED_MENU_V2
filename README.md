this is a fork of: https://github.com/beboxos/P4wnP1_ALOA_OLED_MENU_V2

I updated the code to work with python3.7, fixed some bugs and added new features.
* hosts discovery
* nmap on a specific host and save the report
* update the gui-code via gui-option
* vulnerability scan (experimental...help me)
* TODO others

## Installation:
On boot partition edit config.txt to set I2C and SPI to active
in termnial you can type 
* nano /boot/config.txt

find the section far away down and set : 

* dtparam=i2c_arm=on
* dtparam=i2c1=on

and find and set spi section 

* dtparam=spi=on



###### Note for SPI: (on gui.py)

 ######  comment the "bus = smbus.SMBus(0)  # 0 = /dev/i2c-0 (port I2C0), 1 = /dev/i2c-1 (port I2C1)" line
 ######  set USER_I2C=0
 ######  (if you don't have a ups) set UPS=0


* run sh install.sh 
the script will automatically install all the files needed




##### GPIO 8 keys are default waveshare hat

you can edit to set to your hat if different
* GPIO
* KEY_UP_PIN     : 6, 
* KEY_DOWN_PIN   : 19, 
* KEY_LEFT_PIN   : 5, 
* KEY_RIGHT_PIN  : 26, 
* KEY_PRESS_PIN  : 13, 
* KEY1_PIN       : 21, 
* KEY2_PIN       : 20, 
* KEY3_PIN       : 16



## Start at boot
in P4wnP1 web interface , create a trigger action that runs the script runmenu.sh in you default template (by default startup)
select the script runmenu.sh.
* open the web interface
* select Tigger action
* add one
* select runmenu.sh
* select store and type startup



enjoy
