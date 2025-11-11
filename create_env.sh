#!/bin/zsh
set -euo pipefail
cd "$(dirname "$0")"

PY="/opt/homebrew/opt/python@3.9/bin/python3.9"
if [ ! -x "$PY" ]; then
  echo "Installing python@3.9 via Homebrew..."
  brew install python@3.9
fi

rm -rf .venv
"$PY" -m venv .venv
source .venv/bin/activate

python -V
pip install --upgrade pip
[ -f requirements.txt ] && pip install -r requirements.txt

echo "Done. Activate with: source .venv/bin/activate"
