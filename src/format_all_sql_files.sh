#!/bin/bash -l
    
for file in `find . -name '*.sql'`; do 
    sqlformat -f $file -g $file; 
done
