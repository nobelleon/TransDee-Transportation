# build_files.sh
#!/bin/bash
echo "BUILD START"
# Activate the virtual environment
source venv/bin/activate
# Install all dependencies
pip install -r requirements.txt
# create a virtual environment named 'venv' if it doesn't already exist
python3.9 -m venv venv
# collect static files using the Python interpreter from venv
python manage.py collectstatic --noinput
echo "BUILD END"
