cd ~/github/testrep
ssh-agent bash -c 'ssh-add  ~/.ssh/madhutrygithub; git fetch; git pull;'
./collectip.sh
ssh-agent bash -c 'ssh-add  ~/.ssh/madhutrygithub; git fetch; git pull; git commit -a -m "some"; git push '
