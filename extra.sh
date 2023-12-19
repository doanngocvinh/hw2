docker cp ./wordcount hadoop-master://root 
docker cp ./gnome hadoop-master://root
docker cp ./distinct hadoop-master://root
docker cp ./mpd hadoop-master://root
docker cp ./mean hadoop-master://root

docker cp hadoop-master://root/wordcount/output output/wordcount
docker cp hadoop-master://root/gnome/output output/gnome
docker cp hadoop-master://root/distinct/output output/distinct
docker cp hadoop-master://root/mean/output output/mean
docker cp hadoop-master://root/mpd/output output/mpd





hdfs dfs -mkdir /wordcount
hdfs dfs -mkdir /wordcount/input
hdfs dfs -put /root/wordcount/bible+shakes.nopunc /wordcount/input


