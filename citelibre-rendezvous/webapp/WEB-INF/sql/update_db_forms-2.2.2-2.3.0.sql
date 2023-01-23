INSERT INTO genatt_entry_type (id_type,title,is_group,is_comment,is_mylutece_user,class_name,icon_name,plugin,display_order,inactive) VALUES 
(119, 'Numéro de téléphone', 0, 0, 0, 'forms.entryTypeTelephoneNumber', 'phone-square', 'forms',19,0);

ALTER TABLE forms_form ADD COLUMN unavailable_message VARCHAR(255);
