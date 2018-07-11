#!/bin/bash

cd ..
bin/rails test test/controllers/main_requests_test.rb
ret=$?
if [ $ret = 0 ]
then
    true
else
    false
fi
