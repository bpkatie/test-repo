git branch -r --merged | egrep -v "(^\*|master)" | sed 's/origin\///' | xargs -n 1 git push origin --delete
