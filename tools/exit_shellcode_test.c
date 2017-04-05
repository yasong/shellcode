static const char shellcode[]="\x32\xdb"  //xor ebx
          "\xb0\x01"                  //mov al, 0x1
          "\xcd\x80";                 //int 0x80

int main(){
	int *ret;
	ret = (int *)&ret + 2;
	(*ret) = (int)shellcode;
}
