# Ansible Boilerplate for community.zabbix

With this repository you can quickly start tinkering around with ansible on zabbix and the community.zabbix repository.
You can find the community repository at https://github.com/ansible-collections/community.zabbix .

It builds an VSCode devcontainer with all the things installed and starts it up alongside all the needed Zabbix components needed.

### Prerequisites

- [VSCode](https://code.visualstudio.com/)
- [VSCode Remote-Containers](https://code.visualstudio.com/docs/remote/containers)
- [Docker Desktop](https://www.docker.com/products/docker-desktop)

### Change devcontainer

See files in .devcontainer. If you need something for the devcontainer add it to .devcontainer/Dockerfile

### Python and Ansible requirements

The devcontainer pip-installs all things in /requirements.txt (like ansible-base and zabbix-api) on build. This way it speeds up the actuall container startup.
On startup it then also ansible-galaxy installs things from /ansible/requirements.yml.
If you want to pull you own fork of the collection (or others) just change the collection dependencies there.

It was never easier to contribute to the community collection ;-) .

### Also check out

- https://github.com/zabbix/zabbix-docker
- https://zabbix.com/
- https://pypi.org/project/zabbix-api/
