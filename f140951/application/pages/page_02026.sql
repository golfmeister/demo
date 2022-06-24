prompt --application/pages/page_02026
begin
--   Manifest
--     PAGE: 02026
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
 p_id=>2026
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Change Cons Period'
,p_page_mode=>'MODAL'
,p_step_title=>'Change Cons Period'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(54129603428897909279)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function killJob(pJob) {',
'   var vOK = confirm(''Please confirm that you want to stop job '' + pJob + ''?'');',
'   if (!vOK) {',
'      return;',
'   }',
'   var lSpinner$ = apex.util.showSpinner();',
'   apex.server.process(''killJob'', ',
'   { x01:pJob}, ',
'   {',
'      success: function(gReturn) {',
'         lSpinner$.remove();',
'         if (gReturn.substr(0,1) == ''0'') {',
'             showError(gReturn.substr(1));',
'         }',
'         else if (gReturn.substr(0,1) == ''1'') {',
'             apex.region("IG_RUNNING").refresh(); ',
'         }',
'         else {',
'             showError(gReturn);',
'         }',
'      },',
'      dataType: "text"',
'   });',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
,p_last_updated_by=>'DCHING'
,p_last_upd_yyyymmddhh24miss=>'20211202221705'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53941696473765368179)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>1000009
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54213381633513679437)
,p_plug_name=>'Heading'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53941697650897368190)
,p_plug_name=>'buttons'
,p_parent_plug_id=>wwv_flow_imp.id(54213381633513679437)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54213381792745679438)
,p_plug_name=>'Change Cons Period'
,p_parent_plug_id=>wwv_flow_imp.id(54213381633513679437)
,p_icon_css_classes=>'fa-clipboard-edit'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--noPadding'
,p_plug_template=>wwv_flow_imp.id(54128970921428301147)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53941697684871368191)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53941697650897368190)
,p_button_name=>'RUN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Run'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53941696603773368180)
,p_name=>'P2026_CYCLE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53941696473765368179)
,p_prompt=>'Cycle'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>'RETURN ub_lov_sql(''CYCLE'');'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>7
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(54128995619375301172)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53941696712431368181)
,p_name=>'P2026_FROM_PERIOD'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53941696473765368179)
,p_prompt=>'Cons Period to Replace'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_colspan=>5
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(54128995619375301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53941696848950368182)
,p_name=>'P2026_FROM_YEAR'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(53941696473765368179)
,p_prompt=>'/'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53941697094803368185)
,p_name=>'P2026_TO_PERIOD'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(53941696473765368179)
,p_prompt=>'New Cons Period'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_colspan=>5
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(54128995619375301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53941697260112368186)
,p_name=>'P2026_TO_YEAR'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(53941696473765368179)
,p_prompt=>'/'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53941697287357368187)
,p_name=>'P2026_FROM_ACCT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(53941696473765368179)
,p_prompt=>'Account No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>35
,p_colspan=>7
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53941697454584368188)
,p_name=>'P2026_TO_ACCT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(53941696473765368179)
,p_prompt=>'To'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53941697810798368192)
,p_name=>'Click - Run'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53941697684871368191)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53941697878388368193)
,p_event_id=>wwv_flow_imp.id(53941697810798368192)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'clickRun(''#P2026_CYCLE,#P2026_FROM_PERIOD,#P2026_FROM_YEAR,#P2026_TO_PERIOD,#P2026_TO_YEAR,#P2026_FROM_ACCT,#P2026_TO_ACCT'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53941697990504368194)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ClickRun'
,p_process_sql_clob=>'apex2025.change_cons_period;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
