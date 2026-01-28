# In terminal (with venv active via uv)
uv add ipykernel

# Register as Jupyter kernel
uv run python -m ipykernel install --user --name=myproject --display-name="Python (myproject)"
```

**Now in VSCode:**
```
1. Open .ipynb file
2. Click "Select Kernel" (top right)
3. Choose "Python (myproject)"
4. All your packages available!