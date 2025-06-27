#!/bin/bash

echo "| File     | Title | Summary | Prefix |"
echo "|----------|-------|---------|--------|"
for file in *.codesnippet; do
    # Extract the filename without the extension
    filename="${file%.codesnippet}"
    prefix=$(/usr/libexec/PlistBuddy -c "Print :IDECodeSnippetCompletionPrefix" "$file")
    title=$(/usr/libexec/PlistBuddy -c "Print :IDECodeSnippetTitle" "$file")
    summary=$(/usr/libexec/PlistBuddy -c "Print :IDECodeSnippetSummary" "$file")
    link="https://github.com/markiv/SwiftUI-Xcode-Snippets/blob/main/$filename.codesnippet"
    echo "| [$filename]($link) | $title | $summary | \`$prefix\` |"
done

# https://github.com/markiv/SwiftUI-Xcode-Snippets/raw/refs/heads/main/SwiftUI-List1000.codesnippet
# https://github.com/markiv/SwiftUI-Xcode-Snippets/blob/main/EmojiFlag.codesnippet
