# Numeric calculations
$((a + 200))      # Add 200 to $a
$(($RANDOM%200))  # Random number 0..199
declare -i count  # Declare as type integer
count+=1          # Increment

#Subshells
(cd somedir; echo "I'm now in $PWD")
pwd # still in first directory

#Redirection
python hello.py > output.txt            # stdout to (file)
python hello.py >> output.txt           # stdout to (file), append
python hello.py 2> error.log            # stderr to (file)
python hello.py 2>&1                    # stderr to stdout
python hello.py 2>/dev/null             # stderr to (null)
python hello.py >output.txt 2>&1        # stdout and stderr to (file), equivalent to &>
python hello.py &>/dev/null             # stdout and stderr to (null)
echo "$0: warning: too many users" >&2  # print diagnostic message to stderr
python hello.py < foo.txt      # feed foo.txt to stdin for python
diff <(ls -r) <(ls)            # Compare two stdout without files

#Inspecting commands
command -V cd
#=> "cd is a function/alias/whatever"

#Trap errors
trap 'echo Error at about $LINENO' ERR
or

traperr() {
  echo "ERROR: ${BASH_SOURCE[1]} at about ${BASH_LINENO[0]}"
}

set -o errtrace
trap traperr ERR
Case/switch
case "$1" in
  start | up)
    vagrant up
    ;;

  *)
    echo "Usage: $0 {start|stop|ssh}"
    ;;
esac

#Source relative
source "${0%/*}/../share/foo.sh"

#printf
printf "Hello %s, I'm %s" Sven Olga
#=> "Hello Sven, I'm Olga

printf "1 + 1 = %d" 2
#=> "1 + 1 = 2"

printf "This is how you print a float: %f" 2
#=> "This is how you print a float: 2.000000"

printf '%s\n' '#!/bin/bash' 'echo hello' >file
# format string is applied to each group of arguments
printf '%i+%i=%i\n' 1 2 3  4 5 9
