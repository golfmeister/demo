prompt --application/pages/page_31009
begin
--   Manifest
--     PAGE: 31009
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
 p_id=>31009
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Fast Create Account No.'
,p_alias=>'GL1050CREATE'
,p_page_mode=>'MODAL'
,p_step_title=>'Fast Create Account No.'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var gSkipOnChange = 0;',
'',
'function openLovSegment(pPageNo, pCurrentId, pBtStaticId, pSegmentCode){',
'    ',
'    apex.item("P31009_LOV_RETURN_ITEM").setValue("");',
'',
'    var vItemNames  = "P34012_SEGMENT_NO,P34012_PARAM2";',
'    var vItemValues = pCurrentId + ",status=''A''";',
'    ',
'    if (pSegmentCode != undefined) {',
'        vItemNames  = "P34012_SEGMENT_CODE," + vItemNames;        ',
'        vItemValues = pSegmentCode + "," + vItemValues;        ',
'    }',
'        ',
'    apex.server.process (',
'        ''GET_PAGE_URL''',
'       ,{  x01: pBtStaticId',
'          ,x02: pPageNo',
'          ,x03: vItemNames',
'          ,x04: vItemValues }',
'       ,{',
'          success: function(pData){',
'              apex.navigation.redirect(pData.url);      ',
'         }',
'       }',
'    );',
'}',
'',
'',
'function validateSegments(){     ',
'    var vShowAcctDesc = ''Y'';',
'    var grid  = apex.region("fastEntrySegmentsIG").widget().interactiveGrid("getCurrentView");  ',
'    var model = grid.model;  ',
'',
'    var vSegNoKey    = model.getFieldKey("SEGMENT_NO");',
'    var vSegNameKey  = model.getFieldKey("SEGMENT_NAME");',
'    var vSegCodeKey  = model.getFieldKey("VSEGMENT_CODE");',
'    var vSegDescKey  = model.getFieldKey("VSEGMENT_DESC");',
'    var vSegCtrlKey  = model.getFieldKey("SEGMENT_CONTROL");',
'    var vSegSepKey   = model.getFieldKey("SEGMENT_SEPARATOR");',
'    var vSegDefaKey  = model.getFieldKey("VSEGMENT_DEFA");',
'    var vAcctTypeKey = model.getFieldKey("VACCT_TYPE");',
'    var vSegmentTable = [];',
'    ',
'    model.forEach(function(r) {',
'        var vSegmentRecord = {};',
'        vSegmentRecord.segmentNo   = r[vSegNoKey];',
'        vSegmentRecord.segmentName = r[vSegNameKey];',
'        vSegmentRecord.segmentCode = r[vSegCodeKey];',
'        vSegmentRecord.segmentDesc = r[vSegDescKey].toUpperCase();',
'        vSegmentRecord.segmentCtrl = r[vSegCtrlKey];',
'        vSegmentRecord.segmentSep  = r[vSegSepKey];',
'        vSegmentRecord.segmentDefa = r[vSegDefaKey];',
'        vSegmentRecord.acctType    = r[vAcctTypeKey];',
'        vSegmentTable.push( vSegmentRecord );',
'        ',
'        if (vSegmentRecord.segmentCtrl == ''Y'' && vSegmentRecord.segmentDesc.length == 0){',
'           vShowAcctDesc = ''N'';',
'        }  ',
'    });',
'    ',
'    if (vShowAcctDesc == ''Y'' ){',
'        apex.server.process (',
'            ''GET_ACCT_INFO''',
'           ,{  x01: JSON.stringify(vSegmentTable)   }',
'           ,{',
'              success: function(pData){',
'                  apex.item("P31009_VACCT_NO").setValue( pData.acct );',
'                  apex.item("P31009_VACCT_DESC").setValue( pData.full );',
'                  apex.item("P31009_VACCT_VIEW").setValue( pData.view );',
'                  apex.item("P31009_VACCT_SHORT").setValue( pData.short );',
'                  apex.item("P31009_VACCT_TYPE").setValue( pData.acctType );',
'                  apex.item("P31009_VFUND").setValue( pData.vfund );                 ',
'                  ',
'                  apex.item("P31009_VCOBOL_FUND").setValue( pData.tCobolSegment.vcobol_fund );                  ',
'                  apex.item("P31009_VCOBOL_DEPT").setValue( pData.tCobolSegment.vcobol_dept );                  ',
'                  apex.item("P31009_VCOBOL_ITEM").setValue( pData.tCobolSegment.vcobol_item );                  ',
'                  apex.item("P31009_VCOBOL_PROJ").setValue( pData.tCobolSegment.vcobol_proj );                  ',
'                  apex.item("P31009_VCOBOL_LOC").setValue( pData.tCobolSegment.vcobol_loc );                  ',
'                  ',
'                  apex.item("P31009_VSPR1").setValue( pData.tSprSegment.vspr1 );                  ',
'                  apex.item("P31009_VSPR2").setValue( pData.tSprSegment.vspr2 );                  ',
'                  apex.item("P31009_VSPR3").setValue( pData.tSprSegment.vspr3 );                  ',
'                  apex.item("P31009_VSPR4").setValue( pData.tSprSegment.vspr4 );                  ',
'                  apex.item("P31009_VSPR5").setValue( pData.tSprSegment.vspr5 );                  ',
'                  apex.item("P31009_VSPR6").setValue( pData.tSprSegment.vspr6 );                  ',
'                  apex.item("P31009_VSPR7").setValue( pData.tSprSegment.vspr7 );                  ',
'                  ',
'             }',
'           }',
'        );        ',
'        $("#btCreate").removeClass("apex_disabled");',
'    }',
'    gSkipOnChange = 0;',
'}',
'',
'',
'function openLovParentAcct(pPageNo, pBtStaticId){',
'',
'    apex.item("P31009_LOV_RETURN_ITEM").setValue("");',
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
'',
'function openLovGrant(pPageNo, pBtStaticId){',
'    ',
'    apex.item("P&APP_PAGE_ID._LOV_RETURN_ITEM").setValue("");',
'',
'    apex.server.process (',
'        ''GET_PAGE_URL''',
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
'',
'function setPropSegmentDesc(pModel, pId, pReadOnly){',
'    var vControlSeg = apex.item("P31009_SETUP_CONTROL_SEG").getValue();',
'    var vColName = "VSEGMENT_DESC";',
'    var vCK = (pReadOnly == "Y") ? "1" : "";',
'     ',
'    var vRecord      = pModel.getRecord(pId)  ',
'    var vSegmentNo   = pModel.getValue(vRecord,"SEGMENT_NO"); ',
'    if (vSegmentNo < vControlSeg){',
'        var meta   = pModel.getRecordMetadata(pId);',
'        var fields = meta.fields;',
'        if (!fields) {',
'            fields = meta.fields = {};',
'        }',
'        if (!fields[vColName]) {',
'            fields[vColName] = {};',
'        }',
'        fields[vColName].ck = vCK;',
'        pModel.metadataChanged(pId);       ',
'    }',
'}'))
,p_step_template=>wwv_flow_imp.id(53708150917004456860)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_page_component_map=>'21'
,p_last_updated_by=>'DCHING'
,p_last_upd_yyyymmddhh24miss=>'20220112152204'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54397371991656323802)
,p_plug_name=>'Seg. Search'
,p_region_name=>'ig_gs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128972614439301148)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MUNI_CODE',
'      ,SEGMENT_NO',
'      ,SEGMENT_NAME',
'      ,KVS_UTIL.REPLICATE(segment_filler,segment_length) SEGMENT_CODE',
'      ,NULL SEGMENT_DESC',
'      ,SEGMENT_CONTROL',
'      ,SEGMENT_SEPARATOR',
'      ,KVS_UTIL.REPLICATE(segment_filler,segment_length) SEGMENT_DEFA',
'      ,NULL ACCT_TYPE ',
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
 p_id=>wwv_flow_imp.id(53718889755605531395)
