UPDATE forms_question q 
SET q.is_filterable_multiview_global = 0, q.is_filterable_multiview_form_selected = 0
WHERE q.id_entry IN (
SELECT e.id_entry FROM genatt_entry e WHERE e.id_type IN (
SELECT et.id_type FROM genatt_entry_type et WHERE et.class_name IN ('forms.entryTypeText', 'forms.entryTypeTextArea')));

ALTER TABLE forms_form MODIFY COLUMN availability_start_date timestamp;
ALTER TABLE forms_form MODIFY COLUMN availability_end_date timestamp;
