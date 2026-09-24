#!/bin/bash

## VARIABLES
### Your channels go here. add more channels as you want
numberofchannels=60
##declare     ("tvg-id-channel1" "Name Channel 1" "Program Tittle" "Creative Program Description")
declare -a a0=("Prime FR 01" "PRIME FR 01")
declare -a a1=("Prime FR 02" "PRIME FR 02")
declare -a a2=("Prime FR 03" "PRIME FR 03")
declare -a a3=("Prime FR 04" "PRIME FR 04")
declare -a a4=("Prime FR 05" "PRIME FR 05")
declare -a a5=("Prime FR 06" "PRIME FR 06")
declare -a a6=("Prime FR 07" "PRIME FR 07")
declare -a a7=("Prime FR 08" "PRIME FR 08")
declare -a a8=("Prime FR 09" "PRIME FR 09")
declare -a a9=("Prime FR 10" "PRIME FR 10")
declare -a a10=("Prime FR 11" "PRIME FR 11")
declare -a a11=("Prime FR 12" "PRIME FR 12")
declare -a a12=("Prime FR 13" "PRIME FR 13")
declare -a a13=("Prime FR 14" "PRIME FR 14")
declare -a a14=("Prime FR 15" "PRIME FR 15")
declare -a a15=("Prime FR 16" "PRIME FR 16")
declare -a a16=("Prime FR 17" "PRIME FR 17")
declare -a a17=("Prime FR 18" "PRIME FR 18")
declare -a a18=("Prime FR 19" "PRIME FR 19")
declare -a a19=("Prime FR 20" "PRIME FR 20")
declare -a a20=("Prime FR 21" "PRIME FR 21")
declare -a a21=("Prime FR 22" "PRIME FR 22")
declare -a a22=("Prime FR 23" "PRIME FR 23")
declare -a a23=("Prime FR 24" "PRIME FR 24")
declare -a a24=("Prime FR 25" "PRIME FR 25")
declare -a a25=("Prime FR 26" "PRIME FR 26")
declare -a a26=("Prime FR 27" "PRIME FR 27")
declare -a a27=("Prime FR 28" "PRIME FR 28")
declare -a a28=("Prime FR 29" "PRIME FR 29")
declare -a a29=("Prime FR 30" "PRIME FR 30")
declare -a a30=("Prime FR 31" "PRIME FR 31")
declare -a a31=("Prime FR 32" "PRIME FR 32")
declare -a a32=("Prime FR 33" "PRIME FR 33")
declare -a a33=("Prime FR 34" "PRIME FR 34")
declare -a a34=("Prime FR 35" "PRIME FR 35")
declare -a a35=("Prime FR 36" "PRIME FR 36")
declare -a a36=("Prime FR 37" "PRIME FR 37")
declare -a a37=("Prime FR 38" "PRIME FR 38")
declare -a a38=("Prime FR 39" "PRIME FR 39")
declare -a a39=("Prime FR 40" "PRIME FR 40")
declare -a a40=("Prime FR 41" "PRIME FR 41")
declare -a a41=("Prime FR 42" "PRIME FR 42")
declare -a a42=("Prime FR 43" "PRIME FR 43")
declare -a a43=("Prime FR 44" "PRIME FR 44")
declare -a a44=("Prime FR 45" "PRIME FR 45")
declare -a a45=("Prime FR 46" "PRIME FR 46")
declare -a a46=("Prime FR 47" "PRIME FR 47")
declare -a a47=("Prime FR 48" "PRIME FR 48")
declare -a a48=("Prime FR 49" "PRIME FR 49")
declare -a a49=("Prime FR 50" "PRIME FR 50")
declare -a a50=("Disney FR 01" "DISNEY FR 01")
declare -a a51=("Disney FR 02" "DISNEY FR 02")
declare -a a52=("Disney FR 03" "DISNEY FR 03")
declare -a a53=("Disney FR 04" "DISNEY FR 04")
declare -a a54=("Disney FR 05" "DISNEY FR 05")
declare -a a55=("Disney FR 06" "DISNEY FR 06")
declare -a a56=("Disney FR 07" "DISNEY FR 07")
declare -a a57=("Disney FR 08" "DISNEY FR 08")
declare -a a58=("Disney FR 09" "DISNEY FR 09")
declare -a a59=("Disney FR 10" "DISNEY FR 10")

