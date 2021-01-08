if git diff --name-only HEAD HEAD~1 | grep -q okok; then
    exit 0 
else
    exit 1
fi
