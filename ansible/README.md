# Ansible Directory

This directory contains Ansible playbooks and related files for automating infrastructure provisioning and configuration management.

## Contents

1. [web_server_setup.yml](./web_server_setup.yml): Ansible playbook for setting up a basic web server.
2. [inventory.ini](./inventory.ini): Ansible inventory file containing the list of web servers.
3. [index.html](./index.html): Sample HTML content to be served by the web server.

## Usage

### Prerequisites

- Ansible installed on the control node.

### Running the Ansible Playbook

1. Edit the `inventory.ini` file and replace `server1_ip_address` and `server2_ip_address` with the IP addresses of your web servers.
2. Ensure that you have SSH access to the web servers from the control node.
3. Run the following command to execute the Ansible playbook:

```bash
ansible-playbook -i inventory.ini web_server_setup.yml
```

This will install Apache web server, ensure it's running, enable it at boot, and copy the index.html file to the appropriate location on the web servers.