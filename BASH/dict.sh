#Defining
declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"
#Declares sound as a Dictionary object (aka associative array).

#Working with dictionaries
echo "${sounds[dog]}" # Dog's sound
echo "${sounds[@]}"   # All values
echo "${!sounds[@]}"  # All keys
echo "${#sounds[@]}"  # Number of elements
unset sounds[dog]     # Delete dog

#Iteration
Iterate over values
for val in "${sounds[@]}"; do
  echo "$val"
done
#Iterate over keys
for key in "${!sounds[@]}"; do
  echo "$key"
done
