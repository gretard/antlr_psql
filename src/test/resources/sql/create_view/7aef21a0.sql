-- file: updatable_views.sql
-- line: 852
CREATE VIEW rw_view2 AS
  SELECT * FROM rw_view1 WHERE a > b WITH LOCAL CHECK OPTION