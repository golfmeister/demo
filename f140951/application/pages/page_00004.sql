prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(54129616061963193811)
,p_step_template=>wwv_flow_imp.id(54128955544869301132)
,p_page_template_options=>'#DEFAULT#:t-PageBody--noContentPadding'
,p_protection_level=>'C'
,p_page_comment=>'fa-accessor-one'
,p_page_component_map=>'22'
,p_last_updated_by=>'GOLFMEISTER2005@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20220624200954'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53711506950020532075)
,p_plug_name=>'fs_search'
,p_region_name=>'fs_search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(53718363739999071307)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_06=>'E'
,p_attribute_08=>'#active_facets'
,p_attribute_09=>'Y'
,p_attribute_10=>'Module Count'
,p_attribute_12=>'10000'
,p_attribute_13=>'E'
,p_attribute_14=>'#active_charts'
,p_attribute_15=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53711507373117532079)
,p_plug_name=>'button_bar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128963575367301140)
,p_plug_display_sequence=>20
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53711507602851532082)
,p_plug_name=>'Chart'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>'<div id="active_charts"></div>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53711510303221532109)
,p_plug_name=>'Search'
,p_region_css_classes=>'&REGION_BG.'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(53711673204847688966)
,p_name=>'ir_recent'
,p_template=>wwv_flow_imp.id(54128972614439301148)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT Initcap(b.module_desc) module_desc,b.module_no,b.apex_page_no ',
'FROM (SELECT module_no,MAX(log_date) log_date',
'        FROM kvs_apex_user_log',
'         WHERE user_id = :APP_USER AND',
'               module_no != ''KVS0010''',
'        GROUP BY module_no) a, kvs_module b',
'WHERE b.module_no = a.module_no',
'ORDER BY a.log_date DESC',
'FETCH FIRST 5 ROWS ONLY;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(54128983178100301159)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53712478634908301580)
,p_query_column_id=>1
,p_column_alias=>'MODULE_DESC'
,p_column_display_sequence=>10
,p_column_heading=>'Module Desc'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:selectQE(''#APEX_PAGE_NO#'',''#MODULE_NO#'');'
,p_column_linktext=>'#MODULE_DESC#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53712478739359301581)
,p_query_column_id=>2
,p_column_alias=>'MODULE_NO'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53712478784924301582)
,p_query_column_id=>3
,p_column_alias=>'APEX_PAGE_NO'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53712478897763301583)
,p_plug_name=>'Recently Used'
,p_region_css_classes=>'&REGION_BG.'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53718363739999071307)
,p_plug_name=>'Modules'
,p_region_name=>'cc_modules'
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_imp.id(53870587907036834597)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.system_id, initcap(b.module_desc) module_desc,b.apex_page_no,b. module_no,b.module_type ',
'FROM kvs_user_quick_access a, kvs_module b, kvs_system c',
'WHERE c.system_id = b.system_id AND ',
'      b.module_no = a.module_no AND ',
'      a.user_id = :APP_USER',
'ORDER BY DECODE(b.module_type,''A'',1,''P'',2,''R'',3,4),b.module_desc      ',
'           '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(53710536889862417303)
,p_region_id=>wwv_flow_imp.id(53718363739999071307)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'MODULE_DESC'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'MODULE_NO'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'SYSTEM_ID'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(53711508114889532087)
,p_card_id=>wwv_flow_imp.id(53710536889862417303)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:selectQE(''&APEX_PAGE_NO.'',''&MODULE_NO.'');'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53718888452381531382)
,p_plug_name=>'Quick Entry'
,p_region_css_classes=>'&REGION_BG.'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53727333630945390301)
,p_plug_name=>'Dashboard Overview'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(54128967851007301144)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p> Navigation Bar (Scheduler) </p>',
unistr('<ul style=\201Clist-style-type:disc\201D>'),
'    <li>It includes the no. of open jobs for the current user.',
'    <li>All reports and processes are done via scheduler which allows the user to view its progress anyyime..</li>',
'    <li>All scheduled jobs has a log, parameters and exceptions.',
'    <li>Scheduled jobs can be chain that allows to process it further manually or automatic</li>',
'</ul>',
'<p> Left Side Panel </p>',
unistr('<ul style=\201Clist-style-type:disc\201D>'),
'    <li>Allows the user to filter the menu selection per Systems.</li>',
'    <li>Allows the user to filter the menu selection per module type (Actions/Processes/Reports/Setup).</li>',
'    <li>Recently used allows the user to easily select from the last 5 menu options selected by the user.</li>',
'    <li>Edit Quick Entry allows the user to customize what menu options to be displayed for the user.</li>',
'</ul>',
'',
'<p> Body (User Quick Entries)</P>',
'<p>Display the list of commonly used options by the user and user customizable. The side menu would display all the options applicable to the user whereas thist list is only the options selected by the user.</p>',
'',
'<p> Right Side Panel (faceted search chart and collapsible) </p>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53710532991121417264)
,p_plug_name=>'Left'
,p_parent_plug_id=>wwv_flow_imp.id(54070140283415736128)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53711507765623532083)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53711510303221532109)
,p_button_name=>'Reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(54128996042579301172)
,p_button_image_alt=>'Reset'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RR,4::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53718888484625531383)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53718888452381531382)
,p_button_name=>'Edit'
,p_button_static_id=>'p4_btn_quick_edit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2::'
,p_icon_css_classes=>'fa-edit'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53711507136842532077)
,p_name=>'P4_MODULE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(53711506950020532075)
,p_prompt=>'Types'
,p_source=>'MODULE_TYPE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'KVS_MODULE_TYPES'
,p_lov=>'.'||wwv_flow_imp.id(53711723529086175528)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53711507203858532078)
,p_name=>'P4_SYSTEM_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53711506950020532075)
,p_prompt=>'Systems'
,p_source=>'SYSTEM_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'KVS_SYSTEMS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select system_desc, system_id from kvs_system',
'order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25989069729096094305)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Init'
,p_process_sql_clob=>'APEX_AUTHORIZATION.RESET_CACHE;'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53714073737037016180)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'initDB'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    apex_json.open_object;',
'    apex_json.write(''success'', ''1'');',
'    apex_json.close_object; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
