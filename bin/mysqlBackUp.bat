
docker exec  brt_dev_mysql mysqldump --column-statistics=0 -h 10.20.30.8 -v -udesenvolvimento -p@R+sun3MlThL  serviceApi > ./datatbase/schema/backupServiceApi2.sql