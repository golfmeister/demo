prompt --application/pages/page_31008
begin
--   Manifest
--     PAGE: 31008
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
 p_id=>31008
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Copy Grant'
,p_alias=>'GL1050GRANT'
,p_page_mode=>'MODAL'
,p_step_title=>'Copy Grant'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function executeCopyGrantAction(pAgain){',
'    ',
'    var vAgain = (pAgain == undefined) ? 0 : pAgain;',
'    var grid  = apex.region("grantSegmentsIG").widget().interactiveGrid("getCurrentView");  ',
'    var model = grid.model;  ',
'    var vSegNoKey   = model.getFieldKey("SEGMENT_NO");',
'    var vSegNameKey = model.getFieldKey("SEGMENT_NAME");',
'    var vSegCodeKey = model.getFieldKey("SEGMENT_CODE_FROM");',
'    var vSegCodeToKey = model.getFieldKey("SEGMENT_CODE_TO");',
'    var vSegCtrlKey = model.getFieldKey("SEGMENT_CONTROL");',
'    var vSegSepKey = model.getFieldKey("SEGMENT_SEPARATOR");',
'    var vSegDefaKey = model.getFieldKey("VSEGMENT_DEFA");',
'    var vSegmentTable = [];',
'    ',
'    model.forEach(function(r) {',
'        var vSegmentRecord = {};',
'        vSegmentRecord.segmentNo   = r[vSegNoKey];',
'        vSegmentRecord.segmentName = r[vSegNameKey];',
'        vSegmentRecord.segmentCode = r[vSegCodeKey];',
'        vSegmentRecord.segmentCodeTo = r[vSegCodeToKey];',
'        vSegmentRecord.segmentCtrl = r[vSegCtrlKey];',
'        vSegmentRecord.segmentSep  = r[vSegSepKey];',
'        vSegmentRecord.segmentDefa = r[vSegDefaKey];',
'        vSegmentTable.push( vSegmentRecord );',
'    });',
'    ',
'    ',
'    ',
'    apex.server.process (',
'        ''COPY_GRANT_CODE''',
'       ,{  x01: JSON.stringify(vSegmentTable) ',
'           ,x02: vAgain',
'          ,pageItems: "#P31008_VGRANT_CODE" }',
'       ,{',
'          success: function(pData){',
'              if ( !(pData.success) && (pData.message != undefined) ){',
'                  showError(pData.message);',
'              }',
'              else if (pData.confirm != undefined){',
'                  //console.log("INSIDE vConfirm pData.again = "+pData.again);',
'                  if (confirm(pData.confirm)){',
'                      vAgain = (pData.again == undefined)? 1 : pData.again;',
'                      executeCopyGrantAction(vAgain);',
'                  }',
'              }',
'              else{',
'                  if (pData.message != undefined) {                  ',
'                      apex.message.showPageSuccess(pData.message);',
'                  }',
'                  else {',
'                      apex.message.showPageSuccess("Action Processed.");',
'                  }  ',
'              }',
'         }',
'       }',
'    );        ',
'    ',
'    ',
'}'))
,p_step_template=>wwv_flow_imp.id(53708150917004456860)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_width=>'650'
,p_page_component_map=>'21'
,p_last_updated_by=>'DCHING'
,p_last_upd_yyyymmddhh24miss=>'20220111161306'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53715524169109312178)
,p_plug_name=>'Action'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54724204201948784501)
,p_plug_name=>'{items container}'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128963176135301139)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54750892616386421458)
,p_plug_name=>'Grant Segment'
,p_region_name=>'ig_gs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128972614439301148)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MUNI_CODE',
'      ,SEGMENT_NO',
'      ,SEGMENT_NAME',
'      ,KVS_UTIL.REPLICATE(segment_filler,segment_length) SEGMENT_CODE_FROM',
'       ,KVS_UTIL.REPLICATE(segment_filler,segment_length) SEGMENT_CODE_TO',
'      ,SEGMENT_CONTROL',
'      ,SEGMENT_SEPARATOR',
'      ,KVS_UTIL.REPLICATE(segment_filler,segment_length) VSEGMENT_DEFA',
'from GL_MUNI_SEGMENT',
'WHERE muni_code = :P0_MUNI'))
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
 p_id=>wwv_flow_imp.id(53718889244618531390)
,p_name=>'SEGMENT_CODE_FROM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_CODE_FROM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'From'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53718889348891531391)
,p_name=>'SEGMENT_CODE_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_CODE_TO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'To'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54724640747826303692)
,p_name=>'LOV_BUTTON_TO'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button id="btLovGSCG2"; type="button" class="t-Button t-Button--icon t-Button--small" style="display: inline-block;"',
'        onclick="clickRun2({pAjaxCB:''clickGSLov'',pValue01:''&SEGMENT_NO.'',pValue03:''btLovGSCG2''});">',
'  <span class="a-Icon icon-popup-lov-under"></span>',
'</button>'))
,p_use_as_row_header=>false
,p_enable_hide=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54746911931381344021)
,p_name=>'SEGMENT_CONTROL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_CONTROL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Segment Control'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(54746912944493344031)
,p_name=>'SEGMENT_SEPARATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_SEPARATOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Segment Separator'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(54746913048290344032)
,p_name=>'VSEGMENT_DEFA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VSEGMENT_DEFA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Vsegment Defa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54756541650335599210)
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
 p_id=>wwv_flow_imp.id(54756541826332599212)
