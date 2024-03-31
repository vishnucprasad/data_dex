#!/bin/bash

# Initialize the changelog content
changelogContent="# DataDex Changelog \n\n"

# Get the commit log with dates
git_log=$(git log --pretty=format:"%cd - %s" --date=short)

# Get unique commit dates and reverse the order
commit_dates=$(echo "$git_log" | awk '{print $1}' | sort -u -r)

# Loop through each commit date
for commit_date in $commit_dates; do
    # Get the commit messages for the current date
    commits=$(echo "$git_log" | grep "^$commit_date" | awk '{$1=""; print}' | sed 's/^[ \t]*//')

    # Initialize variables for each category
    features=""
    bugFixes=""
    others=""

    # Categorize commit messages
    while IFS= read -r commit; do
        if [[ $commit =~ [cC]hangelog ]]; then
            continue
        elif [[ $commit =~ Setup ]]; then
            features+="\n$commit"
        elif [[ $commit =~ [fF]ix ]]; then
            bugFixes+="\n$commit"
        else
            others+="\n$commit"
        fi
    done <<< "$commits"

    if [ -n "$features" ] || [ -n "$bugFixes" ] || [ -n "$others" ]; then
        # Format the date
        formatted_date=$(date -d "$commit_date" +"%-d %B %Y")

        # Append the header for the commit date
        changelogContent+="## $formatted_date\n"

        # Append categorized commit messages to the changelog content
        if [ -n "$features" ]; then
            changelogContent+="\n### Features\n$features\n"
        fi
        if [ -n "$bugFixes" ]; then
            changelogContent+="\n### Bug Fixes\n$bugFixes\n"
        fi
        if [ -n "$others" ]; then
            changelogContent+="\n### Others\n$others\n"
        fi

        # Add a separator between dates
        changelogContent+="\n\n"
    fi
done

# Write the changelog content to the file
echo -e "$changelogContent" > CHANGELOG.md

echo "Changelog has been generated successfully."
