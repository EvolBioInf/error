./error > tmp.out
DIFF=$(diff tmp.out ../data/error.out)
if [ "$DIFF" == "" ] 
then
    printf "Test(error)\tpass\n"
else
    printf "Test(error)\tfail\n"
    echo ${DIFF}
fi

rm tmp.out
