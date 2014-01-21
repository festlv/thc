echo "Fetching data from port: $1... Ctrl+[ to stop..."

ssterm -b 57600 $1 > data.txt