##declare Program Tittle
declare -a ttl0="Cui vs. Vallejo (24-09-2026 12:28)"
declare -a ttl1="Vienna - GCL Round 2 (25-09-2026 20:58)"
declare -a ttl2="Faria vs. Atmane (24-09-2026 08:28)"
declare -a ttl3="Shang vs. Mannarino (24-09-2026 09:57)"
declare -a ttl4="Bu vs. Zheng (24-09-2026 10:28)"
declare -a ttl5="La Roche vs. Aubagne AB (03-10-2026 21:28)"
declare -a ttl6="Cerundolo vs. Zhou (24-09-2026 13:57)"
declare -a ttl7="Dijon vs. Strasbourg (25-09-2026 20:47)"
declare -a ttl8="Monza - Race 3 (27-09-2026 10:38)"
declare -a ttl9="Orléans vs. Cannes (26-09-2026 21:28)"
declare -a ttl10="Caen vs. Rouen (24-09-2026 21:13)"
declare -a ttl11="Vienna - Longines Champions Tour Grand Prix (27-09-2026 21:05)"
declare -a ttl12="Griekspoor vs. Shapovalov (24-09-2026 07:57)"
declare -a ttl13="TAIF Racing Season 2026 - Week 10, Day 1 (25-09-2026 16:18)"
declare -a ttl14="Aubagne AB vs. Fleury (26-09-2026 21:28)"
declare -a ttl15="Concarneau vs. Paris 13 (03-10-2026 21:28)"
declare -a ttl16="Rouen vs. Bourg-Péronnas (03-10-2026 21:28)"
declare -a ttl17="Valenciennes vs. Le Puy (26-09-2026 21:28)"
declare -a ttl18="Shevchenko vs. Hurkacz (24-09-2026 11:57)"
declare -a ttl19="Davies vs. Collins: Press Conference (24-09-2026 14:55)"
declare -a ttl20="Zhang vs. Wong (24-09-2026 14:28)"
declare -a ttl21="Villefranche vs. Versailles (26-09-2026 21:28)"
declare -a ttl22="Le Puy vs. Thionville (03-10-2026 21:28)"
declare -a ttl23="BKFC 94: Till vs. Romero - Press Conference (24-09-2026 16:55)"
declare -a ttl24="Monza - Race 1 (26-09-2026 14:38)"
declare -a ttl25="Cannes vs. QRM (03-10-2026 21:28)"
declare -a ttl26="BKFC 94: Till vs. Romero - Weigh-In (25-09-2026 19:55)"
declare -a ttl27="Cyclisme : CRO Race: 3e étape, Messieurs (24-09-2026 14:58)"
declare -a ttl28="Paris 13 vs. Bastia (26-09-2026 21:28)"
declare -a ttl29="Vienna - GCL Round 1 (25-09-2026 16:05)"
declare -a ttl30="Bourg-Péronnas vs. Concarneau (26-09-2026 21:28)"
declare -a ttl31="QRM vs. Amiens (26-09-2026 21:28)"
declare -a ttl32="Fleury vs. Caen (03-10-2026 21:28)"
declare -a ttl33="Bastia vs. Orléans (01-10-2026 21:13)"
declare -a ttl34="Amiens vs. Villefranche (03-10-2026 21:28)"
declare -a ttl35="Multiplex : Journée 8 (26-09-2026 21:28)"
declare -a ttl36="Multiplex : Journée 9 (03-10-2026 21:28)"
declare -a ttl37="Thionville vs. La Roche (26-09-2026 21:28)"
declare -a ttl38="Versailles vs. Valenciennes (03-10-2026 21:28)"
declare -a ttl39="TAIF Racing Season 2026 - Week 10, Day 2 (26-09-2026 16:23)"
declare -a ttl40="Gaston vs. Smith (28-08-2026 19:52)"
declare -a ttl41="Yuan vs. Stoiana (28-08-2026 19:58)"
declare -a ttl42="Storm vs. Valkyries (20-09-2026 03:58)"
declare -a ttl43="Semenistaja vs. Hunter (28-08-2026 17:58)"
declare -a ttl44="TAIF Racing Season 2026 - Week 6, Day 1 (28-08-2026 16:03)"
declare -a ttl45="Köln vs. Hoffenheim (28-08-2026 19:17)"
declare -a ttl46="Santander vs. Elche (28-08-2026 19:36)"
declare -a ttl47="Lille vs. PSG (28-08-2026 20:43)"
declare -a ttl48="Preseason: Commanders vs. Ravens (29-08-2026 00:53)"
declare -a ttl49="Preseason: Falcons vs. Dolphins (29-08-2026 01:53)"
declare -a ttl50="L'Équipe du soir 100% BUTS (25-09-2026 23:45)"
declare -a ttl51="NCAA Women's Field Hockey - Syracuse vs. Virginia (25-09-2026 23:03)"
declare -a ttl52="L'Équipe du soir (25-09-2026 00:00)"
declare -a ttl53="L'Équipe de choc (24-09-2026 18:00)"
declare -a ttl54="NCAA Women's Soccer - Memphis vs. South Florida (25-09-2026 01:00)"
declare -a ttl55="NCAA - Football - Benedict vs. Tuskegee (25-09-2026 02:00)"
declare -a ttl56="L'Équipe du soir 100% BUTS (24-09-2026 23:45)"
declare -a ttl57="NCAA Women's Soccer - Mississippi State vs. #9 Tennessee (25-09-2026 03:00)"
declare -a ttl58="L'Équipe de Greg (24-09-2026 19:30)"
declare -a ttl59="NCAA Women's Soccer - Kentucky vs. #17 South Carolina (25-09-2026 02:00)"


