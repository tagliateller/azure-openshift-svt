#!/bin/bash

echo $(date) " - Starting Script"

export SUDOUSER=$1

yum -y install git
git clone https://github.com/openshift/svt.git /home/$SUDOUSER/openshift-svt

yum -y install maven
	
echo $(date) " - Script Complete"

