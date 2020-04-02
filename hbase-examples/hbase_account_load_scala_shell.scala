//
// Configure Spark to read HBase table 'account' into a DataFrame
// Based on code samples here:
// https://sparkbyexamples.com/hbase/spark-hbase-connectors-which-one-to-use/
// 
def accountHBaseCatalog = 
  s"""{
    "table":{"namespace":"default", "name":"account"},
    "rowkey":"key",
    "columns":{
      "acct_num":{"cf":"rowkey", "col":"key", "type":"string"},
      "acct_create_dt":{"cf":"acct_status", "col":"acct_create_dt", "type":"string"},
      "acct_close_dt":{"cf":"acct_status", "col":"acct_close_dt", "type":"string"},
      "fname":{"cf":"cust_info", "col":"fname", "type":"string"},
      "lname":{"cf":"cust_info", "col":"lname", "type":"string"},
      "address":{"cf":"cust_info", "col":"address", "type":"string"},
      "city":{"cf":"cust_info", "col":"city", "type":"string"},
      "state":{"cf":"cust_info", "col":"state", "type":"string"},
      "zip":{"cf":"cust_info", "col":"zipcode", "type":"string"},
      "phone":{"cf":"cust_info", "col":"phone_number", "type":"string"},
      "created":{"cf":"record_status", "col":"created", "type":"string"},
      "modified":{"cf":"record_status", "col":"modified", "type":"string"}
    }
  }""".stripMargin

import org.apache.hadoop.hbase.HBaseConfiguration
val hbConf = HBaseConfiguration.create()
import org.apache.hadoop.hbase.spark.HBaseContext
val hbaseContext = new HBaseContext(spark.sparkContext, hbConf)

val accountHBaseDF = spark.read.
  options(Map(HBaseTableCatalog.tableCatalog -> accountHBaseCatalog)).
  format("org.apache.hadoop.hbase.spark").
  load()

accountHBaseDF.printSchema
accountHBaseDF.show

// Reorder the columns to reflect the Hive metastore schema
val accountHBDF = accountHBaseDF.
     select($"acct_num", $"acct_create_dt", $"acct_close_dt", $"fname", 
     $"lname", $"address", $"city", $"state", $"zip", $"phone", 
     $"created", $"modified")
accountHBDF.show(false)

