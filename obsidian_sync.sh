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
    echo "Successfully pulled changes from '$remote_branch'."

    # Stage all changes (both tracked and untracked files)
    git add .

    # Commit all staged changes with a default message
    git commit -m "Syncing with remote"

    # Push local changes to the remote branch
    git push origin "$remote_branch"

    # Check if the push was successful
    if [[ $? -eq 0 ]]; then
        echo "Successfully pushed changes to '$remote_branch'."
    else
        echo "Error pushing changes to '$remote_branch'."
    fi
else
    echo "Error updating repository '$repo_name'."
fi