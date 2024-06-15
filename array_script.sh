value3='test_value'
arr=("value1" value2 $value3)
echo "Full array:" ${arr[@]}

# Print lenght of an array
echo "Length of the array" ${#arr[@]}

# Using indices (index starts from 0)
echo "Using indices" ${arr:1}

# Using specific string between indices
# echo ${arr:0:}

# Fetch a value from string
echo ${arr[1]}

# Delete shortest matching sub-strings
match="Welcome.to.Shellscripting"
echo "String : " ${match}
echo "This will delete shortest substring that matches from front: " ${match#*.}
echo "This will delete shortest substring that matches from back:" ${match%.*}
echo "This will delete longest substring that matches from front" ${match##*.}
echo "This will delete longest substring that matches from back" ${match%%.} 
