CREATE TABLE reports (
  id bigserial PRIMARY KEY,

  document_incoming_id int8 NOT NULL,

  employee_id int8 NOT NULL,

  role_name varchar NOT NULL,

  message varchar NOT NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL
);

COMMENT ON TABLE reports IS 'Reports';

-- Column comments

COMMENT ON COLUMN reports.id IS 'ID';
COMMENT ON COLUMN reports.document_incoming_id IS 'Document Incoming Id';
COMMENT ON COLUMN reports.employee_id IS 'Employee Id';
COMMENT ON COLUMN reports.role_name IS 'Role Name';
COMMENT ON COLUMN reports.message IS 'Message';
COMMENT ON COLUMN reports.created_at IS 'Created At';
COMMENT ON COLUMN reports.updated_at IS 'Updated At';