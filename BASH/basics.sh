name="sujal"
echo "${name}"
echo "${name/s/S}"
echo "${name:0:2}"
echo "${name::-1}"
echo "${name:(-1)}"
echo "${name:(-2):1}"
echo "${food:-Cake}"

length=3
echo "${name:0:length}"
