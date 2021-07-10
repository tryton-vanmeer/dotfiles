.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ".:*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

setup: ## Install tools need to run playbook
	@sudo dnf install --assumeyes ansible python3-psutil

run: ## Run the Ansible playbook
	@ANSIBLE_NOCOWS=1 ansible-playbook \
	--ask-become-pass --inventory localhost, \
	dotfiles.yaml