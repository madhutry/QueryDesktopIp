cd ~/github/testrep
ssh-agent bash -c 'ssh-add  ~/.ssh/githubnopass_rsa; git fetch; git pull;'
DIFF=$(diff t1.txt t2.txt)
if [ "$DIFF" != "" ]
then
    echo "The directory was modified"
    ./collectip.sh
    ssh-agent bash -c 'ssh-add  ~/.ssh/githubnopass_rsa; git fetch; git pull; git commit -a -m "some"; git push '
    cp -rf t1.txt t2.txt
fi
