# devsh-supp
Supplemental content to DevSH course

## Reading HBase tables into Spark DataFrames
Data comes from existing Hive table "accounts."  
Using the first 10 records from that table, acct_ids 1-10.  
Start with table create script to create HBase table  
  hbase_account_table_create.sh  
After table creation, run table populate script  
  hbase_account_table_populate.sh  
Launch a Scala Spark shell and load the Scala file into the shell  
  spark_shell_read_hbase_table.scala  
