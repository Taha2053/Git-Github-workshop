#Setup 

# On GitHub web interface:
# 1. Click "Add file" → "Create new file"
# 2. Name it: remote-change.txt
# 3. Add content: "This was created on GitHub"
# 4. Commit directly to main

# Check your local files
ls
# remote-change.txt is NOT here yet

# Fetch from GitHub
git fetch origin
# Check status
git status
```
**Expected output:**
```
Your branch is behind 'origin/main' by 1 commit
  (use "git pull" to update your local branch)
  
# View commits on remote that you don't have
git log origin/main
# See the difference
git diff main origin/main

# Merge remote changes into your local main
git merge origin/main
# OR checkout to update
git switch main
ls
# remote-change.txt is here