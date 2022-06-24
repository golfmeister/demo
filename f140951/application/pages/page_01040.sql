prompt --application/pages/page_01040
begin
--   Manifest
--     PAGE: 01040
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
 p_id=>1040
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Period Password'
,p_alias=>'PERIOD-PASSWORD'
,p_page_mode=>'MODAL'
,p_step_title=>'Period Password'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//get the close button and hide it',
'var button = parent.$(''.ui-dialog-titlebar-close''); ',
'button.hide();'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_attributes=>'closeOnEscape: false'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'DCHING'
,p_last_upd_yyyymmddhh24miss=>'20211202221705'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54031266935965417605)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128963575367301140)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54033118822092415612)
,p_plug_name=>'Password'
,p_region_name=>'PASSWORD_POPUP'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54006791890607625017)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54031266935965417605)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54006792322829625019)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(54031266935965417605)
,p_button_name=>'OK'
,p_button_static_id=>'btOk'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'OK'
,p_button_position=>'NEXT'
,p_button_condition=>'P1040_YEAR'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54006792971132625022)
,p_name=>'P1040_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54033118822092415612)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54006793382099625025)
,p_name=>'P1040_PERIOD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(54033118822092415612)
,p_item_default=>'P0_MUNI'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54006793817285625025)
,p_name=>'P1040_PERIOD_PSWRD_TF'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54033118822092415612)
,p_use_cache_before_default=>'NO'
,p_item_default=>'FALSE'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54006794138212625027)
,p_name=>'P1040_MESSAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54033118822092415612)
,p_prompt=>'Message'
,p_source=>'Period is Password Protected.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(54128995288822301171)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54006794629452625028)
,p_name=>'P1040_PASSWORD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(54033118822092415612)
,p_prompt=>'Enter Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54006798097008625036)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54006791890607625017)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54006798624260625036)
,p_event_id=>wwv_flow_imp.id(54006798097008625036)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54006795757024625032)
,p_name=>'Return Error or To Page'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1040_PERIOD_PSWRD_TF'
,p_condition_element=>'P1040_PERIOD_PSWRD_TF'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'TRUE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54006796290850625033)
,p_event_id=>wwv_flow_imp.id(54006795757024625032)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54006796797545625033)
,p_event_id=>wwv_flow_imp.id(54006795757024625032)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.alert(''Invalid Password Entered'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54011415096443885737)
,p_name=>'onPageLoad'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54011415179346885738)
,p_event_id=>wwv_flow_imp.id(54011415096443885737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1040_PASSWORD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54010300025173145060)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validate Password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P1040_PERIOD_PSWRD_TF := kvs_baseline.validate_period_password(:P1040_YEAR,:P1040_PERIOD,:P1040_PASSWORD);',
'',
'IF :P1040_PERIOD_PSWRD_TF = ''FALSE'' THEN',
'    apex_error.add_error(  ',
'        p_message          => ''Invalid password'',  ',
'        p_additional_info  => null,  ',
'        p_display_location => apex_error.c_on_error_page',
'    );  ',
'END IF;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54006795431847625030)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'P1040_PERIOD_PSWRD_TF'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54006794937495625030)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize Muni'
,p_process_sql_clob=>'kvs0000.init_muni;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
