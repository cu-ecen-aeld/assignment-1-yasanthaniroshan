if [ $# -ne 2 ] 
then 
    echo "Insufficient arguments"
    exit 1
fi

file_name=$1
file_content=$2

echo $(dirname $file_name)  
mkdir -p $(dirname $file_name)
echo $file_content > $file_name