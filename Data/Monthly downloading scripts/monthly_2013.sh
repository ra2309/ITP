#!/bin/bash



for i in {3..3}
do
	for j in {7..9}
	do
		wget "https://s3.amazonaws.com/tripdata/201"$i"0"$j"-citibike-tripdata.zip"
		unzip -p "201"$i"0"$j"-citibike-tripdata.zip" >> data2013$j.csv
		rm "201"$i"0"$j"-citibike-tripdata.zip"
		#cat "201"$i"-0"$j" - Citi Bike trip data.csv" >> data.csv 
		#rm "201"$i"-0"$j" - Citi Bike trip data.csv"
	done
done
