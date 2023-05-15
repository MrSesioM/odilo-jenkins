#!/bin/bash

counter=0

while [ $counter -lt 50 ]; do

	let counter=counter+1

	name=$(awk -F, -v counter="$counter" 'NR==counter {print $1}' people.txt)
	lastname=$(awk -F, -v counter="$counter" 'NR==counter {print $2}' people.txt)
	age=$(shuf -i 20-25 -n 1)

	mysql -u root -p1234 people -e "insert into register values ($counter, '$name', '$lastname', $age)"
	echo "$counter, $name, $lastname, $age was correctly imported"

done
