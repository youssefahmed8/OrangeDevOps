- Write the playbook  to add a task to start httpd service on all nodes defined in inventory file.
    hint: Use the service module.

- Create a playbook that uses the file module to create a directory structure on multiple hosts. Ensure the directories have specific permissions, ownership, and that certain files are absent in these directories.

- Use the lineinfile module to ensure that a specific line exists in a configuration file on all hosts. For example, add a line to /etc/hosts only if it’s not already there.

```yaml
---
- name: Ensure a specific line exists in /etc/hosts
  hosts: all
  become: yes
  tasks:
    - name: Ensure specific line is present in /etc/hosts
      lineinfile:
        path: /etc/hosts
        line: "127.0.0.1 localhost"
        state: present

```

- Write a playbook that uses the docker_container module to start a container with a specific image (e.g., nginx) and ensures the container is always running.

- Create a role named nginx_setup that installs and configures Nginx on any system. The role should ensure that the nginx.conf file is properly set up, the service is running, and the firewall allows traffic on port 80.

- Create a role that configures a basic LAMP stack (Linux, Apache, MySQL, PHP). Ensure each service is installed and properly configured. For example, MySQL should have a database and user created, and Apache should serve a test PHP file.

- Given the following sample Ansible playbook, write handler will correctly restart the web server when the configuration file is changed?
    - name: Update web server configuration
      hosts: webservers
      tasks:
        - name: Copy web server configuration file
          copy:
            src: /path/to/webserver.conf
            dest: /etc/webserver/webserver.conf
          notify: Restart web server
