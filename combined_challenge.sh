tail -n +2 wages.csv | sort -k1,1  -k2,2n -t , -u | cut -d , -f1,2 | sed 's/,/ /g' > genyears.txt


### BELOW THIS IS WHAT OM & THOMAS DID FOR CHALLENGE 2
for file in *.csv
do

echo "Highest Earner:"
cat $file | head -n1
cat $file |grep "m"|sort -k4 -n -t, -r| head -n1

echo "Lowest Earner:"
cat $file | head -n1
cat $file |grep "m"|sort -k4 -n -t, -r| tail -n1


echo "Number of Females in Top-10 Earners:"
cat $file |grep "m"|sort -k4 -n -t, -r|head -n10 | grep "female" | wc -l
done