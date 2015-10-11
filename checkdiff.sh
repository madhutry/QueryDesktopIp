DIFF=$(diff t1.txt t2.txt) 
if [ "$DIFF" != "" ] 
then
    echo "The directory was modified"
fi
