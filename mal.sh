#!/bin/bash

# Script to automatically add entries to Titles.css

# Usage 
# mal.sh https://myanimelist.net/anime/35849/Darling_in_the_FranXX

title=$1

# Getting the name
name=($(echo "$title" | rev | cut -d \/ -f1 | rev))

# Getting the id
id=($(echo "$title"  | rev | cut -d \/ -f2 | rev))

# Adding , in order for the css to work
sed -i -- "s/]\/\*/],\/\*/g" Titles.css

# Adding the new element and an enter
sed -i ':a;N;$!ba;s/\*\/\n\/\*/\*\/\n\t.list-table .list-table-data .data.title .link[href\*=\"\/\/\"]\/\*\*\/\n\/\*/g' Titles.css

# Can't add variables above so a separate sed to add $id and $name to the new element
sleep 0.3s
sed -i -- "s/\"\/\/\"]\/\*\*\//\"\/$id\/\"]\/\*$name\*\//g" Titles.css
