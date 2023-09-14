#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 folder_name"
    exit 1
fi

folder_name="$1"
module_name=$(echo $folder_name | awk '{print toupper(substr($0,1,1)) tolower(substr($0,2))}')

# Create the folder
mkdir "$folder_name"

# Initialize a Go module
cd "$folder_name" || exit 1
go mod init "$module_name"

# Create the main.go file with the specified code
cat <<EOL > main.go
package main

func main() {
}
EOL

echo "Folder '$folder_name' created with Go module '$module_name' opening project in vs code happy coding...."

code .
