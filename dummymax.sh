#!/bin/bash

## VARIABLES
### Your channels go here. add more channels as you want
numberofchannels=40
##declare     ("tvg-id-channel1" "Name Channel 1" "Program Tittle" "Creative Program Description")
declare -a a0=("Max FR 01" "MAX FR 01")
declare -a a1=("Max FR 02" "MAX FR 02")
declare -a a2=("Max FR 03" "MAX FR 03")
declare -a a3=("Max FR 04" "MAX FR 04")
declare -a a4=("Max FR 05" "MAX FR 05")
declare -a a5=("Max FR 06" "MAX FR 06")
declare -a a6=("Max FR 07" "MAX FR 07")
declare -a a7=("Max FR 08" "MAX FR 08")
declare -a a8=("Max FR 09" "MAX FR 09")
declare -a a9=("Max FR 10" "MAX FR 10")
declare -a a10=("Max FR 11" "MAX FR 11")
declare -a a11=("Max FR 12" "MAX FR 12")
declare -a a12=("Max FR 13" "MAX FR 13")
declare -a a13=("Max FR 14" "MAX FR 14")
declare -a a14=("Max FR 15" "MAX FR 15")
declare -a a15=("Max FR 16" "MAX FR 16")
declare -a a16=("Max FR 17" "MAX FR 17")
declare -a a17=("Max FR 18" "MAX FR 18")
declare -a a18=("Max FR 19" "MAX FR 19")
declare -a a19=("Max FR 20" "MAX FR 20")
declare -a a20=("Max FR 21" "MAX FR 21")
declare -a a21=("Max FR 22" "MAX FR 22")
declare -a a22=("Max FR 23" "MAX FR 23")
declare -a a23=("Max FR 24" "MAX FR 24")
declare -a a24=("Max FR 25" "MAX FR 25")
declare -a a25=("Max FR 26" "MAX FR 26")
declare -a a26=("Max FR 27" "MAX FR 27")
declare -a a27=("Max FR 28" "MAX FR 28")
declare -a a28=("Max FR 29" "MAX FR 29")
declare -a a29=("Max FR 30" "MAX FR 30")
declare -a a30=("Max FR 31" "MAX FR 31")
declare -a a31=("Max FR 32" "MAX FR 32")
declare -a a32=("Max FR 33" "MAX FR 33")
declare -a a33=("Max FR 34" "MAX FR 34")
declare -a a34=("Max FR 35" "MAX FR 35")
declare -a a35=("Max FR 36" "MAX FR 36")
declare -a a36=("Max FR 37" "MAX FR 37")
declare -a a37=("Max FR 38" "MAX FR 38")
declare -a a38=("Max FR 39" "MAX FR 39")
declare -a a39=("Max FR 40" "MAX FR 40")

