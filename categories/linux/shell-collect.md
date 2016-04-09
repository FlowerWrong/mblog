# shell

* List and Sort Processes by Memory Usage:

`ps -e -orss=,args= | sort -b -k1,1n | pr -TW$COLUMNS`
`ps aux | awk '{print $2, $4, $11}' | sort -k2rn | head -n 10`
