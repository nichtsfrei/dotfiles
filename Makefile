.DEFAULT_GOAL := setup
.PHONY = setup configure_nvim configure_zellij configure_bashrc
CONFIG_DIR = $(HOME)/.config
# gets the directory of the absolute path of the last "Makefile" in our case it 
# is just this Makefile
ROOT := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

setup_distrobox:
	@echo "This will take a while, please be patient."
	distrobox assemble create --file $(ROOT)/distrobox/default.ini

configure_nvim:
	ln -sf $(ROOT)/nvim $(CONFIG_DIR)/nvim

configure_zellij:
	ln -sf $(ROOT)/zellij $(CONFIG_DIR)/zellij

configure_bashrc:
	ln -sf $(ROOT)/bashrc $(HOME)/.bashrc

#setup calls configure_nvim
setup: configure_nvim configure_zellij configure_bashrc
	@echo "setup complete"
