#!/bin/bash

var="8dm7KsjU28B7v621Jls"
value="ERmFRMVZ0U2paTlJYTkxDZz09Cg"

for i in {1..40}
do
    var=$(echo $var | base64)
	count=$(echo $var | wc -c)
	found=$(echo $var | grep $value)
	if [[ -n "$found" && $count -gt 113450 ]]
	then
		echo $var | cut -c $(($count - 19))-
	fi
done