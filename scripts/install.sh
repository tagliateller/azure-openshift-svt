#!/bin/bash

echo $(date) " - Starting Script"

export SUDOUSER=$1

yum -y install git
git clone https://github.com/openshift/svt.git /home/$SUDOUSER/openshift-svt
chown -R $SUDOUSER /home/$SUDOUSER/openshift-svt

yum -y install maven
yum -y install python-flask python-ceph python-boto3

cd /tmp
curl -LO https://github.com/openshift/origin/releases/download/v3.11.0/openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz
tar zxvf openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz
cp openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit/oc /usr/local/bin
rm -rf /tmp/openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit
rm -rf openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz

echo $(date) " - Script Complete"

