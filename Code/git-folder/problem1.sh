# Create a conflict scenario
git checkout -b feature-conflict

# Edit hello.py line 1
# create a hello.py file and add in it
print('Version from feature branch')
git add hello.py
git commit -m "Change greeting in feature"

# Switch to main
git checkout main

# Edit the SAME line differently
print('Version from main branch')
git add hello.py
git commit -m "Change greeting in main"

# Try to merge
git merge feature-conflict
```

**Expected Output:**
```
CONFLICT (content): Merge conflict in hello.py
Automatic merge failed; fix conflicts and then commit the result.