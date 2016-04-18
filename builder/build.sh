#!/bin/bash -

time vagrant up
vagrant halt
time vagrant package --output lain-demo-$(date +%s).box
