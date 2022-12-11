#!/bin/bash
# Navigate to Home directory
cd ~

# Create source and destination seeds
dst=~/OneDrive/Notas/images
src=~/Documents/Screenshots/

# Get the most recent file in current directory
cd $src
img=$(ls -t | head -n1)

# Navigate to Home directory
cd ~

# Copy image from source to destination
cp "$src$img" $dst

# Return to starting directory
cd $dst