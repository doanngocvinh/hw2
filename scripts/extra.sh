docker cp ./wordcount hadoop-master://root 
docker cp ./gnome hadoop-master://root
docker cp ./distinct hadoop-master://root
docker cp ./mpd hadoop-master://root
docker cp ./mean hadoop-master://root


hdfs dfs -mkdir /wordcount
hdfs dfs -mkdir /wordcount/input
hdfs dfs -put /root/wordcount/bible+shakes.nopunc /wordcount/input