##declare Program Tittle
declare -a ttl0="Ishpreet Singh Chadha - Dylan Emery Open d'Ecosse | Qualifications (2026-09-22 12:35:41)"
declare -a ttl1="Vienna - GCL Round 2 (2026-09-25 17:58:00)"
declare -a ttl2="Championnats du monde | Contre-la-montre par équipes (Mixte) 2026 UCI Road World Championships – Montréal (2026-09-22"
declare -a ttl3="Championnats du Monde UCI: Montreal : contre la montre par équipe (2026-09-22 13:58:00)"
declare -a ttl4="Ben Woollaston - Alexander Ursenbacher Open d'Ecosse | Qualifications (2026-09-22 11:58:05)"
declare -a ttl5="La Roche vs. Aubagne AB (2026-10-03 18:28:00)"
declare -a ttl6="Cyclisme : Championnats du monde: Montreal : contre la montre messieurs juniors (2026-09-22 16:03:00)"
declare -a ttl7="Matthew Stevens - Florian Nüßle Open d'Ecosse | Qualifications (2026-09-22 12:33:49)"
declare -a ttl8="Monza - Race 3 (2026-09-27 07:38:00)"
declare -a ttl9="Orléans vs. Cannes (2026-09-26 18:28:00)"
declare -a ttl10="Caen vs. Rouen (2026-09-24 18:13:00)"
declare -a ttl11="Vienna - Longines Champions Tour Grand Prix (2026-09-27 18:05:00)"
declare -a ttl12="Louis Heathcote - Chatchapong Nasa Open d'Ecosse | Qualifications (2026-09-22 08:58:01)"
declare -a ttl13="TAIF Racing Season 2026 - Week 10, Day 1 (2026-09-25 13:18:00)"
declare -a ttl14="Aubagne AB vs. Fleury (2026-09-26 18:28:00)"
declare -a ttl15="Concarneau vs. Paris 13 (2026-10-03 18:28:00)"
declare -a ttl16="Rouen vs. Bourg-Péronnas (2026-10-03 18:28:00)"
declare -a ttl17="Valenciennes vs. Le Puy (2026-09-26 18:28:00)"
declare -a ttl18="Luca Brecel - Gong Chenzhi Open d'Ecosse | Qualifications (2026-09-22 11:58:05)"
declare -a ttl19="CRO Race | 1re étape Split – Seget Donji (167km) (2026-09-22 11:58:05)"
declare -a ttl20="Liam Highfield - Yao Pengcheng Open d'Ecosse | Qualifications (2026-09-22 14:58:00)"
declare -a ttl21="Villefranche vs. Versailles (2026-09-26 18:28:00)"
declare -a ttl22="Le Puy vs. Thionville (2026-10-03 18:28:00)"
declare -a ttl23="BKFC 94: Till vs. Romero - Press Conference (2026-09-24 13:55:00)"
declare -a ttl24="Monza - Race 1 (2026-09-26 11:38:00)"
declare -a ttl25="Cannes vs. QRM (2026-10-03 18:28:00)"
declare -a ttl26="Cyclisme : Cro Race: 1re étape, Messieurs (2026-09-22 11:58:00)"
declare -a ttl27="Ben Mertens - Iulian Boiko Open d'Ecosse | Qualifications (2026-09-22 08:58:01)"
declare -a ttl28="Paris 13 vs. Bastia (2026-09-26 18:28:00)"
declare -a ttl29="Vienna - GCL Round 1 (2026-09-25 13:05:00)"
declare -a ttl30="Bourg-Péronnas vs. Concarneau (2026-09-26 18:28:00)"
declare -a ttl31="QRM vs. Amiens (2026-09-26 18:28:00)"
declare -a ttl32="Fleury vs. Caen (2026-10-03 18:28:00)"
declare -a ttl33="Bastia vs. Orléans (2026-10-01 18:13:00)"
declare -a ttl34="Amiens vs. Villefranche (2026-10-03 18:28:00)"
declare -a ttl35="Multiplex : Journée 8 (2026-09-26 18:28:00)"
declare -a ttl36="Multiplex : Journée 9 (2026-10-03 18:28:00)"
declare -a ttl37="Thionville vs. La Roche (2026-09-26 18:28:00)"
declare -a ttl38="Versailles vs. Valenciennes (2026-10-03 18:28:00)"
declare -a ttl39="TAIF Racing Season 2026 - Week 10, Day 2 (2026-09-26 13:23:00)"
declare -a ttl40="Gaston vs. Smith (2026-08-28 16:52:19)"
declare -a ttl41="Yuan vs. Stoiana (2026-08-28 16:58:00)"
declare -a ttl42="Storm vs. Valkyries (2026-09-20 00:58:00)"
declare -a ttl43="Semenistaja vs. Hunter (2026-08-28 14:58:00)"
declare -a ttl44="TAIF Racing Season 2026 - Week 6, Day 1 (2026-08-28 13:03:00)"
declare -a ttl45="Köln vs. Hoffenheim (2026-08-28 16:17:00)"
declare -a ttl46="Santander vs. Elche (2026-08-28 16:36:00)"
declare -a ttl47="Lille vs. PSG (2026-08-28 17:43:00)"
declare -a ttl48="Preseason: Commanders vs. Ravens (2026-08-28 21:53:00)"
declare -a ttl49="Preseason: Falcons vs. Dolphins (2026-08-28 22:53:00)"