,p_name=>'MUNI_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MUNI_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Muni Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54756541896760599213)
,p_name=>'SEGMENT_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54756797502431347452)
,p_name=>'LOV_BUTTON'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button id="btLovGSCG1"; type="button" class="t-Button t-Button--icon t-Button--small" style="display: inline-block;"',
'        onclick="clickRun2({pAjaxCB:''clickGSLov'',pValue01:''&SEGMENT_NO.'',pValue03:''btLovGSCG1''});">',
'  <span class="a-Icon icon-popup-lov-under"></span>',
'</button>'))
,p_use_as_row_header=>false
,p_enable_hide=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(54750892698192421459)
,p_internal_uid=>1042978027048036388
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
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'  config.defaultGridViewOptions = { ',
'     footer: false ',
'  }; ',
'  return config; ',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(54756547147508599402)
,p_interactive_grid_id=>wwv_flow_imp.id(54750892698192421459)
,p_static_id=>'1429341'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(54756547187887599402)
,p_report_id=>wwv_flow_imp.id(54756547147508599402)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53721332888412463216)
,p_view_id=>wwv_flow_imp.id(54756547187887599402)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(53718889244618531390)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53721333781922463223)
,p_view_id=>wwv_flow_imp.id(54756547187887599402)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(53718889348891531391)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54724648064193336453)
,p_view_id=>wwv_flow_imp.id(54756547187887599402)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(54724640747826303692)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54736950851661450486)
,p_view_id=>wwv_flow_imp.id(54756547187887599402)
,p_display_seq=>4
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54747277238155302809)
,p_view_id=>wwv_flow_imp.id(54756547187887599402)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(54746911931381344021)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54747432308893473167)
,p_view_id=>wwv_flow_imp.id(54756547187887599402)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(54746912944493344031)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54747434690604675586)
,p_view_id=>wwv_flow_imp.id(54756547187887599402)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(54746913048290344032)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54756547698730599405)
,p_view_id=>wwv_flow_imp.id(54756547187887599402)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(54756541650335599210)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54756548744067599415)
,p_view_id=>wwv_flow_imp.id(54756547187887599402)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(54756541826332599212)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54756595230860889190)
,p_view_id=>wwv_flow_imp.id(54756547187887599402)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(54756541896760599213)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>52
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54756938217125723982)
,p_view_id=>wwv_flow_imp.id(54756547187887599402)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(54756797502431347452)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53891247207748752723)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53715524169109312178)
,p_button_name=>'COPY'
,p_button_static_id=>'btCreate'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copy'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53891248415148752726)
,p_name=>'P31008_LOV_RETURN_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53715524169109312178)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53891248795890752728)
,p_name=>'P31008_SETUP_GRANT_SEGMENT_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53715524169109312178)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53891249224976752729)
,p_name=>'P31008_SETUP_DEFA_ACCT_DESC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53715524169109312178)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53891249609738752729)
,p_name=>'P31008_SETUP_CONTROL_SEG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53715524169109312178)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53891250274629752730)
,p_name=>'P31008_GRANT_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54724204201948784501)
,p_prompt=>'Grant/CapEx Code'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button id="btLovGG"; type="button" class="t-Button t-Button--icon t-Button--small" style="display: inline-block;"',
'        onclick="clickRun2({pAjaxCB:''clickGGLov'',pValue03:''btLovGG''});">',
'  <span class="a-Icon icon-popup-lov-under"></span>',
'</button>'))
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53891254039800752736)
,p_name=>'Dialog Closed - btLovGSCG1'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#btLovGSCG1'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53891254555700752736)
,p_event_id=>wwv_flow_imp.id(53891254039800752736)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31008_LOV_RETURN_CODE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P34012_RETURN_CODE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53891255053011752736)
,p_event_id=>wwv_flow_imp.id(53891254039800752736)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'IGSetRowVal(''ig_gs'',{''SEGMENT_CODE_FROM'' : $v(''P31008_LOV_RETURN_CODE'')});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53891255384901752737)
,p_name=>'Dialog Closed - btLovGSCG2'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#btLovGSCG2'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53891255935585752737)
,p_event_id=>wwv_flow_imp.id(53891255384901752737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31008_LOV_RETURN_CODE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P34012_RETURN_CODE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53891256410440752737)
,p_event_id=>wwv_flow_imp.id(53891255384901752737)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'IGSetRowVal(''ig_gs'',{''SEGMENT_CODE_TO'' : $v(''P31008_LOV_RETURN_CODE'')});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53891256789870752738)
,p_name=>'Dialog Closed - GL_GRANT'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#btLovGG'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53891257357411752738)
,p_event_id=>wwv_flow_imp.id(53891256789870752738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P0_LOV_RETURN_ITEM,P31008_GRANT_CODE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P34022_RETURN_CODE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53891258244493752739)
,p_name=>'onClickCopy'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53891247207748752723)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53891258679409752739)
,p_event_id=>wwv_flow_imp.id(53891258244493752739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'executeCopyGrantAction(0);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53891259095782752739)
,p_name=>'onChangeSegmentCode'
,p_event_sequence=>60
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(54750892616386421458)
,p_triggering_element=>'SEGMENT_CODE_FROM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53891259582760752740)
,p_event_id=>wwv_flow_imp.id(53891259095782752739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function (){',
'    if (gSkipOnChange == 1) {',
'        gSkipOnChange = 0;',
'    }',
'    else {',
'        var grid        = apex.region("grantSegmentsIG").widget().interactiveGrid("getViews","grid");  ',
'        var model       = grid.model;  ',
'        var selectedRow = grid.view$.grid("getSelection") ;  ',
'        var id          = $(selectedRow[0][0]).data(''id'');          ',
'        var record      = model.getRecord(id)  ',
'        ',
'        var vSegNo      = model.getRecordValue(id, "SEGMENT_NO");',
'        var vSegCode    = model.getRecordValue(id, "VSEGMENT_CODE");',
'        ',
'        apex.server.process (',
'            ''CHECK_SEGMENT_CODE''',
'           ,{  x01: vSegNo, x02: vSegCode  }',
'           ,{',
'              success: function(pData){           ',
'                  if (pData.open_lov == "Y"){',
'                      openLovSegment(34012, vSegNo, ''btLovSegment'', pData.segment_code);',
'                  }',
'                  else {                      ',
'                      gSkipOnChange = 1;',
'                      model.setValue( record, "VSEGMENT_CODE", pData.segment_code  );',
'                      if ( model.getRecordValue(id, "VSEGMENT_CODE_TO") == model.getRecordValue(id, "VSEGMENT_DEFA") ){',
'                          gSkipOnChange = 1;',
'                          model.setValue( record, "VSEGMENT_CODE_TO", pData.segment_code  );',
'                      }',
'                  }',
'              }',
'           }',
'        );',
'    }',
'}, 10);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53891260002458752740)
,p_name=>'onChangeSegmentCodeTo'
,p_event_sequence=>70
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(54750892616386421458)
,p_triggering_element=>'SEGMENT_CODE_TO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53891260503954752741)
,p_event_id=>wwv_flow_imp.id(53891260002458752740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function (){',
'    if (gSkipOnChange == 1) {',
'        gSkipOnChange = 0;',
'    }',
'    else {',
'        var grid        = apex.region("grantSegmentsIG").widget().interactiveGrid("getViews","grid");  ',
'        var model       = grid.model;  ',
'        var selectedRow = grid.view$.grid("getSelection") ;  ',
'        var id          = $(selectedRow[0][0]).data(''id'');          ',
'        var record      = model.getRecord(id)  ',
'        ',
'        var vSegNo      = model.getRecordValue(id, "SEGMENT_NO");',
'        var vSegCode    = model.getRecordValue(id, "VSEGMENT_CODE_TO");',
'        ',
'        apex.server.process (',
'            ''CHECK_SEGMENT_CODE''',
'           ,{  x01: vSegNo, x02: vSegCode  }',
'           ,{',
'              success: function(pData){           ',
'                  if (pData.open_lov == "Y"){',
'                      openLovSegment(34012, vSegNo, ''btLovSegment'', pData.segment_code);',
'                  }',
'                  else {                      ',
'                      gSkipOnChange = 1;',
'                      model.setValue( record, "VSEGMENT_CODE_TO", pData.segment_code  );',
'                  }',
'              }',
'           }',
'        );',
'    }',
'}, 10);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53891260881393752741)
,p_name=>'onChangeGrantCode'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31008_GRANT_CODE'
,p_condition_element=>'P31008_GRANT_CODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53891261417905752742)
,p_event_id=>wwv_flow_imp.id(53891260881393752741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doLOV(''GET_GRANT'',''P31008_VGRANT_CODE'',34022,''btLovGrant'');',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53891251080305752733)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize Muni'
,p_process_sql_clob=>'KVS0000.init_muni;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53891251471886752733)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize Page'
,p_process_sql_clob=>'apex31008.on_load_page;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53891250744371752732)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_SEGMENT'
,p_process_sql_clob=>'APEX31008.ajax_get_segment;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53891251946561752733)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_GRANT'
,p_process_sql_clob=>'apex_lov_gl.ajax_get_grant_info;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53891252284209752734)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'COPY_GRANT_CODE'
,p_process_sql_clob=>'APEX31008.copy_grant_code;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53891252687977752734)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_SEGMENT_CODE'
,p_process_sql_clob=>'apex31008.ajax_check_segment_code; '
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53718889106370531389)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clickGSLov'
,p_process_sql_clob=>'apex_lov.click_gs_lov;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53718889411064531392)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clickGGLov'
,p_process_sql_clob=>'apex_lov.click_gg_lov;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
