prompt --application/pages/page_01020
begin
--   Manifest
--     PAGE: 01020
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
 p_id=>1020
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Groups'
,p_alias=>'GROUPS'
,p_step_title=>'Groups'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(54129637998013359626)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'td[headers="LINK"] {  ',
'   width: 15px !important;  ',
'} ',
'button.ui-button.ui-widget.ui-state-default.ui-corner-all.ui-button-icon-only.ui-dialog-titlebar-close ',
'{  ',
'  visibility: hidden !important;  ',
'} '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
,p_last_updated_by=>'DCHING'
,p_last_upd_yyyymmddhh24miss=>'20211215214220'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54840555546400456064)
,p_plug_name=>'Groups'
,p_region_name=>'KVS1050'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128972614439301148)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, ',
'"MUNI_CODE",',
'"SECURITY_CODE",',
'"SECURITY_DESC"',
'FROM kvs_group_security',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(54840555947438456065)
,p_name=>'Groups'
,p_max_row_count=>'1000000'
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
,p_show_rows_per_page=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_download_formats=>'CSV:XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'DEVT'
,p_internal_uid=>987200350678964685
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53998498418356377671)
,p_db_column_name=>'ROWID'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53998498840527377672)
,p_db_column_name=>'MUNI_CODE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Muni Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53998499241676377673)
,p_db_column_name=>'SECURITY_CODE'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Security Code'
,p_column_link=>'f?p=&APP_ID.:1021:&SESSION.::&DEBUG.:1021:P1021_ROWID:#ROWID#'
,p_column_linktext=>'#SECURITY_CODE#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53998499607691377673)
,p_db_column_name=>'SECURITY_DESC'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(54840557985510460672)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1451444'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MUNI_CODE:SECURITY_CODE:SECURITY_DESC:ROWID'
,p_sort_column_1=>'SECURITY_CODE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'SECURITY_CODE'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54841148926999775264)
,p_plug_name=>'Heading'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>2
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54840418146496727351)
,p_plug_name=>'Groups'
,p_parent_plug_id=>wwv_flow_imp.id(54841148926999775264)
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--noPadding:t-HeroRegion--hideIcon'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128970921428301147)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_menu_id=>wwv_flow_imp.id(54129008025175301189)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(54128996419674301174)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53998500423125377675)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(54840555546400456064)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1021:&SESSION.::&DEBUG.:1021::'
,p_button_condition=>'kvs_apex.ac(v(''APP_PAGE_ID''),''C'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53998500858356377675)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(54840555546400456064)
,p_button_name=>'COPY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Copy'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9029:&SESSION.::&DEBUG.:RP,9029::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53998501231445377676)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(54840555546400456064)
,p_button_name=>'PRINT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Print'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_MUNI_NAME,P10_REPORT_NAME,P10_SEARCH,P10_USER,P10_MUNI:&P0_MUNI_NAME.,KVS1050,Y,&P0_USER.,&P0_MUNI.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53998503263178377679)
,p_name=>'Close dialog copy group'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53998500858356377675)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53998503758713377680)
,p_event_id=>wwv_flow_imp.id(53998503263178377679)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54840555546400456064)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53998504245799377681)
,p_event_id=>wwv_flow_imp.id(53998503263178377679)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Group successfully created.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53998502798473377679)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   KVS_GLOBAL.setuserinfo(:P0_USER);',
'   KVS_GLOBAL.set_def_muni(:P0_MUNI);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
