CREATE TABLE tasks (
  id bigserial PRIMARY KEY,

  document_incoming_id int8 NOT NULL,

  department_id int8 NULL,

  employee_id int8 NULL,

  start_date timestamp(6) without time zone NOT NULL,

  end_date timestamp(6) without time zone NOT NULL,

  is_approved_by_staff boolean NULL DEFAULT FALSE,

  is_approved_by_leader boolean NULL DEFAULT FALSE,

  is_approved_by_manger boolean NULL DEFAULT FALSE,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL
);

COMMENT ON TABLE tasks IS 'Tasks';

-- Column comments

COMMENT ON COLUMN tasks.id IS 'ID';
COMMENT ON COLUMN tasks.document_incoming_id IS 'Document Incoming Id';
COMMENT ON COLUMN tasks.department_id IS 'Department Id';
COMMENT ON COLUMN tasks.employee_id IS 'Employee Id';
COMMENT ON COLUMN tasks.start_date IS 'Start Date';
COMMENT ON COLUMN tasks.end_date IS 'End Date';
COMMENT ON COLUMN tasks.is_approved_by_staff IS 'Is Approved By Staff';
COMMENT ON COLUMN tasks.is_approved_by_leader IS 'Is Approved By Leader';
COMMENT ON COLUMN tasks.is_approved_by_manger IS 'Is Approved By Manager';
COMMENT ON COLUMN tasks.created_at IS 'Created At';
COMMENT ON COLUMN tasks.updated_at IS 'Updated At';