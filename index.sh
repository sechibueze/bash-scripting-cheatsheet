#!/usr/bin/bash 
##### - Use which bash command to get this path

# This is a comment line in bash
# PRINTING 
# echo I am learning bash scripting by preparing a cheatsheet
# echo "Putting strings inside quotes also works as well"

# VARIABLES
# NAME=Samuel
# echo Hello $NAME, Welcome to Bash Scripting!

# USER INPUT
# read -p "Please enter your name : " USERNAME
# echo "Hello $USERNAME, Welcome to Bash Scripting"

# CONSTANTS
# echo "Use \$? to get the Exit status of last command => 0 means success, 1 means error : " $?
# $# => 
# $* => 

# CONDITIONAL STATEMENTS & LOGICAL OPERATORS
# read -p "How old are you ? " AGE
# if [ $AGE -gt 18 ] # Ensure there is space after [ and before ]
# then 
#     echo "You are $AGE years and can go to college"
# fi
# read -p "What is your score ? " SCORE

# GRADE=""
# if [ $SCORE -ge 70 ]
# then 
#     GRADE="A"
# elif [ $SCORE -ge 60 ] && [ $SCORE -lt 70 ]
# then
#     GRADE="B"
# elif [ $SCORE -ge 50 ] && [ $SCORE -lt 60 ]
# then
#     GRADE="C"
# elif [ $SCORE -ge 40 ] && [ $SCORE -lt 50 ]
# then
#     GRADE="D"
# elif [ $SCORE -ge 30 ] && [ $SCORE -lt 40 ]
# then
#     GRADE="E"
# else 
#     GRADE="F"
# fi
# echo "For a score of $SCORE, your grade is $GRADE"
# TESTING FILE CONDITIONS
FILE=index.sh
# if [ -e $FILE ]
# then 
#     echo "This is a file"
# else
#     echo "Not a file"
# fi

# LOOPS - FOR, WHILE, CASE
NUMS=(1 2 3 4 5 6 7 8 9 10)

for NUM in $NUMS 
do 
    if [ $(($NUM%2)) -gt 0 ];
    then
        echo "Printing ODD number => #$NUM";
    else
        echo "Printing EVEN number => #$NUM";
    fi
done
# FUNCTIONS

function get_grade(SCORE){
if [ $SCORE -ge 70 ]
then 
    GRADE="A"
elif [ $SCORE -ge 60 ] && [ $SCORE -lt 70 ]
then
    GRADE="B"
elif [ $SCORE -ge 50 ] && [ $SCORE -lt 60 ]
then
    GRADE="C"
elif [ $SCORE -ge 40 ] && [ $SCORE -lt 50 ]
then
    GRADE="D"
elif [ $SCORE -ge 30 ] && [ $SCORE -lt 40 ]
then
    GRADE="E"
else 
    GRADE="F"
fi
return $GRADE
}

echo  get_grade(70)