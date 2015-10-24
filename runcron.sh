cd ~/github/testrep
ssh-agent bash -c 'ssh-add  ~/.ssh/githubnopass_rsa; git fetch; git pull;'
./collectip.sh
ssh-agent bash -c 'ssh-add  ~/.ssh/githubnopass_rsa; git fetch; git pull; git commit -a -m "some"; git push '