##declare Program Desription
declare -a dscrpt0="Creative Program Description" #Program Description Prime FR 01
declare -a dscrpt1="Creative Program Description" #Program Description Prime FR 02
declare -a dscrpt2="Creative Program Description" #Program Description Prime FR 03
declare -a dscrpt3="Creative Program Description" #Program Description Prime FR 04
declare -a dscrpt4="Creative Program Description" #Program Description Prime FR 05
declare -a dscrpt5="Creative Program Description" #Program Description Prime FR 06
declare -a dscrpt6="Creative Program Description" #Program Description Prime FR 07
declare -a dscrpt7="Creative Program Description" #Program Description Prime FR 08
declare -a dscrpt8="Creative Program Description" #Program Description Prime FR 09
declare -a dscrpt9="Creative Program Description" #Program Description Prime FR 10
declare -a dscrpt10="Creative Program Description" #Program Description Prime FR 11
declare -a dscrpt11="Creative Program Description" #Program Description Prime FR 12
declare -a dscrpt12="Creative Program Description" #Program Description Prime FR 13
declare -a dscrpt13="Creative Program Description" #Program Description Prime FR 14
declare -a dscrpt14="Creative Program Description" #Program Description Prime FR 15
declare -a dscrpt15="Creative Program Description" #Program Description Prime FR 16
declare -a dscrpt16="Creative Program Description" #Program Description Prime FR 17
declare -a dscrpt17="Creative Program Description" #Program Description Prime FR 18
declare -a dscrpt18="Creative Program Description" #Program Description Prime FR 19
declare -a dscrpt19="Creative Program Description" #Program Description Prime FR 20
declare -a dscrpt20="Creative Program Description"
declare -a dscrpt21="Creative Program Description"
declare -a dscrpt22="Creative Program Description"
declare -a dscrpt23="Creative Program Description"
declare -a dscrpt24="Creative Program Description"
declare -a dscrpt25="Creative Program Description"
declare -a dscrpt26="Creative Program Description"
declare -a dscrpt27="Creative Program Description"
declare -a dscrpt28="Creative Program Description"
declare -a dscrpt29="Creative Program Description"
declare -a dscrpt30="Creative Program Description"
declare -a dscrpt31="Creative Program Description"
declare -a dscrpt32="Creative Program Description"
declare -a dscrpt33="Creative Program Description"
declare -a dscrpt34="Creative Program Description"
declare -a dscrpt35="Creative Program Description"
declare -a dscrpt36="Creative Program Description"
declare -a dscrpt37="Creative Program Description"
declare -a dscrpt38="Creative Program Description"
declare -a dscrpt39="Creative Program Description"

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
