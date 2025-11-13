#!/bin/bash

: '
This script copies all .txt files from the Arena directory
to a new directory called Backup.
'

mkdir -p Arena/Backup    # Create directory when required

cp Arena/*.txt Arena/Backup   # Copy all .txt files into Backup directory
