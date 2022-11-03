#!/bin/bash

    #Author : Gael
    #Date : 02-Nov-2022

## ---------- script that Install jenkins in Linux -----------------
yum install java-11-openjdk-devel -y
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install jenkins -y
systemctl start jenkins
systemctl status jenkins
systemctl enable jenkins
firewall-cmd --permanent --zone=public --add-port=8080/tcp
firewall-cmd --reload
