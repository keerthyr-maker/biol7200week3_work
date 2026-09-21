$!/bin/bash
seqkit fx2tab -n -l "$1" | awk '{print $1, $2 * 0.9}' > query_len.txt

tblastn -query "$1" -subject "$2" -outfmt 6 > blast.txt


awk 'NR==FNR {len[$1]=$2; next} $3 > 30 && $4>len[$1]' query_len.txt blast.txt > "$3"

wc -l $3
~
~                                                                                                                    
~                                                                                                  
wq

~                                                                                                                    
