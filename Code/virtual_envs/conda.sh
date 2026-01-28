# Create environment
conda create -n myenv python=3.10

# Activate
conda activate myenv

# Install packages
conda install pandas numpy scipy

# Export environment
conda env export > environment.yml