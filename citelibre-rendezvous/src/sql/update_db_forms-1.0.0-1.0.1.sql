INSERT INTO genatt_entry_type (id_type,title,is_group,is_comment,is_mylutece_user,class_name,icon_name,plugin) VALUES 
('116', 'Conditions d''utilisation', 0, 0, 0, 'forms.entryTypeTermsOfService', 'legal', 'forms');

ALTER TABLE forms_form ADD COLUMN display_summary SMALLINT default 0 NOT NULL AFTER breadcrumb_name;

ALTER TABLE forms_group DROP COLUMN iteration_number;
ALTER TABLE forms_group	ADD COLUMN iteration_min INT  DEFAULT '1' AFTER collapsible;
ALTER TABLE forms_group	ADD COLUMN iteration_max INT  DEFAULT '1' AFTER iteration_min;
ALTER TABLE forms_group	ADD COLUMN iteration_add_label varchar(255) default '' AFTER iteration_max;
ALTER TABLE forms_group	ADD COLUMN iteration_remove_label varchar(255) default '' AFTER iteration_add_label;
ALTER TABLE forms_group DROP COLUMN collapsible;

ALTER TABLE forms_question	CHANGE COLUMN description description LONGTEXT NULL COLLATE 'utf8_unicode_ci' AFTER title;


ALTER TABLE forms_form DROP COLUMN end_message;
ALTER TABLE forms_form ADD COLUMN max_number_response INT default 0 AFTER availability_end_date;
ALTER TABLE forms_form ADD COLUMN one_response_by_user SMALLINT default 0 AFTER authentification_needed;


DROP TABLE IF EXISTS forms_message;
CREATE TABLE forms_message (
id int AUTO_INCREMENT,
id_form int NOT NULL,
end_message_display SMALLINT,
end_message varchar(3000) default '',
PRIMARY KEY (id)
);

UPDATE genatt_field SET code = 'attribute_name' WHERE id_entry IN (SELECT id_entry FROM genatt_entry AS entry INNER JOIN genatt_entry_type AS entry_type ON entry.id_type = entry_type.id_type AND class_name = 'forms.entryTypeMyLuteceUserattribute') AND code IS NULL;

SET @id_field_max := (SELECT MAX(id_field) FROM genatt_field) ;
DROP PROCEDURE IF EXISTS updateFieldForMyLuteceAttributeEntry;
DELIMITER //
CREATE PROCEDURE updateFieldForMyLuteceAttributeEntry(id_max int(11))
BEGIN
  DECLARE current_id_entry varchar(50);
  DECLARE current_is_only_display_back varchar(50);
  DECLARE done INT DEFAULT FALSE;
  -- Create a cursor to iterate on the entry
    DECLARE entry_cursor CURSOR FOR
    -- Finds entries of type MyLuteceUserAttribute
    SELECT id_entry, is_only_display_back FROM genatt_entry AS entry INNER JOIN genatt_entry_type AS entry_type ON entry.id_type = entry_type.id_type AND class_name = 'forms.entryTypeMyLuteceUserattribute';
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    OPEN entry_cursor;
    -- Iterates on all element in the cursor
    entry_loop: LOOP
    FETCH entry_cursor INTO current_id_entry, current_is_only_display_back;
        CASE
      WHEN done = TRUE THEN LEAVE entry_loop;
      -- Inserts a new field
      ELSE INSERT INTO genatt_field (id_field, id_entry, code, value, pos ) VALUES ((@id_field_max := (@id_field_max + 1)), current_id_entry, 'only_display_in_back', current_is_only_display_back, @id_field_max);
        UPDATE genatt_entry SET is_only_display_back = 0 WHERE id_entry = current_id_entry;
      END CASE;
    END LOOP;
    CLOSE entry_cursor;
END; //
CALL updateFieldForMyLuteceAttributeEntry(@id_field_max);

UPDATE genatt_field SET value = 'user.name.family' WHERE value = 'user.family_name';
UPDATE genatt_field SET value = 'user.name.given' WHERE value = 'user.first_name';

UPDATE forms_action SET action_url = 'jsp/admin/plugins/forms/ManageSteps.jsp?view=manageSteps' WHERE id_action = 1;

ALTER TABLE forms_control CHANGE COLUMN id_display id_control_target INT(11) NOT NULL DEFAULT '0' AFTER control_type;
UPDATE forms_control fc INNER JOIN forms_transition ft ON fc.id_control = ft.id_control SET id_control_target = id_transition;
ALTER TABLE forms_transition DROP COLUMN id_control;
UPDATE forms_control SET id_control_target = id_question WHERE control_type = 'validation';
