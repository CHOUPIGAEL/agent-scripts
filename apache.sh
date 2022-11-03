#!/bin/bash

    #Author : Gael
    #Date : 02-Nov-2022

## ---------- script that apache in Linux -----------------
yum install httpd -y
systemctl status httpd
systemctl start httpd
systemctl enable httpd

