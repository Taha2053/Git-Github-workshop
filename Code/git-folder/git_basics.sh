# make a project directory and call it my-repo
# open the project in vscode the poershell in windows (cmd -> code .)
# make a file inside the folder "main.py" 
print("hello Git")
# run the file and see that it is executing 


# Initialize Git Repository 
git init
# Git created a hidden .git folder. This IS your repository - all history lives here. Delete this folder = delete all Git history (don't do that).
# to see this folder, we go in vscode : files > preferences > settings and in the search bar we type "files.exclude", we can see different hidden files, uncheck .git ; or use 
ls -la

# to check the status 
git status
# Red = Git sees the file but isn't tracking it yet. We need to tell Git to care about this file.

# Stage the File 
git add main.py
git add .
git status

# Commiting the file
git commit -m "Add hello Git script"
# That a1b2c3d is a unique ID for this snapshot.

# to see the history
git log

# edit the file,make a change in the file
print('hello world')

# see the changes
git diff
# Green = added lines. Red = removed lines. This shows EXACTLY what changed before you commit

# stage and commit
git add main.py
git commit -m "Add hello world script"

# see the history
git log --oneline --graph
git log -- graph --all #graph of history