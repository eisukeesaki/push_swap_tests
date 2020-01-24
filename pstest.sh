#PATH=~/42/Projects/push_swap/;

EOC="\033[0m";
RED="\033[31m";
GREEN="\033[32m";
YELLOW="\033[33m";
BLUE="\033[34m";
HIGH="\033[1m";
BOLD="\e[1m";

#----------------------------------------------------------------------------
#                                 5 element test
#----------------------------------------------------------------------------
echo "------------------------------Testing 5 elements------------------------------";
FAIL_CT=0;
TEST_CT=100;
for (( i=0; i<$TEST_CT; i++ ))
do
	# ARG=`tests/generate_input`;
	ARG="`ruby -e 'printf Array.new(5) { rand(-2147483648...2147483647) }.uniq.map { |i| i.to_s}.join(" ")'`";
	RESULT=`./push_swap $ARG | ./checker $ARG`;
	INS_CT=`printf "$RESULT" | wc -l | bc`;
	if [ $INS_CT -gt 12 ]
	then
		echo "$RESULT";
		echo "\n[FAIL]\t$INS_CT\tinstructions. (Limit is 12)";
		echo "\t\tPassed arguments:";
		echo "\t\t$ARG\n";
		let "FAIL_CT += 1";
	else
		echo "$RESULT";
		echo "${GREEN}[PASS]${EOC}\t$INS_CT\tinstructions.";
	fi
done
echo ------------------------------------------------------------
echo "[SUMMARY]\t$FAIL_CT/$TEST_CT test(s) has failed.";

#----------------------------------------------------------------------------
#                               100 element test
#----------------------------------------------------------------------------
echo "------------------------------Testing 100 elements------------------------------";
FAIL_CT=0;
TEST_CT=5;
TOT_PTS=0;
TOT_INS=0;
for (( i=1; i<=$TEST_CT; i++ ))
do
	ARG="`ruby -e 'printf Array.new(100) { rand(-2147483648...2147483647) }.uniq.map { |i| i.to_s}.join(" ")'`";
	RESULT=`./push_swap $ARG | ./checker $ARG`;
	INS_CT=`printf "$RESULT" | wc -l | bc`;
	if [ $INS_CT -lt 700 ]
	then
		echo "$RESULT";
		echo "${GREEN}[PASS]${EOC}\t$INS_CT\tinstructions. 5 points.";
		let "TOT_INS += $INS_CT";
		let "TOT_PTS += 5";
	elif [ $INS_CT -lt 900 ]
	then
		echo "$RESULT";
		echo "${GREEN}[PASS]${EOC}\t$INS_CT\tinstructions. 4 points.";
		let "TOT_INS += $INS_CT";
		let "TOT_PTS += 4";
	elif [ $INS_CT -lt 1100 ]
	then
		echo "$RESULT";
		echo "${BLUE}[PASS]${EOC}\t$INS_CT\tinstructions. 3 points.";
		let "TOT_INS += $INS_CT";
		let "TOT_PTS += 3";
	elif [ $INS_CT -lt 1300 ]
	then
		echo "$RESULT";
		echo "${YELLOW}[PASS]${EOC}\t$INS_CT\tinstructions. 2 points.";
		let "TOT_INS += $INS_CT";
		let "TOT_PTS += 2";
	elif [ $INS_CT -lt 1500 ]
	then
		echo "$RESULT";
		echo "${YELLOW}[PASS]${EOC}\t$INS_CT\tinstructions. 1 point.";
		let "TOT_INS += $INS_CT";
		let "TOT_PTS += 1";
	else
		echo "$RESULT";
		echo "\n${RED}[FAIL]${EOC}\t$INS_CT\tinstructions. (Limit is 1499)";
		echo "\t\tPassed arguments:";
		echo "\t\t$ARG\n";
		let "FAIL_CT += 1";
	fi
done
echo ------------------------------------------------------------
let "AVG_INS = $TOT_INS / $TEST_CT";
let "AVG_PTS = $TOT_PTS / $TEST_CT";
echo "[SUMMARY for 100 element test]";
echo "\t- $FAIL_CT/$TEST_CT failed tests.";
echo "\t- Average instructions: $AVG_INS (limit is 1499)";
echo "\t- Average points: $AVG_PTS/5";

