echo "Reading each line and printing the IPaddress and its count in the file"
filename='IPfile.txt'
count=1
ip=()
while read -r line; do
ipadd=$(echo $line | awk -F'-' '{print $1}')
ip+=$ipadd
#echo "$count: $ipadd"
#count=$((count+1))
done < $filename

n=0
# Count of array size ${#ip[@]}
for pr in $ip
do
echo "Array value at index" $n":" $pr
n=$((n+1))
done

echo "Just IP: $ip"
