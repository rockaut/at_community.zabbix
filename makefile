ANSIBLEDIR = ./ansible

get-collections:
	@echo "*** fetch ansible-collections ***"
	@cd ${ANSIBLEDIR} && \
		ansible-galaxy collection install -r requirements.yml

ansible-encrypt:
	@cd $(ANSIBLEDIR); \
		find ./ -name "vault" \( -exec echo {} \; -exec ansible-vault encrypt {} \; \); \
		find ./ -name "*.vault" \( -exec echo {} \; -exec ansible-vault decrypt {} \; \);

ansible-decrypt:
	@cd $(ANSIBLEDIR); \
		find ./ -name "vault" \( -exec echo {} \; -exec ansible-vault decrypt {} \; \); \
		find ./ -name "*.vault" \( -exec echo {} \; -exec ansible-vault decrypt {} \; \);

initialize: total-clean create-pythonenv
	@find -iname ".placeholder" -delete
	@find -iname ".initialize" -delete
