#!/bin/bash

ssh -o StrictHostKeyChecking=no -i /data/EE3801KeyPair.pem ec2-user@18.141.182.225 "source ~/.bash_profile; pcluster update-compute-fleet --status STOP_REQUESTED --region ap-southeast-1 --cluster-name MyCluster01; ~/update_snapshot.sh data 2 MyCluster01"
