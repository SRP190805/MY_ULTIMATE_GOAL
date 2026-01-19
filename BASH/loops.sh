for i in /etc/rc.*; do
  echo "$i"
done

for ((i = 0 ; i < 100 ; i++)); do
  echo "$i"
done

for i in {1..5}; do
  echo "Welcome $i"
done

for i in {5..50..5}; do
    echo "Welcome $i"
done

while read -r line; do
  echo "$line"
done <file.txt
