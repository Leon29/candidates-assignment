#!/bin/bash
#add fix to exercise5-server1 here
ssh-keygen;cat .ssh/id_rsa.pub | ssh sheena@server2 'cat >> .ssh/authorized_keys'
