#!/bin/bash
#add fix to exercise5-server2 here
ssh-keygen;cat .ssh/id_rsa.pub | ssh sheena@server1 'cat >> .ssh/authorized_keys'
