-- file: insert.sql
-- line: 221
insert into list_parted select 'gg', s.a from generate_series(1, 9) s(a)