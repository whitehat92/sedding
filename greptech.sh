#from whatweb output
sed "s/\[0m/ /g" $1 | sed "s/\[34m/ /g" | sed "s/\[1m/ /g" | sed "s/\[31m/ /g" | sed "s/\[37m/ /g" | sed "s/\x1b/ /g" | sed "s/[0-9][0-9]m//g" 
