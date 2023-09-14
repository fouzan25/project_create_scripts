#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 project_name"
    exit 1
fi

project_name="$1"

# Create a Flutter project
flutter create "$project_name"
cd "$project_name"

# Create necessary directories
mkdir -p assets/images
mkdir -p assets/icons
mkdir -p lib/src/screens
mkdir -p lib/src/widgets


echo "Flutter project '$project_name' created and loading Vs code...."

# Open the project in Visual Studio Code
code .

