INSERT INTO genatt_field ( id_entry, code, value)
	SELECT id_entry, 'array_row', num_row from genatt_entry WHERE resource_type = 'FORMS_FORM' AND num_row > 0;

INSERT INTO genatt_field ( id_entry, code, value)
	SELECT id_entry, 'array_column', num_column from genatt_entry WHERE resource_type = 'FORMS_FORM' AND num_column > 0;
	
ALTER TABLE genatt_entry DROP COLUMN num_row;
ALTER TABLE genatt_entry DROP COLUMN num_column;

INSERT INTO genatt_field (id_entry, code, VALUE, title)
	SELECT e.id_entry, 'confirm_field', 
	case e.confirm_field WHEN 1 THEN 'true' ELSE 'false' END, 
	e.confirm_field_title from genatt_entry e 
	INNER JOIN genatt_entry_type t ON t.id_type = e.id_type 
	WHERE resource_type = 'FORMS_FORM' 
	AND t.class_name = 'forms.entryTypeText';
	
ALTER TABLE genatt_entry DROP COLUMN confirm_field;
ALTER TABLE genatt_entry DROP COLUMN confirm_field_title;

INSERT INTO genatt_field ( id_entry, code, value)
	SELECT id_entry, 'width', width from genatt_field WHERE width > 0 AND code not in  ('file_config', 'user_config');

DELETE FROM genatt_field where code = 'file_config';
DELETE FROM genatt_field where code = 'user_config';

ALTER TABLE genatt_field DROP COLUMN width;

INSERT INTO genatt_field ( id_entry, code, value)
	SELECT id_entry, 'height', height from genatt_field WHERE height > 0;
	
ALTER TABLE genatt_field DROP COLUMN height;

INSERT INTO genatt_field ( id_entry, code, value)
	SELECT id_entry, 'max_size', max_size_enter from genatt_field WHERE max_size_enter is not null AND max_size_enter != 0;
	
ALTER TABLE genatt_field DROP COLUMN max_size_enter;

ALTER TABLE genatt_entry DROP COLUMN map_provider;

ALTER TABLE genatt_field DROP COLUMN image_type;

ALTER TABLE genatt_entry DROP COLUMN is_role_associated;
ALTER TABLE genatt_field DROP COLUMN role_key;

UPDATE genatt_response r
SET r.response_value = UNIX_TIMESTAMP(STR_TO_DATE(r.response_value, "%m/%d/%Y") )
WHERE SUBSTR(r.response_value, 4, 2) > 12
AND r.id_entry IN  (
SELECT e.id_entry FROM genatt_entry e
INNER JOIN genatt_entry_type t ON t.id_type = e.id_type
WHERE t.class_name = 'forms.entryTypeDate'
AND e.id_entry = r.id_entry);

UPDATE genatt_response r
SET r.response_value = UNIX_TIMESTAMP(STR_TO_DATE(r.response_value, "%d/%m/%Y") )
WHERE r.response_value LIKE '%/%'
AND r.id_entry IN  (
SELECT e.id_entry FROM genatt_entry e
INNER JOIN genatt_entry_type t ON t.id_type = e.id_type
WHERE t.class_name = 'forms.entryTypeDate'
AND e.id_entry = r.id_entry);

ALTER TABLE genatt_entry modify COLUMN id_entry int AUTO_INCREMENT NOT NULL;

INSERT INTO genatt_field (id_entry, code, VALUE)
	SELECT e.id_entry, 'richtext', 'true' from genatt_entry e 
	INNER JOIN genatt_entry_type t ON t.id_type = e.id_type 
	WHERE resource_type = 'FORMS_FORM' 
	AND t.class_name = 'forms.entryTypeTextArea'
	AND e.fields_in_line = 1;
	
UPDATE genatt_entry_type SET icon_name='dot-circle' WHERE id_type=101;
UPDATE genatt_entry_type SET icon_name='check-square' WHERE id_type=102;
UPDATE genatt_entry_type SET icon_name='comment' WHERE id_type=103;
UPDATE genatt_entry_type SET icon_name='calendar' WHERE id_type=104;
UPDATE genatt_entry_type SET icon_name='list-alt' WHERE id_type=105;
UPDATE genatt_entry_type SET icon_name='file-alt' WHERE id_type=106;
UPDATE genatt_entry_type SET icon_name='sticky-note' WHERE id_type=107;
UPDATE genatt_entry_type SET icon_name='file' WHERE id_type=108;
UPDATE genatt_entry_type SET icon_name='map-marked-alt' WHERE id_type=109;
UPDATE genatt_entry_type SET icon_name='image' WHERE id_type=110;
UPDATE genatt_entry_type SET icon_name='user' WHERE id_type=111;
UPDATE genatt_entry_type SET icon_name='hashtag' WHERE id_type=112;
UPDATE genatt_entry_type SET icon_name='user' WHERE id_type=113;
UPDATE genatt_entry_type SET icon_name='table' WHERE id_type=114;
UPDATE genatt_entry_type SET icon_name='indent' WHERE id_type=115;
UPDATE genatt_entry_type SET icon_name='gavel' WHERE id_type=116;
UPDATE genatt_entry_type SET icon_name='file' WHERE id_type=117;