
--
-- Structure for table forms_form
--

DROP TABLE IF EXISTS forms_form;
CREATE TABLE forms_form (
id_form int AUTO_INCREMENT,
title varchar(255) default '' NOT NULL,
description varchar(255) default '',
creation_date timestamp default CURRENT_TIMESTAMP NOT NULL,
update_date timestamp default '1980-01-01 00:00' NOT NULL,
availability_start_date timestamp NULL,
availability_end_date timestamp NULL,
max_number_response INT default 0,
workgroup varchar(255),
id_workflow INT DEFAULT NULL,
authentification_needed SMALLINT,
one_response_by_user SMALLINT default 0,
breadcrumb_name varchar(255) default '' NOT NULL,
display_summary SMALLINT default 0 NOT NULL,
return_url varchar(255) default '',
captcha_step_initial SMALLINT default 0,
captcha_step_final SMALLINT default 0,
captcha_recap SMALLINT default 0,
count_responses SMALLINT default 0,
label_final_button VARCHAR(255),
unavailable_message VARCHAR(255),
id_logo INT DEFAULT 0 NOT NULL,
PRIMARY KEY (id_form)
);

--
-- Structure for table forms_step
--

DROP TABLE IF EXISTS forms_step;
CREATE TABLE forms_step (
id_step int AUTO_INCREMENT,
title varchar(255) default '' NOT NULL,
description varchar(255) default '',
id_form int default '0' NOT NULL,
is_initial SMALLINT default 0 NOT NULL,
is_final SMALLINT default 0 NOT NULL,
PRIMARY KEY (id_step)
);

--
-- Structure for table forms_transition
--

DROP TABLE IF EXISTS forms_transition;
CREATE TABLE forms_transition (
id_transition int AUTO_INCREMENT,
from_step int NOT NULL,
next_step int NOT NULL,
priority int default '0',
PRIMARY KEY (id_transition)
);

--
-- Structure for table forms_question
--

DROP TABLE IF EXISTS forms_question;
CREATE TABLE forms_question (
id_question int AUTO_INCREMENT,
title varchar(255) default '' NOT NULL,
code varchar(100) default '' NOT NULL,
description LONG VARCHAR,
id_entry int default '0',
id_step int default '0',
is_visible_multiview_global SMALLINT default 0 NOT NULL,
is_visible_multiview_form_selected SMALLINT default 0 NOT NULL,
multiview_column_order INT default 0 NOT NULL,
column_title varchar(255) default '' NOT NULL,
is_filterable_multiview_global SMALLINT default 0 NOT NULL,
is_filterable_multiview_form_selected SMALLINT default 0 NOT NULL,
PRIMARY KEY (id_question)
);
CREATE INDEX index_fq_code ON forms_question ( code );
CREATE INDEX index_fq_id_entry ON forms_question ( id_entry );
CREATE INDEX index_fq_id_step ON forms_question ( id_step );

--
-- Structure for table forms_group
--

DROP TABLE IF EXISTS forms_group;
CREATE TABLE forms_group (
id_group int AUTO_INCREMENT,
title varchar(255) default '' NOT NULL,
description varchar(512) default '',
id_step int default '0',
iteration_min int default '1',
iteration_max int default '1',
iteration_add_label varchar(255) default '',
iteration_remove_label varchar(255) default '',
PRIMARY KEY (id_group)
);
CREATE INDEX index_fg_id_step ON forms_question ( id_step );



--
-- Table structure for table form_action
--
DROP TABLE IF EXISTS forms_action;
CREATE TABLE forms_action (
    id_action int default 0 NOT NULL,
    name_key varchar(100) default NULL,
    description_key varchar(100) default NULL,
    action_url varchar(255) default NULL,
    icon_url varchar(255) default NULL,
    action_permission varchar(255) default NULL,
    form_state smallint default NULL,
    PRIMARY KEY (id_action)
);

--
-- Table structure for table forms_global_action
--
DROP TABLE IF EXISTS forms_global_action;
CREATE TABLE forms_global_action (
    id_action int default 0 NOT NULL,
    code varchar(100) default NULL,
    name_key varchar(100) default NULL,
    description_key varchar(100) default NULL,
    action_url varchar(255) default NULL,
    icon_url varchar(255) default NULL,
    PRIMARY KEY (id_action)
);
CREATE INDEX index_fga_code ON forms_global_action ( code );

--
-- Structure for table forms_display
--

