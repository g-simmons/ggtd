install:
	@echo "\n"
	@echo "Installing ggtd..."

	ln -s $(pwd)/scripts/install-issue-templates.sh /usr/local/bin/ggtd-install-issue-templates
	ln -s $(pwd)/scripts/install-ggtd-scripts.sh /usr/local/bin/ggtd-install-ggtd-scripts
	chmod +x /usr/local/bin/ggtd-install-issue-templates
	chmod +x /usr/local/bin/ggtd-install-ggtd-scripts

	@echo "\n"
	@echo "Please set GGTD_DIR in your shell to $$(pwd)."
	@echo "For example:"
	@echo "\n"
	@echo "    export 'GGTD_DIR=$$(pwd)' >> ~/.zshrc"
	@echo "    export 'GGTD_DIR=$$(pwd)' >> ~/.bashrc"
	@echo "\n"


uninstall:
	rm -f /usr/local/bin/ggtd-install-issue-templates
