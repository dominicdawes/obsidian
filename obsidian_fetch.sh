#!/bin/bash

# Set the repository name and remote branch
repo_name="obsidian"
remote_branch="main"

# Check if the repository exists
if [[ ! -d "$repo_name" ]]; then
    echo "Repository '$repo_name' does not exist."
    exit 1
fi

# Change to the repository directory
cd "$repo_name"

# Fetch changes from the specified remote branch
git fetch origin "$remote_branch"

# Merge the fetched changes into the current branch
git merge origin/"$remote_branch"

# Check if the pull was successful
if [[ $? -eq 0 ]]; then
    echo "Successfully updated repository '$repo_name' from '$remote_branch'."
else
    echo "Error updating repository '$repo_name'."
fi