DROP TABLE IF EXISTS forms_display;
CREATE TABLE forms_display (
id_display int AUTO_INCREMENT,
id_form int default '0',
id_step int default '0',
id_composite int default '0',
id_parent int default '0',
display_order int default '0',
composite_type varchar(255) default '',
display_depth int default '0',
PRIMARY KEY (id_display)
);
CREATE INDEX index_fd_id_form ON forms_display ( id_form );
CREATE INDEX index_fd_id_step ON forms_display ( id_step );
CREATE INDEX index_fd_id_composite ON forms_display ( id_composite );
CREATE INDEX index_fd_id_parent ON forms_display ( id_parent );

--
-- Structure for table forms_control
--

DROP TABLE IF EXISTS forms_control;
CREATE TABLE forms_control (
id_control int AUTO_INCREMENT,
value varchar(255),
error_message varchar(512) default '',
validator_name varchar(255) NOT NULL,
control_type varchar(255) NOT NULL,
id_control_target int default '0' NOT NULL,
PRIMARY KEY (id_control)
);

CREATE INDEX index_fc_id_control_target ON forms_control ( id_control_target );

DROP TABLE IF EXISTS forms_control_question;
CREATE TABLE forms_control_question (
id_control int NOT NULL,
id_question int NOT NULL,
PRIMARY KEY (id_control, id_question)
);

DROP TABLE IF EXISTS forms_control_question_mapping;
CREATE TABLE forms_control_question_mapping (
id_control int NOT NULL,
id_question int NOT NULL,
value varchar(255),
PRIMARY KEY (id_control, id_question, value)
);

--
-- Structure for table forms_message
--

DROP TABLE IF EXISTS forms_message;
CREATE TABLE forms_message (
id int AUTO_INCREMENT,
id_form int NOT NULL,
end_message_display SMALLINT,
end_message varchar(3000) default '',
PRIMARY KEY (id)
);
CREATE INDEX index_fm_id_form ON forms_message ( id_form );

DROP TABLE IF EXISTS forms_question_entry_response;
CREATE TABLE forms_question_entry_response (
  id_question_entry_response int AUTO_INCREMENT,
  id_question_response int default '0' NOT NULL,
  id_entry_response int default '0' NOT NULL,
  PRIMARY KEY (id_question_entry_response)
);
CREATE INDEX idx_fqer_id_question_response on forms_question_entry_response ( id_question_response );
CREATE INDEX idx_fqer_id_entry_response on forms_question_entry_response ( id_entry_response );

DROP TABLE IF EXISTS forms_question_response;
CREATE TABLE IF NOT EXISTS forms_question_response (
  id_question_response int AUTO_INCREMENT,
  id_form_response int default '0' NOT NULL,
  id_question int default '0' NOT NULL,
  id_step int default '0' NOT NULL,
  iteration_number int default '0',
  PRIMARY KEY (id_question_response)
);
CREATE INDEX idx_fqr_id_form_response on forms_question_response  ( id_form_response );
CREATE INDEX idx_fqr_id_question on forms_question_response  ( id_question );
CREATE INDEX idx_fqr_id_step on forms_question_response  ( id_step );

DROP TABLE IF EXISTS forms_response;
CREATE TABLE IF NOT EXISTS forms_response (
  id_response int AUTO_INCREMENT,
  id_form int default '0' NOT NULL,
  guid varchar(255),
  creation_date timestamp default CURRENT_TIMESTAMP NOT NULL,
  update_date timestamp default '1980-01-01 00:00' NOT NULL,
  from_save SMALLINT default 0,
  PRIMARY KEY (id_response)
);
CREATE INDEX idx_fr_id_form on forms_response  ( id_form );

DROP TABLE IF EXISTS forms_response_step;
CREATE TABLE IF NOT EXISTS forms_response_step (
  id int AUTO_INCREMENT,
  id_form_response int DEFAULT '0' NOT NULL,
  id_step int  DEFAULT '0' NOT NULL,
  order_response int DEFAULT '0' NOT NULL,
  PRIMARY KEY (id)
);
CREATE INDEX idx_frs_id_form_response on forms_response_step  ( id_form_response );
CREATE INDEX idx_frs_id_step on forms_response_step  ( id_step );

DROP TABLE IF EXISTS forms_indexer_action;
CREATE TABLE forms_indexer_action (
  id_action int AUTO_INCREMENT,
  id_form_response INT DEFAULT 0 NOT NULL,
  id_task INT DEFAULT 0 NOT NULL ,
  PRIMARY KEY (id_action)
);
CREATE INDEX idx_fia_id_form_response on forms_indexer_action  ( id_form_response );
CREATE INDEX idx_fia_id_task on forms_indexer_action  ( id_task );

DROP TABLE IF EXISTS forms_export_config;
CREATE TABLE forms_export_config (
	id int AUTO_INCREMENT,
	id_form int, 
	field varchar(255),
	display_order int,
	PRIMARY KEY (id)
);
