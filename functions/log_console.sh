#!/bin/bash 


declare -A levels
levels[0]="LOG"
levels[1]="INFO"
levels[2]="NOTICE"
levels[3]="ALERT"
levels[4]="TRACE"
levels[5]="ERROR"


VERBOSE=0
function verbose () {
    # $1 - level
    # $2 - msg 
    # $3 - error
    
    if [ -n "$3" ]
    then 
        LEVEL="$3"
        VERBOSE="10"
    else
        LEVEL="${levels[$1]}"
    fi
    

    if [ "$1" -ge "1" ]
    then     
        [ "$1" -le "$VERBOSE" ] && printf "%s -[%s] %s\n" "$(date +%D\ %T)" "$LEVEL" "$2" 1>&2
    else 
        printf "%s\n" "$2" 1>&2
    fi

    return 
}

## Error types
declare -A errors
errors[0]="Generic Error   "
errors[1]="File Error      "
errors[2]="Running as root "
errors[3]="Invalid Option  "
errors[4]="Invalid Argument"



function error () {
    # $1 Error code 
    # $2 Error msg

    verbose "$1" "$2" "${errors[$1]}" 
    
    if [ "$1" -ne 0 ];
    then 
        exit "$1"
    fi
}