,p_name=>'SEGMENT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Code'
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
 p_id=>wwv_flow_imp.id(53718889829712531396)
,p_name=>'SEGMENT_DEFA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_DEFA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Segment Defa'
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
 p_id=>wwv_flow_imp.id(53718889927681531397)
,p_name=>'SEGMENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(53718890053588531398)
,p_name=>'ACCT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCT_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Acct Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(54393391306651246365)
,p_name=>'SEGMENT_CONTROL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_CONTROL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Segment Control'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(54393392319763246375)
,p_name=>'SEGMENT_SEPARATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_SEPARATOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Segment Separator'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(54403021025605501554)
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
 p_id=>wwv_flow_imp.id(54403021201602501556)
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
 p_id=>wwv_flow_imp.id(54403021272030501557)
,p_name=>'SEGMENT_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEGMENT_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Item No.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54403276877701249796)
,p_name=>'LOV_BUTTON'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button id="btLovGS"; type="button" class="t-Button t-Button--icon t-Button--small" style="display: inline-block;"',
'        onclick="clickRun2({pAjaxCB:''clickGSLov'',pValue01:''&SEGMENT_NO.'',pValue03:''btLovGS''});">',
'  <span class="a-Icon icon-popup-lov-under"></span>',
'</button>'))
,p_use_as_row_header=>false
,p_enable_hide=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(54397372073462323803)
,p_internal_uid=>689457402317938732
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
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
'}  '))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(54403026522778501746)
,p_interactive_grid_id=>wwv_flow_imp.id(54397372073462323803)
,p_static_id=>'1429343'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(54403026563157501746)
,p_report_id=>wwv_flow_imp.id(54403026522778501746)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53722123680827942403)
,p_view_id=>wwv_flow_imp.id(54403026563157501746)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(53718889755605531395)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53722124632460942407)
,p_view_id=>wwv_flow_imp.id(54403026563157501746)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(53718889829712531396)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53722129192981965940)
,p_view_id=>wwv_flow_imp.id(54403026563157501746)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(53718889927681531397)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53722130116882965947)
,p_view_id=>wwv_flow_imp.id(54403026563157501746)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(53718890053588531398)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54383430226931352830)
,p_view_id=>wwv_flow_imp.id(54403026563157501746)
,p_display_seq=>4
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54393756613425205153)
,p_view_id=>wwv_flow_imp.id(54403026563157501746)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(54393391306651246365)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54393911684163375511)
,p_view_id=>wwv_flow_imp.id(54403026563157501746)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(54393392319763246375)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54403027074000501749)
,p_view_id=>wwv_flow_imp.id(54403026563157501746)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(54403021025605501554)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54403028119337501759)
,p_view_id=>wwv_flow_imp.id(54403026563157501746)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(54403021201602501556)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54403074606130791534)
,p_view_id=>wwv_flow_imp.id(54403026563157501746)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(54403021272030501557)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54403417592395626326)
,p_view_id=>wwv_flow_imp.id(54403026563157501746)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(54403276877701249796)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54400714681792189339)
,p_plug_name=>'Action'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>40
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54419239601002632761)
,p_plug_name=>'Acct. Desc Region'
,p_region_name=>'acctDescRg'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(54128963176135301139)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53895522198475693600)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54400714681792189339)
,p_button_name=>'CREATE'
,p_button_static_id=>'btCreate'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'apex_disabled'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53895522607280693600)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(54400714681792189339)
,p_button_name=>'SKIP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Skip'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53718890468544531402)
,p_name=>'P31009_LOV_RETURN_DESC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53718890517460531403)
,p_name=>'P31009_LOV_RETURN_TYPE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895524073774693602)
,p_name=>'P31009_FISCAL_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895524552799693603)
,p_name=>'P31009_ACC_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895524891275693603)
,p_name=>'P31009_SETUP_CURRENT_YEAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895525271839693603)
,p_name=>'P31009_BALANCE_SEG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895525745033693604)
,p_name=>'P31009_SETUP_ADD_REQ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895526099648693604)
,p_name=>'P31009_SEGMENTS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895526545480693604)
,p_name=>'P31009_LOV_RETURN_CODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895526931562693605)
,p_name=>'P31009_VACCT_NO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_prompt=>'Acct. No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_css_classes=>'apex_disabled'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895527359598693605)
,p_name=>'P31009_VACCT_TYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_prompt=>'Acct. Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>'return kvs_lov_sql(''CUSTOM'', ''ACCT_TYPE'');'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_css_classes=>'apex_disabled'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895527727741693606)
,p_name=>'P31009_VACCT_DESC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>81
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_css_classes=>'apex_disabled'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895528159919693606)
,p_name=>'P31009_VACCT_NO_PARENT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_prompt=>'Parent Account'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button id="btLovParentAcct"; type="button" class="t-Button t-Button--icon t-Button--small" style="display: inline-block;"',
'        onclick="openLovParentAcct(31007, ''btLovParentAcct'');">',
'  <span class="a-Icon icon-popup-lov-under"></span>',
'</button>'))
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895528569828693606)
,p_name=>'P31009_VACCT_NO_PARENT_DESC'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>42
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_css_classes=>'apex_disabled'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895528967083693607)
,p_name=>'P31009_VIMP_ACCT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_item_default=>'Y'
,p_post_element_text=>'&nbspAdd Import Account'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'Yes'
,p_attribute_04=>'N'
,p_attribute_05=>'No'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895529315747693607)
,p_name=>'P31009_VCOBOL_ROW'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_prompt=>'Import Account'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="item-vcobol-row">',
'  <input type="text" id="P31009_VCOBOL_FUND" name="VCOBOL_FUND" class="text_field apex-item-text" size="5" value="" >',
'  <input type="text" id="P31009_VCOBOL_DEPT" name="VCOBOL_DEPT" class="text_field apex-item-text" size="5" value="" >',
'  <input type="text" id="P31009_VCOBOL_ITEM" name="VCOBOL_ITEM" class="text_field apex-item-text" size="5" value="" >',
'  <input type="text" id="P31009_VCOBOL_PROJ" name="VCOBOL_PROJ" class="text_field apex-item-text" size="5" value="" >',
'  <input type="text" id="P31009_VCOBOL_LOC"  name="VCOBOL_LOC"  class="text_field apex-item-text" size="5" value="" >',
'<div> ',
''))
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_tag_attributes=>'style="display:none;"'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895529756264693607)
,p_name=>'P31009_VIMP_SPR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_item_default=>'Y'
,p_post_element_text=>'&nbspAdd Springbrook Account'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#:margin-top-none'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'Yes'
,p_attribute_04=>'N'
,p_attribute_05=>'No'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895530098935693608)
,p_name=>'P31009_VSPR_ROW'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_prompt=>'Springbrook Account No.'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="item-vspr-row">',
'  <input type="text" id="P31009_VSPR1" name="VSPR1" class="text_field apex-item-text" size="5" value="" >',
'  <input type="text" id="P31009_VSPR2" name="VSPR2" class="text_field apex-item-text" size="5" value="" >',
'  <input type="text" id="P31009_VSPR3" name="VSPR3" class="text_field apex-item-text" size="5" value="" >',
'  <input type="text" id="P31009_VSPR4" name="VSPR4" class="text_field apex-item-text" size="5" value="" >',
'  <input type="text" id="P31009_VSPR5" name="VSP5" class="text_field apex-item-text" size="5" value="" >',
'  <input type="text" id="P31009_VSPR6" name="VSPR6" class="text_field apex-item-text" size="5" value="" >',
'  <input type="text" id="P31009_VSPR7" name="VSPR7" class="text_field apex-item-text" size="5" value="" >  ',
'<div> ',
''))
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_tag_attributes=>'style="display:none;"'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#:margin-bottom-none'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895530485542693608)
,p_name=>'P31009_VGRANT_CODE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_prompt=>'Grant/CapEx.'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button id="btLovGG"; type="button" class="t-Button t-Button--icon t-Button--small" style="display: inline-block;"',
'        onclick="clickRun2({pAjaxCB:''clickGGLov'',pValue03:''btLovGG''});">',
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
 p_id=>wwv_flow_imp.id(53895530924340693608)
