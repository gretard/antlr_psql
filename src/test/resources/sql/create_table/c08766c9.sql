-- file: partition_join.sql
-- line: 95
CREATE TABLE prt1_e (a int, b int, c int) PARTITION BY RANGE(((a + b)/2))