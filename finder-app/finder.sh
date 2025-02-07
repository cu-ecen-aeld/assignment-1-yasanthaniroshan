if [ $# -eq 0 ] 
then 
    echo "No arguments provided"
    exit 1
fi

if [ -d $1 ]
then 
    search_string=$2
    number_of_files=$(ls -l $1 | grep -c ^-)
    number_of_matching_lines=$(grep -r $search_string $1 | wc -l)
    echo "The number of files are $number_of_files and the number of matching lines are $number_of_matching_lines"
else 
    echo "Directory does not exist"
    exit 1
fi
