files='stream.properties'
location=`pwd`'/'

spark-submit \
  --master yarn \
  --deploy-mode client \
  --executor-memory 2g \
  --executor-cores 1 \
  --num-executors 4 \
  --driver-memory 4G \
  --files $location$files \
  --class com.crrc.phm.dataextract.stream.DataExtractStreamDriver \
  /tmp/ty/phm-stream-0.0.1-SNAPSHOT-jar-with-dependencies.jar \
  stream.properties
