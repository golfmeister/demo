prompt --application/pages/page_31005
begin
--   Manifest
--     PAGE: 31005
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
 p_id=>31005
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Chart of Accounts'
,p_alias=>'GL1050'
,p_step_title=>'Chart of Accounts'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(54165645331854839162)
,p_javascript_file_urls=>'#APP_IMAGES#js/31005.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function updateRecordHighlights() {',
'    var grid        = apex.region("ig_gs").widget().interactiveGrid("getCurrentView");  ',
'    var model       = grid.model;  ',
'    ',
'    model.forEach(function(record) {',
'        var vCurrentId = model.getValue(record, "ROW_ID");',
'        var vChildNode = model.getValue(record, "CHILD_NODE");',
'',
'        if ( vChildNode == "N" ) {',
'            var fields;',
'            var meta = model.getRecordMetadata(vCurrentId);',
'            meta.highlight = "hlParentNode";',
'            model.metadataChanged(vCurrentId);',
'        }',
'    })          ',
'}',
'',
'function openLovParentAcct(pPageNo, pBtStaticId){',
'    ',
'    apex.item("P31005_LOV_RETURN_ITEM").setValue("");',
'',
'    apex.server.process (',
'        ''GET_URL_PARENT_ACCT_LOV''',
'       ,{  x01: pBtStaticId',
'          ,x02: pPageNo  }',
'       ,{',
'          success: function(pData){',
'              apex.navigation.redirect(pData.url);',
'         }',
'       }',
'    );',
'}',
'',
'function openLovParentAcctXpost(pPageNo, pBtStaticId){',
'    ',
'    apex.item("P31005_LOV_RETURN_ITEM").setValue("");',
'    var vMuniCode    = apex.item("P31005_VMUNI_CODE_FROM").getValue();',
'    if  (vMuniCode == "") {',
'        showError("Please specify a From muni first");',
'    }',
'    else {',
'    apex.server.process (',
'        ''GET_URL_PARENT_ACCT_LOV''',
'       ,{  x01: pBtStaticId',
'          ,x02: pPageNo ',
'          ,x03: vMuniCode}',
'       ,{',
'          success: function(pData){',
'              apex.navigation.redirect(pData.url);',
'         }',
'       }',
'    );',
'    }',
'}',
'',
'function openLovParentAcctXpostTo(pPageNo, pBtStaticId){',
'    ',
'    apex.item("P31005_LOV_RETURN_ITEM").setValue("");',
'    var vMuniCode    = apex.item("P31005_VMUNI_CODE_FROM").getValue();',
'    if  (vMuniCode == "") {',
'        showError("Please specify a From muni first");',
'    }',
'    else {',
'    var vMuniCodeTo = apex.item("P31005_VMUNI_CODE_TO").getValue();     ',
'    apex.server.process (',
'        ''GET_URL_PARENT_ACCT_LOV''',
'       ,{  x01: pBtStaticId',
'          ,x02: pPageNo ',
'          ,x03: vMuniCodeTo}',
'       ,{',
'          success: function(pData){',
'              apex.navigation.redirect(pData.url);',
'         }',
'       }',
'    );',
'    }',
'}',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-GV-row.hlParentNode { ',
'    background-color: #FFFF99 !important;',
'}',
'',
'',
'',
''))
,p_step_template=>wwv_flow_imp.id(54128954650637301131)
,p_page_template_options=>'#DEFAULT#:t-PageBody--noContentPadding'
,p_page_component_map=>'21'
,p_last_updated_by=>'TESTING123'
,p_last_upd_yyyymmddhh24miss=>'20220602131700'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53715523336244312170)
,p_plug_name=>'Account'
,p_region_css_classes=>'&REGION_BG.'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>25
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53715523829920312175)
,p_plug_name=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>65
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53728894752566745899)
,p_plug_name=>'Search'
,p_region_css_classes=>'&REGION_BG.'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>5
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55057906552972952030)
,p_plug_name=>'Muni XPOST Entry'
,p_region_name=>'muniXpost'
,p_region_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_plug_template=>wwv_flow_imp.id(53708656821301457378)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53715524028185312177)
,p_plug_name=>'Action'
,p_parent_plug_id=>wwv_flow_imp.id(55057906552972952030)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>75
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55058798202499607703)
,p_plug_name=>'Total Balance'
,p_region_css_classes=>'&REGION_BG.'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-sm'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55058801372067607734)
,p_plug_name=>'Segment'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noBorder:t-Region--hiddenOverflow:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>45
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55046030416701477246)
,p_plug_name=>'Seg. Search'
,p_region_name=>'ig_gs'
,p_parent_plug_id=>wwv_flow_imp.id(55058801372067607734)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128972614439301148)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 segment_no, c002 segment_name,c003 segment_code,seq_id',
'from apex_collections',
'where collection_name = ''GS'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Seg. Search'
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
 p_id=>wwv_flow_imp.id(53715524219251312179)
