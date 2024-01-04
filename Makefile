prepare-env:
	cp -n .env.example .env

ansible-requirements:
	ansible-galaxy install -r requirements.yml

release-setup: ansible-requirements
	ansible-playbook -i ansible/inventory.yml ansible/setup.yml

deploy: ansible-requirements
	ansible-playbook -i ansible/inventory.yml --vault-password-file vault-password-file playbook.yml