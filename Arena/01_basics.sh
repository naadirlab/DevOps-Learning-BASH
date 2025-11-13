#!/bin/bash

: '
This script creates a directory named Arena and then inside it, 
creates three files: warrior.txt, mage.txt, and archer.txt. 
Then it list the contents of the Arena directory. 
'

mkdir Arena 
cd Arena
touch warrior.txt archer.txt mage.txt
ls
