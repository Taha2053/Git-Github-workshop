#wrong message commit 
git commit -m "Fixed stuff"  # Terrible message
git commit --amend -m "Fix memory leak in data loader"  # Better # new commit + same content

# need to undo last commit (soft and hard)
# Undo last commit, keep changes staged
git reset --soft HEAD~1
# Check status
git status # Changes are still there, just uncommitted
# DANGER: This deletes changes permanently
git reset --hard HEAD~1

# commited something wrong 
# Creates a NEW commit that undoes the bad commit
git revert <commit-hash>

# solve a total disaster
# Show ALL actions you've taken
git reflog
# Go back to it
git checkout <commit-hash>
# Or create a branch from it
git checkout -b recovery-branch <commit-hash>