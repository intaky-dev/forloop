#! bin/bash
#set the $1 variable (a positional argument when running the script) as input
input=$1
output=""
for i in input ;
    do letter=${input:$i:1}
    if [[$letter =~ {A-Z}]] ;
        then
            output += ${letter,,}
    elif [[$letter =~ {a-z}]]
        then
            output += ${letter^^}
    else
        output += $letter
    fi
done
echo "output"