curl http://ipecho.net/plain
wget http://ipecho.net/plain -O /home/pi/sendip/sendip.txt
wget http://ipecho.net/plain -O /home/pi/sendip/sendip1.txt
echo "::::" >>  /home/pi/sendip/sendip.txt
echo `date` >>  /home/pi/sendip/sendip.txt

