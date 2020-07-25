#cloud-config
repo_update: true
repo_upgrade: all

write_files:
- path: /home/centos/config/meta_data.json
  permissions: '0755'
  content: |
     {
     "meta": {
      "server_role" : "web"
     }
             }

- path: /home/centos/ssh-keys.sh
  permissions: '0755'
  content: |
     #!/bin/bash
     ssh-keygen -q -t rsa -N '' -f /home/centos/.ssh/id_rsa <<<y 2>&1 >/dev/null

     cat /home/centos/.ssh/id_rsa.pub >> /home/centos/.ssh/authorized_keys

     ssh -o StrictHostKeyChecking=no centos@localhost
- path: /home/centos/bootstrapper.sh
  permissions: '0755'
  content: |
     #!/bin/bash
     git clone https://github.com/krishnamaram2/Configuration_Manager.git

     cd Configuration_Manager/src/plays

     ansible-playbook -i hosts webapps.yml


runcmd:
 -  touch /home/centos/testing.sh

