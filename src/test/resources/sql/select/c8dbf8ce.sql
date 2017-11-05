-- file: opr_sanity.sql
-- line: 496
SELECT p1.oid, p1.conname
FROM pg_conversion as p1
WHERE p1.conproc = 0 OR
    pg_encoding_to_char(conforencoding) = '' OR
    pg_encoding_to_char(contoencoding) = ''