# start ssh service
/etc/init.d/ssh start

# start dc-cart service
cd /usr/src
./gradlew db.host_202.120.40.86 db.port_33306 db.name_t10 db.user_root db.pwd_oblige
./gradlew run
