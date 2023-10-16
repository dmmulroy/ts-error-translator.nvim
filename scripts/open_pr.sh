#!/bin/bash
dmmulroyDir="error_templates/"
mattpocockDir="ts-error-translator/packages/engine/errors/"

# Use diff to compare the directories and store the output in a file
diff -rq "$dmmulroyDir" "$mattpocockDir" > directory_diff.txt

# Check the exit code of diff (0 if no differences, 1 if differences found)
if [[ $? -eq 0 ]]; then
        echo "No differences found."
    else
        echo "Differences found:"
        cat directory_diff.txt  # Display the differences

        # Create a branch and push the changes
        git checkout -b branch-for-differences
        git add .
        git commit -m "Differences found"
        git push origin branch-for-differences

        # Create a pull request
        pr_response=$(curl -X POST -H "Authorization: token $GITHUB_TOKEN" -d '{
        "title": "Differences Found",
        "head": "branch-for-differences",
        "base": "main",  # Adjust the target branch as needed
        "body": "Differences were found between directories.",
        "maintainer_can_modify": true
        }' "https://api.github.com/repos/dmmulroy/better-ts-errors.nvim/pulls")

        # Output the URL of the created PR
        echo "PR created"
    fi
