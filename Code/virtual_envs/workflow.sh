# check uv version
uv --version

# initialize uv and create the venv
uv init

# to creat the venv
uv venv my-name

# Add a package
uv add requests
# What happens:
# 1. Adds "requests" to pyproject.toml
# 2. Resolves all dependencies
# 3. Updates uv.lock with exact versions
# 4. Installs into .venv/

# Syncing Environments
uv sync
# Installs:
# - Creates .venv/
# - Installs exact versions from uv.lock

# how to add requirements that have been freezed using pip
uv pip install -r requirements.txt

# install python in the venv
uv venv --python 3.10

# to update the lock file after pulling
uv lock --upgrade

# you can use any pip command in uv, uv is built on top of pip that's why 
uv pip command