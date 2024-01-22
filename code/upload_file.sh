#!/bin/bash

sudo -u hdfs hadoop fs -put $HOME/projet-jems/data/artist /user/data/artist/
sudo -u hdfs hadoop fs -put $HOME/projet-jems/data/canvas_size /user/data/canvas_size/  
sudo -u hdfs hadoop fs -put $HOME/projet-jems/data/image_link /user/data/image_link/ 
sudo -u hdfs hadoop fs -put $HOME/projet-jems/data/museum /user/data/museum/ 
sudo -u hdfs hadoop fs -put $HOME/projet-jems/data/museum_hours /user/data/museum_hours/  
sudo -u hdfs hadoop fs -put $HOME/projet-jems/data/product_size /user/data/product_size/
sudo -u hdfs hadoop fs -put $HOME/projet-jems/data/subject /user/data/subject/   
sudo -u hdfs hadoop fs -put $HOME/projet-jems/data/work /user/data/work/ 
