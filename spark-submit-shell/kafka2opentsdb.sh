files='abc.properties'
location=`pwd`'/'

spark-submit \
  --master yarn \
  --deploy-mode client \
  --executor-memory 2g \
  --executor-cores 1 \
  --num-executors 4 \
  --driver-memory 4G \
  --files $location$files \
  --class org.xxx.xxxDriver \
  XXXX-jar-with-dependencies.jar \
  abc.properties
