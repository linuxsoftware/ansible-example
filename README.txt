
This example is taken from my working Ansible setup, but I have replaced all
the passwords, usernames and hostnames.  Hopefully with all the redactions you
will still find it a useful starting point.

There are three phases to setting my server up:
0. Create an Admin User and toughen up SSH
   ./newhost.sh
   ansible-playbook setup0.yml --ask-pass

1. Install and setup system software
   ansible-playbook setup1.yml --ask-su-pass

2. Install and configure application software
   ansible-playbook setup2.yml

I found the following Ansible links useful and my setup is based upon them.
Thanks and credit to the authors of those.

ansible-examples   https://github.com/ansible/ansible-examples
PostgreSQL         https://github.com/Open-Future-Belgium/PostgreSQL
semoar-ansible     https://github.com/Semoar/ansible
sovereign          https://github.com/al3x/sovereign
the-ansibles       https://github.com/pjan/the-ansibles
Insanely complete  https://gist.github.com/marktheunissen/2979474
ansible-nginx      https://github.com/nickjj/ansible-nginx

Thanks also to Ralph for the idea of mapping root to postgres.



# License
[CC BY-NC-SA 3.0](http://creativecommons.org/licenses/by-nc-sa/3.0/)
