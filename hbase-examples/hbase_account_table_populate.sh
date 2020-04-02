#!/bin/bash

# 
# Populate HBase account table with some data 
# These are from the DevSH Hive 'accounts' table 
# HBASE 'put' syntax:
#   put <'tablename'>,<'rowname'>,<'columnvalue'>,<'value'>
# 
# I can run multiple PUT commands using shell scripting.
# See https://stackoverflow.com/questions/25667616/running-multiples-query-on-hbase-shell-without-calling-hbase-shell-again
# This technique has been tested and works with
#   HBase table 't'
#   script file test-t.sh
#
timestamp=`date +"%s%N"|cut -b1-13`
exec hbase shell -n << EOF
put 'account', '1', 'acct_status:acct_create_dt', '2008-10-23 16:05:05', $timestamp
put 'account', '1', 'cust_info:fname', 'Donald', $timestamp
put 'account', '1', 'cust_info:lname', 'Becton', $timestamp
put 'account', '1', 'cust_info:address', '2275 Washburn Street', $timestamp
put 'account', '1', 'cust_info:city', 'Oakland', $timestamp
put 'account', '1', 'cust_info:state', 'CA', $timestamp
put 'account', '1', 'cust_info:zipcode', '94660', $timestamp
put 'account', '1', 'cust_info:phone_number', '5100032418', $timestamp
put 'account', '1', 'record_status:created', '2014-03-18 13:29:47', $timestamp
put 'account', '1', 'record_status:modified', '2014-03-18 13:29:47', $timestamp
put 'account', '2', 'acct_status:acct_create_dt', '2008-11-12 03:00:01', $timestamp
put 'account', '2', 'cust_info:fname', 'Donna', $timestamp
put 'account', '2', 'cust_info:lname', 'Jones', $timestamp
put 'account', '2', 'cust_info:address', '3885 Elliott Street', $timestamp
put 'account', '2', 'cust_info:city', 'San Francisco', $timestamp
put 'account', '2', 'cust_info:state', 'CA', $timestamp
put 'account', '2', 'cust_info:zipcode', '94171', $timestamp
put 'account', '2', 'cust_info:phone_number', '4150835799', $timestamp
put 'account', '2', 'record_status:created', '2014-03-18 13:29:47', $timestamp
put 'account', '2', 'record_status:modified', '2014-03-18 13:29:47', $timestamp
put 'account', '3', 'acct_status:acct_create_dt', '2008-12-21 09:19:50', $timestamp
put 'account', '3', 'cust_info:fname', 'Dorthy', $timestamp
put 'account', '3', 'cust_info:lname', 'Chalmers', $timestamp
put 'account', '3', 'cust_info:address', '4073 Whaley Lane', $timestamp
put 'account', '3', 'cust_info:city', 'San Mateo', $timestamp
put 'account', '3', 'cust_info:state', 'CA', $timestamp
put 'account', '3', 'cust_info:zipcode', '94479', $timestamp
put 'account', '3', 'cust_info:phone_number', '6506877757', $timestamp
put 'account', '3', 'record_status:created', '2014-03-18 13:29:47', $timestamp
put 'account', '3', 'record_status:modified', '2014-03-18 13:29:47', $timestamp
put 'account', '4', 'acct_status:acct_create_dt', '2008-11-28 00:08:09', $timestamp
put 'account', '4', 'cust_info:fname', 'Leila', $timestamp
put 'account', '4', 'cust_info:lname', 'Spencer', $timestamp
put 'account', '4', 'cust_info:address', '1447 Ross Street', $timestamp
put 'account', '4', 'cust_info:city', 'San Mateo', $timestamp
put 'account', '4', 'cust_info:state', 'CA', $timestamp
put 'account', '4', 'cust_info:zipcode', '94444', $timestamp
put 'account', '4', 'cust_info:phone_number', '6503198619', $timestamp
put 'account', '4', 'record_status:created', '2014-03-18 13:29:47', $timestamp
put 'account', '4', 'record_status:modified', '2014-03-18 13:29:47', $timestamp
put 'account', '5', 'acct_status:acct_create_dt', '2008-11-15 23:06:06', $timestamp
put 'account', '5', 'cust_info:fname', 'Anita', $timestamp
put 'account', '5', 'cust_info:lname', 'Laughlin', $timestamp
put 'account', '5', 'cust_info:address', '2767 Hill Street', $timestamp
put 'account', '5', 'cust_info:city', 'Richmond', $timestamp
put 'account', '5', 'cust_info:state', 'CA', $timestamp
put 'account', '5', 'cust_info:zipcode', '94872', $timestamp
put 'account', '5', 'cust_info:phone_number', '5107754354', $timestamp
put 'account', '5', 'record_status:created', '2014-03-18 13:29:47', $timestamp
put 'account', '5', 'record_status:modified', '2014-03-18 13:29:47', $timestamp
put 'account', '6', 'acct_status:acct_create_dt', '2008-11-20 12:39:33', $timestamp
put 'account', '6', 'acct_status:acct_close_dt', '2014-03-01 07:37:48', $timestamp
put 'account', '6', 'cust_info:fname', 'Stevie', $timestamp
put 'account', '6', 'cust_info:lname', 'Bridge', $timestamp
put 'account', '6', 'cust_info:address', '3977 Linda Street', $timestamp
put 'account', '6', 'cust_info:city', 'Sacramento', $timestamp
put 'account', '6', 'cust_info:state', 'CA', $timestamp
put 'account', '6', 'cust_info:zipcode', '94264', $timestamp
put 'account', '6', 'cust_info:phone_number', '9162111862', $timestamp
put 'account', '6', 'record_status:created', '2014-03-18 13:29:47', $timestamp
put 'account', '6', 'record_status:modified', '2014-03-18 13:29:47', $timestamp
put 'account', '7', 'acct_status:acct_create_dt', '2008-12-09 10:32:12', $timestamp
put 'account', '7', 'acct_status:acct_close_dt', '2010-10-16 10:01:51', $timestamp
put 'account', '7', 'cust_info:fname', 'David', $timestamp
put 'account', '7', 'cust_info:lname', 'Eggers', $timestamp
put 'account', '7', 'cust_info:address', '2109 Ross Street', $timestamp
put 'account', '7', 'cust_info:city', 'Oakland', $timestamp
put 'account', '7', 'cust_info:state', 'CA', $timestamp
put 'account', '7', 'cust_info:zipcode', '94508', $timestamp
put 'account', '7', 'cust_info:phone_number', '5103935529', $timestamp
put 'account', '7', 'record_status:created', '2014-03-18 13:29:47', $timestamp
put 'account', '7', 'record_status:modified', '2014-03-18 13:29:47', $timestamp
put 'account', '8', 'acct_status:acct_create_dt', '2008-12-15 08:49:38', $timestamp
put 'account', '8', 'cust_info:fname', 'Dorothy', $timestamp
put 'account', '8', 'cust_info:lname', 'Koopman', $timestamp
put 'account', '8', 'cust_info:address', '1985 Pratt Avenue', $timestamp
put 'account', '8', 'cust_info:city', 'San Mateo', $timestamp
put 'account', '8', 'cust_info:state', 'CA', $timestamp
put 'account', '8', 'cust_info:zipcode', '94469', $timestamp
put 'account', '8', 'cust_info:phone_number', '6502406661', $timestamp
put 'account', '8', 'record_status:created', '2014-03-18 13:29:47', $timestamp
put 'account', '8', 'record_status:modified', '2014-03-18 13:29:47', $timestamp
put 'account', '9', 'acct_status:acct_create_dt', '2008-11-07 17:58:55', $timestamp
put 'account', '9', 'acct_status:acct_close_dt', '2014-02-14 01:26:52', $timestamp
put 'account', '9', 'cust_info:fname', 'Kara', $timestamp
put 'account', '9', 'cust_info:lname', 'Kohl', $timestamp
put 'account', '9', 'cust_info:address', '235 Fort Street', $timestamp
put 'account', '9', 'cust_info:city', 'Palo Alto', $timestamp
put 'account', '9', 'cust_info:state', 'CA', $timestamp
put 'account', '9', 'cust_info:zipcode', '94312', $timestamp
put 'account', '9', 'cust_info:phone_number', '6502384894', $timestamp
put 'account', '9', 'record_status:created', '2014-03-18 13:29:47', $timestamp
put 'account', '9', 'record_status:modified', '2014-03-18 13:29:47', $timestamp
put 'account', '10', 'acct_status:acct_create_dt', '2008-12-02 23:28:01', $timestamp
put 'account', '10', 'cust_info:fname', 'Diane', $timestamp
put 'account', '10', 'cust_info:lname', 'Nelson', $timestamp
put 'account', '10', 'cust_info:address', '921 Sardis Sta', $timestamp
put 'account', '10', 'cust_info:city', 'Oakland', $timestamp
put 'account', '10', 'cust_info:state', 'CA', $timestamp
put 'account', '10', 'cust_info:zipcode', '94577', $timestamp
put 'account', '10', 'cust_info:phone_number', '5102711264', $timestamp
put 'account', '10', 'record_status:created', '2014-03-18 13:29:47', $timestamp
put 'account', '10', 'record_status:modified', '2014-03-18 13:29:47', $timestamp
EOF