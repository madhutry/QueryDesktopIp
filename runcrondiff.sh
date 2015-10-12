cd /home/pi/sendip/
ssh-agent bash -c 'ssh-add  /home/pi/.ssh/githubip_rsa; git fetch; git pull;'
DIFF=$(diff t1.txt t2.txt)
if [ "$DIFF" != "" ]
then
    echo "The directory was modified"
    /home/pi/sendip/collectip.sh >> /home/pi/sendip/sendip.txt
    ssh-agent bash -c 'ssh-add  /home/pi/.ssh/githubip_rsa; git fetch; git pull; git commit -a -m "some"; git push '
    cp -rf t1.txt t2.txt
fi