#----------------------------------------------------------------------------
#                               500 element test
#----------------------------------------------------------------------------
echo "------------------------------Testing 500 elements------------------------------";
FAIL_CT=0;
TEST_CT=5;
TOT_PTS=0;
TOT_INS=0;
for (( i=1; i<=$TEST_CT; i++ ))
do
	# ARG=`tests/generate_input`;
	ARG="`ruby -e 'printf Array.new(500) { rand(-2147483648...2147483647) }.uniq.map { |i| i.to_s}.join(" ")'`";
	RESULT=`./push_swap $ARG | ./checker $ARG`;
	INS_CT=`printf "$RESULT" | wc -l | bc`;
	if [ $INS_CT -lt 5500 ]
	then
		echo "$RESULT";
		echo "${GREEN}[PASS]${EOC}\t$INS_CT\tinstructions. 5 points.";
		let "TOT_INS += $INS_CT";
		let "TOT_PTS += 5";
	elif [ $INS_CT -lt 7000 ]
	then
		echo "$RESULT";
		echo "${GREEN}[PASS]${EOC}\t$INS_CT\tinstructions. 4 points.";
		let "TOT_INS += $INS_CT";
		let "TOT_PTS += 4";
	elif [ $INS_CT -lt 8500 ]
	then
		echo "$RESULT";
		echo "${BLUE}[PASS]${EOC}\t$INS_CT\tinstructions. 3 points.";
		let "TOT_INS += $INS_CT";
		let "TOT_PTS += 3";
	elif [ $INS_CT -lt 10000 ]
	then
		echo "$RESULT";
		echo "${YELLOW}[PASS]${EOC}\t$INS_CT\tinstructions. 2 points.";
		let "TOT_INS += $INS_CT";
		let "TOT_PTS += 2";
	elif [ $INS_CT -lt 11500 ]
	then
		echo "$RESULT";
		echo "${YELLOW}[PASS]${EOC}\t$INS_CT\tinstructions. 1 point.";
		let "TOT_INS += $INS_CT";
		let "TOT_PTS += 1";
	else
		echo "$RESULT";
		echo "\n${RED}[0 POINTS]${EOC}\t$INS_CT\tinstructions. (Limit is 11499)";
		echo "\t\tPassed arguments:";
		echo "\t\t$ARG\n";
		let "FAIL_CT += 1";
	fi
done
echo ------------------------------------------------------------
let "AVG_INS = $TOT_INS / $TEST_CT";
let "AVG_PTS = $TOT_PTS / $TEST_CT";
echo "[SUMMARY for 500 element test]";
echo "\t- $FAIL_CT/$TEST_CT tests did'nt get any points.";
echo "\t- Average instructions: $AVG_INS (limit is 1499)";
echo "\t- Average points: $AVG_PTS/5";

# #----------------------------------------------------------------------------
# #                                 dummy 100 element test
# #----------------------------------------------------------------------------
# echo "------------------------------Testing 100 elements------------------------------";
# FAIL_CT=0;
# TEST_CT=100;
# TOT_PTS=0;
# TOT_INS=0;
# for (( i=1; i<=$TEST_CT; i++ ))
# do
# 	# ARG=`tests/generate_input`;
# 	ARG="`ruby -e 'printf Array.new(5) { rand(-2147483648...2147483647) }.uniq.map { |i| i.to_s}.join(" ")'`";
# 	RESULT=`./push_swap $ARG | ./checker $ARG`;
# 	INS_CT=`printf "$RESULT" | wc -l | bc`;
# 	# if [ $INS_CT -lt 700 ]
# 	if [ $INS_CT -lt 6 ]
# 	then
# 		echo "${GREEN}[PASS]${EOC}\t$INS_CT\tinstructions. 5 points.";
# 		let "TOT_INS += $INS_CT";
# 		let "TOT_PTS += 5";
# 	# elif [ $INS_CT -lt 900 ]
# 	elif [ $INS_CT -lt 8 ]
# 	then
# 		echo "${GREEN}[PASS]${EOC}\t$INS_CT\tinstructions. 4 points.";
# 		let "TOT_INS += $INS_CT";
# 		let "TOT_PTS += 4";
# 	# elif [ $INS_CT -lt 1100 ]
# 	elif [ $INS_CT -lt 10 ]
# 	then
# 		echo "${BLUE}[PASS]${EOC}\t$INS_CT\tinstructions. 3 points.";
# 		let "TOT_INS += $INS_CT";
# 		let "TOT_PTS += 3";
# 	# elif [ $INS_CT -lt 1300 ]
# 	elif [ $INS_CT -lt 11 ]
# 	then
# 		echo "${YELLOW}[PASS]${EOC}\t$INS_CT\tinstructions. 2 points.";
# 		let "TOT_INS += $INS_CT";
# 		let "TOT_PTS += 2";
# 	# elif [ $INS_CT -lt 1500 ]
# 	elif [ $INS_CT -le 12 ]
# 	then
# 		echo "${YELLOW}[PASS]${EOC}\t$INS_CT\tinstructions. 1 point.";
# 		let "TOT_INS += $INS_CT";
# 		let "TOT_PTS += 1";
# 	else
# 		echo "\n${RED}[FAIL]${EOC}\t$INS_CT\tinstructions. (Limit is 12)";
# 		echo "\t\tPassed arguments:";
# 		echo "\t\t$ARG\n";
# 		let "FAIL_CT += 1";
# 	fi
# done
# echo ------------------------------------------------------------
# let "AVG_INS = $TOT_INS / $TEST_CT";
# let "AVG_PTS = $TOT_PTS / $TEST_CT";
# echo "[SUMMARY for 100 element test]";
# echo "\t- $FAIL_CT/$TEST_CT failed tests.";
# echo "\t- Average instructions: $AVG_INS (limit is 12)";
# echo "\t- Average points: $AVG_PTS/5";

