#
# Copy createdb.sql.example to createdb.sql
# then uncomment then set database name and username to create you need databases
#
# example: .env MYSQL_USER=appuser and need db name is myshop_db
#
#    CREATE DATABASE IF NOT EXISTS `myshop_db` ;
#    GRANT ALL ON `myshop_db`.* TO 'appuser'@'%' ;
#
#
# this sql script will auto run when the mysql container starts and the $DATA_PATH_HOST/mysql not found.
#
# if your $DATA_PATH_HOST/mysql exists and you do not want to delete it, you can run by manual execution:
#
#     docker-compose exec mysql bash
#     mysql -u root -p < /docker-entrypoint-initdb.d/createdb.sql
#

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root';
ALTER USER 'default'@'%' IDENTIFIED WITH mysql_native_password BY 'secret';

CREATE DATABASE IF NOT EXISTS `fsd19` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `fsd19`.* TO 'default'@'%' ;

CREATE DATABASE IF NOT EXISTS `hanoiserver` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `hanoiserver`.* TO 'default'@'%' ;

CREATE DATABASE IF NOT EXISTS `fsd19` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `fsd19`.* TO 'default'@'%' ;

CREATE DATABASE IF NOT EXISTS `vnecos` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `vnecos`.* TO 'default'@'%' ;

FLUSH PRIVILEGES ;
