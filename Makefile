ansible-requirements:
	ansible-galaxy install -r ansible/requirements.yml

release-setup: ansible-requirements
	ansible-playbook -i ansible/inventory.yml ansible/setup.yml

release:
	ansible-playbook -i ansible/inventory.yml --vault-password-file ansible/group_vars/all/vault-password-file playbook.yml