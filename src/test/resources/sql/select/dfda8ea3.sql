-- file: tsearch.sql
-- line: 490
SELECT to_tsvector('bar baz') @@
  ts_rewrite(tsquery_phrase('foo', 'foo'), 'foo', 'bar | baz')