prompt --application/pages/page_34022
begin
--   Manifest
--     PAGE: 34022
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
 p_id=>34022
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'List of Valid Grant/CapEx Codes'
,p_alias=>'LIST-OF-GRANTS'
,p_page_mode=>'MODAL'
,p_step_title=>'List of Valid Grant/CapEx Codes'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function openDynamicPageDialog(){',
'    apex.server.process (',
'        ''GET_MAINTENACE_PAGE_URL '' ',
'       , { x01 : ''PAGE_34022''}',
'       , { success: function(pData) {',
'               openURLAsModalDialog(pData.lov_url, "maitenance-lov-dlg-js", $(this.triggeringElement));',
'            }',
'         }',
'    );',
'}'))
,p_step_template=>wwv_flow_imp.id(53708150917004456860)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_height=>'700'
,p_dialog_width=>'50%'
,p_dialog_attributes=>'resizable:true, draggable:true, close:function(){apex.event.trigger(document,''RefreshRegions'')}'
,p_dialog_chained=>'N'
,p_page_component_map=>'18'
,p_last_updated_by=>'KVS'
,p_last_upd_yyyymmddhh24miss=>'20220112152359'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54024102189000983364)
,p_plug_name=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128963575367301140)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54036255371496091768)
,p_plug_name=>'List of Valid Grant/CapEx Codes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128972614439301148)
,p_plug_display_sequence=>20
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>'return apex34022.get_grant_query;'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(54036255491428091768)
,p_name=>'List of Valid Accounts'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
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
,p_internal_uid=>39976454911313836
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008641585567757538)
,p_db_column_name=>'ROW_ID'
,p_display_order=>10
,p_column_identifier=>'CP'
,p_column_label=>'Row Id'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008643165985757542)
,p_db_column_name=>'ADD_BUTTON'
,p_display_order=>50
,p_column_identifier=>'CN'
,p_column_label=>'Add'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button class="t-Button t-Button--icon js-ignoreChange t-Button--iconRight t-Button--hot t-Button--small" type="button"; ',
'        onclick="selectLov(''#ROW_ID#'',''#GRANT_CODE#'',''#GRANT_DESC#'');">',
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
 p_id=>wwv_flow_imp.id(54008092033639889762)
,p_db_column_name=>'GRANT_CODE'
,p_display_order=>60
,p_column_identifier=>'CT'
,p_column_label=>'Grant/CapEx'
,p_column_type=>'STRING'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008092107934889763)
,p_db_column_name=>'GRANT_DESC'
,p_display_order=>70
,p_column_identifier=>'CU'
,p_column_label=>'Grant/CapEx Description'
,p_column_type=>'STRING'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008943045641371243)
,p_db_column_name=>'START_DATE'
,p_display_order=>80
,p_column_identifier=>'CV'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008943175571371244)
,p_db_column_name=>'END_DATE'
,p_display_order=>90
,p_column_identifier=>'CW'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(54036340823269616007)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'123645'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ADD_BUTTON::GRANT_CODE:GRANT_DESC:START_DATE:END_DATE'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54038004887227696846)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54036255371496091768)
,p_button_name=>'ADD_NEW_CATEGORY_BTN'
,p_button_static_id=>'ADD_NEW_CATEGORY_BTN'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995830004301172)
,p_button_image_alt=>'Add Grant'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:openDynamicPageDialog();'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-plus'
,p_required_patch=>wwv_flow_imp.id(54038106894165943563)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53718889489065531393)
,p_name=>'P34022_RETURN_CODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(54036255371496091768)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53718889642711531394)
,p_name=>'P34022_RETURN_DESC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(54036255371496091768)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54008091854430889761)
,p_name=>'P34022_GRANT_CODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(54036255371496091768)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54008645189303757552)
,p_name=>'P34022_RETURN_ROWID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(54036255371496091768)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54008645603853757553)
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
 p_id=>wwv_flow_imp.id(54008646001622757553)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close dialog'
,p_attribute_01=>'P34022_RETURN_ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CLOSE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54038005168021696849)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_MAINTENACE_PAGE_URL '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'KVS_BASELINE.get_maintenance_url;  ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
