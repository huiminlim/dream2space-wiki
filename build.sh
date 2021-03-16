#!/bin/bash
 
# Declare an array of string with type
declare -a StringArray=("README.adoc" "01-front_pitch.adoc" "02-development_setup.adoc")
 
 
# Iterate the string array using for loop
for val in ${StringArray[@]}; do
   #echo $val
   asciidoctor $val
done
