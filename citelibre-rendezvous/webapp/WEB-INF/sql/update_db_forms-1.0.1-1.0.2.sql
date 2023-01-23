/*==============================================================*/
/* Table structure for table forms_indexer_action				*/
/*==============================================================*/
CREATE TABLE forms_indexer_action (
  id_action int AUTO_INCREMENT,
  id_form_response INT DEFAULT 0 NOT NULL,
  id_task INT DEFAULT 0 NOT NULL ,
  PRIMARY KEY (id_action)
);

TRUNCATE forms_action;
REPLACE INTO forms_action (id_action, name_key, description_key, action_url, icon_url, action_permission, form_state) VALUES (1,'forms.action.modify.name','forms.action.modify.description','jsp/admin/plugins/forms/ManageSteps.jsp?view=manageSteps','edit','MODIFY',0);
REPLACE INTO forms_action (id_action, name_key, description_key, action_url, icon_url, action_permission, form_state) VALUES (3, 'forms.action.params.name', 'forms.action.params.description', 'jsp/admin/plugins/forms/ManageForms.jsp?view=modifyForm', 'cog', 'PARAM', 0);
REPLACE INTO forms_action (id_action, name_key, description_key, action_url, icon_url, action_permission, form_state) VALUES (2,'forms.action.delete.name','forms.action.delete.description','jsp/admin/plugins/forms/ManageForms.jsp?view=confirmRemoveForm','trash','DELETE',0);
REPLACE INTO forms_action (id_action, name_key, description_key, action_url, icon_url, action_permission, form_state) VALUES (4, 'forms.action.publish.name', 'forms.action.publish.description', 'jsp/admin/plugins/forms/ManageForms.jsp?view=modifyPublication', 'calendar', 'PARAM', 0);
REPLACE INTO forms_action (id_action, name_key, description_key, action_url, icon_url, action_permission, form_state) VALUES (5, 'forms.action.viewResponses.name', 'forms.action.viewResponses.description', 'jsp/admin/plugins/forms/MultiviewForms.jsp?current_selected_panel=forms', 'list-alt', 'VIEW_FORM_RESPONSE', 0);
REPLACE INTO forms_action (id_action, name_key, description_key, action_url, icon_url, action_permission, form_state) VALUES (6, 'module.forms.documentproducer.actions.extractpdf.name', 'module.forms.documentproducer.actions.extractpdf.description', 'jsp/admin/plugins/forms/modules/documentproducer/ManageConfigProducer.jsp?view=getManageConfigProducer', 'file-pdf-o', 'PDFPROD', 0);

ALTER TABLE forms_question ADD COLUMN is_visible_multiview_global SMALLINT default 0 NOT NULL;
ALTER TABLE forms_question ADD COLUMN is_visible_multiview_form_selected SMALLINT default 0 NOT NULL;
ALTER TABLE forms_question ADD COLUMN column_title varchar(255) default '' NOT NULL;

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

INSERT INTO forms_global_action (id_action, code, name_key, description_key, action_url, icon_url ) VALUES (1,'multiviewconfig','forms.action.multiviewConfig.labelKey','forms.action.multiviewConfig.descriptionKey','jsp/admin/plugins/forms/MultiviewForms.jsp?view=view_multiview_config','edit');

INSERT INTO core_datastore ( entity_key, entity_value ) VALUES
    ( 'forms.display.form.columnTitle', 'true' );

ALTER TABLE forms_question ADD COLUMN code varchar(100) default '' NOT NULL;

-- Gen att update for field from 20 to 100
ALTER TABLE genatt_entry MODIFY COLUMN code varchar(100) default NULL; 
ALTER TABLE genatt_field MODIFY COLUMN code varchar(100) default NULL; 

-- Init empty question code;
UPDATE forms_question SET code = CONCAT('question_', id_entry);
UPDATE genatt_entry SET code = CONCAT('question_', id_entry);

CREATE INDEX idx_fqer_id_question_response on forms_question_entry_response ( id_question_response );
CREATE INDEX idx_fqer_id_entry_response on forms_question_entry_response ( id_entry_response );
CREATE INDEX idx_fqr_id_form_response on forms_question_response  ( id_form_response );
CREATE INDEX idx_fqr_id_question on forms_question_response  ( id_question );
CREATE INDEX idx_fqr_id_step on forms_question_response  ( id_step );
CREATE INDEX index_fq_code ON forms_question ( code );
CREATE INDEX index_fq_id_entry ON forms_question ( id_entry );
CREATE INDEX index_fq_id_step ON forms_question ( id_step );
CREATE INDEX index_fg_id_step ON forms_question ( id_step );
CREATE INDEX index_fga_code ON forms_global_action ( code );
CREATE INDEX index_fd_id_form ON forms_display ( id_form );
CREATE INDEX index_fd_id_step ON forms_display ( id_step );
CREATE INDEX index_fd_id_composite ON forms_display ( id_composite );
CREATE INDEX index_fd_id_parent ON forms_display ( id_parent );
CREATE INDEX index_fc_id_question ON forms_control ( id_question );
CREATE INDEX index_fc_id_control_target ON forms_control ( id_control_target );
CREATE INDEX index_fm_id_form ON forms_message ( id_form );
CREATE INDEX idx_fr_id_form on forms_response  ( id_form );
CREATE INDEX idx_frs_id_form_response on forms_response_step  ( id_form_response );
CREATE INDEX idx_frs_id_step on forms_response_step  ( id_step );
CREATE INDEX idx_frs_id_form_response on forms_indexer_action  ( id_form_response );
CREATE INDEX idx_frs_id_task on forms_indexer_action  ( id_task );

INSERT INTO genatt_entry_type (id_type,title,is_group,is_comment,is_mylutece_user,class_name,icon_name,plugin) VALUES 
('117', 'Lecture automatique fichier', 0, 0, 0, 'forms.entryTypeAutomaticFileReading', 'file', 'forms');
