ping:
	ansible all -m ping

applepi:
	ansible-playbook -b raspberies.yaml --limit applepi --tags testing --ask-become-pass 

dump-applepi:
	ansible-playbook -b dump.yaml --limit applepi --ask-become-pass 

update-applepi:
	ansible-playbook -b update.yaml --limit applepi --ask-become-pass 

mummy:
	ansible-playbook -b run.yaml --skip-tags drivesetup --limit mummy --ask-become-pass 

drive-mummy:
	ansible-playbook -b run.yaml --limit mummy --tags drivesetup --ask-become-pass 

dump-mummy:
	ansible-playbook -b dump.yaml --limit mummy --ask-become-pass 

gypsy:
	ansible-playbook -b run.yaml --skip-tags drivesetup --limit gypsy --ask-become-pass 
dump-gypsy:
	ansible-playbook -b dump.yaml --limit gypsy --ask-become-pass 

reqs:
	ansible-galaxy install -r requirements.yaml

forcereqs:
	ansible-galaxy install -r requirements.yaml --force

decrypt:
	ansible-vault decrypt  vars/vault.yaml

encrypt:
	ansible-vault encrypt  vars/vault.yaml

gitinit:
	@./git-init.sh
	@echo "ansible vault pre-commit hook installed"
	@echo "don't forget to create a .vault-password too"