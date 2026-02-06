# build_files.sh
#!/bin/bash
echo "BUILD START"
# Activate the virtual environment
source venv/bin/activate
# Install all dependencies
pip install -r requirements.txt
# Collect static files
python3.9 manage.py collectstatic
echo "BUILD END"
