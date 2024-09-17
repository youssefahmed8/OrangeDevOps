

## 1- If we use the following inventory, on which hosts will Ansible install the httpd package using the given playbook?

[webserver]
web1
web2
[appserver]
app1
app2
app3

---
- name: Setup apache
  hosts: webserver
  tasks:
    - name: install httpd
      yum:
        name: httpd
        state: installed

- name: Setup tomcat
  hosts: appserver
  tasks:
    - name: install httpd
      yum:
        name: tomcat
        state: installed

**httpd will be installed on webserver**


## 2- what commands can you use to run an Ansible playbook named install.yaml?

`ansible-playbook install.yaml`

## 3- A sample playbook named update_service.yml is shown below, it is supposed to update a service on your servers.

                  - hosts: all
                    tasks:
                      - name: Install a new package
                        apt:
                          name: new_package
                          state: present
                  
                      - name: Update the service
                        service:
                          name: my_service
                          state: restarted
                  
                      - name: Check service status
                        service:
                          name: my_service
                          state: started

		what command would you use to run update_service.yml playbook in check mode?

`ansible-playbook update_service.yml --check`


## 4- Consider again the same sample playbook named update_service.yml as shown below.
    Let's suppose you have already ran this playbook on your server. Now, once you run this playbook in check mode against same server, which tasks would result in changed status?

          A. Install a new package
          B. Update the service
          C. Check service status
          D. All of the tasks

 **B. Update the service**


-------------------------------------------------------------

## 5- There is another sample playbook named configure_database.yml that modifies a configuration file on your database servers. The initial code sample is as follows:
    - hosts: all
      tasks:
        - name: Set max connections
          lineinfile:
            path: /etc/postgresql/12/main/postgresql.conf
            line: 'max_connections = 500'

        - name: Set listen addresses
          lineinfile:
            path: /etc/postgresql/12/main/postgresql.conf
            line: 'listen_addresses = "*"'

what command would you use to run the configure_database.yml playbook in both check mode and diff mode?

`ansible-playbook configure_database.yml --check --diff`
-------------------

## 6- Consider again the same sample playbook named configure_database.yml as shown below \
	what is the command to check syntax error

what command would you use to run ansible-lint on the database_setup.yml playbook?

`ansible-playbook --syntax-check configure_database.yml`

----------------------------------------------------------------------------------------


## 7- Consider again the same sample playbook named database_setup.yml as shown below.

      ```bash
      - name: Database Setup Playbook
        hosts: db_servers
        tasks:
          - name: Ensure PostgreSQL is installed
            apt:
              name: postgresql
              state: latest
              update_cache: yes

          - name: Start PostgreSQL service
            service:
              name: postgresql
              state: started

          - copy:
              src: /path/to/pg_hba.conf
              dest: /etc/postgresql/12/main/pg_hba.conf
            notify:
              - Restart PostgreSQL
      ```
After running ansible-lint on the playbook, which of the following issues might you expect to see [make sure to select two choice]?

    A. Incorrect indentation.
    B. Deprecated 'apt' module.
    C. Missing 'name' attribute for a task.
    D. Use of a blacklisted command.

**A. Incorrect indentation & C. Missing 'name' attribute for a task**
--------------------------
## 8- You've been given feedback from ansible-lint about potential issues in your hypothetical webserver_setup.yml playbook. The feedback mentions issues with indentation, deprecated modules, and missing name attributes.
Which of the following is NOT a recommended action based on the feedback?

    A. Correcting the indentation in the playbook.
    B. Replacing deprecated modules with their newer counterparts.
    C. Ignoring the feedback and proceeding with playbook execution.
    D. Adding 'name' attributes to tasks that are missing them.

**C. Ignoring the feedback and proceeding with playbook execution**
-------------------------------

## 9- If ansible-lint provides no output after checking a playbook, what does it indicate?

A. The playbook has syntax errors.
B. The playbook is empty.
C. The playbook adheres to best practices and has no style-related issues.
D. ansible-lint failed to check the playbook.

**C. The playbook adheres to best practices and has no style-related issues.**
-----------------------------------

## 10-Solve issues in below playbook

```bash
---
- hosts: localhost
  become: yes
  tasks:
    - name: 'Execute a date command on localhost'
      command: date

```
**Answer**

```bash
---
- name: `Execute a date command on localhost`
  hosts: localhost
  become: yes
  tasks:
    - name: 'Execute a date command'
      command: date

```

## 11-Create an Ansible playbook to install Nginx on a group of servers. Ensure the service is started and enabled at boot.

```yaml

---
- name: Install and configure Nginx
  hosts: all
  become: yes
  tasks:
    - name: Install Nginx
      package:
        name: nginx
        state: present

    - name: Ensure Nginx is started and enabled
      service:
        name: nginx
        state: started
        enabled: yes


```
