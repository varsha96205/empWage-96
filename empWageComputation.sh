#! /bin/bash -x

echo "welcome to employee wage computation program"

# Constant
IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
NO_OF_WORKING_DAYS=5
MAX_WORK_HOURS=20
# Variable

totalWorkingDays=0
totalWorkingHours=0

while [   $totalWorkingDays -lt $NO_OF_WORKING_DAYS ] && [ $totalWorkingHours -lt $MAX_WORK_HOURS ] 

do
	empCheck=$(( RANDOM%3 ))
	

	totalWorkingDays=$(( $totalWorkingDays + 1 )) 
	# Condition

	case $empCheck in

		$IS_PRESENT_FULL_TIME ) empHrs=8 ;;

		$IS_PRESENT_PART_TIME ) empHrs=4  ;;

		*) empHrs=0	;;
	esac

	totalWorkingHours=$(( $totalWorkingHours + $empHrs ))
	#salary=$(( $EMP_RATE_PER_HR * $empHrs ))

done

salary=$(( $EMP_RATE_PER_HR * $totalWorkingHours ))
