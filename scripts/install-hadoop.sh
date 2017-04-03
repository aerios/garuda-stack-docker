#! /bin/bash

echo "================"
echo "Install Hadop"
echo "================"

install_dir=/usr/local

cd $install_dir
wget "http://apache.repo.unpas.ac.id/hadoop/common/hadoop-2.7.2/hadoop-2.7.2.tar.gz"
tar -xvzf hadoop-2.7.2.tar.gz -C .
mv  hadoop-2.7.2 hadoop

echo "export HADOOP_HOME=/usr/local/hadoop" >> ~/.bashrc
echo "export PATH=$PATH:/usr/local/hadoop/bin/" >> ~/.bashrc


