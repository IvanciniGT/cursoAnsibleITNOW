Role Name
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:
-   hosts: all
    gather_facts: True
    vars:
      instalador:
        git:
            version:
                command: git --version
                requirements: [] 
            install:
                upgrade: true
                repo: 
                    url: ppa:git-core/ppa
                    key: ~
    
        curl:
            install:
                upgrade: false
            version:
                requirements: [] 
    
            #    command: curl --version
    
        nginx:
            install:
                repo:
                    key: http://nginx.org/keys/nginx_signing.key
                    url: deb http://nginx.org/packages/mainline/ubuntu/ $(lsb_release -cs)  nginx
                upgrade: true
            version:
                command: "nginx -v 2>&1"
                requirements:
                    - version: 1.13.4
                      comparator: ge
                    - version: 1.16
                      comparator: lt

    tasks:
        - name: Instalar Software
          include_role: 
            name: instalador

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
