INSERT INTO genatt_field (id_entry, code, VALUE, title)
	SELECT e.id_entry, 'anonymizable', 
	'false', '-1' from genatt_entry e 
	INNER JOIN genatt_entry_type t ON t.id_type = e.id_type 
	WHERE resource_type = 'FORMS_FORM' 
	AND t.class_name in ( 'forms.entryTypeCheckBox','forms.entryTypeRadioButton','forms.entryTypeSelect' );
