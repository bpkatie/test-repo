# Collect list of merged branches, remove master, remove origin/ from the start of the branch names, and delete all from the git repo
git branch -r --merged | egrep -v "(^\*|\/(master|main))" | sed 's/origin\///' | xargs -n 1 git push origin --delete

# Remove local references to deleted remote branches
# git prune
