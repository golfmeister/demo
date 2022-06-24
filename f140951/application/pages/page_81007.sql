prompt --application/pages/page_81007
begin
--   Manifest
--     PAGE: 81007
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
 p_id=>81007
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Consumer - Parcel LOV'
,p_alias=>'CONSUMER-PARCEL-LOV'
,p_page_mode=>'MODAL'
,p_step_title=>'List of Valid Parcels'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(54164950985292605744)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function selectRow(pReturnValue){',
'  apex.item("P81007_RETURN_VALUE").setValue(pReturnValue);',
'  apex.navigation.dialog.close(true,[''P81007_RETURN_VALUE'']);',
'}   '))
,p_javascript_code_onload=>'$(".js-actionButton[data-action=''reset-report'']").click();'
,p_step_template=>wwv_flow_imp.id(54128958610964301135)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'82%'
,p_dialog_css_classes=>'p31007'
,p_dialog_chained=>'N'
,p_page_component_map=>'18'
,p_last_updated_by=>'DCHING'
,p_last_upd_yyyymmddhh24miss=>'20211202221707'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54261073501717292664)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54278692271692963894)
,p_plug_name=>'Parcel'
,p_region_name=>'segmentsIG'
,p_parent_plug_id=>wwv_flow_imp.id(54261073501717292664)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_imp.id(54128972614439301148)
,p_plug_display_sequence=>14
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>'RETURN apex81006.coll_query(''PH'');'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Parcel'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(53941699141295368205)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'DCHING'
,p_internal_uid=>233784470150983134
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53941699216609368206)
,p_db_column_name=>'SEGMENT_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Segment Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53941699369927368207)
,p_db_column_name=>'VALUE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Value'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(53949788280001611485)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2418737'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEGMENT_NAME:VALUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54300559881039272853)
,p_plug_name=>'{search criteria}'
,p_parent_plug_id=>wwv_flow_imp.id(54261073501717292664)
,p_region_template_options=>'#DEFAULT#:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(54128963176135301139)
,p_plug_display_sequence=>12
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54261073783192292666)
,p_plug_name=>'{right conteiner}'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128963176135301139)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54300579901929432630)
,p_plug_name=>'Parcels'
,p_region_name=>'IG_PH'
,p_parent_plug_id=>wwv_flow_imp.id(54261073783192292666)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128972614439301148)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>'RETURN apex81006.coll_query(''PHL'');'
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Chart of Accounts'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53941699420445368208)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53941699491149368209)
,p_name=>'DISTRICT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISTRICT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'District'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>6
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53941699666211368210)
,p_name=>'PARCEL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARCEL_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Parcel ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>40
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53941699680557368211)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53941699788790368212)
,p_name=>'CLASS_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLASS_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Class Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53941699920033368213)
,p_name=>'LOCATION_STREET_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_STREET_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'St No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53941700018429368214)
,p_name=>'LOCATION_STREET_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_STREET_UNIT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'St Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53941700112105368215)
,p_name=>'LOCATION_STREET_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_STREET_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'St Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>40
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53941700256200368216)
,p_name=>'LOCATION_STREET_DIRECTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_STREET_DIRECTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'St Dir'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>2
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54248650502649938781)
,p_name=>'ADD_BUTTON'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>'Add'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button class="t-Button t-Button--icon js-ignoreChange t-Button--iconRight t-Button--hot t-Button--small" type="button"; ',
'        onclick="selectRow(''&PARCEL_ID.'');">',
'    <span class="t-Icon t-Icon--left fa fa-plus" aria-hidden="true"></span>',
'    <span class="t-Button-label">Select</span>',
'    <span class="t-Icon t-Icon--right fa fa-plus" aria-hidden="true"></span>',
'</button>'))
,p_use_as_row_header=>false
,p_enable_hide=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(54287234719570352289)
,p_internal_uid=>579320048425967218
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV'
,p_enable_mail_download=>false
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>700
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.initialSelection = false;',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(54287577169497063184)
,p_interactive_grid_id=>wwv_flow_imp.id(54287234719570352289)
,p_static_id=>'1429339'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(54287577213003063184)
,p_report_id=>wwv_flow_imp.id(54287577169497063184)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53949792194672744970)
,p_view_id=>wwv_flow_imp.id(54287577213003063184)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(53941699420445368208)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53949793089081744973)
,p_view_id=>wwv_flow_imp.id(54287577213003063184)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(53941699491149368209)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53949793980309744976)
,p_view_id=>wwv_flow_imp.id(54287577213003063184)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(53941699666211368210)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53949794923017744978)
,p_view_id=>wwv_flow_imp.id(54287577213003063184)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(53941699680557368211)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53949795845935744981)
,p_view_id=>wwv_flow_imp.id(54287577213003063184)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(53941699788790368212)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53949796707082744983)
,p_view_id=>wwv_flow_imp.id(54287577213003063184)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(53941699920033368213)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53949797657264744985)
,p_view_id=>wwv_flow_imp.id(54287577213003063184)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(53941700018429368214)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53949798568501744988)
,p_view_id=>wwv_flow_imp.id(54287577213003063184)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(53941700112105368215)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53949799459882744990)
,p_view_id=>wwv_flow_imp.id(54287577213003063184)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(53941700256200368216)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54250588297454893391)
,p_view_id=>wwv_flow_imp.id(54287577213003063184)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(54248650502649938781)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54266805367751354527)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128963575367301140)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53949730922119175718)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54261073501717292664)
,p_button_name=>'CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Clear'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_required_patch=>wwv_flow_imp.id(54026131568644792149)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53949736967910175738)
,p_name=>'P81007_RETURN_VALUE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(54300559881039272853)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53950197175648392275)
,p_name=>'P81007_P_DISTRICT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(54300559881039272853)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53950197124589392274)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ChangeSeg'
,p_process_sql_clob=>'htp.p(kvs0000.change_seg);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/