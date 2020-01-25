#PATH=~/42/Projects/push_swap/;
EOC="\033[0m";
RED="\033[31m";
GREEN="\033[32m";
YELLOW="\033[33m";
BLUE="\033[34m";
HIGH="\033[1m";
BOLD="\e[1m";

#----------------------------------------------------------------------------
#                                 2 element test
#----------------------------------------------------------------------------
echo "------------------------------Testing   2 elements------------------------------";
TEST_CT=5;
FAIL_CT=0;
TOT_INS=0;
for (( i=0; i<$TEST_CT; i++ ))
do
	ARG="`ruby -e 'printf Array.new(2) { rand(-2147483648...2147483647) }.uniq.map { |i| i.to_s}.join(" ")'`";
	INSLIST=`./push_swap $ARG`;
	RESULT=`printf "$INSLIST" | ./checker $ARG`;
	INS_CT=`printf "$INSLIST" | wc -l`;
	if [ "$RESULT" != "OK" ]
	then
		echo "${RED}$RESULT${EOC}";
		echo "${RED}stack was not sorted.${EOC}\n";
		let "FAIL_CT += 1";
	else
		if [ $INS_CT -le 1 ]
		then
			let "TOT_INS += INS_CT";
			echo "${GREEN}$RESULT${EOC}${GREEN} [PASS]${EOC}\t$INS_CT\tinstructions.";
		else
			echo "${GREEN}$RESULT${EOC}${RED} [FAIL]${EOC}\t$INS_CT\tinstructions. (Limit is 1)";
			echo "\t\tPassed arguments:";
			echo "\t\t$ARG\n";
		fi
	fi
done
echo ------------------------------------------------------------
let "AVG_INS = TOT_INS / TEST_CT";
echo "[SUMMARY for 2 element test]";
echo "\t- $FAIL_CT/$TEST_CT failed tests.";
echo "\t- Average instructions: $AVG_INS (limit is 1)";
echo "\n\n";

#----------------------------------------------------------------------------
#                                 3 element test
#----------------------------------------------------------------------------
echo "------------------------------Testing   3 elements------------------------------";
TEST_CT=5;
FAIL_CT=0;
TOT_INS=0;
for (( i=0; i<$TEST_CT; i++ ))
do
	ARG="`ruby -e 'printf Array.new(3) { rand(-2147483648...2147483647) }.uniq.map { |i| i.to_s}.join(" ")'`";
	INSLIST=`./push_swap $ARG`;
	RESULT=`printf "$INSLIST" | ./checker $ARG`;
	INS_CT=`printf "$INSLIST" | wc -l`;
	if [ "$RESULT" != "OK" ]
	then
		echo "${RED}$RESULT${EOC}";
		echo "${RED}stack was not sorted.${EOC}\n";
		let "FAIL_CT += 1";
	else
		if [ $INS_CT -le 5 ]
		then
			let "TOT_INS += INS_CT";
			echo "${GREEN}$RESULT${EOC}${GREEN} [PASS]${EOC}\t$INS_CT\tinstructions.";
		else
			echo "${GREEN}$RESULT${EOC}${RED} [FAIL]${EOC}\t$INS_CT\tinstructions. (Limit is 12)";
			echo "\t\tPassed arguments:";
			echo "\t\t$ARG\n";
		fi
	fi
done
echo ------------------------------------------------------------
let "AVG_INS = TOT_INS / TEST_CT";
echo "[SUMMARY for 3 element test]";
echo "\t- $FAIL_CT/$TEST_CT failed tests.";
echo "\t- Average instructions: $AVG_INS (limit is 3)";
echo "\n\n";

#----------------------------------------------------------------------------
#                                 4 element test
#----------------------------------------------------------------------------
echo "------------------------------Testing   4 elements------------------------------";
TEST_CT=5;
FAIL_CT=0;
TOT_INS=0;
for (( i=0; i<$TEST_CT; i++ ))
do
	ARG="`ruby -e 'printf Array.new(4) { rand(-2147483648...2147483647) }.uniq.map { |i| i.to_s}.join(" ")'`";
	INSLIST=`./push_swap $ARG`;
	RESULT=`printf "$INSLIST" | ./checker $ARG`;
	INS_CT=`printf "$INSLIST" | wc -l`;
	if [ "$RESULT" != "OK" ]
	then
		echo "${RED}$RESULT${EOC}";
		echo "${RED}stack was not sorted.${EOC}\n";
		let "FAIL_CT += 1";
	else
		let "TOT_INS += INS_CT";
		echo "${GREEN}$RESULT${EOC}${GREEN} [PASS]${EOC}\t$INS_CT\tinstructions.";
	fi
