#!/bin/bash



for i in {3..3}
do
	for j in {10..12}
	do
		wget "https://s3.amazonaws.com/tripdata/201"$i$j"-citibike-tripdata.zip"
		unzip -p "201"$i$j"-citibike-tripdata.zip" >> data.csv
		rm "201"$i$j"-citibike-tripdata.zip"
		#cat "201"$i"-0"$j" - Citi Bike trip data.csv" >> data.csv 
		#rm "201"$i"-0"$j" - Citi Bike trip data.csv"
	done
done
