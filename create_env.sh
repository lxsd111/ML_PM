# Install Python 3.9 if not available
pyenv install 3.9 --skip-existing

# Create virtual environment
pyenv local 3.9
$(pyenv which python) -m venv .venv

# Activate and install
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
pip install -e .
pip install ipykernel
python -m ipykernel install --user --name from-speech-to-markets --display-name "Python (from-speech-to-markets)"

echo "Done! Activate with: source .venv/bin/activate"