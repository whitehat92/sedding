#inslash
grep -Eo '*/[A-ZA-z0-9]+/*/[A-ZA-z0-9]+/*/[A-ZA-z0-9]+/' $1;
#ips
grep -Eo "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" $1;
#links
grep -Eo '(http|https)://[^/"]+' $1;
#consider special chars
grep -Eo '*/[A-ZA-z0-9]+/[A-ZA-z0-9]+.*' $1; 
#grep links with https
grep "https://" $1 | sed "s/^*https//g" | sed "s/<\/[a-z]>//g" | sed "s/<\/[a-z][a-z][a-z]//g" | sed "s/<[a-z][a-z]>//g" | sed "s/.*alt*//g" | sed "s/\">//g";
#script src
grep -E "<script src" $1;
#some uri paths
grep -Eo '(http|https)://[^/"]+/[A-ZA-z0-9]+.*' $1
