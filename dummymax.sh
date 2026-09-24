#!/bin/bash


source /e/Github/Dummymax/config_name.sh
source /e/Github/Dummymax/config_title.sh

starttimes=("000000" "030000" "060000" "090000" "120000" "150000" "180000" "210000")
endtimes=("030000" "060000" "090000" "120000" "150000" "180000" "210000" "000000")
BASEPATH="E:/Github/Dummymax"
DUMMYFILENAME=dummymax.xml

		today=$(date +%Y%m%d)
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
			for j in {0..7}; do
					echo '    <programme channel="'${!tvgid}'" start="'$today${starttimes[$j]}' +0000" stop="'$today${endtimes[$j]}' +0000">' >> $BASEPATH/$DUMMYFILENAME
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
		done

		echo '</tv>' >> $BASEPATH/$DUMMYFILENAME

##echo "Done!"
##sleep 2