,p_name=>'SEGMENT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'ig_gs_code'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53716648874916812590)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_static_id=>'ig_gs_seq_id'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55051679450650654998)
,p_name=>'SEGMENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Component'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55051679697075655001)
,p_name=>'SEGMENT_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_static_id=>'ig_gs_no'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55051935302746403240)
,p_name=>'LOV_BUTTON'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button id="btLovGSLeft"; type="button" class="t-Button t-Button--icon t-Button--small " style="display: inline-block;"',
'        onclick="clickRun2({pAjaxCB:''clickGSLov'',pValue01:''&SEGMENT_NO.'',pValue02:''&SEGMENT_CODE.'',pValue03:''btLovGSLeft''});">',
'  <span class="a-Icon icon-popup-lov-under"></span>',
'</button>'))
,p_use_as_row_header=>false
,p_enable_hide=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(55046030498507477247)
,p_internal_uid=>1338115827363092176
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
' config.defaultGridViewOptions = { ',
'     footer: false ',
'     }; ',
'return config; ',
'}  '))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(55051684947823655190)
,p_interactive_grid_id=>wwv_flow_imp.id(55046030498507477247)
,p_static_id=>'815905'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(55051684988202655190)
,p_report_id=>wwv_flow_imp.id(55051684947823655190)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716089764527414176)
,p_view_id=>wwv_flow_imp.id(55051684988202655190)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(53715524219251312179)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53717079949878523423)
,p_view_id=>wwv_flow_imp.id(55051684988202655190)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(53716648874916812590)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55051685499045655193)
,p_view_id=>wwv_flow_imp.id(55051684988202655190)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(55051679450650654998)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55051733031175944978)
,p_view_id=>wwv_flow_imp.id(55051684988202655190)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(55051679697075655001)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55052076017440779770)
,p_view_id=>wwv_flow_imp.id(55051684988202655190)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(55051935302746403240)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55058800560714607726)
,p_plug_name=>'buttons'
,p_parent_plug_id=>wwv_flow_imp.id(55058801372067607734)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:margin-top-sm:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55060618335445493190)
,p_plug_name=>'Action'
,p_region_css_classes=>'&REGION_BG.'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--leftLabels:margin-top-none:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>55
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55067897712884786202)
,p_plug_name=>'Heading'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody:margin-bottom-sm:margin-left-sm'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55068726607320972154)
,p_plug_name=>'Chart of Accounts'
,p_parent_plug_id=>wwv_flow_imp.id(55067897712884786202)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55067898026047786205)
,p_plug_name=>'Items'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>15
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55067918046937945982)
,p_plug_name=>'Chart of Accounts'
,p_region_name=>'ig_gc'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:margin-left-sm'
,p_plug_template=>wwv_flow_imp.id(54128972614439301148)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.rowid,a.*',
'from gl_acct_chart a',
'where (select count(1) from apex_collections',
'         where collection_name = ''GS'' and ',
'               c003 IS NOT NULL) = 0 OR',
'   exists(select c001 segment_no, c002 segment_name,c003 segment_code,seq_id',
'   from apex_collections',
'   where collection_name = ''GS'' and ',
'         c003 IS NOT NULL and ',
'         c003 = DECODE(c001,1,a.segment_01,2,a.segment_02,a.segment_03))'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P31005_FISCAL_YEAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_imp.id(53715524723485312184)
,p_name=>'MUNI_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MUNI_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>340
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53715525129656312188)
,p_name=>'GAC_YEAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GAC_YEAR'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>350
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53715525410595312191)
,p_name=>'ACCT_NO_PARENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCT_NO_PARENT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>380
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53715525636938312193)
,p_name=>'GRANT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRANT_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>400
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53715525731871312194)
,p_name=>'ACCT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCT_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>410
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53715525822904312195)
,p_name=>'SHORT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHORT_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>420
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53715525931575312196)
,p_name=>'FULL_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FULL_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>430
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53715526029813312197)
,p_name=>'BUDGET_CHECK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUDGET_CHECK'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>440
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53715526137292312198)
,p_name=>'BUDGET_EXCLUDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUDGET_EXCLUDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>450
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53715526264638312199)
,p_name=>'SUBSIDIARY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBSIDIARY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>460
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53715526307422312200)
,p_name=>'OLD_ACCT_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_ACCT_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>470
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53715526398083312201)
,p_name=>'SEGMENT_02'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_02'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>480
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53715526499814312202)
,p_name=>'SEGMENT_03'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_03'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>490
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53715526612424312203)
,p_name=>'SEGMENT_04'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_04'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>500
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53715526768903312204)
,p_name=>'SEGMENT_05'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_05'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>510
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53716642875905812580)
,p_name=>'TRACK_RETAIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRACK_RETAIN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>770
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53716645405743812605)
,p_name=>'CREATE_FA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATE_FA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>1020
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53716645624818812607)
,p_name=>'ACCT_TYPE_PARENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCT_TYPE_PARENT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>1040
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53716645746176812608)
,p_name=>'PARENT_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARENT_TOTAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>1050
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53716645777356812609)
,p_name=>'CONTROL_SEGMENT_START'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTROL_SEGMENT_START'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>1060
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53716645892797812610)
,p_name=>'OVER_PRINT_PARENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OVER_PRINT_PARENT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>1070
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53716646070756812611)
,p_name=>'CHECK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>1080
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53716647152546812572)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>1190
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53716647318125812574)
,p_name=>'GAC_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GAC_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>1210
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>400
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53716648198784812583)
,p_name=>'GAC_ACTUAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GAC_ACTUAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Actual Balance'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>1230
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'VACTUAL'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53716648314326812584)
,p_name=>'GAC_NET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GAC_NET'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Budget Balance'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>1240
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'VNET'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55046029124628477233)
,p_name=>'ACCT_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCT_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Account No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_link_target=>'javascript:alert(''Edit Page Under Construction'');'
,p_link_text=>'&ACCT_NO.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55046029269326477234)
,p_name=>'ACCT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCT_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Account Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Asset;A,Liability;L,Fund Bal.;F,Expense;E,Revenue;R'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55046029421708477236)
,p_name=>'CHILD_NODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHILD_NODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Child Node'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55046029826421477240)
,p_name=>'HIER_ROOT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HIER_ROOT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55046029940831477241)
,p_name=>'HIER_LVL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HIER_LVL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55058798387632607705)
,p_name=>'HIER_SORT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HIER_SORT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55060953466477518028)
,p_name=>'SEGMENT_01'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_01'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(55054572864578865641)
,p_internal_uid=>1346658193434480570
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>false
,p_pagination_type=>'SET'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>true
,p_enable_mail_download=>false
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(55054915314505576536)
,p_interactive_grid_id=>wwv_flow_imp.id(55054572864578865641)
,p_static_id=>'815906'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>15
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(55054915358011576536)
,p_report_id=>wwv_flow_imp.id(55054915314505576536)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53706187027805627467)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>83
,p_column_id=>wwv_flow_imp.id(53716648198784812583)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>175
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53706188387432627470)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>85
,p_column_id=>wwv_flow_imp.id(53716648314326812584)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>175
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716145113434203495)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(53715524723485312184)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716652210325812737)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(53715525129656312188)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716654897542812747)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(53715525410595312191)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716656734055812753)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(53715525636938312193)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716657629847812756)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(53715525731871312194)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716658568689812759)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(53715525822904312195)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716659391821812762)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(53715525931575312196)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716660305254812765)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(53715526029813312197)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716661182114812768)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(53715526137292312198)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716662103666812771)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(53715526264638312199)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716662997241812774)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(53715526307422312200)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716663922190812777)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(53715526398083312201)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716664841268812780)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(53715526499814312202)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716665674133812783)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(53715526612424312203)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716666646470812786)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(53715526768903312204)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716689921141812866)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>64
,p_column_id=>wwv_flow_imp.id(53716642875905812580)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716712253917813005)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>89
,p_column_id=>wwv_flow_imp.id(53716645405743812605)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716714073646813017)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>91
,p_column_id=>wwv_flow_imp.id(53716645624818812607)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716714884075813024)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>92
,p_column_id=>wwv_flow_imp.id(53716645746176812608)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716715807587813032)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>93
,p_column_id=>wwv_flow_imp.id(53716645777356812609)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716716688058813039)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>94
,p_column_id=>wwv_flow_imp.id(53716645892797812610)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716717660569813045)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>95
,p_column_id=>wwv_flow_imp.id(53716646070756812611)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716775074235560524)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>106
,p_column_id=>wwv_flow_imp.id(53716647152546812572)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53716776901644560530)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(53716647318125812574)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55042225899919836436)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(55058798387632607705)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55051622717640571925)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(55046029124628477233)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>170
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55051623271355571936)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(55046029269326477234)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55051624183286571947)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(55046029421708477236)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55051653484582732715)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(55046029826421477240)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>146
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55051654030013732722)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(55046029940831477241)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55063619356451198898)
,p_view_id=>wwv_flow_imp.id(55054915358011576536)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(55060953466477518028)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(53706207649399982351)
,p_report_id=>wwv_flow_imp.id(55054915314505576536)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(55046029269326477234)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>'Expense'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55069150426467694894)
,p_plug_name=>'Copy Component'
,p_region_name=>'copyComp'
,p_region_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_plug_template=>wwv_flow_imp.id(53708656821301457378)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53715523968262312176)
,p_plug_name=>'Action'
,p_parent_plug_id=>wwv_flow_imp.id(55069150426467694894)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>130
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107797538124168953169)
,p_plug_name=>'Search Page Overview'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(54128967851007301144)
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p> There is NO business logic implemented on this demo, this is just to showcase the different Apex features. </p>',
'',
'<p> Left Side Panel </p>',
unistr('<ul style=\201Clist-style-type:disc\201D>'),
'    <li>When year changes, the body is refresh with the year total and the column heading reflects the year selected.</li>',
'    <li>Account allows the user to search the account no. per segment and a custom LOV page is displAyed when user clicks the down button.',
'    <li>Custom LOV showcase interaction between 2 pages with custom button to return selected row data to the calling form..Also this custom LOV heading is changing based on the segment selected (Fund/Dept/Item).</li>',
'    <li>Action allows the user to open an inline dialog to do any processing.</li>',
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53715539354227764134)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53728894752566745899)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(54128996042579301172)
,p_button_image_alt=>'Reset'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:CR,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53895153143099682349)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53715524028185312177)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53895179704144682382)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53715523968262312176)
,p_button_name=>'COPY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copy'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53895153475392682349)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(53715524028185312177)
,p_button_name=>'XPOST_SKIP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Skip'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53895171997957682372)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(55068726607320972154)
,p_button_name=>'CREATE_ACCOUNT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Create '
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:alert(''Edit Page Under Construction'');'
,p_button_condition=>'kvs_apex.ac(v(''APP_PAGE_ID''),''C'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53715524923898312186)
,p_name=>'P31005_HD_TOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55058798202499607703)
,p_item_default=>'Total Balance'
,p_prompt=>'Hd Total'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>6
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53716649177384812593)
,p_name=>'P31005_RESET'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(55067898026047786205)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53718888023718531378)
,p_name=>'P31005_LOV_RETURN_DESC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(55067898026047786205)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895154671610682351)
,p_name=>'P31005_VMUNI_CODE_FROM'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(55057906552972952030)
,p_prompt=>'From Municipality'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'KVS_MUNIS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select muni_name,',
'       muni_code',
'  from kvs_muni',
' order by 1'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(54128995619375301172)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895155090186682351)
,p_name=>'P31005_VMUNI_CODE_TO'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(55057906552972952030)
,p_prompt=>'To Municipality'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'KVS_MUNIS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select muni_name,',
'       muni_code',
'  from kvs_muni',
' order by 1'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(54128995619375301172)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895155548304682352)
,p_name=>'P31005_VFROM_ACCT'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_imp.id(55057906552972952030)
,p_prompt=>'From Acct '
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button id="btXpostAcctFrom"; type="button" class="t-Button t-Button--icon t-Button--small" style="display: inline-block;"',
'        onclick="openLovParentAcctXpost(31007, ''btXpostAcctFrom'');">',
'  <span class="a-Icon icon-popup-lov-under"></span>',
'</button>'))
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895155874673682352)
,p_name=>'P31005_VTO_ACCT'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(55057906552972952030)
,p_prompt=>'To Acct'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button id="btXpostAcctTo"; type="button" class="t-Button t-Button--icon t-Button--small" style="display: inline-block;"',
'        onclick="openLovParentAcctXpostTo(31007, ''btXpostAcctTo'');">',
'  <span class="a-Icon icon-popup-lov-under"></span>',
'</button>'))
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895156304424682353)
,p_name=>'P31005_FROM_ACCT_DESC'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_imp.id(55057906552972952030)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895156758153682353)
,p_name=>'P31005_TO_ACCT_DESC'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_imp.id(55057906552972952030)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895157747585682354)
,p_name=>'P31005_ACCT_BAL_TOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55058798202499607703)
,p_prompt=>'Actual'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895158083374682355)
,p_name=>'P31005_BUD_BAL_TOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55058798202499607703)
,p_prompt=>'Budget'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895165156327682365)
,p_name=>'P31005_FISCAL_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55067898026047786205)
,p_prompt=>'Fiscal Year'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:2022;2022,2021;2021'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(54128995619375301172)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895165929176682365)
,p_name=>'P31005_SETUP_CURRENT_YEAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(55067898026047786205)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895166291331682366)
,p_name=>'P31005_BALANCE_SEG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(55067898026047786205)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895166709632682366)
,p_name=>'P31005_SETUP_ADD_REQ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(55067898026047786205)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895167133039682367)
,p_name=>'P31005_SEGMENTS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(55067898026047786205)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895167511389682367)
,p_name=>'P31005_LOV_RETURN_CODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(55067898026047786205)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895167949041682367)
,p_name=>'P31005_SETUP_GLXPOST_TYPE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(55067898026047786205)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895168285146682368)
,p_name=>'P31005_L_UPDATE_CHART_TEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(55067898026047786205)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895171003892682370)
,p_name=>'P31005_ACTION'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53715523829920312175)
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:--- Select ---;S,Copy Component;CC'
,p_field_template=>wwv_flow_imp.id(54128995619375301172)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895180901062682383)
,p_name=>'P31005_VACCT_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55069150426467694894)
,p_prompt=>'From Acct No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895181323757682383)
,p_name=>'P31005_VACCT_TO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(55069150426467694894)
,p_prompt=>'To Acct No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895181766323682384)
,p_name=>'P31005_VSEGMENT_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(55069150426467694894)
,p_prompt=>'Component'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c002 d ,c001 r ',
'from apex_collections',
'WHERE collection_name = ''GS'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(54128995619375301172)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895182086230682384)
,p_name=>'P31005_VFROM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(55069150426467694894)
,p_prompt=>'From'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button id="btLovGSCC1"; type="button" class="t-Button t-Button--icon t-Button--small" style="display: inline-block;"',
'        onclick="clickRun2({pAjaxCB:''clickGSLov'',pVFunc:checkCopyComp,pValue01:$v(''P31005_VSEGMENT_NAME''),pValue03:''btLovGSCC1''});">',
'  <span class="a-Icon icon-popup-lov-under"></span>',
'</button>'))
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(54128995619375301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895182537668682384)
,p_name=>'P31005_VFROM_DESC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(55069150426467694894)
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895182920465682385)
,p_name=>'P31005_VTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(55069150426467694894)
,p_prompt=>'To'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button id="btLovGSCC2"; type="button" class="t-Button t-Button--icon t-Button--small" style="display: inline-block;"',
'        onclick="clickRun2({pAjaxCB:''clickGSLov'',pVFunc:checkCopyComp,pValue01:$v(''P31005_VSEGMENT_NAME''),pValue03:''btLovGSCC2''});">',
'  <span class="a-Icon icon-popup-lov-under"></span>',
'</button>'))
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(54128995619375301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895183317457682385)
,p_name=>'P31005_VTO_DESC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(55069150426467694894)
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895183679997682385)
,p_name=>'P31005_VCOBOL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(55069150426467694894)
,p_post_element_text=>'&nbsp&nbspInclude Import Account'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895184168375682386)
,p_name=>'P31005_VSPR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(55069150426467694894)
,p_post_element_text=>'&nbsp&nbspInclude Springbrook Account'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895184541568682386)
,p_name=>'P31005_VKEEP_ORIG'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(55069150426467694894)
,p_post_element_text=>'&nbsp&nbspKeep Original XPost Account'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895192754654682393)
,p_name=>'Click - Action'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31005_ACTION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895193267480682394)
,p_event_id=>wwv_flow_imp.id(53895192754654682393)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var action = $v(''P31005_ACTION'');',
'if (action != ''S'') {',
'   clickRun2({pAjaxCB : ''clickAction'',pValue01 : action});',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895194984662682395)
,p_name=>'Dialog Closed - GS Left'
,p_event_sequence=>110
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#btLovGSLeft'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895195481556682396)
,p_event_id=>wwv_flow_imp.id(53895194984662682395)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31005_LOV_RETURN_CODE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'Y'
,p_attribute_10=>'P34012_RETURN_CODE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895196059532682396)
,p_event_id=>wwv_flow_imp.id(53895194984662682395)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'IGSetRowVal(''ig_gs'',{''SEGMENT_CODE'' : $v(''P31005_LOV_RETURN_CODE'')});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895196387923682396)
,p_name=>'Change - Year'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31005_FISCAL_YEAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895196890142682397)
,p_event_id=>wwv_flow_imp.id(53895196387923682396)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var vFiscalYear = apex.item(''P31005_FISCAL_YEAR'').getValue();',
'',
'$("#ig_gc table thead tr th span#VACTUAL_HDR").text(vFiscalYear + " Actual Balance");',
'$("#ig_gc table thead tr th span#VNET_HDR").text(vFiscalYear + " Budget Balance");',
'apex.region("ig_gc").refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895197353124682397)
,p_name=>'onChangeStatus'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31005_ACC_STATUS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895197868938682398)
,p_event_id=>wwv_flow_imp.id(53895197353124682397)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55067918046937945982)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895199080464682399)
,p_name=>'Dialog Closed - GS CC1'
,p_event_sequence=>160
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#btLovGSCC1'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895199658658682399)
,p_event_id=>wwv_flow_imp.id(53895199080464682399)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31005_VFROM'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'Y'
,p_attribute_10=>'P34012_RETURN_CODE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53718888144242531379)
,p_event_id=>wwv_flow_imp.id(53895199080464682399)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31005_VFROM_DESC'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'Y'
,p_attribute_10=>'P34012_RETURN_DESC'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895200542218682400)
,p_name=>'Dialog Closed - GS CC2'
,p_event_sequence=>170
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#btLovGSCC2'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895201057683682400)
,p_event_id=>wwv_flow_imp.id(53895200542218682400)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31005_LOV_RETURN_CODE,P31005_VTO'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'Y'
,p_attribute_10=>'P34012_RETURN_CODE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53718888245418531380)
,p_event_id=>wwv_flow_imp.id(53895200542218682400)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31005_VTO_DESC'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P34012_RETURN_DESC'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895201947195682401)
,p_name=>'onChangeVendorFrom'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31005_VFROM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895202438505682401)
,p_event_id=>wwv_flow_imp.id(53895201947195682401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var vSegCode    = apex.item("P31005_VSEGMENT_NAME").getValue();',
'    if  (vSegCode == "") {',
'        showError("Please specify a component first");',
'        apex.item("P31005_VFROM").setValue("");',
'    }',
'    else {',
'            var vVendorFrom = apex.item("P31005_VFROM").getValue();',
'            apex.server.process (',
'            ''GET_SEGMENT_INDENT''',
'           ,{   pageItems: "#P31005_VSEGMENT_NAME"',
'                ,x01: vVendorFrom',
'         ',
'            }',
'           ,{',
'              success: function(pData){',
'               apex.item("P31005_VFROM").setValue(pData.segment_code);',
'               apex.item("P31005_VFROM_DESC").setValue(pData.segment_desc);',
'              ',
'             }',
'           }',
'        );',
'        }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895202821207682402)
,p_name=>'onChangeVendorTo'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31005_VTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895203333474682402)
,p_event_id=>wwv_flow_imp.id(53895202821207682402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var vSegCode    = apex.item("P31005_VSEGMENT_NAME").getValue();',
'    if  (vSegCode == "") {',
'        showError("Please specify a component first");',
'        apex.item("P31005_VTO").setValue("");',
'    }',
'    else {          ',
'          var vVendorFrom = apex.item("P31005_VTO").getValue();',
'              apex.server.process (',
'                  ''GET_SEGMENT_INDENT''',
'                 ,{   pageItems: "#P31005_VSEGMENT_NAME"',
'                     ,x01: vVendorFrom',
'                   ',
'                  }',
'                 ,{',
'                    success: function(pData){',
'                         apex.item("P31005_VTO").setValue(pData.segment_code);',
'                         apex.item("P31005_VTO_DESC").setValue(pData.segment_desc);',
'                        ',
'                   }',
'                 }',
'              );',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895203724274682403)
,p_name=>'Dialog Closed - GC CC1'
,p_event_sequence=>200
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#btLovGCCC1'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895204219588682403)
,p_event_id=>wwv_flow_imp.id(53895203724274682403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31005_VACCT_FROM'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'Y'
,p_attribute_10=>'P31007_RETURN_CODE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895206475747682405)
,p_name=>'Dialog Closed - GC CC2'
,p_event_sequence=>201
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#btLovGCCC2'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895207019454682406)
,p_event_id=>wwv_flow_imp.id(53895206475747682405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31005_VACCT_TO'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'Y'
,p_attribute_10=>'P31007_RETURN_CODE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895205167484682404)
,p_name=>'onDialogCLosedVAcctXpostFrom'
,p_event_sequence=>210
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#btXpostAcctFrom'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895205620384682404)
,p_event_id=>wwv_flow_imp.id(53895205167484682404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31005_LOV_RETURN_CODE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P31007_RETURN_VALUE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895206089171682405)
,p_event_id=>wwv_flow_imp.id(53895205167484682404)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process (',
'    ''GET_PARENT_ACCT''',
'   ,{  x01: apex.item(''P31005_LOV_RETURN_ITEM'').getValue()  }',
'   ,{',
'      success: function(pData){',
'          gSkipOnChange = 1;',
'          apex.item(''P31005_VFROM_ACCT'').setValue( pData.ParentNo );',
'          apex.item(''P31005_FROM_ACCT_DESC'').setValue( pData.ParentDesc );',
'          ',
'     }',
'   }',
');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895207885913682406)
,p_name=>'onDialogCLosedVAcctXpostTo'
,p_event_sequence=>230
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#btXpostAcctTo'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895208394803682407)
,p_event_id=>wwv_flow_imp.id(53895207885913682406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31005_LOV_RETURN_CODE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P31007_RETURN_VALUE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895208877347682407)
,p_event_id=>wwv_flow_imp.id(53895207885913682406)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process (',
'    ''GET_PARENT_ACCT''',
'   ,{  x01: apex.item(''P31005_LOV_RETURN_ITEM'').getValue() }',
'',
'   ,{',
'      success: function(pData){',
'          gSkipOnChange = 1;',
'          apex.item(''P31005_VTO_ACCT'').setValue( pData.ParentNo );',
'          apex.item(''P31005_TO_ACCT_DESC'').setValue( pData.ParentDesc );',
'          ',
'     }',
'   }',
');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895210248850682408)
,p_name=>'onClickCopy'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53895179704144682382)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895210757224682409)
,p_event_id=>wwv_flow_imp.id(53895210248850682408)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'clickRun2({pAjaxCB : ''copyComp''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895211146934682409)
,p_name=>'init'
,p_event_sequence=>260
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895212651941682411)
,p_event_id=>wwv_flow_imp.id(53895211146934682409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//Disabled Items',
'apex.item(P31005_TO_ACCT_DESC).disable();',
'apex.item(P31005_FROM_ACCT_DESC).disable();',
'apex.item(P31005_VTO_DESC).disable();',
'apex.item(P31005_VFROM_DESC).disable();'))
,p_da_action_comment=>'disableItemsOnPageLoad'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895213159848682411)
,p_event_id=>wwv_flow_imp.id(53895211146934682409)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'init();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895215343511682413)
,p_name=>'onClickCreateXpost'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53895153143099682349)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895215835062682413)
,p_event_id=>wwv_flow_imp.id(53895215343511682413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process (',
'    ''SAVE_XPOST''',
'   ,{  pageItems: "#P31005_VTO_ACCT,#P31005_VFROM_ACCT,#P31005_VMUNI_CODE_TO,#P31005_VMUNI_CODE_FROM" }',
'   ,{',
'      success: function(pData){',
'          if (pData.validMessage != undefined){',
'              showError(pData.validMessage);',
'          }',
'          else{',
'                console.log(''JE SUIS DANS ELSE DE SAVE_XPOST'');',
'                apex.message.showPageSuccess("Action Processed.");',
'                apex.item("P31005_VFROM_ACCT").setValue( pData.vVfromAcct ); ',
'                apex.item("P31005_VTO_ACCT").setValue(""); ',
'                apex.item("P31005_TO_ACCT_DESC").setValue("");   ',
'         }',
'     }',
'   }',
');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895216207889682413)
,p_name=>'onClickSkipXpost'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53895153475392682349)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895216709338682414)
,p_event_id=>wwv_flow_imp.id(53895216207889682413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process (',
'    ''SKIP_XPOST''',
'   ,{  pageItems: "#P31005_VFROM_ACCT,#P31005_VMUNI_CODE_FROM" }',
'   ,{',
'      success: function(pData){',
'                apex.item("P31005_VFROM_ACCT").setValue(pData.vVfromAcctReturn); ',
'                apex.item("P31005_FROM_ACCT_DESC").setValue(pData.vVfromAcctDesc); ',
'   }',
'   }',
');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895220442670682417)
,p_name=>'ComputeTotals'
,p_event_sequence=>330
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895220832294682417)
,p_name=>'onRefreshReportIG'
,p_event_sequence=>340
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.t-IRR-region'
,p_bind_type=>'live'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895221309285682417)
,p_event_id=>wwv_flow_imp.id(53895220832294682417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//Adding the year to the header',
'var vFiscalYear = apex.item(''P31005_FISCAL_YEAR'').getValue();',
'$("#chartAccountsIG table thead tr th span#VACTUAL_HDR").text(vFiscalYear + " Actual Balance");',
'$("#chartAccountsIG table thead tr th span#VNET_HDR").text(vFiscalYear + " Budget Balance");',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895221753857682418)
,p_name=>'onChangeSetValue'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31005_VSEGMENT_NAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895223544599682419)
,p_name=>'onChangeXPostFromActt'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31005_VFROM_ACCT'
,p_condition_element=>'P31005_VFROM_ACCT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895224064118682419)
,p_event_id=>wwv_flow_imp.id(53895223544599682419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (gSkipOnChange == 1) {',
'    gSkipOnChange = 0;',
'}',
'else {',
'    apex.server.process (',
'        ''GET_PARENT_ACCT''',
'       ,{  x01: ""',
'          ,x02: apex.item(''P31005_VMUNI_CODE_FROM'').getValue()',
'          ,x03: apex.item(''P31005_VFROM_ACCT'').getValue()  ',
'        }',
'       ,{',
'          success: function(pData){',
'              if (pData.open_lov == "Y"){',
'                  openLovParentAcctXpost(31007, ''btXpostAcctFrom'');',
'                  showError(''Invalid account '' + apex.item(''P31005_VFROM_ACCT'').getValue());',
'                  apex.item(''P31005_VFROM_ACCT'').setValue( "","",true );',
'                  apex.item(''P31005_FROM_ACCT_DESC'').setValue( "","",true);',
'              }',
'              else{',
'              gSkipOnChange = 1;',
'              apex.item(''P31005_VFROM_ACCT'').setValue( pData.ParentNo );',
'              apex.item(''P31005_FROM_ACCT_DESC'').setValue( pData.ParentDesc );',
'              }',
'             ',
'         }',
'       }',
'    );',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895224421186682420)
,p_name=>'onChangeXPostToAcct'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31005_VTO_ACCT'
,p_condition_element=>'P31005_VTO_ACCT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895224964115682420)
,p_event_id=>wwv_flow_imp.id(53895224421186682420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (gSkipOnChange == 1) {',
'    gSkipOnChange = 0;',
'}',
'else {',
'    apex.server.process (',
'        ''GET_PARENT_ACCT''',
'       ,{  x01: ""',
'          ,x02: apex.item(''P31005_VMUNI_CODE_TO'').getValue()',
'          ,x03: apex.item(''P31005_VTO_ACCT'').getValue()  ',
'        }',
'       ,{',
'          success: function(pData){',
'                if (pData.open_lov == "Y"){',
'                    openLovParentAcctXpostTo(31007, ''btXpostAcctTo'');',
'                    showError(''Invalid account '' + apex.item(''P31005_VTO_ACCT'').getValue());',
'                    apex.item(''P31005_VTO_ACCT'').setValue( "","",true);',
'                    apex.item(''P31005_TO_ACCT_DESC'').setValue( "","",true );',
'              }',
'              else{',
'              gSkipOnChange = 1;',
'              apex.item(''P31005_VTO_ACCT'').setValue( pData.ParentNo );',
'              apex.item(''P31005_TO_ACCT_DESC'').setValue( pData.ParentDesc );',
'              }',
'         }',
'       }',
'    );',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895225283639682420)
,p_name=>'onChangeCCAcctForm'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31005_VACCT_FROM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895225865347682421)
,p_event_id=>wwv_flow_imp.id(53895225283639682420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (gSkipOnChange == 1) {',
'    gSkipOnChange = 0;',
'}',
'else {',
'    apex.server.process (',
'        ''GET_PARENT_ACCT''',
'       ,{  x01: ""',
'          ,x02: apex.item(''P0_MUNI'').getValue()',
'          ,x03: apex.item(''P31005_VACCT_FROM'').getValue()  ',
'        }',
'       ,{',
'          success: function(pData){',
'              if (pData.open_lov == "Y"){',
'                  openLovParentAcct(31007, ''btParentAcctFrom'');',
'                  showError(''Invalid account '' + apex.item(''P31005_VACCT_FROM'').getValue());',
'                  apex.item(''P31005_VACCT_FROM'').setValue("","",true);',
'              }',
'              else',
'              {              ',
'                  gSkipOnChange = 1;',
'                  apex.item(''P31005_VACCT_FROM'').setValue( pData.ParentNo );',
'              }    ',
'         }',
'       }',
'    );',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895226184583682422)
,p_name=>'onChangeCCAcctTo'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31005_VACCT_TO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895226678544682422)
,p_event_id=>wwv_flow_imp.id(53895226184583682422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (gSkipOnChange == 1) {',
'    gSkipOnChange = 0;',
'}',
'else {',
'    apex.server.process (',
'        ''GET_PARENT_ACCT''',
'       ,{  x01: ""',
'          ,x02: apex.item(''P0_MUNI'').getValue()',
'          ,x03: apex.item(''P31005_VACCT_TO'').getValue()  ',
'        }',
'       ,{',
'          success: function(pData){',
'              if (pData.open_lov == "Y"){',
'                  openLovParentAcct(31007, ''btParentAcctTo'');',
'                  showError(''Invalid account '' + apex.item(''P31005_VACCT_TO'').getValue());',
'                  apex.item(''P31005_VACCT_TO'').setValue("","",true);',
'              }',
'              else',
'              {              ',
'                  gSkipOnChange = 1;',
'                  apex.item(''P31005_VACCT_TO'').setValue( pData.ParentNo );',
'              }    ',
'         }',
'       }',
'    );',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895228001360682423)
,p_name=>'Change - AccountNo'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31005_ACCT_NO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895228494781682424)
,p_event_id=>wwv_flow_imp.id(53895228001360682423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'clickRun2({pAjaxCB : ''changeAcctNo'',pValue01 : $v("P31005_ACCT_NO")});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53715524315748312180)
,p_name=>'Change - SegCode'
,p_event_sequence=>430
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(55046030416701477246)
,p_triggering_element=>'SEGMENT_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53715524375669312181)
,p_event_id=>wwv_flow_imp.id(53715524315748312180)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'clickRun2({pAjaxCB : ''changeGSCode'',',
'           pValue01 : $v(''ig_gs_seq_id''), ',
'           pValue02 : $v(''ig_gs_code'')});'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53727334065895390305)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Init'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   vGS CHAR(2) := ''GS'';',
'',
'   procedure add_gs(pNo NUMBER,pName VARCHAR2) is ',
'   begin',
'      apex_collection.add_member(',
'         p_collection_name => vGS,',
'         p_c001 => pNo,',
'         p_c002 => pName',
'      );',
'   end;',
'begin',
'   if not apex_collection.collection_exists(vGS) then ',
'       apex_collection.create_collection(vGS);',
'   else',
'       apex_collection.truncate_collection(vGS);',
'    end if;',
'    add_gs(1,''Fund'');',
'    add_gs(2,''Dept'');',
'    add_gs(3,''Item'');',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895186349350682388)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RUN_GLR1050'
,p_process_sql_clob=>'APEX31005.run_process_apex;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895187877294682389)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_SEGMENT_INDENT'
,p_process_sql_clob=>'apex31005.ajax_get_segment;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895188333517682390)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_URL_PARENT_ACCT_LOV'
,p_process_sql_clob=>'APEX31005.ajax_get_url_parent_acct_lov;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895188734468682390)
,p_process_sequence=>70
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_PARENT_ACCT'
,p_process_sql_clob=>'APEX31005.ajax_get_parent_acct_info;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895189092283682390)
,p_process_sequence=>80
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'copyComp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    apex_json.open_object;',
'    apex_json.write(''success'', ''1'');',
'    apex_json.write(''close_region'',''copyComp'');',
'',
'    apex_json.open_array(''items'');',
'    apex_json.open_object;',
'    apex_json.write(''prop'', ''set'');',
'    apex_json.write(''name'', ''P31005_ACTION'');',
'    apex_json.write(''value'',''S'');',
'    apex_json.close_object; ',
'    apex_json.close_array;',
'',
'    apex_json.close_object; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895189887221682391)
,p_process_sequence=>100
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_XPOST'
,p_process_sql_clob=>'APEX31005.save_xpost;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895190301169682391)
,p_process_sequence=>110
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SKIP_XPOST'
,p_process_sql_clob=>'APEX31005.skip_xpost;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895191109208682392)
,p_process_sequence=>130
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_SEGMENT_CODE'
,p_process_sql_clob=>'apex31005.ajax_check_segment_code;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895191505766682392)
,p_process_sequence=>150
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CREATE_CHART_TEXT'
,p_process_sql_clob=>'apex31009.create_chart_text;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895190679678682392)
,p_process_sequence=>160
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'getTotals'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    apex_json.open_object;',
'    apex_json.write(''success'', ''1'');',
'    apex_json.write(''vBudTot'',''12,500.00'');',
'    apex_json.write(''vActualTot'', ''8,000.00'');',
'    apex_json.close_object; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895191958839682392)
,p_process_sequence=>170
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'changeAcctNo'
,p_process_sql_clob=>'apex31005.change_acct_no;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53715523515850312172)
,p_process_sequence=>180
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clickAction'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    apex_json.open_object;',
'    apex_json.write(''success'', ''1'');',
'    apex_json.write(''open_region'',''copyComp'');',
'    apex_json.close_object; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53716648656765812587)
,p_process_sequence=>190
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clickGSLov'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   vSegNo    NUMBER       := APEX_APPLICATION.g_x02;',
'   vSegCode  VARCHAR2(20) := APEX_APPLICATION.g_x03;',
'   vTrig     VARCHAR2(80) := APEX_APPLICATION.g_x04;',
'   ',
'   function get_url return varchar2 is',
'   begin',
'      return APEX_PAGE.GET_URL (',
'         p_page  => 34012,',
'         p_items => ''P34012_SEGMENT_NO'',',
'         p_values => vSegNo,',
'         p_triggering_element => ''$("#'' || vTrig || ''")''',
'       );',
'   end;',
'',
'BEGIN',
'    apex_json.open_object;',
'    apex_json.write(''success'', ''1'');',
'    apex_json.write(''redirect'', get_url);',
'    apex_json.close_object; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53718888904517531387)
,p_process_sequence=>200
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clickGCLov'
,p_process_sql_clob=>'apex_lov.click_gc_lov;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53716648817338812589)
,p_process_sequence=>210
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'changeGSCode'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   vSeqID   NUMBER := APEX_APPLICATION.g_x02;',
'   vSegCode VARCHAR2(80) := APEX_APPLICATION.g_x03;',
'begin',
'   APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'      p_collection_name => ''GS'',',
'      p_seq => vSeqID,',
'      p_attr_number => 3,',
'      p_attr_value => vSegCode);',
'',
'    apex_json.open_object;',
'    apex_json.write(''success'', ''1'');',
'    apex_json.write(''refresh_region'',''ig_gc'');',
'    apex_json.close_object; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
