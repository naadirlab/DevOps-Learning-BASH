#!/bin/bash

: '
This script copies all .txt files from a directory
to a new directory called Backup.
'

mkdir -p Backup    # Create directory when required

cp *.txt Backup    # Copy all .txt files into Backup directory