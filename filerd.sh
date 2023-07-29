echo "Reading each line and printing only the Users one by one"
filename='sample_passwd'

count=1
while read -r line; do
usr1=$(echo $line | awk -F':' '{print $1}')
echo "$count: $usr1"
count=$((count+1))
done < $filename
