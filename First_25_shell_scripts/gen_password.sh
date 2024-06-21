#!/bin/bash
generate_password(){
tr -dc 'A-Za-z0-9!@#$%^&*()_+{}[]'</dev/urandom|fold -w 12| head -n 1
#Uses the tr command to delete (-d) characters not in the specified set of characters (A-Za-z0-9!@#$%^&*()_+{}[])
#from the random data provided by /dev/urandom.
}
pass=$(generate_password)
echo "Generated password: $pass"

