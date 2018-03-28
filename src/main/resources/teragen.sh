#why teragen
#TeraGen will run map tasks to generate the data and will not run any reduce tasks. The default number of map task is defined by the "mapreduce.job.maps=2" param. It's the only purpose here is to generate the 1TB of random data in the following format " 10 bytes key | 2 bytes break | 32 bytes acsii/hex | 4 bytes break |  48 bytes filler | 4 bytes break | \r\n".

 hadoop jar /Users/karan.verma/Documents/backups/h/hadoop-2.6.4/share/hadoop/mapreduce/hadoop-mapreduce-examples-*.jar  teragen -Dmapreduce.job.maps=100 1t random-data1