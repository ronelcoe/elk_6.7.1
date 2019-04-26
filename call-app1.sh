#!/bin/bash
for (( c=1; c<=$1; c++ ))
do  
   sleep 1
   echo "Welcome $c times"
   curl http://localhost:8081/apm1/callapm2
done

exit 0