##declare Program Desription
declare -a dscrpt0="Creative Program Description" #Program Description Max FR 01
declare -a dscrpt1="Creative Program Description" #Program Description Max FR 02
declare -a dscrpt2="Creative Program Description" #Program Description Max FR 03
declare -a dscrpt3="Creative Program Description" #Program Description Max FR 04
declare -a dscrpt4="Creative Program Description" #Program Description Max FR 05
declare -a dscrpt5="Creative Program Description" #Program Description Max FR 06
declare -a dscrpt6="Creative Program Description" #Program Description Max FR 07
declare -a dscrpt7="Creative Program Description" #Program Description Max FR 08
declare -a dscrpt8="Creative Program Description" #Program Description Max FR 09
declare -a dscrpt9="Creative Program Description" #Program Description Max FR 10
declare -a dscrpt10="Creative Program Description" #Program Description Max FR 11
declare -a dscrpt11="Creative Program Description" #Program Description Max FR 12
declare -a dscrpt12="Creative Program Description" #Program Description Max FR 13
declare -a dscrpt13="Creative Program Description" #Program Description Max FR 14
declare -a dscrpt14="Creative Program Description" #Program Description Max FR 15
declare -a dscrpt15="Creative Program Description" #Program Description Max FR 16
declare -a dscrpt16="Creative Program Description" #Program Description Max FR 17
declare -a dscrpt17="Creative Program Description" #Program Description Max FR 18
declare -a dscrpt18="Creative Program Description" #Program Description Max FR 19
declare -a dscrpt19="Creative Program Description" #Program Description Max FR 20
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
endtimes=("030000" "060000" "090000" "120000" "150000" "180000" "210000" "235900")
BASEPATH="E:/Github/Dummymax"
DUMMYFILENAME=dummymax.xml

		today=$(date +%d%m%Y)
		tomorrow=$(date --date="+1 day" +%d%m%Y)
		# tomorrow=$(date -v+1d +%d%m%Y)  ## if running on MAC or BSD
		echo '<?xml version="1.0" encoding="UTF-8"?>' > $BASEPATH/$DUMMYFILENAME
		echo '<tv generator-info-name="mydummy" generator-info-url="https://null.null/">' >> $BASEPATH/$DUMMYFILENAME
        numberofiterations=$(($numberofchannels - 1))
        echo "Creating Dummy Epg ..."


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
					echo '    <programme start="'$today${starttimes[$j]}' +0000" stop="'$today${endtimes[$j]}' +0000" channel="'${!tvgid}'">' >> $BASEPATH/$DUMMYFILENAME
					echo '        <title>'${!title}'</title>' >> $BASEPATH/$DUMMYFILENAME
					echo '        <desc>'${!title}'</desc>' >> $BASEPATH/$DUMMYFILENAME
					echo '    </programme>' >> $BASEPATH/$DUMMYFILENAME
			done
			for j in {0..7}; do
					echo '    <programme start="'$tomorrow${starttimes[$j]}' +0000" stop="'$tomorrow${endtimes[$j]}' +0000" channel="'${!tvgid}'">' >> $BASEPATH/$DUMMYFILENAME
					echo '        <title>'${!title}'</title>' >> $BASEPATH/$DUMMYFILENAME
					echo '        <desc>'${!title}'</desc>' >> $BASEPATH/$DUMMYFILENAME
					echo '    </programme>' >> $BASEPATH/$DUMMYFILENAME
			done
		done

		echo '</tv>' >> $BASEPATH/$DUMMYFILENAME

echo "Done!"
sleep 2
