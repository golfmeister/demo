prompt --application/pages/page_41007
begin
--   Manifest
--     PAGE: 41007
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
 p_id=>41007
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'List of Valid Vendor Addresses'
,p_alias=>'LIST-OF-VALID-VENDOR-ADDRESSES'
,p_page_mode=>'MODAL'
,p_step_title=>'List of Valid Vendor Addresses'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function selectRow(pReturnValue){',
'  apex.item("P41007_RETURN_VALUE").setValue(pReturnValue);',
'  apex.navigation.dialog.close(true,[''P41007_VENDOR_CODE'',''P41007_RETURN_VALUE'']);',
'    ',
'}   '))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'th#irColDba,',
'td[headers="irColDba"] {',
'  width: 300px;',
'}'))
,p_step_template=>wwv_flow_imp.id(54128958610964301135)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'82%'
,p_dialog_attributes=>'resizable:true, draggable:true, close:function(){apex.event.trigger(document,''RefreshRegions'')}'
,p_dialog_chained=>'N'
,p_page_component_map=>'18'
,p_last_updated_by=>'DCHING'
,p_last_upd_yyyymmddhh24miss=>'20210609155428'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54008136646548673353)
,p_plug_name=>'List of Valid Vendor Addresses'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128972614439301148)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return apex41007.Get_apex41007_query  ;    ',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'List of Valid Vendor Addresses'
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
 p_id=>wwv_flow_imp.id(54008136756729673354)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'HTML:CSV'
,p_enable_mail_download=>'N'
,p_owner=>'AMAKHOUKH'
,p_internal_uid=>11857720212895422
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008387875098572233)
,p_db_column_name=>'ROW_ID'
,p_display_order=>10
,p_column_identifier=>'O'
,p_column_label=>'Row Id'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008387991217572234)
,p_db_column_name=>'ITEM_NO_ADDR'
,p_display_order=>20
,p_column_identifier=>'P'
,p_column_label=>'#'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008388126223572235)
,p_db_column_name=>'DOING_BUS_AS'
,p_display_order=>30
,p_column_identifier=>'Q'
,p_column_label=>'DBA'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_static_id=>'irColDba'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008388188672572236)
,p_db_column_name=>'ADDR1'
,p_display_order=>40
,p_column_identifier=>'R'
,p_column_label=>'Address 1'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008388303998572237)
,p_db_column_name=>'CITY'
,p_display_order=>50
,p_column_identifier=>'S'
,p_column_label=>'City'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008388357902572238)
,p_db_column_name=>'STATE'
,p_display_order=>60
,p_column_identifier=>'T'
,p_column_label=>'State'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008388511265572239)
,p_db_column_name=>'CONTRACT_NO'
,p_display_order=>70
,p_column_identifier=>'U'
,p_column_label=>'Contract No'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008388592500572240)
,p_db_column_name=>'DIRECT_PAY'
,p_display_order=>80
,p_column_identifier=>'V'
,p_column_label=>'DP'
,p_column_html_expression=>'<span title="Direct Pay">#DIRECT_PAY#</span>'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54008390617419572260)
,p_db_column_name=>'ADD_BUTTON'
,p_display_order=>90
,p_column_identifier=>'W'
,p_column_label=>'Add'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button class="t-Button t-Button--icon js-ignoreChange t-Button--iconRight t-Button--hot t-Button--small" type="button"; ',
'        onclick="selectRow(''#ITEM_NO_ADDR#'');">',
'    <span class="t-Icon t-Icon--left fa fa-plus" aria-hidden="true"></span>',
'    <span class="t-Button-label">Select</span>',
'    <span class="t-Icon t-Icon--right fa fa-plus" aria-hidden="true"></span>',
'</button>'))
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
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(54008413424356891078)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121344'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADD_BUTTON:ITEM_NO_ADDR:DOING_BUS_AS:ADDR1:CITY:STATE:CONTRACT_NO:DIRECT_PAY:'
,p_sort_column_1=>'ITEM_NO_ADDR'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54023835853131971526)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128963575367301140)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54010982298476212285)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54023835853131971526)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54008138182294673368)
,p_name=>'P41007_RETURN_VALUE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54008136646548673353)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54008138325586673369)
,p_name=>'P41007_VENDOR_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(54008136646548673353)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54008138374970673370)
,p_name=>'P41007_ADDR_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54008136646548673353)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54014749236543603857)
,p_name=>'P41007_WHERE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54008136646548673353)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54010863708837765968)
,p_name=>'Cancel Dailog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54010982298476212285)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54010863784998765969)
,p_event_id=>wwv_flow_imp.id(54010863708837765968)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54008136359264673350)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'init_muni'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  KVS0000.init_muni(:P0_USER, :P0_MUNI);',
'END'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54008390687459572261)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close dialog'
,p_attribute_01=>'P41007_RETURN_VALUE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CLOSE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
