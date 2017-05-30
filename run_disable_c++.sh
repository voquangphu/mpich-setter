pathfile="conf/path"
while IFS= read -r line
do
  path=$line
done < "$pathfile"
echo $path

path=${path%/} // remove trailing slash if there is

hosts="conf/hosts"
while IFS= read -r line
do
  echo "$line"
  ssh $line "bash -s" < script/script_disable_c++.sh $path
done < "$hosts"
