#Dev Mode
if [[ $TEST_LOOP = "y" ]]
then
	echo "####################################"
	echo "      DEV/TEST MODE.....       	  "
	echo "####################################"
    echo "Starting a infinite while loop to debug in console terminal\n"
    while :
	do
		echo "Press [CTRL+C] to stop.."
		sleep 1
	done
fi