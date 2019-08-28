# -----------------------------------------------------------------------------
#  MAKEFILE RUNNING COMMAND
# -----------------------------------------------------------------------------
#  Author     : Dwi Fahni Denni (@zeroc0d3)
#  License    : MIT
# -----------------------------------------------------------------------------
# Notes:
# use [TAB] instead [SPACE]

export PATH_SCRIPTS="./scripts"

install-pyenv:
	@cd ${PATH_SCRIPTS} && bash ./install_python_env.sh
	@python ${PATH_SCRIPTS}/get-pip.py

setup:
	@rm -rf ${PATH_SCRIPTS}/udemy-dl
	@git clone git@github.com:r0oth3x49/udemy-dl.git ${PATH_SCRIPTS}/udemy-dl
	@chmod +x ${PATH_SCRIPTS}/udemy-dl/udemy-dl.py
	@pip install -r ${PATH_SCRIPTS}/udemy-dl/requirements.txt

run:
	@bash ./run.sh