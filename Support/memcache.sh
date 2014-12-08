if test $MEM_SERVERS; then
	if test -e "$MEM_BIN_DIR/$cmd"; then
		$MEM_BIN_DIR/$cmd --servers=$MEM_SERVERS $verbose $input;
	else 
		echo "$echocmd" | nc $MEM_SERVERS 11211
	fi
	if test $?=0; then
		echo "$cmd done for $MEM_SERVERS"
	fi
else
	echo "Please set MEM_SERVERS variable"
fi