prompt --application/pages/page_81004
begin
--   Manifest
--     PAGE: 81004
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
 p_id=>81004
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Consumers - Close Account'
,p_alias=>'UB1130CLOSE'
,p_page_mode=>'MODAL'
,p_step_title=>'Consumers - Close Account'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(54164950985292605744)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_dialog_width=>'700'
,p_page_component_map=>'17'
,p_last_updated_by=>'DCHING'
,p_last_upd_yyyymmddhh24miss=>'20211206165233'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54452727214682921536)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53923709134947329433)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(54452727214682921536)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53923709491815329433)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(54452727214682921536)
,p_button_name=>'Close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close Account'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53923709889920329434)
,p_name=>'P81004_KVS_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54452727214682921536)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53923710298925329434)
,p_name=>'P81004_ACCOUNT_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(54452727214682921536)
,p_prompt=>'Account No'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53923710762773329434)
,p_name=>'P81004_BILLING_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54452727214682921536)
,p_prompt=>'Billing Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53923711166578329435)
,p_name=>'P81004_LOCATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54452727214682921536)
,p_prompt=>'Location'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53923711509545329435)
,p_name=>'P81004_DISCONNECT_DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(54452727214682921536)
,p_prompt=>'Disconnect Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>8
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53923712726400329436)
,p_name=>'Click - Cancel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53923709134947329433)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53923713232326329437)
,p_event_id=>wwv_flow_imp.id(53923712726400329436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53923713631562329437)
,p_name=>'Click - Close'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53923709491815329433)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53923714072070329437)
,p_event_id=>wwv_flow_imp.id(53923713631562329437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!apex.page.validate()) {',
'   return;',
'}',
'apex.server.process(''closeAcct'', ',
'   {pageItems : ''#P81004_DISCONNECT_DATE''}, ',
'   {',
'      success: function(gReturn) {',
'         if (gReturn.substr(0,1) == ''0'') {',
'             showError(gReturn.substr(1));',
'         }',
'         else if (gReturn.substr(0,1) == ''1'') {',
'             apex.navigation.dialog.close(true);',
'         }',
'         else {',
'             showError(gReturn);',
'         }',
'      },',
'      dataType: "text"',
'   });',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53923712345861329436)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Init'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P81004_KVS_ROWID := KVS_APEX_REPORT.prep_param2(:P81004_KVS_ROWID);',
':P81004_ACCOUNT_NO := KVS_APEX_REPORT.prep_param2(:P81004_ACCOUNT_NO);',
':P81004_BILLING_NAME := KVS_APEX_REPORT.prep_param2(:P81004_BILLING_NAME);',
':P81004_LOCATION := KVS_APEX_REPORT.prep_param2(:P81004_LOCATION);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53923711956058329436)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'closeAcct'
,p_process_sql_clob=>'htp.p(apex81005.close_acct(:P81004_ACCOUNT_NO,:P81004_DISCONNECT_DATE));'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
