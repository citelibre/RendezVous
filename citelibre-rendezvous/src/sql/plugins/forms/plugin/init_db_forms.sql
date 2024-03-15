--
-- Dumping data for table `forms_action`
--
DELETE FROM forms_action;
INSERT INTO forms_action (id_action, name_key, description_key, action_url, icon_url, action_permission, form_state) VALUES (1,'forms.action.modify.name','forms.action.modify.description','jsp/admin/plugins/forms/ManageForms.jsp?view=modifyForm','cog','MODIFY',0);
INSERT INTO forms_action (id_action, name_key, description_key, action_url, icon_url, action_permission, form_state) VALUES (3, 'forms.action.params.name', 'forms.action.params.description', 'jsp/admin/plugins/forms/ManageSteps.jsp?view=manageSteps', 'step-forward', 'PARAM', 0);
INSERT INTO forms_action (id_action, name_key, description_key, action_url, icon_url, action_permission, form_state) VALUES (2,'forms.action.delete.name','forms.action.delete.description','jsp/admin/plugins/forms/ManageForms.jsp?view=confirmRemoveForm','trash','DELETE',0);
INSERT INTO forms_action (id_action, name_key, description_key, action_url, icon_url, action_permission, form_state) VALUES (4, 'forms.action.publish.name', 'forms.action.publish.description', 'jsp/admin/plugins/forms/ManageForms.jsp?view=modifyPublication', 'calendar', 'PUBLISH', 0);
INSERT INTO forms_action (id_action, name_key, description_key, action_url, icon_url, action_permission, form_state) VALUES (5, 'forms.action.viewResponses.name', 'forms.action.viewResponses.description', 'jsp/admin/plugins/forms/MultiviewForms.jsp?current_selected_panel=forms', 'list-alt', 'VIEW_FORM_RESPONSE', 0);
INSERT INTO forms_action (id_action, name_key, description_key, action_url, icon_url, action_permission, form_state) VALUES (6, 'forms.action.json.copy.name', 'forms.json.copy.description', 'jsp/admin/plugins/forms/ManageForms.jsp?action=duplicateForm', 'copy', 'MODIFY', 0);
INSERT INTO forms_action (id_action, name_key, description_key, action_url, icon_url, action_permission, form_state) VALUES (7, 'forms.action.json.download.name', 'forms.json.download.description', 'jsp/admin/plugins/forms/ManageForms.jsp?action=doExportJson', 'download', 'MODIFY', 0);

--
-- Dumping data for table `forms_global_action`
--
DELETE FROM forms_global_action;
INSERT INTO forms_global_action (id_action, code, name_key, description_key, action_url, icon_url ) VALUES (1,'multiviewconfig','forms.action.multiviewConfig.labelKey','forms.action.multiviewConfig.descriptionKey','jsp/admin/plugins/forms/MultiviewForms.jsp?view=view_multiview_config','edit');
INSERT INTO forms_global_action (id_action, code, name_key, description_key, action_url, icon_url ) VALUES (2,'multiviewExport','forms.action.multiviewExport.labelKey','forms.action.multiviewExport.descriptionKey','jsp/admin/plugins/forms/MultiviewForms.jsp','edit');

--
-- Datastore config values
--
DELETE FROM core_datastore WHERE entity_key='forms.display.form.columnTitle';
INSERT INTO core_datastore ( entity_key, entity_value ) VALUES( 'forms.display.form.columnTitle', 'true' );

DELETE FROM core_datastore WHERE entity_key='forms.display.form.csv.separator';
INSERT INTO core_datastore ( entity_key, entity_value ) VALUES( 'forms.display.form.csv.separator', ';' );
