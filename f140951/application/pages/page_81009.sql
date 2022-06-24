prompt --application/pages/page_81009
begin
--   Manifest
--     PAGE: 81009
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
 p_id=>81009
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Consumers LOV'
,p_alias=>'UB1130LOV'
,p_step_title=>'Consumers LOV'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(54164950985292605744)
,p_javascript_file_urls=>'#APP_IMAGES#js/ub1130.js'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'button.ui-button.ui-widget.ui-state-default.ui-corner-all.ui-button-icon-only.ui-dialog-titlebar-close ',
'{  ',
'  visibility: hidden !important;  ',
'} ',
'',
'.t-Report--altRowsDefault .t-Report-report tr:nth-child(odd) .t-Report-cell {',
'  background-color: #f1f6fa;',
'}',
't-Report--rowHighlight .t-Report-report tr:hover .t-Report-cell,',
'.t-Report--rowHighlight .t-Report-report tr:nth-child(odd):hover .t-Report-cell {',
'  background-color: #e1e5e9 !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
,p_last_updated_by=>'DCHING'
,p_last_upd_yyyymmddhh24miss=>'20220114152734'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54348745509209169027)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54187359395686735356)
,p_plug_name=>'Parcel ID'
,p_region_name=>'UB1130PS'
,p_parent_plug_id=>wwv_flow_imp.id(54348745509209169027)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128972614439301148)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>'RETURN apex81005.coll_query(''PSL'');'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(53991540444927377142)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'KVS_ADMIN'
,p_internal_uid=>283625773782992071
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853946822510845157)
,p_db_column_name=>'SEGMENT_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Segment Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853947213849845157)
,p_db_column_name=>'VALUE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Value'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(53992635954147571333)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1460329'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEGMENT_NAME:VALUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54348656177996867675)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_imp.id(54348745509209169027)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54348744403307169018)
,p_plug_name=>'SegmentUS'
,p_region_name=>'UB1130US'
,p_parent_plug_id=>wwv_flow_imp.id(54348745509209169027)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128972614439301148)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>'RETURN apex81005.coll_query(''USL'');'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(53991540212296377139)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'KVS_ADMIN'
,p_internal_uid=>283625541151992068
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853943774366845153)
,p_db_column_name=>'SEGMENT_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Segment Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853944237388845154)
,p_db_column_name=>'VALUE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Value'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(53992635383891571311)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1460299'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEGMENT_NAME:VALUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54348757183751169054)
,p_plug_name=>'Detail'
,p_region_name=>'IG_CH'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128972614439301148)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.rowid kvs_rowid,',
'       a.muni_code,',
'       a.account_no,',
'       a.name1 billing_name,',
'       a.location_name,',
'       a.s_name1 owner_name,',
'       col_get_loc_string(location_street_no,',
'                                    location_street_unit, ',
'                                    location_street_name, ',
'                                    location_street_direction) location,',
'       b.lov_display ub_status,',
'       a.ub_status_date,',
'       a.ub_status_user,',
'       a.district,',
'       a.parcel_id,',
'       a.location_street_no,',
'       a.location_street_unit, ',
'       a.location_street_name, ',
'       a.location_street_direction,',
'       a.segment_01,',
'       a.segment_02,',
'       a.segment_03,',
'       a.segment_04,',
'       a.segment_05,',
'       a.phone,',
'       a.phone_ext,',
'       a.cell_eve_phone,',
'       a.email,',
'       a.s_phone,',
'       a.s_phone_ext,',
'       a.s_cell_eve_phone,',
'       a.s_email,',
'       '''' link,',
'       '''' sselect',
'FROM ub_customer a, kvs_apex_lov_code b',
'WHERE a.muni_code = :P0_MUNI AND',
'      ((SELECT count(1) FROM apex_collections',
'              WHERE collection_name = ''PS'' AND ',
'                    c006 IS NOT NULL) = 0 OR',
'          (SELECT COUNT(1) FROM col_parcel c,apex_collections d',
'                    WHERE c.muni_code = a.muni_code AND',
'                          c.district = a.district AND',
'                          c.parcel_id = a.parcel_id AND',
'                          d.collection_name = ''PS'' AND',
'                          d.c006 IS NOT NULL AND',
'                          d.c006 = DECODE(d.c002,''1'',c.segment_01,''2'',c.segment_02,''3'',c.segment_03,''4'',c.segment_04,''5'',c.segment_05,c.segment_06)',
'           ) = (SELECT count(1) FROM apex_collections',
'                  WHERE collection_name = ''PS'' AND ',
'                        c006 IS NOT NULL)',
'     ) ',
'     AND     ',
'     ((SELECT count(1) FROM apex_collections',
'              WHERE collection_name = ''US'' AND ',
'                    c006 IS NOT NULL) = 0 OR',
'       (SELECT COUNT(1) FROM apex_collections d',
'                    WHERE d.collection_name = ''US'' AND',
'                          d.c006 IS NOT NULL AND',
'                          d.c006 = DECODE(d.c002,''1'',a.segment_01,''2'',a.segment_02,''3'',a.segment_03,''4'',a.segment_04,a.segment_05)',
'       ) = (SELECT count(1) FROM apex_collections',
'              WHERE collection_name = ''US'' AND ',
'                    c006 IS NOT NULL)',
'     ) AND',
'     (',
'         (:P81009_YEAR IS NULL AND :P81009_SEQ IS NULL AND :P81009_BILL_NO IS NULL) OR',
'          EXISTS(SELECT 1 FROM col_bill_hdr',
'                    WHERE muni_code = a.muni_code AND',
'                         account_no = a.account_no AND',
'                        (:P81009_YEAR IS NULL OR col_year = :P81009_YEAR) AND',
'                        (:P81009_SEQ IS NULL OR col_seq = :P81009_SEQ) AND',
'                        (:P81009_BILL_NO IS NULL OR bill_no = :P81009_BILL_NO)',
'                )',
'     ) AND',
'     b.page_no = 81005 and b.coll_name = ''STATUS'' AND b.lov_code = a.ub_status'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P81009_YEAR,P81009_SEQ,P81009_BILL_NO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(54348757506438169056)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'<b>No Data Found.</b>'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
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
,p_owner=>'KVS_ADMIN'
,p_internal_uid=>640842835293783985
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853952345560845162)
,p_db_column_name=>'ACCOUNT_NO'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Account No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853952705000845163)
,p_db_column_name=>'UB_STATUS'
,p_display_order=>30
,p_column_identifier=>'AI'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853953072018845163)
,p_db_column_name=>'KVS_ROWID'
,p_display_order=>40
,p_column_identifier=>'AK'
,p_column_label=>'RowID'
,p_column_type=>'OTHER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853953550976845164)
,p_db_column_name=>'BILLING_NAME'
,p_display_order=>50
,p_column_identifier=>'AL'
,p_column_label=>'Billing Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853953929348845164)
,p_db_column_name=>'LOCATION_NAME'
,p_display_order=>60
,p_column_identifier=>'AM'
,p_column_label=>'Location Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853954285334845164)
,p_db_column_name=>'OWNER_NAME'
,p_display_order=>70
,p_column_identifier=>'AN'
,p_column_label=>'Owner Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853954722052845165)
,p_db_column_name=>'DISTRICT'
,p_display_order=>130
,p_column_identifier=>'AT'
,p_column_label=>'District'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853955145374845165)
,p_db_column_name=>'PARCEL_ID'
,p_display_order=>140
,p_column_identifier=>'AU'
,p_column_label=>'Parcel ID'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853955493774845166)
,p_db_column_name=>'LOCATION'
,p_display_order=>150
,p_column_identifier=>'AV'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853955906897845166)
,p_db_column_name=>'SEGMENT_01'
,p_display_order=>160
,p_column_identifier=>'AW'
,p_column_label=>'Segment 01'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853956276522845166)
,p_db_column_name=>'SEGMENT_02'
,p_display_order=>170
,p_column_identifier=>'AX'
,p_column_label=>'Segment 02'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853956681492845167)
,p_db_column_name=>'SEGMENT_03'
,p_display_order=>180
,p_column_identifier=>'AY'
,p_column_label=>'Segment 03'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853957127688845167)
,p_db_column_name=>'SEGMENT_04'
,p_display_order=>190
,p_column_identifier=>'AZ'
,p_column_label=>'Segment 04'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853957494849845168)
,p_db_column_name=>'SEGMENT_05'
,p_display_order=>200
,p_column_identifier=>'BA'
,p_column_label=>'Segment 05'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853957917140845168)
,p_db_column_name=>'SSELECT'
,p_display_order=>210
,p_column_identifier=>'BC'
,p_column_label=>'&nbsp;'
,p_column_link=>'javascript:clickSingleSelect(''#KVS_ROWID#'');'
,p_column_linktext=>'Select'
,p_column_link_attr=>'data-id="&KVS_ROWID." class="select t-Button t-Button--warning t-Button--simple t-Button--stretch"'
,p_column_type=>'STRING'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P81009_LOV_SINGLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853958330011845169)
,p_db_column_name=>'MUNI_CODE'
,p_display_order=>220
,p_column_identifier=>'BD'
,p_column_label=>'Muni code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853958710140845169)
,p_db_column_name=>'LOCATION_STREET_NO'
,p_display_order=>230
,p_column_identifier=>'BE'
,p_column_label=>'Location Street No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853959101004845169)
,p_db_column_name=>'LOCATION_STREET_UNIT'
,p_display_order=>240
,p_column_identifier=>'BF'
,p_column_label=>'Location Street Unit'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853959537487845170)
,p_db_column_name=>'LOCATION_STREET_NAME'
,p_display_order=>250
,p_column_identifier=>'BG'
,p_column_label=>'Location Street Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853959881132845170)
,p_db_column_name=>'LOCATION_STREET_DIRECTION'
,p_display_order=>260
,p_column_identifier=>'BH'
,p_column_label=>'Location Street Direction'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853960309463845170)
,p_db_column_name=>'LINK'
,p_display_order=>280
,p_column_identifier=>'BJ'
,p_column_label=>'Link'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853948370098845159)
,p_db_column_name=>'UB_STATUS_DATE'
,p_display_order=>290
,p_column_identifier=>'BK'
,p_column_label=>'Ub Status Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853948750449845159)
,p_db_column_name=>'UB_STATUS_USER'
,p_display_order=>300
,p_column_identifier=>'BL'
,p_column_label=>'Ub Status User'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853949131295845159)
,p_db_column_name=>'PHONE'
,p_display_order=>310
,p_column_identifier=>'BM'
,p_column_label=>'Phone'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853949499041845160)
,p_db_column_name=>'PHONE_EXT'
,p_display_order=>320
,p_column_identifier=>'BN'
,p_column_label=>'Phone Ext'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853949915870845160)
,p_db_column_name=>'CELL_EVE_PHONE'
,p_display_order=>330
,p_column_identifier=>'BO'
,p_column_label=>'Cell Eve Phone'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853950326583845161)
,p_db_column_name=>'EMAIL'
,p_display_order=>340
,p_column_identifier=>'BP'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853950726769845161)
,p_db_column_name=>'S_PHONE'
,p_display_order=>350
,p_column_identifier=>'BQ'
,p_column_label=>'S Phone'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853951142124845161)
,p_db_column_name=>'S_PHONE_EXT'
,p_display_order=>360
,p_column_identifier=>'BR'
,p_column_label=>'S Phone Ext'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853951551592845162)
,p_db_column_name=>'S_CELL_EVE_PHONE'
,p_display_order=>370
,p_column_identifier=>'BS'
,p_column_label=>'S Cell Eve Phone'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53853951898437845162)
,p_db_column_name=>'S_EMAIL'
,p_display_order=>380
,p_column_identifier=>'BT'
,p_column_label=>'S Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(54348762421810169074)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1460460'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'BILLING_NAME:ACCOUNT_NO:UB_STATUS:LOCATION:PARCEL_ID:LOCATION_STREET_NO:LOCATION_STREET_UNIT:LOCATION_STREET_NAME:LOCATION_STREET_DIRECTION:SSELECT:'
,p_sort_column_1=>'ACCOUNT_NO'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'COL_YEAR'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'COL_SEQ'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'BILL_NO'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53853961140343845171)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54348757183751169054)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P81009_LOV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53853941145861845150)
,p_name=>'P81009_LOV'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54348745509209169027)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53853941519826845151)
,p_name=>'P81009_LOV_SINGLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54348745509209169027)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53853941950963845151)
,p_name=>'P81009_RESET'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(54348745509209169027)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53853942309481845151)
,p_name=>'P81009_OWNER_NAME_HDR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(54348745509209169027)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53853942699187845152)
,p_name=>'P81009_MULTI_LOV'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(54348745509209169027)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53853943082253845152)
,p_name=>'P81009_SELECT_SINGLE_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(54348745509209169027)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53853945353522845155)
,p_name=>'P81009_YEAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(54348656177996867675)
,p_prompt=>'Year'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53853945685520845155)
,p_name=>'P81009_SEQ'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(54348656177996867675)
,p_prompt=>'Seq'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53853946151124845156)
,p_name=>'P81009_BILL_NO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(54348656177996867675)
,p_prompt=>'Bill No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53853967651052845177)
,p_name=>'Init'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53853968114859845177)
,p_event_id=>wwv_flow_imp.id(53853967651052845177)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'hideBars();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53853966256457845176)
,p_name=>'Change - Year'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P81009_YEAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53853966717025845176)
,p_event_id=>wwv_flow_imp.id(53853966256457845176)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P81009_YEAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53853967238559845176)
,p_event_id=>wwv_flow_imp.id(53853966256457845176)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54348757183751169054)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53853968478068845177)
,p_name=>'Change - Seq'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P81009_SEQ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53853969032858845178)
,p_event_id=>wwv_flow_imp.id(53853968478068845177)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P81009_SEQ'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53853969483971845178)
,p_event_id=>wwv_flow_imp.id(53853968478068845177)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54348757183751169054)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53853963913201845174)
,p_name=>'Change - Bill No'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P81009_BILL_NO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53853964453133845174)
,p_event_id=>wwv_flow_imp.id(53853963913201845174)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P81009_BILL_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53853964895202845175)
,p_event_id=>wwv_flow_imp.id(53853963913201845174)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54348757183751169054)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53853965295432845175)
,p_name=>'Click - Cancel'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53853961140343845171)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53853965830625845175)
,p_event_id=>wwv_flow_imp.id(53853965295432845175)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.dialog.cancel(true);'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53853962272271845173)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize'
,p_process_sql_clob=>'apex81005.init(''P81009_RESET'');'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53853961970095845172)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'OnChangeCollection'
,p_process_sql_clob=>'KVS_APEX.OnChangeCollection(wwv_flow.g_x01,wwv_flow.g_x02);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53853962741854845173)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetSelected'
,p_process_sql_clob=>'htp.p(col1210.get_selected(APEX_APPLICATION.g_x01 ));'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53853963161104845173)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ChangeSeg'
,p_process_sql_clob=>'htp.p(kvs0000.change_seg);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53853963547411845174)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ClickSingleSelect'
,p_process_sql_clob=>'htp.p(apex81005.click_single_select);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53853961557982845172)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'getNewAcct'
,p_process_sql_clob=>'htp.p(apex81005.get_new_acct);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
