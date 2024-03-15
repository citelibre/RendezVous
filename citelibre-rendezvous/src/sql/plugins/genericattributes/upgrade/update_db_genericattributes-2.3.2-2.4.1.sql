INSERT INTO genatt_field (id_entry, code, VALUE, title)
	SELECT e.id_entry, 'suffix', 
	'', null from genatt_entry e 
	INNER JOIN genatt_entry_type t ON t.id_type = e.id_type 
	WHERE resource_type = 'FORMS_FORM' 
	AND t.class_name = 'forms.entryTypeNumber';

INSERT INTO genatt_field (id_entry, code, VALUE, title)
	SELECT e.id_entry, 'placeholder', 
	'', null from genatt_entry e 
	INNER JOIN genatt_entry_type t ON t.id_type = e.id_type 
	WHERE resource_type = 'FORMS_FORM'
	AND t.class_name IN ('forms.entryTypeDate', 'forms.entryTypeNumber', 'forms.entryTypeTelephoneNumber', 'forms.entryTypeTextArea', 'forms.entryTypeText');

	