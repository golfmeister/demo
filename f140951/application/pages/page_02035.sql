prompt --application/pages/page_02035
begin
--   Manifest
--     PAGE: 02035
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
 p_id=>2035
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'User logs'
,p_alias=>'USER-LOGS'
,p_page_mode=>'MODAL'
,p_step_title=>'User logs'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(54129603428897909279)
,p_step_template=>wwv_flow_imp.id(53708150917004456860)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'24'
,p_last_updated_by=>'GOLFMEISTER2005@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20220402023159'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(53711508706530532093)
,p_name=>'Logs'
,p_template=>wwv_flow_imp.id(54128963176135301139)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.LOG_ITEM,',
'       a.LOG_DATE,',
'       a.USER_ID,',
'       a.MODULE_NO,',
'       b.system_id,',
'       TRUNC(sysdate) - TRUNC(a.log_date) age',
'  from KVS_APEX_USER_LOG a, kvs_module b',
'  WHERE b.module_no = a.module_no',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(54128983178100301159)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53711508791285532094)
,p_query_column_id=>1
,p_column_alias=>'LOG_ITEM'
,p_column_display_sequence=>10
,p_column_heading=>'Item'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53711508912918532095)
,p_query_column_id=>2
,p_column_alias=>'LOG_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Log Date'
,p_use_as_row_header=>'N'
,p_column_format=>'MM/DD/YYYY HH:MIPM'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53711509016853532096)
,p_query_column_id=>3
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>30
,p_column_heading=>'User'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(54150599652749635093)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53711509171365532097)
,p_query_column_id=>4
,p_column_alias=>'MODULE_NO'
,p_column_display_sequence=>50
,p_column_heading=>'Module'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(54150870331741420704)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53711509866916532104)
,p_query_column_id=>5
,p_column_alias=>'SYSTEM_ID'
,p_column_display_sequence=>40
,p_column_heading=>'System'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(54132328823169090680)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53711509759134532103)
,p_query_column_id=>6
,p_column_alias=>'AGE'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53711509333956532099)
,p_plug_name=>'Logs'
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_imp.id(54128963176135301139)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(53711508706530532093)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'N'
,p_attribute_03=>'10000'
,p_attribute_04=>'Y'
,p_attribute_05=>'Total Log Count'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53712477043803301564)
,p_plug_name=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54219607167798474890)
,p_plug_name=>'Heading'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54219607033176474889)
,p_plug_name=>'User logs'
,p_parent_plug_id=>wwv_flow_imp.id(54219607167798474890)
,p_icon_css_classes=>'fa-user-magnifying-glass'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128970921428301147)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53711510613655532112)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53712477043803301564)
,p_button_name=>'Reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(54128996042579301172)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset'
,p_button_redirect_url=>'f?p=&APP_ID.:2035:&SESSION.::&DEBUG.:RR,2035::'
,p_icon_css_classes=>'fa-undo'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53711509391858532100)
,p_name=>'P2035_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53711509333956532099)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_04=>'N'
,p_fc_filter_values=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53711509561706532101)
,p_name=>'P2035_MODULE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(53711509333956532099)
,p_prompt=>'Module'
,p_source=>'MODULE_NO'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'KVS_MODULES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(module_desc) module_desc,',
'       module_no',
'  from kvs_module',
'  WHERE internal_use = ''N''',
' order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53711509645083532102)
,p_name=>'P2035_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(53711509333956532099)
,p_prompt=>'Date'
,p_source=>'AGE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:Today Only;|1,2 - 7 Days;1|6,8 - 30 Days;7|30,After 30 Days;30|'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>100
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53711509892943532105)
,p_name=>'P2035_SYSTEM_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53711509333956532099)
,p_prompt=>'System'
,p_source=>'SYSTEM_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'KVS_SYSTEMS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select system_desc, system_id from kvs_system',
'order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53711510220734532108)
,p_name=>'P2035_USER_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(53711509333956532099)
,p_prompt=>'User'
,p_source=>'USER_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_item_template_options=>'#DEFAULT#'
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp.component_end;
end;
/
