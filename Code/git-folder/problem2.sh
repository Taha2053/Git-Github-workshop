# You're on main, but meant to create a feature branch
# mistake: you commit directly to main
# in a hello.py file add
print("wrong commit branch") 
git add hello.py
git commit -m "Add new feature"  # this should be on a branch!