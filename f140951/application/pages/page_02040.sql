prompt --application/pages/page_02040
begin
--   Manifest
--     PAGE: 02040
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
 p_id=>2040
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Record Audit Trail'
,p_alias=>'RECORD-AUDIT-TRAIL'
,p_page_mode=>'MODAL'
,p_step_title=>'Record Audit Trail'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'50%'
,p_dialog_chained=>'N'
,p_page_component_map=>'18'
,p_last_updated_by=>'AMAKHOUKH'
,p_last_upd_yyyymmddhh24miss=>'20201015162040'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54007683807537374966)
,p_plug_name=>'Record Audit Trail'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128963176135301139)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54007683877270374967)
,p_plug_name=>'Records'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128972614439301148)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT KAT.AUDIT_DATE_TIME',
'      ,KAT.USER_ID',
'      ,KAT.ACTION',
'      ,KAT.COLUMN_NAME',
'      ,KAT.OLD_VALUE',
'      ,KAT.NEW_VALUE',
'      ',
'FROM   KVS_AUDIT_TRAIL@kvs_app KAT',
'WHERE  KAT.TABLE_NAME    = :P2040_VTABLE_NAME',
'  AND  KAT.PRIMARY_VALUE = :P2040_VPRIMARY_VAL ',
'ORDER BY KAT.PRIMARY_VALUE',
'        ,KAT.AUDIT_DATE_TIME DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P2040_VTABLE_NAME,P2040_VPRIMARY_KEY,P2040_VPRIMARY_VAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Records'
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
 p_id=>wwv_flow_imp.id(54007684262189374971)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV'
,p_enable_mail_download=>'N'
,p_owner=>'AMAKHOUKH'
,p_internal_uid=>11405225672597039
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54007684480253374973)
,p_db_column_name=>'USER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'User Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54007684605022374974)
,p_db_column_name=>'ACTION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54007684693343374975)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Column Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54007684751460374976)
,p_db_column_name=>'OLD_VALUE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Old Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54007684933796374977)
,p_db_column_name=>'NEW_VALUE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'New Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54013596479093654956)
,p_db_column_name=>'AUDIT_DATE_TIME'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Audit Date Time'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(54012231098503886077)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'159521'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AUDIT_DATE_TIME:USER_ID:ACTION:COLUMN_NAME:OLD_VALUE:NEW_VALUE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54027870873217563000)
,p_plug_name=>'{button container}'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128963575367301140)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54012733808304455174)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54027870873217563000)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54007684035309374968)
,p_name=>'P2040_VTABLE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54007683807537374966)
,p_prompt=>'Table Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54007684039981374969)
,p_name=>'P2040_VPRIMARY_KEY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(54007683807537374966)
,p_prompt=>'Primary Key'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54007684184070374970)
,p_name=>'P2040_VPRIMARY_VAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54007683807537374966)
,p_prompt=>'Primary Value'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53999616625756321155)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54012269191157623258)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'getPkInformation'
,p_process_sql_clob=>'apex2040.Get_Table_PK;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
