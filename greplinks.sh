grep "https://" $1 | sed "s/^*https//g" | sed "s/<\/[a-z]>//g" | sed "s/<\/[a-z][a-z][a-z]//g" | sed "s/<[a-z][a-z]>//g" | sed "s/.*alt*//g" | sed "s/\">//g"
