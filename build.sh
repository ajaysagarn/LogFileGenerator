cd /var/scala/LogFileGenerator #navigate to the log generator folder
rm -r /var/scala/LogFileGenerator/log/ #remove previous logs
sbt run # run the project to generate the logs
aws s3 rm s3://ajsa-aws-emr/input --recursive #remove previous logs from the s3 bucket
aws s3 mv /var/scala/LogFileGenerator/log/ s3://ajsa-aws-emr/input --recursive # move the newly generated logs to s3

