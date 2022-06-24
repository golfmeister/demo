prompt --application/pages/page_81008
begin
--   Manifest
--     PAGE: 81008
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
 p_id=>81008
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Consumer - Copy Account'
,p_alias=>'UB1130COPY'
,p_page_mode=>'MODAL'
,p_step_title=>'Consumer - Copy Account'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(54164950985292605744)
,p_javascript_file_urls=>'#APP_IMAGES#81006.js'
,p_step_template=>wwv_flow_imp.id(53708150917004456860)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_page_component_map=>'03'
,p_last_updated_by=>'DCHING'
,p_last_upd_yyyymmddhh24miss=>'20211210200629'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53993316740659488038)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(54236957745085311079)
,p_name=>'Account'
,p_region_name=>'IR_US'
,p_template=>wwv_flow_imp.id(54128973156403301149)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>'RETURN apex81005.coll_query(''SA'');'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(54128983178100301159)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b>No Data Found.</b>'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53853931063038842199)
,p_query_column_id=>1
,p_column_alias=>'SEGMENT_NO'
,p_column_display_sequence=>1
,p_column_heading=>'#'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53853931444892842200)
,p_query_column_id=>2
,p_column_alias=>'SEGMENT_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53853931778725842200)
,p_query_column_id=>3
,p_column_alias=>'VALUE'
,p_column_display_sequence=>3
,p_column_heading=>'Value'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53853932208865842200)
,p_query_column_id=>4
,p_column_alias=>'SEGMENT_SEP'
,p_column_display_sequence=>4
,p_column_heading=>'Sep'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53853928291587842197)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(53993316740659488038)
,p_button_name=>'Copy'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copy'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53853929092400842197)
,p_name=>'P81008_CONNECT_DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53993316740659488038)
,p_item_default=>'TO_CHAR(SYSDATE,''mm/DD/YYYY'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Connect Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>8
,p_cMaxlength=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53853929565393842198)
,p_name=>'P81008_DATA'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(53993316740659488038)
,p_prompt=>'Data to Copy'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:Standard;S,All;A,All Except Amount Due / Cons;E'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
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
 p_id=>wwv_flow_imp.id(53853929965559842198)
,p_name=>'P81008_CLOSE_ACCT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(53993316740659488038)
,p_item_default=>'N'
,p_prompt=>'Close Copied Account'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(54128995619375301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53853930290589842198)
,p_name=>'P81008_DISCONNECT_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(53993316740659488038)
,p_prompt=>'Disconnect Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>8
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53853935146684842203)
,p_name=>'Click - Copy'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53853928291587842197)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53853935667212842204)
,p_event_id=>wwv_flow_imp.id(53853935146684842203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  if (!apex.page.validate()) {',
'     return;',
'  }   ',
'  apex.server.process(''copyAcct'', ',
'   {pageItems : ''#P81008_CONNECT_DATE,#P81008_DATA,#P81008_CLOSE_ACCT,#P81008_DISCONNECT_DATE''}, ',
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
'   });'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53853934267890842202)
,p_name=>'DClosed - UCLov'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#UCLov'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53853934752116842203)
,p_event_id=>wwv_flow_imp.id(53853934267890842202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   apex.server.process(''dClosedUCLov'', {}, ',
'   {',
'      success: function(gReturn) {',
'         if (gReturn.substr(0,1) == ''0'') {',
'             showError(gReturn.substr(1));',
'         }',
'         else if (gReturn.substr(0,1) == ''1'') {',
'             $s("P81008_ACCOUNT_NO",gReturn.substr(1));',
'         }',
'         else {',
'             showError(gReturn);',
'         }',
'      },',
'      dataType: "text"',
'   });'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53853936894108842205)
,p_name=>'Change -Close Acct'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P81008_CLOSE_ACCT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53853937383751842205)
,p_event_id=>wwv_flow_imp.id(53853936894108842205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P81008_CLOSE_ACCT'') == ''Y'') {',
'   apex.item(''P81008_DISCONNECT_DATE'').show();',
'}',
'else {',
'   apex.item(''P81008_DISCONNECT_DATE'').hide();',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53853933426297842202)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Init'
,p_process_sql_clob=>'KVS_APEX.init_coll(''SA'',apex81005.get_SA);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53853932593638842201)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ChangeSeg'
,p_process_sql_clob=>'htp.p(kvs0000.change_seg);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53853933023785842201)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'dClosedUCLov'
,p_process_sql_clob=>'htp.p(ub2010.dclosed_aa_lov);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53853933830407842202)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'copyAcct'
,p_process_sql_clob=>'htp.p(apex81005.copy_acct);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
