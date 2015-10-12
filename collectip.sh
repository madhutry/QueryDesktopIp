sudo curl -s http://ipecho.net/plain >>/home/pi/sendip/sendip.txt
echo "::::" >>  /home/pi/sendip/sendip.txt
sudo curl -s  http://ipecho.net/plain >>  /home/pi/sendip/sendip.txt
echo "::::" >>  /home/pi/sendip/sendip.txt
sudo curl -s  http://ipecho.net/plain >> /home/pi/sendip/sendip1.txt
echo "::::" >>  /home/pi/sendip/sendip.txt
echo `date` >>  /home/pi/sendip/sendip.txt

