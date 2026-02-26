#!/bin/bash

[[ $# -lt 4 ]] && { echo "Usage: $0 [-v] [-r] [-l] [-u] [-s A B] -i input -o output"; exit 1; }

while [[ $# -gt 0 ]]; do
    case $1 in
        -v) v=1; shift ;;
        -r) r=1; shift ;;
        -l) l=1; shift ;;
        -u) u=1; shift ;;
        -s) a="$2"; b="$3"; shift 3 ;;
        -i) infile="$2"; shift 2 ;;
        -o) outfile="$2"; shift 2 ;;
        *) echo "Unknown option $1"; exit 1 ;;
    esac
done

[[ ! -f $infile ]] && { echo "Input file not found"; exit 1; }

txt=$(cat "$infile")

[[ $a ]] && txt=$(sed "s/$a/$b/g" <<< "$txt")
[[ $v ]] && txt=$(tr 'a-zA-Z' 'A-Za-z' <<< "$txt")
[[ $r ]] && txt=$(rev <<< "$txt")
[[ $l ]] && txt=$(tr 'A-Z' 'a-z' <<< "$txt")
[[ $u ]] && txt=$(tr 'a-z' 'A-Z' <<< "$txt")

echo "$txt" > "$outfile"
echo "Done. Output: $outfile"
