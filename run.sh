pathfile="conf/path"
path=""
while IFS= read -r line
do
  path=$line
done < "$pathfile"

path=${path%/} // remove trailing slash if there is

hosts="conf/hosts"
while IFS= read -r line
do
  ssh $line "bash -s" < script/script.sh $path
done < "$hosts"
