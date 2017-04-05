#!/bin/sh
printf "char shellcode[]="
objdump -d $1 | awk -F ':|xor|mov|int|jmp|call|pop|lea|das|jae|dec|inc|bound' '{if(NR>7)print $2}' | sed '/^$/d'| sed 's/[ |\t]*$//g' | sed 's/\t/ /g' | sed 's/ /\\x/g' | sed 's/^/\"&/g' | sed 's/$/&\"/g' 


#-F follow the pattern to split the line.if the list does not include the command, you can add it in the list.
