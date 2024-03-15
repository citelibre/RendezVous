ALTER TABLE forms_form MODIFY availability_start_date TIMESTAMP NULL;
ALTER TABLE forms_form MODIFY availability_end_date TIMESTAMP NULL;

UPDATE forms_action SET icon_url = 'step-forward' WHERE name_key = 'forms.action.params.name';
UPDATE forms_action SET icon_url = 'cog' WHERE name_key = 'forms.action.modify.name';

DELETE FROM core_datastore WHERE entity_key='forms.display.form.csv.separator';
INSERT INTO core_datastore ( entity_key, entity_value ) VALUES( 'forms.display.form.csv.separator', ';' );
