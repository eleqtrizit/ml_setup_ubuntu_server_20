# ml_setup_ubuntu_server_20
From a fresh Ubuntu install to running Jupyter, Pandas, Numpy, Tensorflow and more.<br>
<br>
Getting things quickly running can be a hassle.  Some Jupyter dependencies need a recent Node, some Python dependies need developer tools and libs. These scripts do that work for you.<br>
<br>
Review the packages to be installed in the venv_ml_create.sh file.<br>
<br>
Run in this order:
* install_basics.sh
* install_node.zsh
* venv_ml_create.sh
<br>
Once the virtual environment is installed, activate with:<br>
. ml-venv/bin/activate<br>