,p_name=>'P31009_SETUP_GRANT_SEGMENT_NO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895531281902693609)
,p_name=>'P31009_SETUP_DEFA_ACCT_DESC'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895531695965693609)
,p_name=>'P31009_SETUP_CONTROL_SEG'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895532093765693609)
,p_name=>'P31009_VACCT_VIEW'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895532503906693610)
,p_name=>'P31009_VACCT_SHORT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53895532901517693610)
,p_name=>'P31009_VFUND'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(54419239601002632761)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895539168848693616)
,p_name=>'actionPrint'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31009_ACTION'
,p_condition_element=>'P31009_ACTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'P'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895539637034693617)
,p_event_id=>wwv_flow_imp.id(53895539168848693616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'runReport(''RUN_GLR1050'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895537698948693615)
,p_name=>'Dialog  Closed - GL Segment'
,p_event_sequence=>110
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#btLovGS'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895538675777693616)
,p_event_id=>wwv_flow_imp.id(53895537698948693615)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31009_LOV_RETURN_CODE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P34012_RETURN_CODE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53718890659431531404)
,p_event_id=>wwv_flow_imp.id(53895537698948693615)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31009_LOV_RETURN_DESC'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P34012_RETURN_DESC'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53718890730346531405)
,p_event_id=>wwv_flow_imp.id(53895537698948693615)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31009_LOV_RETURN_TYPE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P34012_RETURN_VALUE1'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895538237571693615)
,p_event_id=>wwv_flow_imp.id(53895537698948693615)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IGSetRowVal(''ig_gs'',{''SEGMENT_CODE'' : $v(''P31009_LOV_RETURN_CODE''),',
'                     ''SEGMENT_DESC'' : $v(''P31009_LOV_RETURN_DESC''),',
'                     ''ACCT_TYPE'' : $v(''P31009_LOV_RETURN_TYPE'')});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895539997294693617)
,p_name=>'onDialogLovParentAcctClose'
,p_event_sequence=>120
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#btLovParentAcct'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895540493291693617)
,p_event_id=>wwv_flow_imp.id(53895539997294693617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31009_LOV_RETURN_CODE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P31007_RETURN_VALUE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895541040634693618)
,p_event_id=>wwv_flow_imp.id(53895539997294693617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'var vAcct = apex.item(''P31009_LOV_RETURN_ITEM'').getValue();',
'',
'apex.server.process (',
'    ''GET_PARENT_ACCT''',
'   ,{  x01: apex.item(''P31009_LOV_RETURN_ITEM'').getValue()',
'      ,x02: ""  }',
'',
'   ,{',
'      success: function(pData){',
'          gSkipOnChange = 1;',
'          apex.item(''P31009_VACCT_NO_PARENT'').setValue( pData.ParentNo );',
'          apex.item(''P31009_VACCT_NO_PARENT_DESC'').setValue( pData.ParentDesc );',
'     }',
'   }',
');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895541389861693618)
,p_name=>'Dialog Closed - GL_GRANT'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#btLovGG'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895541967854693618)
,p_event_id=>wwv_flow_imp.id(53895541389861693618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31009_LOV_RETURN_CODE,P31009_VGRANT_CODE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'Y'
,p_attribute_10=>'P34022_RETURN_CODE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895543711764693620)
,p_name=>'onChangeSegmentCode'
,p_event_sequence=>150
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(54397371991656323802)
,p_triggering_element=>'SEGMENT_CODE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'gSkipOnChange == 0'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895544203309693620)
,p_event_id=>wwv_flow_imp.id(53895543711764693620)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function (){',
'    var grid        = apex.region("fastEntrySegmentsIG").widget().interactiveGrid("getViews","grid");  ',
'    var model       = grid.model;  ',
'    var selectedRow = grid.view$.grid("getSelection") ;  ',
'    var id          = $(selectedRow[0][0]).data(''id'');  ',
'    var record      = model.getRecord(id)  ',
'',
'    setPropSegmentDesc(model, id, "N");',
'    model.setValue( record, "VSEGMENT_DESC", "" );',
'    var vSegCode  = model.getRecordValue(id, "VSEGMENT_CODE");',
'    var vSegNo    = model.getRecordValue(id, "SEGMENT_NO");',
'    var vSegDefa  = model.getRecordValue(id, "VSEGMENT_DEFA");',
'',
'    if (vSegCode != vSegDefa){',
'        apex.server.process (',
'            ''GET_SEGMENT_BY_CODE''',
'           ,{  x01: vSegNo, x02: vSegCode  }',
'',
'           ,{',
'              success: function(pData){',
'                  if (pData.open_lov == "Y"){',
'                      openLovSegment(34012, vSegNo, ''btLovSegment'', pData.segment_code);',
'                  }',
'                  else',
'                  {',
'                      gSkipOnChange = 1; ',
'                      model.setValue( record, "VSEGMENT_CODE", pData.segment_code );',
'                      model.setValue( record, "VSEGMENT_DESC", pData.segment_desc );',
'                      model.setValue( record, "VACCT_TYPE", pData.acct_type );                      ',
'                      setPropSegmentDesc(model, id, "Y");',
'                      validateSegments();',
'                  }    ',
'             }',
'           }',
'        );',
'    }',
'}, 10);',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895544652041693621)
,p_name=>'onChangeSegmentDesc'
,p_event_sequence=>160
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(54397371991656323802)
,p_triggering_element=>'SEGMENT_DESC'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'gSkipOnChange == 0'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895545146424693621)
,p_event_id=>wwv_flow_imp.id(53895544652041693621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function (){',
'    validateSegments();',
'}, 100);',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895545509473693621)
,p_name=>'onClickSkip'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53895522607280693600)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895545974790693622)
,p_event_id=>wwv_flow_imp.id(53895545509473693621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid  = apex.region("fastEntrySegmentsIG").widget().interactiveGrid("getCurrentView");  ',
'var model = grid.model;  ',
'',
'var vSegNoKey     = model.getFieldKey("SEGMENT_NO");',
'var vSegNameKey   = model.getFieldKey("SEGMENT_NAME");',
'var vSegCodeKey   = model.getFieldKey("VSEGMENT_CODE");',
'var vSegDescKey   = model.getFieldKey("VSEGMENT_DESC");',
'var vSegCtrlKey   = model.getFieldKey("SEGMENT_CONTROL");',
'var vSegSepKey    = model.getFieldKey("SEGMENT_SEPARATOR");',
'var vSegDefaKey   = model.getFieldKey("VSEGMENT_DEFA");',
'var vAcctTypeKey  = model.getFieldKey("VACCT_TYPE");',
'var vSegmentTable = [];',
'',
'model.forEach(function(r) {',
'    var vSegmentRecord = {};',
'    vSegmentRecord.segmentNo   = r[vSegNoKey];',
'    vSegmentRecord.segmentName = r[vSegNameKey];',
'    vSegmentRecord.segmentCode = r[vSegCodeKey];',
'    vSegmentRecord.segmentDesc = r[vSegDescKey];',
'    vSegmentRecord.segmentCtrl = r[vSegCtrlKey];',
'    vSegmentRecord.segmentSep  = r[vSegSepKey];',
'    vSegmentRecord.segmentDefa = r[vSegDefaKey];',
'     vSegmentRecord.acctType   = r[vAcctTypeKey];',
'    vSegmentTable.push( vSegmentRecord );',
'});',
'',
'apex.server.process (',
'    ''GET_NEXT_CONTROL''',
'   ,{  x01: JSON.stringify(vSegmentTable)   }',
'   ,{',
'      success: function(pData){',
'          if ( pData.message != undefined ){',
'              showError(pData.message);',
'          }          ',
'          else {',
'              var vRecord, vCurrentId',
'              for (x in pData.tSegment) {',
'                  vCurrentId = pData.tSegment[x].segmentNo;',
'                  vRecord    = model.getRecord(vCurrentId)',
'                  gSkipOnChange = 1; ',
'                  model.setValue( vRecord, "VSEGMENT_CODE", pData.tSegment[x].segmentCode );',
'                  setPropSegmentDesc(model, vCurrentId, "N");',
'                  model.setValue( vRecord, "VSEGMENT_DESC", pData.tSegment[x].segmentDesc );',
'                  setPropSegmentDesc(model, vCurrentId, "Y");',
'                  model.setValue( vRecord, "VACCT_TYPE", pData.tSegment[x].segmentAcctType );                      ',
'                  var vCobolItem = pData.tSegment[x].vcovcobol_itembol_item;              ',
'                  if (vCobolItem != undefined) {',
'                      apex.item("P31009_VCOBOL_ITEM").setValue( vCobolItem );                       ',
'                  }',
'              }',
'              validateSegments();               ',
'          }',
'     }',
'   }',
');        ',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895546443239693622)
,p_name=>'onClickCreate'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53895522198475693600)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895546910106693623)
,p_event_id=>wwv_flow_imp.id(53895546443239693622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid  = apex.region("fastEntrySegmentsIG").widget().interactiveGrid("getCurrentView");  ',
'var model = grid.model;  ',
'',
'var vSegNoKey     = model.getFieldKey("SEGMENT_NO");',
'var vSegNameKey   = model.getFieldKey("SEGMENT_NAME");',
'var vSegCodeKey   = model.getFieldKey("VSEGMENT_CODE");',
'var vSegDescKey   = model.getFieldKey("VSEGMENT_DESC");',
'var vSegCtrlKey   = model.getFieldKey("SEGMENT_CONTROL");',
'var vSegSepKey    = model.getFieldKey("SEGMENT_SEPARATOR");',
'var vSegDefaKey   = model.getFieldKey("VSEGMENT_DEFA");',
'var vAcctTypeKey  = model.getFieldKey("VACCT_TYPE");',
'var vSegmentTable = [];',
'',
'model.forEach(function(r) {',
'    var vSegmentRecord = {};',
'    vSegmentRecord.segmentNo   = r[vSegNoKey];',
'    vSegmentRecord.segmentName = r[vSegNameKey];',
'    vSegmentRecord.segmentCode = r[vSegCodeKey];',
'    vSegmentRecord.segmentDesc = r[vSegDescKey];',
'    vSegmentRecord.segmentCtrl = r[vSegCtrlKey];',
'    vSegmentRecord.segmentSep  = r[vSegSepKey];',
'    vSegmentRecord.segmentDefa = r[vSegDefaKey];',
'    vSegmentRecord.acctType    = r[vAcctTypeKey];',
'    vSegmentTable.push( vSegmentRecord );',
'});',
'',
'var vCobolRow = apex.item("P31009_VCOBOL_FUND").getValue() + "." +',
'                apex.item("P31009_VCOBOL_DEPT").getValue() + "." +      ',
'                apex.item("P31009_VCOBOL_ITEM").getValue() + "." +        ',
'                apex.item("P31009_VCOBOL_PROJ").getValue() + "." +       ',
'                apex.item("P31009_VCOBOL_LOC").getValue();     ',
'apex.item("P31009_VCOBOL_ROW").setValue( vCobolRow );                  ',
'',
'var vSPRRow = apex.item("P31009_VSPR1").getValue() + "." +',
'              apex.item("P31009_VSPR2").getValue() + "." +      ',
'              apex.item("P31009_VSPR3").getValue() + "." +        ',
'              apex.item("P31009_VSPR4").getValue() + "." +       ',
'              apex.item("P31009_VSPR5").getValue() + "." +       ',
'              apex.item("P31009_VSPR6").getValue() + "." +       ',
'              apex.item("P31009_VSPR7").getValue();     ',
'apex.item("P31009_VSPR_ROW").setValue( vSPRRow ); ',
'',
'createAccount(JSON.stringify(vSegmentTable));',
'',
'',
'function createAccount(pSegmentTable, pAgain, pRefValue) {',
'    apex.server.process (',
'        ''CREATE_ACCOUNT''',
'       ,{  x01: pSegmentTable',
'          ,x02: pAgain',
'          ,x03: pRefValue',
'          ,pageItems: "#P31009_VACCT_NO,#P31009_VACCT_DESC,#P31009_VACCT_TYPE,#P31009_VGRANT_CODE,#P31009_VACCT_NO_PARENT,#P31009_VCOBOL_ROW," +',
'                      "#P31009_VSPR_ROW,#P31009_SETUP_DEFA_ACCT_DESC,#P31009_VACCT_VIEW,#P31009_VACCT_SHORT,#P31009_VIMP_ACCT,#P31009_VIMP_SPR" ',
'        }',
'       ,{',
'          success: function(pData){',
'              if (pData.confirm != undefined){',
'                  if (confirm(pData.confirm)){',
'                      vAgain = (pData.again == undefined) ? 1 : pData.again;',
'                      vRefValue = (pData.refvalue == undefined) ? "" : pData.refvalue;',
'                      createAccount(pSegmentTable, vAgain, vRefValue);',
'                  }',
'              }',
'              else if (pData.message != undefined){',
'                  showError(pData.message);',
'              }',
'              else{',
'                  var vRecord, vCurrentId',
'                  for (x in pData.tSegment) {',
'                      apex.message.showPageSuccess("Action Processed.");',
'                      vCurrentId = pData.tSegment[x].segmentNo;',
'                      vRecord    = model.getRecord(vCurrentId)',
'                      model.setValue( vRecord, "VSEGMENT_CODE", pData.tSegment[x].segmentCode );',
'                      model.setValue( vRecord, "VSEGMENT_DESC", pData.tSegment[x].segmentDesc );',
'                  }',
'                  validateSegments(); ',
'              }',
'         }',
'       }',
'    );            ',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895547322070693623)
,p_name=>'onChangeParentAcct'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31009_VACCT_NO_PARENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895547869644693623)
,p_event_id=>wwv_flow_imp.id(53895547322070693623)
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
'          ,x02: apex.item(''P31009_VACCT_NO_PARENT'').getValue()  ',
'        }',
'       ,{',
'          success: function(pData){',
'              if (pData.open_lov == "Y"){',
'                  openLovParentAcct(31007, ''btLovParentAcct'');',
'                  showError(''Invalid account '' + apex.item(''P31009_VACCT_NO_PARENT'').getValue());',
'                  apex.item(''P31009_VACCT_NO_PARENT'').setValue("","",true);',
'                  apex.item(''P31009_VACCT_NO_PARENT_DESC'').setValue("","",true);',
'              }',
'              else',
'              {',
'                  gSkipOnChange = 1;',
'                  apex.item(''P31009_VACCT_NO_PARENT'').setValue( pData.ParentNo );',
'                  apex.item(''P31009_VACCT_NO_PARENT_DESC'').setValue( pData.ParentDesc );              ',
'              }    ',
'         }',
'       }',
'    );',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895548174652693623)
,p_name=>'onChangeGrantCode'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31009_VGRANT_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895548755024693625)
,p_event_id=>wwv_flow_imp.id(53895548174652693623)
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
'        //''VALIDATE_GRANT_CODE''',
'        ''GET_GRANT''',
'       ,{  x01: ""',
'          ,x02: apex.item(''P31009_VGRANT_CODE'').getValue()  ',
'        }',
'       ,{',
'          success: function(pData){',
'              if (pData.open_lov == "Y"){',
'                  openLovGrant(34022, ''btLovGrant'');',
'              }',
'              else',
'              {',
'                  gSkipOnChange = 1;',
'                  apex.item(''P31009_VGRANT_CODE'').setValue( pData.GrantCode );            ',
'              }    ',
'         }',
'       }',
'    );',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895549137438693625)
,p_name=>'onChangeImpAcct'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31009_VIMP_ACCT'
,p_condition_element=>'P31009_VIMP_ACCT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895549656007693625)
,p_event_id=>wwv_flow_imp.id(53895549137438693625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31009_VCOBOL_FUND,P31009_VCOBOL_DEPT,P31009_VCOBOL_ITEM,P31009_VCOBOL_PROJ,P31009_VCOBOL_LOC'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53895550020863693625)
,p_name=>'onChangeImpSpr'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31009_VIMP_SPR'
,p_condition_element=>'P31009_VIMP_SPR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53895550564713693626)
,p_event_id=>wwv_flow_imp.id(53895550020863693625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31009_VSPR1,P31009_VSPR2,P31009_VSPR3,P31009_VSPR4,P31009_VSPR5,P31009_VSPR6,P31009_VSPR7'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895534124487693611)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize Muni'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  KVS0000.init_muni(:P0_USER, :P0_MUNI);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895533733070693611)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize Page'
,p_process_sql_clob=>'apex31009.on_load_page;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895521490433693598)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(54397371991656323802)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Seg. Search - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895534559847693612)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_ACCT_INFO'
,p_process_sql_clob=>'APEX31009.ajax_get_acct_info;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895533354241693611)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_SEGMENT'
,p_process_sql_clob=>'APEX31009.ajax_get_segment;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895536882363693614)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_SEGMENT_BY_CODE'
,p_process_sql_clob=>'APEX31009.ajax_get_segment_by_code; '
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895534949601693612)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_URL_PARENT_ACCT_LOV'
,p_process_sql_clob=>'APEX31009.ajax_get_url_parent_acct_lov;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895535365873693612)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_PARENT_ACCT'
,p_process_sql_clob=>'APEX31009.ajax_get_parent_acct_info;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895535740348693613)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_NEXT_CONTROL'
,p_process_sql_clob=>'APEX31009.ajax_get_next_control;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895536111220693613)
,p_process_sequence=>70
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_GRANT'
,p_process_sql_clob=>'APEX31009.ajax_get_grant_info;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895536567050693614)
,p_process_sequence=>80
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CREATE_ACCOUNT'
,p_process_sql_clob=>'APEX31009.ajax_fast_entry_create;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53895537294877693614)
,p_process_sequence=>90
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CREATE_CHART_TEXT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex31009.create_chart_text;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53718890169020531399)
,p_process_sequence=>100
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clickGSLov'
,p_process_sql_clob=>'apex_lov.click_gs_lov;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53718890786967531406)
,p_process_sequence=>110
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
