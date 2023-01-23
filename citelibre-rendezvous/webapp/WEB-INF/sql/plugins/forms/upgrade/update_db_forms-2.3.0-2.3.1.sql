INSERT INTO genatt_entry_type (id_type,title,is_group,is_comment,is_mylutece_user,class_name,icon_name,plugin,display_order,inactive) VALUES 
(120, 'Nombre', 0, 0, 0, 'forms.entryTypeNumber', 'hashtag', 'forms',5,0);

UPDATE genatt_entry_type set display_order = 6 WHERE id_type = 101;
UPDATE genatt_entry_type set display_order = 7 WHERE id_type = 102;
UPDATE genatt_entry_type set display_order = 8 WHERE id_type = 105;
UPDATE genatt_entry_type set display_order = 9 WHERE id_type = 112;
UPDATE genatt_entry_type set display_order = 10 WHERE id_type = 108;
UPDATE genatt_entry_type set display_order = 11 WHERE id_type = 110;
UPDATE genatt_entry_type set display_order = 12 WHERE id_type = 103;
UPDATE genatt_entry_type set display_order = 13 WHERE id_type = 116;
UPDATE genatt_entry_type set display_order = 14 WHERE id_type = 111;
UPDATE genatt_entry_type set display_order = 15 WHERE id_type = 113;
UPDATE genatt_entry_type set display_order = 16 WHERE id_type = 118;
UPDATE genatt_entry_type set display_order = 17 WHERE id_type = 109;
UPDATE genatt_entry_type set display_order = 18 WHERE id_type = 114;
UPDATE genatt_entry_type set display_order = 19 WHERE id_type = 117;
UPDATE genatt_entry_type set display_order = 20 WHERE id_type = 119;

ALTER TABLE forms_form ADD COLUMN id_logo INT NOT NULL DEFAULT 0;
