-- file: jsonb.sql
-- line: 133
SELECT test_json -> 2 FROM test_jsonb WHERE json_type = 'array'