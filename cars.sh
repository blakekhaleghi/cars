#!/bin/bash
#cars.sh
#

choice=0
n=1
while [ "$n" -eq 1 ] 
do 
	# present menu 
	echo "Please select an operation (i.e) type the number corresponding to the operation) : "
	echo "1) Enter a new car"
	echo "2) Display the list of cars"
	echo "3) Quit and exit the program"
	read choice


	# take the user input for operation read operation 
	
	# do work depending on the operation 
	case $choice in
		1)
		    # take the user input for year, make and model of the new car 
		    echo "Enter the year of car: "
		    read year 

		    echo "Enter the make of car: "
		    read make 

		    echo "Enter the model of car: "
		    read model 

		    # append the new car's details to My_old_cars file 
		    echo "$year":"$make":"$model" >> My_old_cars
		    ;;
		2)
		    # use sort command to display the list of cars sorted by year 
		    # -t':' is used to specify the column seperator 
		    # -k1 is used to specify the column 1 (i.e. year) 
		    # -n is used to do numerical sorting
		    sort -t':' -k1 -n My_old_cars 
		    ;;
		3)
		    n=0
		    # print "Goodbye" message and exit 
		    echo "Goodbye!"
		    exit 
		    ;;
		*)
		    echo "invalid operation selected"
		    ;;
	esac
	echo ""
done 
