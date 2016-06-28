echo 'Checking version of Python'
python --version
apt-get install build-essential python-dev -y
apt-get -y install python-pip
echo 'Checking PIP'
pip --version

pip install mkdocs
