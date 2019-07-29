
# build and run
sudo service docker start
sudo docker build -t archtp .
sudo docker run -p 8050:8050 -v ~/archtp_dash/volume:/data archtp

#restart and run
sudo service docker start
sudo docker run -p 8050:8050 -v ~/archtp_dash/volume:/data archtp

#copy files to s3 from local 
aws s3 cp ./ s3://archetypes/data/census --recursive --include "*.pkl"