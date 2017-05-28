pathfile="path"
while IFS= read -r line
do
  path=$line
done < "$pathfile"
echo $path

path=${path%/} // remove trailing slash if there is

hosts="hosts"
while IFS= read -r line
do
  echo "$line"
  ssh $line "bash -s" < script_disable_fortran.sh $path
done < "$hosts"