done
echo ------------------------------------------------------------
let "AVG_INS = TOT_INS / TEST_CT";
echo "[SUMMARY for 4 element test]";
echo "\t- $FAIL_CT/$TEST_CT failed tests.";
echo "\t- Average instructions: $AVG_INS";
echo "\n\n";

#----------------------------------------------------------------------------
#                                 5 element test
#----------------------------------------------------------------------------
echo "------------------------------Testing   5 elements------------------------------";
TEST_CT=5;
FAIL_CT=0;
TOT_INS=0;
for (( i=0; i<$TEST_CT; i++ ))
do
	ARG="`ruby -e 'printf Array.new(5) { rand(-2147483648...2147483647) }.uniq.map { |i| i.to_s}.join(" ")'`";
	INSLIST=`./push_swap $ARG`;
	RESULT=`printf "$INSLIST" | ./checker $ARG`;
	INS_CT=`printf "$INSLIST" | wc -l`;
	if [ "$RESULT" != "OK" ]
	then
		echo "${RED}$RESULT${EOC}";
		echo "${RED}stack was not sorted.${EOC}\n";
		let "FAIL_CT += 1";
	else
		if [ $INS_CT -le 12 ]
		then
			let "TOT_INS += INS_CT";
			echo "${GREEN}$RESULT${EOC}${GREEN} [PASS]${EOC}\t$INS_CT\tinstructions.";
		else
			echo "${GREEN}$RESULT${EOC}${RED} [FAIL]${EOC}\t$INS_CT\tinstructions. (Limit is 12)";
			echo "\t\tPassed arguments:";
			echo "\t\t$ARG\n";
		fi
	fi
done
echo ------------------------------------------------------------
let "AVG_INS = TOT_INS / TEST_CT";
echo "[SUMMARY for 5 element test]";
echo "\t- $FAIL_CT/$TEST_CT failed tests.";
echo "\t- Average instructions: $AVG_INS (limit is 12)";
echo "\n\n";

#----------------------------------------------------------------------------
#                               100 element test
#----------------------------------------------------------------------------
echo "------------------------------Testing 100 elements------------------------------";
TEST_CT=5;
FAIL_CT=0;
TOT_INS=0;
TOT_PTS=0;
for (( i=0; i<$TEST_CT; i++ ))
do
	ARG="`ruby -e 'printf Array.new(100) { rand(-2147483648...2147483647) }.uniq.map { |i| i.to_s}.join(" ")'`";
	INSLIST=`./push_swap $ARG`;
	RESULT=`printf "$INSLIST" | ./checker $ARG`;
	INS_CT=`printf "$INSLIST" | wc -l`;
	if [ "$RESULT" != "OK" ]
	then
		echo "${RED}$RESULT${EOC}";
		echo "${RED}stack was not sorted.${EOC}\n";
		let "FAIL_CT += 1";
	else
		if [ $INS_CT -lt 700 ]
		then
			echo "${GREEN}$RESULT [PASS]${EOC}\t$INS_CT\tinstructions. 5 points.";
			let "TOT_INS += $INS_CT";
			let "TOT_PTS += 5";
		elif [ $INS_CT -lt 900 ]
		then
			echo "${GREEN}$RESULT [PASS]${EOC}\t$INS_CT\tinstructions. 4 points.";
			let "TOT_INS += $INS_CT";
			let "TOT_PTS += 4";
		elif [ $INS_CT -lt 1100 ]
		then
			echo "${GREEN}$RESULT${EOC}${BLUE} [PASS]${EOC}\t$INS_CT\tinstructions. 3 points.";
			let "TOT_INS += $INS_CT";
			let "TOT_PTS += 3";
		elif [ $INS_CT -lt 1300 ]
		then
			echo "${GREEN}$RESULT${EOC}${YELLOW} [PASS]${EOC}\t$INS_CT\tinstructions. 2 points.";
			let "TOT_INS += $INS_CT";
			let "TOT_PTS += 2";
		elif [ $INS_CT -lt 1500 ]
		then
			echo "${GREEN}$RESULT${EOC}${YELLOW} [PASS]${EOC}\t$INS_CT\tinstructions. 1 point.";
			let "TOT_INS += $INS_CT";
			let "TOT_PTS += 1";
		else
			echo "${GREEN}$RESULT${EOC}${RED} [FAIL]${EOC}\t$INS_CT\tinstructions. (Limit is 1499)";
			echo "\t\tPassed arguments:";
			echo "\t\t$ARG\n";
			let "FAIL_CT += 1";
		fi
	fi
