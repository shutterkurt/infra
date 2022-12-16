install adafruit's circuit python on the pi

not going to use their script - have had issues all stemming from
which environment it installs stuff to and permissions
all it does it check if pi, if raspbian, python3

steps:
0) if not raspbian & pi just bail
1) update & upgrade
2) pre-requisities
   1) `sudo apt install -y python3 python3-pip git i2c-tools libgpiod-dev`
   2) do alternatives so python3 is setup as default (already should be this way!)
      1) for inspiration look at: 
         1) https://github.com/giuaig/ansible-raspi-config/blob/master/raspi-config.yml
         2) https://github.com/mikolak-net/ansible-raspi-config
   3) `sudo pip install --upgrade setuptools`
   4) `sudo pip install --upgrade RPi.GPIO`
   5) `sudo pip install --upgrade adafruit-blinka`
3) Reboot - wait for system to come back
4) check for i2c and spi devices inside /dev - fail if not there
5) install pip modules: for pi user: `pip install virtualenv virtualenvwrapper`

at this point, user can 
1) create a project directory
2) create a virtual env inside that `virtualenv .env`
3) install other libs, `pip install adafruit-circuitpython-shtc3` or whatever