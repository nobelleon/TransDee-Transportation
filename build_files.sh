# build_files.sh
#!/bin/bash
echo "BUILD START"
echo "Building project packages..."
echo "Installing project requirements..."
python3 -m pip install -r requirements.txt
echo "Installing tailwindcss and dependencies..."
python3 manage.py tailwind install

echo "Building tailwindcss..."
python3 manage.py tailwind build

echo "Migrating Database..."
python3 manage.py makemigrations --noinput
python3 manage.py migrate --noinput

echo "Collecting static files..."
python3 manage.py collectstatic --noinput

# create a virtual environment named 'venv' if it doesn't already exist
python3.9 -m venv venv

echo "BUILD END"
