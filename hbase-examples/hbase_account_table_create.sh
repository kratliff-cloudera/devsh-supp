#!/bin/bash

# 
# HBase account table creation for Spark testing
# 
exec hbase shell -n << EOF
create 'account', {NAME => 'acct_status'}, {NAME => 'cust_info'}, {NAME => 'record_status'} 
EOF