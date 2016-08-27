# bug: If filename contains space, we're fucked

findimagedupes -R *.jpg > "out.txt"

ct=0;

while read line; do
	((ct=ct+1))
	mkdir $ct
	
	IFS=' ' read -ra LINE <<< "$line"
	for dup in "${LINE[@]}"; do
  	
  	mv $dup $ct
  	
	done
done < "out.txt"
