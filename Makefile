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

issue_templates_docx:
	mkdir -p issue_templates_docx
	for file in issue_templates/*.md; do \
		pandoc -s -o issue_templates_docx/$$(basename $$file .md).docx $$file; \
	done


uninstall:
	rm -f /usr/local/bin/ggtd-install-issue-templates
