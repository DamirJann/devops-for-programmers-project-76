ansible-requirements:
	ansible-galaxy install -r requirements.yml

release-setup: ansible-requirements
	ansible-playbook -i inventory.yml setup.yml

deploy: ansible-requirements
	ansible-playbook -i inventory.yml --vault-password-file vault-password-file playbook.yml