#!/bin/bash -

time vagrant up
vagrant halt
time vagrant package --output lain-bootstrapped-node1-$(date +%s).box lain_demo
