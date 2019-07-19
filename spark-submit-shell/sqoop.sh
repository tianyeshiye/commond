echo "aaaaaaaaaaaaaaaa"

connect='jdbc:postgresql://localhost:8002/database'

array=(tableA tableB tableN)

for i in ${array[@]} 
do

echo $i

sudo -u hdfs sqoop import \
--connect $connect \
--username gpadmin \
--password gpadmin \
--table $i \
--delete-target-dir \
--split-by pk_id -m 1 \
--hive-import \
--hive-overwrite \
--create-hive-table \
--hive-database phm \
--hive-table $i

echo $i

done