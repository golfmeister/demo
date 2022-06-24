prompt --application/pages/page_34012
begin
--   Manifest
--     PAGE: 34012
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
 p_id=>34012
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'List of Segments'
,p_alias=>'GL1040L'
,p_page_mode=>'MODAL'
,p_step_title=>'List of Valid Codes'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function selectRow(pRowID, pSegCode,pSegDesc){',
'    apex.item("P34012_RETURN_ROWID").setValue(pRowID);',
'    apex.item("P34012_RETURN_CODE").setValue(pSegCode);    ',
'    apex.item("P34012_RETURN_DESC").setValue(pSegDesc);   ',
'    apex.navigation.dialog.close(true,[''P34012_RETURN_ROWID'',''P34012_RETURN_CODE'',''P34012_RETURN_DESC'']);',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.util.getTopApex().jQuery(".listSegDialog .ui-dialog-content").dialog("option", "title", "List of  Valid " + $v("P34012_SEGMENT_NAME") + " Codes")  ',
''))
,p_step_template=>wwv_flow_imp.id(53708150917004456860)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_height=>'700'
,p_dialog_width=>'50%'
,p_dialog_attributes=>'resizable:true, draggable:true, close:function(){apex.event.trigger(document,''RefreshRegions'')}'
,p_dialog_css_classes=>'listSegDialog'
,p_dialog_chained=>'N'
,p_page_component_map=>'18'
,p_last_updated_by=>'GOLFMEISTER2005@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20220409193921'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54024997683921576735)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128963575367301140)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54061636346294731265)
,p_plug_name=>'List of Segments'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128972614439301148)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.rowid row_id,segment_code,segment_desc,acct_type, '''' add_button',
'from gl_segment a',
'where segment_no = :P34012_SEGMENT_NO'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(54061636466226731265)
,p_name=>'List of Valid Accounts'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV'
,p_enable_mail_download=>'N'
,p_owner=>'DLABUGATTAS'
,p_internal_uid=>65357429709953333
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008966580356513239)
,p_db_column_name=>'ROW_ID'
,p_display_order=>10
,p_column_identifier=>'CP'
,p_column_label=>'Row Id'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53727334112085390306)
,p_db_column_name=>'ADD_BUTTON'
,p_display_order=>20
,p_column_identifier=>'CU'
,p_column_label=>'Add'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button class="t-Button t-Button--icon js-ignoreChange t-Button--iconRight t-Button--hot t-Button--small" type="button"; ',
'        onclick="selectRow(''#ROW_ID#'',''#SEGMENT_CODE#'',''#SEGMENT_DESC#'');">',
'    <span class="t-Icon t-Icon--left fa fa-plus" aria-hidden="true"></span>',
'    <span class="t-Button-label">Select</span>',
'    <span class="t-Icon t-Icon--right fa fa-plus" aria-hidden="true"></span>',
'</button>'))
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008967026647513239)
,p_db_column_name=>'SEGMENT_CODE'
,p_display_order=>30
,p_column_identifier=>'CQ'
,p_column_label=>'Code'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008967434058513241)
,p_db_column_name=>'SEGMENT_DESC'
,p_display_order=>40
,p_column_identifier=>'CR'
,p_column_label=>'Description'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54015026167518397433)
,p_db_column_name=>'ACCT_TYPE'
,p_display_order=>50
,p_column_identifier=>'CT'
,p_column_label=>'Type'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>':P34012_SEGMENT_CONTROL = ''Y'''
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(54061721798068255504)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'126895'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ADD_BUTTON:SEGMENT_CODE:SEGMENT_DESC:'
,p_sort_column_1=>'ORDER1'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'SEGMENT_CODE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53716648773462812588)
,p_name=>'P34012_RETURN_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(54061636346294731265)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53718887971170531377)
,p_name=>'P34012_RETURN_DESC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(54061636346294731265)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53718890253131531400)
,p_name=>'P34012_RETURN_VALUE1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(54061636346294731265)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54008968969474513246)
,p_name=>'P34012_SEGMENT_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(54061636346294731265)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54008969347520513247)
,p_name=>'P34012_SEGMENT_CODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54061636346294731265)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54008969784528513247)
,p_name=>'P34012_PARAM2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(54061636346294731265)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54008970218772513249)
,p_name=>'P34012_RETURN_ROWID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(54061636346294731265)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54012878268997487181)
,p_name=>'P34012_SEGMENT_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(54061636346294731265)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54015026319243397434)
,p_name=>'P34012_SEGMENT_CONTROL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(54061636346294731265)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54015026401509397435)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'getting segment name'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c002, 3',
'INTO :P34012_SEGMENT_NAME, :P34012_SEGMENT_CONTROL',
'FROM apex_collections',
'WHERE collection_name = ''GS'' and',
'      c001 = :P34012_SEGMENT_NO'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