done
echo ------------------------------------------------------------
let "AVG_INS = TOT_INS / TEST_CT";
let "AVG_PTS = TOT_PTS / TEST_CT";
echo "[SUMMARY for 100 element test]";
echo "\t- $FAIL_CT/$TEST_CT failed tests.";
echo "\t- Average instructions: $AVG_INS (limit is 1499)";
echo "\t- Average points: $AVG_PTS/5";
echo "\n\n";

#----------------------------------------------------------------------------
#                               500 element test
#----------------------------------------------------------------------------
echo "------------------------------Testing 500 elements------------------------------";
TEST_CT=5;
FAIL_CT=0;
TOT_INS=0;
TOT_PTS=0;
for (( i=0; i<$TEST_CT; i++ ))
do
	ARG="`ruby -e 'printf Array.new(500) { rand(-2147483648...2147483647) }.uniq.map { |i| i.to_s}.join(" ")'`";
	INSLIST=`./push_swap $ARG`;
	RESULT=`printf "$INSLIST" | ./checker $ARG`;
	INS_CT=`printf "$INSLIST" | wc -l`;
	if [ "$RESULT" != "OK" ]
	then
		echo "${RED}$RESULT${EOC}";
		echo "${RED}stack was not sorted.${EOC}\n";
		let "FAIL_CT += 1";
	else
		if [ $INS_CT -lt 5500 ]
		then
			echo "${GREEN}$RESULT [PASS]${EOC}\t$INS_CT\tinstructions. 5 points.";
			let "TOT_INS += $INS_CT";
			let "TOT_PTS += 5";
		elif [ $INS_CT -lt 7000 ]
		then
			echo "${GREEN}$RESULT [PASS]${EOC}\t$INS_CT\tinstructions. 4 points.";
			let "TOT_INS += $INS_CT";
			let "TOT_PTS += 4";
		elif [ $INS_CT -lt 8500 ]
		then
			echo "${GREEN}$RESULT${EOC}${BLUE} [PASS]${EOC}\t$INS_CT\tinstructions. 3 points.";
			let "TOT_INS += $INS_CT";
			let "TOT_PTS += 3";
		elif [ $INS_CT -lt 10000 ]
		then
			echo "${GREEN}$RESULT${EOC}${YELLOW} [PASS]${EOC}\t$INS_CT\tinstructions. 2 points.";
			let "TOT_INS += $INS_CT";
			let "TOT_PTS += 2";
		elif [ $INS_CT -lt 11500 ]
		then
			echo "${GREEN}$RESULT${EOC}${YELLOW} [PASS]${EOC}\t$INS_CT\tinstructions. 1 point.";
			let "TOT_INS += $INS_CT";
			let "TOT_PTS += 1";
		else
			echo "${GREEN}$RESULT${EOC}${RED} [FAIL]${EOC}\t$INS_CT\tinstructions. (Limit is 11499)";
			echo "\t\tPassed arguments:";
			echo "\t\t$ARG\n";
			let "FAIL_CT += 1";
		fi
	fi
done
echo ------------------------------------------------------------
let "AVG_INS = TOT_INS / TEST_CT";
let "AVG_PTS = TOT_PTS / TEST_CT";
echo "[SUMMARY for 500 element test]";
echo "\t- $FAIL_CT/$TEST_CT failed tests.";
echo "\t- Average instructions: $AVG_INS (limit is 11499)";
echo "\t- Average points: $AVG_PTS/5";
echo "\n\n";
