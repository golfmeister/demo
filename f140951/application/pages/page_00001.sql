prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Home'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(54129616061963193811)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_comment=>'fa-dashboard'
,p_page_component_map=>'13'
,p_last_updated_by=>'GOLFMEISTER2005@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20220402033422'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(54245501040844390886)
,p_name=>'Actions'
,p_template=>wwv_flow_imp.id(54128973156403301149)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_grid_column_span=>6
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>'RETURN apex1.lov_sql_get(:P0_USER,''KVS'',''A'');'
,p_display_when_condition=>'KVS_APEX.get_uqa_count(:P0_USER,''A'') > 0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(54128985599763301161)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53999245306475545803)
,p_query_column_id=>1
,p_column_alias=>'SYSTEM_ID'
,p_column_display_sequence=>1
,p_column_heading=>'System Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53999245715165545803)
,p_query_column_id=>2
,p_column_alias=>'MODULE_DESC'
,p_column_display_sequence=>2
,p_column_heading=>'Module Desc'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:selectQE(''#APEX_PAGE_NO#'',''#MODULE_NO#'');'
,p_column_linktext=>'#MODULE_DESC#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53999246041023545805)
,p_query_column_id=>3
,p_column_alias=>'APEX_PAGE_NO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53712477209493301566)
,p_query_column_id=>4
,p_column_alias=>'MODULE_NO'
,p_column_display_sequence=>13
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(54245501415365390890)
,p_name=>'Processes'
,p_template=>wwv_flow_imp.id(54128973156403301149)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_grid_column_span=>6
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>'RETURN apex1.lov_sql_get(:P0_USER,''KVS'',''P'');'
,p_display_when_condition=>'KVS_APEX.get_uqa_count(:P0_USER,''P'') > 0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(54128985599763301161)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53999247186279545808)
,p_query_column_id=>1
,p_column_alias=>'SYSTEM_ID'
,p_column_display_sequence=>1
,p_column_heading=>'System id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53999247574519545808)
,p_query_column_id=>2
,p_column_alias=>'MODULE_DESC'
,p_column_display_sequence=>2
,p_column_heading=>'Module desc'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:selectQE(''#APEX_PAGE_NO#'',''#MODULE_NO#'');'
,p_column_linktext=>'#MODULE_DESC#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53999247962091545808)
,p_query_column_id=>3
,p_column_alias=>'APEX_PAGE_NO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53712477297069301567)
,p_query_column_id=>4
,p_column_alias=>'MODULE_NO'
,p_column_display_sequence=>13
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(54245501839691390894)
,p_name=>'Reports'
,p_template=>wwv_flow_imp.id(54128973156403301149)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_grid_column_span=>6
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>'RETURN apex1.lov_sql_get(:P0_USER,''KVS'',''R'');'
,p_display_when_condition=>'KVS_APEX.get_uqa_count(:P0_USER,''R'') > 0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(54128985599763301161)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53999249070048545811)
,p_query_column_id=>1
,p_column_alias=>'SYSTEM_ID'
,p_column_display_sequence=>1
,p_column_heading=>'System id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53999249440221545813)
,p_query_column_id=>2
,p_column_alias=>'MODULE_DESC'
,p_column_display_sequence=>2
,p_column_heading=>'Module desc'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:selectQE(''#APEX_PAGE_NO#'',''#MODULE_NO#'');'
,p_column_linktext=>'#MODULE_DESC#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53999249922467545813)
,p_query_column_id=>3
,p_column_alias=>'APEX_PAGE_NO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53712477382323301568)
,p_query_column_id=>4
,p_column_alias=>'MODULE_NO'
,p_column_display_sequence=>13
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(54245502241705390898)
,p_name=>'Setup'
,p_template=>wwv_flow_imp.id(54128973156403301149)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_grid_column_span=>6
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>'RETURN apex1.lov_sql_get(:P0_USER,''KVS'',''S'');'
,p_display_when_condition=>'KVS_APEX.get_uqa_count(:P0_USER,''S'') > 0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(54128985599763301161)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53999251019911545816)
,p_query_column_id=>1
,p_column_alias=>'SYSTEM_ID'
,p_column_display_sequence=>1
,p_column_heading=>'System id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53999251373292545816)
,p_query_column_id=>2
,p_column_alias=>'MODULE_DESC'
,p_column_display_sequence=>2
,p_column_heading=>'Module desc'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:selectQE(''#APEX_PAGE_NO#'',''#MODULE_NO#'');'
,p_column_linktext=>'#MODULE_DESC#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53999251769213545817)
,p_query_column_id=>3
,p_column_alias=>'APEX_PAGE_NO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53712477566378301569)
,p_query_column_id=>4
,p_column_alias=>'MODULE_NO'
,p_column_display_sequence=>13
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54245502859914390904)
,p_plug_name=>'Muni'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54248598191839887606)
,p_plug_name=>'News and Messages'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(54128972614439301148)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DECODE(msg_type,''U'',''User'',''System'') type,',
'       created_by,',
'       date_created,',
'       start_date,',
'       end_date,',
'       message,',
'       acknowledged,',
'       apex_util.get_since(date_created) since',
'from kvs_apex_msg'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P1_COUNT_NM'
,p_plug_display_when_cond2=>'0'
,p_attribute_01=>'DATE_CREATED'
,p_attribute_03=>'MESSAGE'
,p_attribute_05=>'SINCE'
,p_attribute_06=>'TYPE'
,p_attribute_07=>'CREATED_BY'
,p_attribute_12=>'D'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54265697544025997770)
,p_name=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Created by'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54265697679428997771)
,p_name=>'DATE_CREATED'
,p_data_type=>'DATE'
,p_is_visible=>true
,p_heading=>'Date created'
,p_display_sequence=>30
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54265697722117997772)
,p_name=>'START_DATE'
,p_data_type=>'DATE'
,p_is_visible=>true
,p_heading=>'Start date'
,p_display_sequence=>40
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54265697839553997773)
,p_name=>'END_DATE'
,p_data_type=>'DATE'
,p_is_visible=>true
,p_heading=>'End date'
,p_display_sequence=>50
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54265697929859997774)
,p_name=>'MESSAGE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Message'
,p_display_sequence=>60
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54265698094690997775)
,p_name=>'ACKNOWLEDGED'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Acknowledged'
,p_display_sequence=>70
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54265698162639997776)
,p_name=>'TYPE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Type'
,p_display_sequence=>80
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54265698250730997777)
,p_name=>'SINCE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Since'
,p_display_sequence=>90
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53999252906218545819)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(54245502859914390904)
,p_button_name=>'QuickAccess'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Quick Access'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'FROM kvs_user_quick_access a, kvs_module b',
'WHERE a.user_id = :P0_USER AND',
'b.module_no = a.module_no AND',
'(b.system_id IN (''KVS'',''UB'')  OR (b.system_id = ''COL'' AND b.module_type = ''S''))'))
,p_button_condition_type=>'NOT_EXISTS'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53999253275349545821)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(54245502859914390904)
,p_button_name=>'Administration'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Administration'
,p_button_redirect_url=>'f?p=&APP_ID.:2000:&SESSION.::&DEBUG.:RP,2000::'
,p_button_condition=>'P0_POWER_USER'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53999246445537545805)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54245501040844390886)
,p_button_name=>'EditA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995830004301172)
,p_button_image_alt=>'Edita'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_MODULE_TYPE:A'
,p_icon_css_classes=>'fa-ellipsis-h'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53999248339486545810)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54245501415365390890)
,p_button_name=>'EditP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995830004301172)
,p_button_image_alt=>'Editp'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_MODULE_TYPE:P'
,p_icon_css_classes=>'fa-ellipsis-h'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53999250283378545814)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54245501839691390894)
,p_button_name=>'EditR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995830004301172)
,p_button_image_alt=>'Editr'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_MODULE_TYPE:R'
,p_icon_css_classes=>'fa-ellipsis-h'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53999252146798545817)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54245502241705390898)
,p_button_name=>'EditS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995830004301172)
,p_button_image_alt=>'Edits'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_MODULE_TYPE:S'
,p_icon_css_classes=>'fa-ellipsis-h'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(53711622519811150063)
,p_branch_name=>'go to dashboard'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53999253663771545821)
,p_name=>'P1_COUNT_NM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54245502859914390904)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53999254086412545822)
,p_name=>'P1_MUNI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(54245502859914390904)
,p_prompt=>'Municipality'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'RETURN q''~',
'   SELECT muni_name,',
'          muni_code',
'   FROM kvs_muni a',
'   WHERE EXISTS(SELECT 1 FROM kvs_user_muni',
'            WHERE user_id = :P0_USER AND',
'                  muni_code = a.muni_code)',
'   ORDER BY 1',
'~'';'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(54128995619375301172)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53999254523390545822)
,p_name=>'P1_INIT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(54245502859914390904)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53999258742040545833)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':G_HOME := 1;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
