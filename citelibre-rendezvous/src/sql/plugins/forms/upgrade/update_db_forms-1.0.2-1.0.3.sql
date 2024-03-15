

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


INSERT INTO forms_control_question SELECT id_control, id_question from forms_control;

ALTER TABLE forms_control DROP COLUMN id_question;

ALTER TABLE forms_group MODIFY description VARCHAR(512);

ALTER TABLE forms_control MODIFY error_message varchar(512);


ALTER TABLE forms_question ADD COLUMN is_filterable_multiview_global SMALLINT default 0 NOT NULL;
ALTER TABLE forms_question ADD COLUMN is_filterable_multiview_form_selected SMALLINT default 0 NOT NULL;

REPLACE INTO forms_global_action (id_action, code, name_key, description_key, action_url, icon_url ) VALUES (2,'multiviewExport','forms.action.multiviewExport.labelKey','forms.action.multiviewExport.descriptionKey','jsp/admin/plugins/forms/MultiviewForms.jsp','edit');

