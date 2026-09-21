#!/bin/bash

## VARIABLES
### Your channels go here. add more channels as you want
numberofchannels=41
declare -a a0=("tvg-id-channel1" "Name Channel 1" "Program Tittle" "Creative Program Description")
declare -a a1=("Max FR 01" "MAX FR 01" "Sport Live" "Creative Program Description")
declare -a a2=("Max FR 02" "MAX FR 02" "Sport Live" "Creative Program Description")
declare -a a3=("Max FR 03" "MAX FR 03" "Sport Live" "Creative Program Description")
declare -a a4=("Max FR 04" "MAX FR 04" "Sport Live" "Creative Program Description")
declare -a a5=("Max FR 05" "MAX FR 05" "Sport Live" "Creative Program Description")
declare -a a6=("Max FR 06" "MAX FR 06" "Sport Live" "Creative Program Description")
declare -a a7=("Max FR 07" "MAX FR 07" "Sport Live" "Creative Program Description")
declare -a a8=("Max FR 08" "MAX FR 08" "Sport Live" "Creative Program Description")
declare -a a9=("Max FR 09" "MAX FR 09" "Sport Live" "Creative Program Description")
declare -a a10=("Max FR 10" "MAX FR 10" "Sport Live" "Creative Program Description")
declare -a a11=("Max FR 11" "MAX FR 11" "Sport Live" "Creative Program Description")
declare -a a12=("Max FR 12" "MAX FR 12" "Sport Live" "Creative Program Description")
declare -a a13=("Max FR 13" "MAX FR 13" "Sport Live" "Creative Program Description")
declare -a a14=("Max FR 14" "MAX FR 14" "Sport Live" "Creative Program Description")
declare -a a15=("Max FR 15" "MAX FR 15" "Sport Live" "Creative Program Description")
declare -a a16=("Max FR 16" "MAX FR 16" "Sport Live" "Creative Program Description")
declare -a a17=("Max FR 17" "MAX FR 17" "Sport Live" "Creative Program Description")
declare -a a18=("Max FR 18" "MAX FR 18" "Sport Live" "Creative Program Description")
declare -a a19=("Max FR 19" "MAX FR 19" "Sport Live" "Creative Program Description")
declare -a a20=("Max FR 20" "MAX FR 20" "Sport Live" "Creative Program Description")
declare -a a21=("Max FR 21" "MAX FR 21" "Sport Live" "Creative Program Description")
declare -a a22=("Max FR 22" "MAX FR 22" "Sport Live" "Creative Program Description")
declare -a a23=("Max FR 23" "MAX FR 23" "Sport Live" "Creative Program Description")
declare -a a24=("Max FR 24" "MAX FR 24" "Sport Live" "Creative Program Description")
declare -a a25=("Max FR 25" "MAX FR 25" "Sport Live" "Creative Program Description")
declare -a a26=("Max FR 26" "MAX FR 26" "Sport Live" "Creative Program Description")
declare -a a27=("Max FR 27" "MAX FR 27" "Sport Live" "Creative Program Description")
declare -a a28=("Max FR 28" "MAX FR 28" "Sport Live" "Creative Program Description")
declare -a a29=("Max FR 29" "MAX FR 29" "Sport Live" "Creative Program Description")
declare -a a30=("Max FR 30" "MAX FR 30" "Sport Live" "Creative Program Description")
declare -a a31=("Max FR 31" "MAX FR 31" "Sport Live" "Creative Program Description")
declare -a a32=("Max FR 32" "MAX FR 32" "Sport Live" "Creative Program Description")
declare -a a33=("Max FR 33" "MAX FR 33" "Sport Live" "Creative Program Description")
declare -a a34=("Max FR 34" "MAX FR 34" "Sport Live" "Creative Program Description")
declare -a a35=("Max FR 35" "MAX FR 35" "Sport Live" "Creative Program Description")
declare -a a36=("Max FR 36" "MAX FR 36" "Sport Live" "Creative Program Description")
declare -a a37=("Max FR 37" "MAX FR 37" "Sport Live" "Creative Program Description")
declare -a a38=("Max FR 38" "MAX FR 38" "Sport Live" "Creative Program Description")
declare -a a39=("Max FR 39" "MAX FR 39" "Sport Live" "Creative Program Description")
declare -a a40=("Max FR 40" "MAX FR 40" "Sport Live" "Creative Program Description")

starttimes=("000000" "030000" "060000" "090000" "120000 "150000" "180000" "210000")
endtimes=("030000" "060000" "090000" "120000 "150000" "180000" "210000" "235900")
##BASEPATH="E:/"
DUMMYFILENAME=dummymax.xml

		today=$(date +%d%m%Y)
		tomorrow=$(date --date="+1 day" +%d%m%Y)
		# tomorrow=$(date -v+1d +%Y%m%d)  ## if running on MAC or BSD
		echo '<?xml version="1.0" encoding="UTF-8"?>' > $DUMMYFILENAME
		echo '<tv generator-info-name="mydummy" generator-info-url="https://null.null/">' >> $DUMMYFILENAME
        numberofiterations=$(($numberofchannels - 1))
        echo "Creating Dummy Epg ..."


		for i in $(seq 0 $numberofiterations); do # Number of Dummys -1 
			tvgid=a$i[0]
			name=a$i[1]
			echo '    <channel id="'${!tvgid}'">' >> $DUMMYFILENAME
			echo '        <display-name>'${!name}'</display-name>' >> $DUMMYFILENAME
			echo '    </channel>' >> $DUMMYFILENAME
		done

		for i in $(seq 0 $numberofiterations) ;do
			tvgid=a$i[0]
			title=a$i[2]
			desc=a$i[3]
			for j in {0..3}; do
					echo '    <programme start="'$today${starttimes[$j]}' +0000" stop="'$today${endtimes[$j]}' +0000" channel="'${!tvgid}'">' >> $DUMMYFILENAME
					echo '        <title>'${!title}'</title>' >> $DUMMYFILENAME
					echo '        <desc>'${!desc}'</desc>' >> $DUMMYFILENAME
					echo '    </programme>' >> $DUMMYFILENAME
			done
			for j in {0..3}; do
					echo '    <programme start="'$tomorrow${starttimes[$j]}' +0000" stop="'$tomorrow${endtimes[$j]}' +0000" channel="'${!tvgid}'">' >> $DUMMYFILENAME
					echo '        <title>'${!title}'</title>' >> $DUMMYFILENAME
					echo '        <desc>'${!desc}'</desc>' >> $DUMMYFILENAME
					echo '    </programme>' >> $DUMMYFILENAME
			done
		done

		echo '</tv>' >> $DUMMYFILENAME

echo "Done!"
sleep 2
