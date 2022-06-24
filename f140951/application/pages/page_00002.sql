prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp_page.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Quick Access'
,p_page_mode=>'MODAL'
,p_step_title=>'Quick Access'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(54131779707402946478)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'500'
,p_dialog_width=>'800'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
,p_last_updated_by=>'KCOLINA'
,p_last_upd_yyyymmddhh24miss=>'20201112083532'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54227255410836602852)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(54128963176135301139)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54129150688638900172)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54227255410836602852)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Cancel'
,p_grid_new_row=>'Y'
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54129150295664900171)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(54227255410836602852)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Apply Changes'
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(54025696714867106348)
,p_branch_name=>'Go To General Ledger Home'
,p_branch_action=>'f?p=&APP_ID.:30000:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(54129150295664900171)
,p_branch_sequence=>20
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P2_SYSTEM_ID'
,p_branch_condition_text=>'MGL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(54025696905817106350)
,p_branch_name=>'Go To Purchasing Home'
,p_branch_action=>'f?p=&APP_ID.:40000:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(54129150295664900171)
,p_branch_sequence=>30
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P2_SYSTEM_ID LIKE ''%PUR%'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(54129157917734900187)
,p_branch_name=>'Go To Home'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(54129150295664900171)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54011857021466219849)
,p_name=>'P2_SYSTEM_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54227255410836602852)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54011857085969219850)
,p_name=>'P2_SELECTED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(54227255410836602852)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54129151111645900173)
,p_name=>'P2_MODULE_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54227255410836602852)
,p_item_default=>'S'
,p_prompt=>'Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Actions;A,Processes;P,Reports;R,Setup;S'
,p_cHeight=>1
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54129151571040900175)
,p_name=>'P2_MODULES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(54227255410836602852)
,p_prompt=>'Modules'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov_language=>'PLSQL'
,p_lov=>'RETURN KVS_APEX.coll_query(''QA'');'
,p_lov_cascade_parent_items=>'P2_MODULE_TYPE'
,p_ajax_items_to_submit=>'P2_MODULE_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>15
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54129152330124900176)
,p_name=>'P2_SELECTED_R'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(54227255410836602852)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54129152772034900177)
,p_name=>'P2_SELECTED_A'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(54227255410836602852)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54129153145274900177)
,p_name=>'P2_SELECTED_S'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(54227255410836602852)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54129153568324900178)
,p_name=>'P2_SELECTED_P'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(54227255410836602852)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54129154298612900181)
,p_name=>'After Refresh modules'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_MODULES'
,p_bind_type=>'live'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54129154834243900182)
,p_event_id=>wwv_flow_imp.id(54129154298612900181)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_MODULES'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P2_SELECTED := :P2_MODULE_TYPE;',
'IF :P2_MODULE_TYPE = ''A'' THEN',
'   RETURN :P2_SELECTED_A;',
'ELSIF :P2_MODULE_TYPE = ''P'' THEN',
'   RETURN :P2_SELECTED_P;',
'ELSIF :P2_MODULE_TYPE = ''R'' THEN',
'   RETURN :P2_SELECTED_R;',
'ELSIF :P2_MODULE_TYPE = ''S'' THEN',
'   RETURN :P2_SELECTED_S;',
'END IF;'))
,p_attribute_07=>'P2_MODULE_TYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54129155261016900183)
,p_name=>'Page load'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54129155684735900183)
,p_event_id=>wwv_flow_imp.id(54129155261016900183)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'kvs0000.ua_get_selected;',
':P2_SELECTED := :P2_MODULE_TYPE;'))
,p_attribute_03=>'P2_SELECTED_A,P2_SELECTED_P,P2_SELECTED_R,P2_SELECTED_S,P2_MODULES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54129156111849900184)
,p_name=>'Before refresh modules'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_MODULES'
,p_bind_type=>'live'
,p_bind_event_type=>'apexbeforerefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54129156665819900185)
,p_event_id=>wwv_flow_imp.id(54129156111849900184)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P2_SELECTED = ''A'' THEN',
'   :P2_SELECTED_A := :P2_MODULES;',
'ELSIF :P2_SELECTED = ''P'' THEN',
'   :P2_SELECTED_P := :P2_MODULES;',
'ELSIF :P2_SELECTED = ''R'' THEN',
'   :P2_SELECTED_R := :P2_MODULES;',
'ELSIF :P2_SELECTED = ''S'' THEN',
'   :P2_SELECTED_S := :P2_MODULES;',
'END IF;'))
,p_attribute_02=>'P2_MODULES'
,p_attribute_03=>'P2_SELECTED_A,P2_SELECTED_P,P2_SELECTED_R,P2_SELECTED_S'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54129156998093900185)
,p_name=>'Cancel dialog'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54129150688638900172)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54129157435917900186)
,p_event_id=>wwv_flow_imp.id(54129156998093900185)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54129153882168900180)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save selected modules'
,p_process_sql_clob=>'kvs0000.ua_save;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(54129150295664900171)
,p_process_success_message=>'Action Processed.'
);
wwv_flow_imp.component_end;
end;
/
