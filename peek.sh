if [[ -z $2 ]]; then lines=3; else lines=$2; fi

inputext=$(cat $1 | wc -l)

if [[ $inputext -le $(( 2 * $lines )) ]]; then cat $1; else echo "Warning! Input file is longer than 2 x $lines lines"; head -n $lines $1; echo ...; tail -n $lines $1; fi 
