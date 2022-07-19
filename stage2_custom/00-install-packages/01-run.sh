#!/bin/bash -e

on_chroot << EOF
echo "install python3 libraries"
pip3 install RPI.GPIO==0.7.0
pip3 install gpiozero==1.5.1
pip3 install w1thermsensor==1.3.0
pip3 install pyopenssl==20.0.1
pip3 install schedule==0.6.0
pip3 install greengrasssdk==1.6.0
pip3 install opencv-python-headless==4.5.1.48
pip3 install smbus2==0.4.1
pip3 install adafruit-ads1x15==1.0.2
pip3 install numpy==1.21.2

# Tunneling dependencies
pip3 install asyncio==3.4.3
pip3 install pyfiglet==0.8.post1
pip3 install awsiotsdk==1.3.1
pip3 install AWSIoTPythonSDK==1.4.9
pip3 install awscrt==0.6.1


cd
git clone https://github.com/doceme/py-spidev.git
cd py-spidev
sudo python3 setup.py install
cd
rm -r py-spidev

git clone https://github.com/mgaggero/Adafruit_Python_HTU21D.git
cd Adafruit_Python_HTU21D
python3 setup.py install
cd
rm -r Adafruit_Python_HTU21D/

cp -P /usr/bin/java /usr/bin/java8
EOF