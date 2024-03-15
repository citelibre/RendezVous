ALTER TABLE forms_form ADD COLUMN captcha_step_initial SMALLINT default 0 NOT NULL;
ALTER TABLE forms_form ADD COLUMN captcha_step_final SMALLINT default 0 NOT NULL;
ALTER TABLE forms_form ADD COLUMN captcha_recap SMALLINT default 0 NOT NULL;
ALTER TABLE forms_form ADD COLUMN count_responses SMALLINT default 0 NOT NULL;

DROP TABLE IF EXISTS forms_export_config;
CREATE TABLE forms_export_config (
	id int AUTO_INCREMENT,
	id_form int,
	field varchar(255),
	display_order int,
	PRIMARY KEY (id)
);

UPDATE forms_question 
SET is_filterable_multiview_global = 0, is_filterable_multiview_form_selected = 0
WHERE id_entry NOT IN (
	SELECT id_entry FROM genatt_entry WHERE id_type IN (
		SELECT id_type FROM genatt_entry_type WHERE class_name IN( 'forms.entryTypeRadioButton','forms.entryTypeCheckBox','forms.entryTypeDate','forms.entryTypeSelect')
	)
);
