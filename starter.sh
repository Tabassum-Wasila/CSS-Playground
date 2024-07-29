#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 Please supply a folder name"
    exit 1
fi

mkdir "$1"

cd "$1"

touch "index.html"

mkdir "css"

touch "css/style.css"

if [ -z "$2" ]; then
    echo "Usage: Unable to find Document title."
    read -p "Title: " TITLE
else
    TITLE=$2
fi

cat << EOL > "index.html"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$TITLE</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    
</body>
</html>
EOL

echo "Successfully created folder $1 with Document Title: $TITLE"