prompt --application/pages/page_30000
begin
--   Manifest
--     PAGE: 30000
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
 p_id=>30000
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'General Ledger Home'
,p_step_title=>'General Ledger Home'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(54129616061963193811)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
,p_last_updated_by=>'DCHING'
,p_last_upd_yyyymmddhh24miss=>'20211202221705'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54281351878608641026)
,p_plug_name=>'&P0_MUNI_NAME.'
,p_icon_css_classes=>'fa-book'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128970921428301147)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'<p><b>General Ledger</b> - &P0_USER.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(54281352194766641027)
,p_name=>'Actions'
,p_template=>wwv_flow_imp.id(54128973156403301149)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_grid_column_span=>6
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   --RETURN KVS0000.lov_sql_get(:P0_USER,''MGL'',''A'');',
'   RETURN apex1.lov_sql_get(:P0_USER,:P30000_SYSTEM_ID,''A'');',
'END;'))
,p_display_when_condition=>'KVS_APEX.get_uqa_count(:P0_USER,''A'',''MGL'') > 0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(54128985599763301161)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54165596630860664645)
,p_query_column_id=>1
,p_column_alias=>'SYSTEM_ID'
,p_column_display_sequence=>1
,p_column_heading=>'System id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54165597038231664650)
,p_query_column_id=>2
,p_column_alias=>'MODULE_DESC'
,p_column_display_sequence=>2
,p_column_heading=>'Module desc'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:#APEX_PAGE_NO#:&SESSION.::&DEBUG.:RP,#APEX_PAGE_NO#::'
,p_column_linktext=>'#MODULE_DESC#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54165597518096664651)
,p_query_column_id=>3
,p_column_alias=>'APEX_PAGE_NO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(54281354266341641033)
,p_name=>'Setup'
,p_template=>wwv_flow_imp.id(54128973156403301149)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_grid_column_span=>6
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--   RETURN KVS0000.lov_sql_get(:P0_USER,''MGL'',''S'');',
'   RETURN apex1.lov_sql_get(:P0_USER,:P30000_SYSTEM_ID,''S'');',
'END;'))
,p_display_when_condition=>'KVS_APEX.get_uqa_count(:P0_USER,''S'',''MGL'') > 0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(54128985599763301161)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54165598549421664654)
,p_query_column_id=>1
,p_column_alias=>'SYSTEM_ID'
,p_column_display_sequence=>1
,p_column_heading=>'System id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54165598994982664654)
,p_query_column_id=>2
,p_column_alias=>'MODULE_DESC'
,p_column_display_sequence=>2
,p_column_heading=>'Module desc'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:#APEX_PAGE_NO#:&SESSION.::&DEBUG.:RP,#APEX_PAGE_NO#::'
,p_column_linktext=>'#MODULE_DESC#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54165599420085664655)
,p_query_column_id=>3
,p_column_alias=>'APEX_PAGE_NO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(54281356266922641036)
,p_name=>'Reports'
,p_template=>wwv_flow_imp.id(54128973156403301149)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_grid_column_span=>6
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   --RETURN KVS0000.lov_sql_get(:P0_USER,''MGL'',''R'');',
'   RETURN apex1.lov_sql_get(:P0_USER,:P30000_SYSTEM_ID,''R'');',
'END;'))
,p_display_when_condition=>'KVS_APEX.get_uqa_count(:P0_USER,''R'',''MGL'') > 0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(54128985599763301161)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54165600488880664658)
,p_query_column_id=>1
,p_column_alias=>'SYSTEM_ID'
,p_column_display_sequence=>1
,p_column_heading=>'System id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54165600878932664658)
,p_query_column_id=>2
,p_column_alias=>'MODULE_DESC'
,p_column_display_sequence=>2
,p_column_heading=>'Module desc'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:#APEX_PAGE_NO#:&SESSION.::&DEBUG.:RP,RIR,#APEX_PAGE_NO#::'
,p_column_linktext=>'#MODULE_DESC#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54165601302649664659)
,p_query_column_id=>3
,p_column_alias=>'APEX_PAGE_NO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(54281358269342641039)
,p_name=>'Processes'
,p_template=>wwv_flow_imp.id(54128973156403301149)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_grid_column_span=>6
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   --RETURN KVS0000.lov_sql_get(:P0_USER,''MGL'',''P'');',
'   RETURN apex1.lov_sql_get(:P0_USER,:P30000_SYSTEM_ID,''P'');',
'END;'))
,p_display_when_condition=>'KVS_APEX.get_uqa_count(:P0_USER,''P'',''MGL'') > 0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(54128985599763301161)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54165602362765664661)
,p_query_column_id=>1
,p_column_alias=>'SYSTEM_ID'
,p_column_display_sequence=>1
,p_column_heading=>'System id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54165602737434664661)
,p_query_column_id=>2
,p_column_alias=>'MODULE_DESC'
,p_column_display_sequence=>2
,p_column_heading=>'Module desc'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:#APEX_PAGE_NO#:&SESSION.::&DEBUG.:RP,#APEX_PAGE_NO#::'
,p_column_linktext=>'#MODULE_DESC#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54165603199162664662)
,p_query_column_id=>3
,p_column_alias=>'APEX_PAGE_NO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54165597831814664651)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54281352194766641027)
,p_button_name=>'EditA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995830004301172)
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_MODULE_TYPE,P2_SYSTEM_ID:A,&P30000_SYSTEM_ID.'
,p_icon_css_classes=>'fa-ellipsis-h'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54165599769210664656)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54281354266341641033)
,p_button_name=>'EditS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995830004301172)
,p_button_image_alt=>'Edits'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_MODULE_TYPE,P2_SYSTEM_ID:S,&P30000_SYSTEM_ID.'
,p_icon_css_classes=>'fa-ellipsis-h'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54165601709434664659)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54281356266922641036)
,p_button_name=>'EditR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995830004301172)
,p_button_image_alt=>'Editr'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_MODULE_TYPE,P2_SYSTEM_ID:R,&P30000_SYSTEM_ID.'
,p_icon_css_classes=>'fa-ellipsis-h'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54165603551357664663)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54281358269342641039)
,p_button_name=>'EditP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995830004301172)
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_MODULE_TYPE,P2_SYSTEM_ID:P,&P30000_SYSTEM_ID.'
,p_icon_css_classes=>'fa-ellipsis-h'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54026847508787443135)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54281351878608641026)
,p_button_name=>'QuickAccess'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Quick Access'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_SYSTEM_ID:&P30000_SYSTEM_ID.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54027053639954445719)
,p_name=>'P30000_SYSTEM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54281351878608641026)
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(54025697576830106357)
,p_computation_sequence=>10
,p_computation_item=>'P30000_SYSTEM_ID'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'MGL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54027250272367011436)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize'
,p_process_sql_clob=>'apex1.init;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/