cd /home/pi/sendip/
ssh-agent bash -c 'ssh-add  /home/pi/.ssh/githubip_rsa; git fetch; git pull;'
/home/pi/sendip/collectip.sh >> /home/pi/sendip/sendip.txt
ssh-agent bash -c 'ssh-add  /home/pi/.ssh/githubip_rsa; git fetch; git pull; git commit -a -m "some"; git push '
