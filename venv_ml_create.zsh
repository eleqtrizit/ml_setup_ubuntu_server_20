#!/bin/zsh

env_name="ml-venv"

rm -rf $env_name

python_version=$(which python3)
echo $python_version
$python_version --version

echo Upgrading pip
$python_version -m pip install --upgrade pip --user -q

echo Installing virtualenv
$python_version -m pip install virtualenv -q

# make sure virtualenv is installed and in path
virtualenv_exist=`which virtualenv | rg 'not found'`

if [ -z virtualenv_exist ]
then
	echo virtualenv not installed or PATH not set.
	exit
fi

$python_version -m virtualenv -p $python_version $env_name

cat << EOF > requirements.txt
testresources
methodtools
pandas
plotly
numpy
requests
jupyterlab
ipywidgets
tqdm
pandarallel
ipydatetime
qgrid
sklearn
tensorflow
librosa
scikit-image
autopep8
pillow-simd
ray
EOF

. $env_name/bin/activate
which python3

# this is not the same as $python_version, this python3 belongs to the venv
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

jupyter nbextension enable --py widgetsnbextension
jupyter labextension install @jupyter-widgets/jupyterlab-manager

jupyter labextension install jupyterlab-plotly
jupyter labextension install jupyter-matplotlib
jupyter labextension install qgrid2

jupyter lab build

rm -rf requirements.txt
