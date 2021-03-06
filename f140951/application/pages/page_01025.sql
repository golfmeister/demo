prompt --application/pages/page_01025
begin
--   Manifest
--     PAGE: 01025
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
 p_id=>1025
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Users'
,p_step_title=>'Users'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'td[headers="LINK"] {  ',
'   width: 15px !important;  ',
'}  ',
'button.ui-button.ui-widget.ui-state-default.ui-corner-all.ui-button-icon-only.ui-dialog-titlebar-close ',
'{  ',
'  visibility: hidden !important;  ',
'} '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
,p_last_updated_by=>'DCHING'
,p_last_upd_yyyymmddhh24miss=>'20211202221704'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54342347490655878941)
,p_plug_name=>'Users'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128972614439301148)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ROWID", ',
'"USER_ID",',
'"MUNI_CODE",',
'"SYSTEM_ID",',
'"USER_NAME",',
'"DATE_CREATED",',
'"CREATED_BY",',
'"POWER_USER",',
'"DISABLED",',
'"EMAIL",',
'"EMAIL_FORWARD",',
'"REMARKS",',
'"PHONE",',
'"LOCATION",',
'"CHANGE_PASSWORD",',
'"USER_INITIAL",',
'"PHONE_EXT",',
'"PASSWORD_DATE_SET",',
'"VIEW_ALL_SPOOL",',
'"PRINTER_NAME",',
'"LOGIN_EXPIRE",',
'"SAVE_AS_SPOOL",',
'"VCQ_ALL_MUNI",',
'"VCQ_USER",',
'"WF_CODE",',
'"PRINTER_NAME_GR",',
'"DATE_DISABLED",',
'"DISABLED_BY",',
'"EMAIL_LOGIN",',
'"EMAIL_PASSWORD",',
'"EMAIL_SERVER",',
'"EMAIL_PORT",',
'"GR_PASS_CODE",',
'"USER_PASS"',
'from "#OWNER#"."KVS_USER" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(54342347909831878945)
,p_name=>'Users'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'20'
,p_allow_report_saving=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
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
,p_detail_link=>'f?p=&APP_ID.:1026:&SESSION.::&DEBUG.:1026:P1026_USER_ID:#USER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_owner=>'DEVT'
,p_internal_uid=>343215554861185428
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006216088281448976)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006219656637448984)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User ID'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006220091327448984)
,p_db_column_name=>'MUNI_CODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Default Muni'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006220545582448985)
,p_db_column_name=>'SYSTEM_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'System Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006220925012448985)
,p_db_column_name=>'USER_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006221334105448987)
,p_db_column_name=>'DATE_CREATED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_format_mask=>'MM/DD/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006221711914448987)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006222118450448988)
,p_db_column_name=>'POWER_USER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Power User'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006222554025448988)
,p_db_column_name=>'DISABLED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Disabled'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006222932646448990)
,p_db_column_name=>'EMAIL'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006223334383448990)
,p_db_column_name=>'EMAIL_FORWARD'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Email Forward'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006223683466448992)
,p_db_column_name=>'REMARKS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006224120803448992)
,p_db_column_name=>'PHONE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006224536253448993)
,p_db_column_name=>'LOCATION'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006224860152448993)
,p_db_column_name=>'CHANGE_PASSWORD'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Change Password'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006225265347448995)
,p_db_column_name=>'USER_INITIAL'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'User Initial'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006225710706448995)
,p_db_column_name=>'PHONE_EXT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Phone Ext'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006226144838448996)
,p_db_column_name=>'PASSWORD_DATE_SET'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Password Date Set'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006226545840448996)
,p_db_column_name=>'VIEW_ALL_SPOOL'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'View All Spool'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006226870611448998)
,p_db_column_name=>'PRINTER_NAME'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Printer Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006227348492448998)
,p_db_column_name=>'LOGIN_EXPIRE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Login Expire'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006227690067448999)
,p_db_column_name=>'SAVE_AS_SPOOL'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Save As Spool'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006228101548448999)
,p_db_column_name=>'VCQ_ALL_MUNI'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Vcq All Muni'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006228487689449001)
,p_db_column_name=>'VCQ_USER'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Vcq User'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006228883161449001)
,p_db_column_name=>'WF_CODE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Wf Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006229276701449002)
,p_db_column_name=>'PRINTER_NAME_GR'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Printer Name Gr'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006216545422448976)
,p_db_column_name=>'DATE_DISABLED'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Date Disabled'
,p_column_type=>'DATE'
,p_format_mask=>'MM/DD/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006216923048448977)
,p_db_column_name=>'DISABLED_BY'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Disabled By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006217294710448977)
,p_db_column_name=>'EMAIL_LOGIN'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Email Login'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006217664957448979)
,p_db_column_name=>'EMAIL_PASSWORD'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Email Password'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006218123760448981)
,p_db_column_name=>'EMAIL_SERVER'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Email Server'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006218458412448981)
,p_db_column_name=>'EMAIL_PORT'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Email Port'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006218888753448982)
,p_db_column_name=>'GR_PASS_CODE'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Gr Pass Code'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54006219265268448982)
,p_db_column_name=>'USER_PASS'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'User Pass'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(54342361477730878976)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'70973'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'USER_ID:USER_NAME:DATE_CREATED:MUNI_CODE:DATE_DISABLED:'
,p_sort_column_1=>'USER_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54344538997844495247)
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
 p_id=>wwv_flow_imp.id(54331573815473670753)
,p_plug_name=>'Users'
,p_parent_plug_id=>wwv_flow_imp.id(54344538997844495247)
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
 p_id=>wwv_flow_imp.id(54006230099966449004)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(54342347490655878941)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1026:&SESSION.::&DEBUG.:1026::'
,p_button_condition=>'kvs_apex.ac(v(''APP_PAGE_ID''),''C'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54006230548204449006)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(54342347490655878941)
,p_button_name=>'Copy'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Copy'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9035:&SESSION.::&DEBUG.:RP,9035::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54006230923341449006)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(54342347490655878941)
,p_button_name=>'PRINT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Print'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.:test7899:&DEBUG.:10:P10_MUNI_NAME,P10_REPORT_NAME,P10_SEARCH,P10_USER,P10_MUNI:&P0_MUNI_NAME.,KVS1030,Y,&P0_USER.,&P0_MUNI.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54006232918354449012)
,p_name=>'Close dialog  copy user'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54006230548204449006)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54006233443967449013)
,p_event_id=>wwv_flow_imp.id(54006232918354449012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54342347490655878941)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54006233861629449013)
,p_event_id=>wwv_flow_imp.id(54006232918354449012)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'User successfully created.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54006232553527449012)
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
