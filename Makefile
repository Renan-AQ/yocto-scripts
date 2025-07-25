#.PHONY: get-info

get-info:
	ansible-playbook -i hosts get-info.yml
check-yocto-version:
	ansible-playbook -i hosts check-yocto-version.yml
update-yocto:
	ansible-playbook -i hosts upgrade-yocto.yml
downgrade-yocto:
	ansible-playbook -i hosts downgrade-yocto.yml