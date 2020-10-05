# perfcluster-maintenance
Repository to automate OCP3 Performance Cluster maintenance

## Steps to run the Playbook.
1. Set Correct path for the inventory hosts file in the ansible.cfg
2. Get the latest token and update in the update_docker_token.sh script
3. Make sure the ssh private key mentioned in the group_vars/nodes.yml is present.
4. Run via: `ansible-playbook -u root update_docker_authtoken.yml --extra-vars "nodes" -i hosts`
