#!/bin

files='config.properties'
location=`pwd`'/'

spark-submit \
  --master yarn \
  --deploy-mode cluster \
  --executor-memory 6g \
  --executor-cores 2 \
  --num-executors 50 \
  --driver-memory 10G \
  --files $location$files \
  --jars /path/to/mock-library-1.0.jar,/path/to/mock-utils-1.0.jar \
  --class class org.apache.spark.examples.SparkPi \
  ${SPARK_HOME}examples/jars/spark-examples_2.11-2.3.1.jar \
  1000000