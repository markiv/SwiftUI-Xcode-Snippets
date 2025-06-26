#!/bin/bash

echo "| Filename | Title | Summary | Prefix |"
echo "|----------|-------|---------|--------|"
for file in *.codesnippet; do
    # Extract the filename without the extension
    filename="${file%.codesnippet}"
    prefix=$(/usr/libexec/PlistBuddy -c "Print :IDECodeSnippetCompletionPrefix" "$file")
    title=$(/usr/libexec/PlistBuddy -c "Print :IDECodeSnippetTitle" "$file")
    summary=$(/usr/libexec/PlistBuddy -c "Print :IDECodeSnippetSummary" "$file")
    echo "| $filename | $title | $summary | \`$prefix\` |"
done
