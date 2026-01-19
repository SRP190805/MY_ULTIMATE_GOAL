myfunc() {
    echo "hello$1"
}
myfunc

myfunc2() {
    local myresult='some value'
    echo "$myresult"
}
result=$(myfunc2)
echo "function returns: ${result}"

myfunc3() {
  return 1
}
if myfunc3; then
  echo "success"
else
  echo "failure"
fi
