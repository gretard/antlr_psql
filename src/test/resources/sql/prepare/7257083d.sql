-- file: select_parallel.sql
-- line: 43
prepare tenk1_count(integer) As select  count((unique1)) from tenk1 where hundred > $1