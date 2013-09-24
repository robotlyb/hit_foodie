hit_foodie
======================

A platform for hit students and nearby residents to order food.

requirement
======================

*    ruby:   `1.9.3`
    
*    rails:  `3.2.13`

*    mysql:  `5.5+`



run
======================

1.clone repo to you own
	
    git clone https://github.com/KgTong/hit_foodie.git
   
2.run bundle intall

    bundle install
    
3.set the database in `hit_foodie/config/database.yml`

for `mac`:
 
    username: root
    password: yourpassword
    socket: /tmp/mysql.sock
 
 for `ubuntu`:
 
    username: root
    password: yourpassword
    socket: /var/run/mysqld/mysqld.sock
   
4.run command for development mode:

	rvmsudo rails s -p 80