#/bin/bash

. venv/bin/activate
pip install -r requirements.txt

mv -f tools/gtfs-to-html/html/* results/websites

jupyter nbconvert --to html scripts/index.ipynb
# jupyter nbconvert --to slides "X.ipynb" --reveal-prefix=reveal.js

mv scripts/index.html .
deactivate