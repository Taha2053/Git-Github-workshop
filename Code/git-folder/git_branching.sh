# See current branch
git branch

# Create new branch
git branch feature

# Switch to it
git checkout feature
#in the newer version of git
git switch feature

# OR do both in one command -> creating a branch and switching to it
git checkout -b feature
git branch

# create a file in the feature branch "config.py"
name = "your name"
git add config.py
git commit -m "Add configuration file"

#switch back to main and check
git switch main
ls #shows all files in the directory, we notice that config.py is not there
# It's not there! It only exists on the feature branch

# Merge feature branch into main
git merge feature

ls # config.py is here

#Delete the Branch (Optional)
git branch -d feature
#Once merged, the branch served its purpose. Delete it to keep things clean. The commits are still in the history.

# rebasing 
# Create a new feature branch
git checkout -b feature-update-config
# Make a change in the feature branch
# create a file, config.py and inside of it
'version = "1.0"'
git add config.py
git commit -m "Add version to config"
# Switch back to main and make a different change
git switch main
# create a README.md file and inside of it
'# Main project' 
git add README.md
git commit -m "Add README"
# Now main has diverged from feature-update-config
# Instead of merge, let's use rebase to keep history linear
git switch feature-update-config
git rebase main
# This replays your feature commits on top of main's latest commit
# Now merge (will be a fast-forward)
git switch main
git merge feature-update-config
# Clean, linear history!
# View the difference
git log --oneline --graph
# Notice: no merge commit, just a straight line of commits
# Clean up
git branch -d feature-update-config