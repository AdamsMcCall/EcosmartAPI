#!/bin/bash

#cd ..
bin/rails test test/models/validity_test.rb
ret=$?
if [ $ret = 0 ]
then
    true
else
    false
fi
