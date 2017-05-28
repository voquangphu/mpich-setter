pathfile="path"
path=“”
while IFS= read -r line
do
  path=$line
done < "$pathfile"

path=${path%/} // remove trailing slash if there is

hosts="hosts"
while IFS= read -r line
do
  echo "$line"
  ssh $line "bash -s" < script.sh $path
done < "$hosts"
