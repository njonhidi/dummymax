#!/bin/bash


source /e/Github/Dummymax/config_name.sh
source /e/Github/Dummymax/config_title.sh
source /e/Github/Dummymax/config_time.sh

starttimes=("000000" "020000" "040000" "060000" "080000" "100000" "120000" "140000" "160000" "180000" "200000" "220000")
endtimes=("020000" "040000" "060000" "080000" "100000" "120000" "140000" "160000" "180000" "200000" "220000" "000000")
BASEPATH="E:/Github/Dummymax"
DUMMYFILENAME=dummymax.xml

		today=$(date +%Y%m%d)
		today2=$(date +%Y%m%d)
		tomorrow=$(date --date="+1 day" +%Y%m%d)
		# tomorrow=$(date -v+1d +%Y%m%d)  ## if running on MAC or BSD
		echo '<?xml version="1.0" encoding="UTF-8"?>' > $BASEPATH/$DUMMYFILENAME
		echo '<!DOCTYPE tv SYSTEM "xmltv.dtd">' >> $BASEPATH/$DUMMYFILENAME
		echo '<tv generator-info-name="mydummy" generator-info-url="https://null.null/">' >> $BASEPATH/$DUMMYFILENAME
        numberofiterations=$(($numberofchannels - 1))
##        echo "Creating Dummy Epg ..."


		for i in $(seq 0 $numberofiterations); do # Number of Dummys -1 
			tvgid=a$i[0]
			name=a$i[1]
			echo '    <channel id="'${!tvgid}'">' >> $BASEPATH/$DUMMYFILENAME
			echo '        <display-name>'${!name}'</display-name>' >> $BASEPATH/$DUMMYFILENAME
			echo '    </channel>' >> $BASEPATH/$DUMMYFILENAME
		done

		for i in $(seq 0 $numberofiterations) ;do
			tvgid=a$i[0]
			title=ttl$i
###			desc=dscrpt$i
			today2=$(date +%Y%m%d)
			if [ "$k" -le 8 ]; then
				for ((j=(k+1); j <= (k + 3); j++)); do
					echo '    <programme channel="'${!tvgid}'" start="'$today${starttimes[$j]}' +0000" stop="'$today2${endtimes[$j]}' +0000">' >> $BASEPATH/$DUMMYFILENAME
					echo '        <title>'${!title}'</title>' >> $BASEPATH/$DUMMYFILENAME
					echo '        <desc>'${!title}'</desc>' >> $BASEPATH/$DUMMYFILENAME
					echo '    </programme>' >> $BASEPATH/$DUMMYFILENAME
				done
			else
				for ((j=(k+1); j<=11; j++)); do
					if [ "${endtimes[$j]}" = "000000" ]
						then
							today2=$tomorrow
					fi
					echo '    <programme channel="'${!tvgid}'" start="'$today${starttimes[$j]}' +0000" stop="'$today2${endtimes[$j]}' +0000">' >> $BASEPATH/$DUMMYFILENAME
					echo '        <title>'${!title}'</title>' >> $BASEPATH/$DUMMYFILENAME
					echo '        <desc>'${!title}'</desc>' >> $BASEPATH/$DUMMYFILENAME
					echo '    </programme>' >> $BASEPATH/$DUMMYFILENAME
				done
				for j in {0..2}; do
					echo '    <programme channel="'${!tvgid}'" start="'$tomorrow${starttimes[$j]}' +0000" stop="'$tomorrow${endtimes[$j]}' +0000">' >> $BASEPATH/$DUMMYFILENAME
					echo '        <title>'${!title}'</title>' >> $BASEPATH/$DUMMYFILENAME
					echo '        <desc>'${!title}'</desc>' >> $BASEPATH/$DUMMYFILENAME
					echo '    </programme>' >> $BASEPATH/$DUMMYFILENAME
				done
			fi
		done

		echo '</tv>' >> $BASEPATH/$DUMMYFILENAME

##echo "Done!"
##sleep 2