prompt --application/pages/page_34017
begin
--   Manifest
--     PAGE: 34017
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
 p_id=>34017
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'List of assets'
,p_alias=>'LIST-OF-ASSETS'
,p_page_mode=>'MODAL'
,p_step_title=>'List of assets'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function selectRow(pReturnValue){',
'',
'  apex.item("P34017_RETURN_VALUE").setValue(pReturnValue);  ',
'  apex.submit({ request:"CLOSE", showWait:"true" });',
'    ',
'}   ',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_dialog_width=>'50%'
,p_dialog_attributes=>'resizable:true, draggable:true, close:function(){apex.event.trigger(document,''RefreshRegions'')}'
,p_dialog_chained=>'N'
,p_page_component_map=>'18'
,p_last_updated_by=>'KVS'
,p_last_upd_yyyymmddhh24miss=>'20200807105122'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54049489003030969883)
,p_plug_name=>'List of Assets'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128972614439301148)
,p_plug_display_sequence=>20
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>'return apex34017.get_fa_asset_query;'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(54049489122962969883)
,p_name=>'List of Valid Accounts'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_saving=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'DLABUGATTAS'
,p_internal_uid=>53210086446191951
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54009514080712656066)
,p_db_column_name=>'ROW_ID'
,p_display_order=>10
,p_column_identifier=>'CP'
,p_column_label=>'Row Id'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54009514453254656067)
,p_db_column_name=>'ADD_BUTTON'
,p_display_order=>50
,p_column_identifier=>'CN'
,p_column_label=>'Add'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button class="t-Button t-Button--icon js-ignoreChange t-Button--iconRight t-Button--hot t-Button--small" type="button"; ',
'        onclick="selectRow(''#ROW_ID#'');">',
'    <span class="t-Icon t-Icon--left fa fa-plus" aria-hidden="true"></span>',
'    <span class="t-Button-label">Select</span>',
'    <span class="t-Icon t-Icon--right fa fa-plus" aria-hidden="true"></span>',
'</button>'))
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008943630024371248)
,p_db_column_name=>'ASSET_NO'
,p_display_order=>60
,p_column_identifier=>'CX'
,p_column_label=>'Asset No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008943663071371249)
,p_db_column_name=>'CLIENT_ID'
,p_display_order=>70
,p_column_identifier=>'CY'
,p_column_label=>'Client Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008943834841371250)
,p_db_column_name=>'ASSET_DESC'
,p_display_order=>80
,p_column_identifier=>'CZ'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008943895087371251)
,p_db_column_name=>'DISPOSED'
,p_display_order=>90
,p_column_identifier=>'DA'
,p_column_label=>'Disposed'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(54049574454804494122)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'132366'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADD_BUTTON:CLIENT_ID:ASSET_NO:ASSET_DESC:DISPOSED:'
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
 p_id=>wwv_flow_imp.id(54009516474013656080)
,p_name=>'P34017_RETURN_VALUE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(54049489003030969883)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54009516893412656080)
,p_name=>'P34017_ASSET_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(54049489003030969883)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54009517297676656085)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'init_muni'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  KVS0000.init_muni(:P0_USER, :P0_MUNI);',
'END'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54009517639249656085)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close dialog'
,p_attribute_01=>'P34017_RETURN_VALUE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CLOSE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
