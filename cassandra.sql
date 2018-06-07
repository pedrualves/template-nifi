CREATE KEYSPACE test 
  WITH REPLICATION = { 
   'class' : 'NetworkTopologyStrategy', 
   'datacenter1' : 1 
  } ;

USE test;

CREATE TABLE hits (
  cid text,
  hid text,
  savedat_date text,
  did text,
  dvc_otherids map<text, text>,
  dvc_type text,
  hit_action text,
  hit_category text,
  hit_context text,
  hit_createdat timestamp,
  hit_data map<text, text>,
  hit_iscompliable text,
  hit_label text,
  hit_lastscreen text,
  hit_pagetitle text,
  hit_screen text,
  hit_type text,
  hit_windowheight text,
  hit_windowwidth text,
  savedat_hour text,
  sid text,
  ssn_apptype text,
  ssn_appversion text,
  ssn_ip text,
  ssn_lang text,
  ssn_lat text,
  ssn_lon text,
  ssn_referral text,
  ssn_useragent text,
  "user" map<text, text>,
  PRIMARY KEY ((cid, hid), savedat_date)
)
WITH bloom_filter_fp_chance = 0.01
 AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
 AND comment = ''
 AND compaction = {'class': 'SizeTieredCompactionStrategy', 'max_threshold': '32', 'min_threshold': '4'}
 AND compression = {'chunk_length_in_kb': '64', 'class': 'LZ4Compressor'}
 AND crc_check_chance = 1.0
 AND dclocal_read_repair_chance = 0.1
 AND default_time_to_live = 0
 AND gc_grace_seconds = 864000
 AND max_index_interval = 2048
 AND memtable_flush_period_in_ms = 0
 AND min_index_interval = 128
 AND read_repair_chance = 0.0
 AND speculative_retry = '99PERCENTILE';

INSERT INTO HITS (cid text,
  hid text,
  savedat_date text,
  did text,
  dvc_otherids map<text, text>,
  dvc_type text,
  hit_action text,
  hit_category text,
  hit_context text,
  hit_createdat timestamp,
  hit_data map<text, text>,
  hit_iscompliable text,
  hit_label text,
  hit_lastscreen text,
  hit_pagetitle text,
  hit_screen text,
  hit_type text,
  hit_windowheight text,
  hit_windowwidth text,
  savedat_hour text,
  sid text,
  ssn_apptype text,
  ssn_appversion text,
  ssn_ip text,
  ssn_lang text,
  ssn_lat text,
  ssn_lon text,
  ssn_referral text,
  ssn_useragent text,
  user map<text, text>)
  VALUES("CP_SPA",
  "5b034f73367a270001d83c71",
  "2018-05-22",
  "5b034f73367a270001d83c6e",
  null,
  "DESKTOP",
  null,
  2018-03-02 14:31:50 -0300,
  null,
  false,
  null,
  null,
  "Esfera",
  null,
  "test",
  null,
  null,
  18:44:39.359,
  "5b034f73367a270001d83c6d",
  null,
  null,
  "180.239.114.2",
  null,
  null,
  null,
  null,
  "insomnia/5.16.2",
  {"uid":"ndasdkjasdkjbasda"}
  );