prompt --application/pages/page_02050
begin
--   Manifest
--     PAGE: 02050
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
 p_id=>2050
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Item Property'
,p_alias=>'ITEM-PROPERTY'
,p_page_mode=>'MODAL'
,p_step_title=>'Item Property'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_page_component_map=>'17'
,p_last_updated_by=>'DCHING'
,p_last_upd_yyyymmddhh24miss=>'20211202221705'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54007682184826374950)
,p_plug_name=>'Item Property'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128963176135301139)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54011417643380885763)
,p_plug_name=>'View Audit Trail'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54007683398997374962)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54011417643380885763)
,p_button_name=>'RECORD'
,p_button_static_id=>'RECORD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Record'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:2040:&SESSION.::&DEBUG.::P2040_VTABLE_NAME,P2040_VPRIMARY_KEY,P2040_VPRIMARY_VAL:&P2050_VTABLE_NAME.,&P2050_VTABLE_PK.,&P2050_VTABLE_PK_VAL.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54007683502610374963)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(54011417643380885763)
,p_button_name=>'COLUMN'
,p_button_static_id=>'COLUMN'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Column'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'#'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54007683585301374964)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(54011417643380885763)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Deleted'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'#'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54007683643927374965)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(54011417643380885763)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54007682291799374951)
,p_name=>'P2050_VITEM_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_prompt=>'Item Property for'
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
 p_id=>wwv_flow_imp.id(54007682349763374952)
,p_name=>'P2050_VTABLE_OWNER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_prompt=>'Table Owner'
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
 p_id=>wwv_flow_imp.id(54007682490845374953)
,p_name=>'P2050_VTABLE_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
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
 p_id=>wwv_flow_imp.id(54007682619839374954)
,p_name=>'P2050_VTABLE_INFO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_prompt=>'Table Info'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54007682647150374955)
,p_name=>'P2050_VCOLUMN_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_prompt=>'Column Name'
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
 p_id=>wwv_flow_imp.id(54007682811211374956)
,p_name=>'P2050_VCOLUMN_INFO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_prompt=>'Column Info'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54007682916058374957)
,p_name=>'P2050_VCOLUMN_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_prompt=>'Column Type'
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
 p_id=>wwv_flow_imp.id(54007683023832374958)
,p_name=>'P2050_VOPTIONAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_prompt=>'Optional'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(54007683036968374959)
,p_name=>'P2050_VCOLUMN_LENGTH'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_prompt=>'Column Length'
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
 p_id=>wwv_flow_imp.id(54007683162810374960)
,p_name=>'P2050_VPRECISION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_prompt=>'Precision'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(54007685025841374978)
,p_name=>'P2050_VBLOCK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54007685057961374979)
,p_name=>'P2050_VCOL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54007685139462374980)
,p_name=>'P2050_VTABLE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54007685240868374981)
,p_name=>'P2050_SETUP_SID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54007685372178374982)
,p_name=>'P2050_VTABLE_PK'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54007843337784953433)
,p_name=>'P2050_VTABLE_PK_VAL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54011417604673885762)
,p_name=>'P2050_VPROMPT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54012269038936623257)
,p_name=>'P2050_ORIGIN_PAGE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54014747636176603840)
,p_name=>'P2050_DISABLE_BUTTONS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(54007682184826374950)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54027755450496945341)
,p_name=>'setItemProps'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54027755600677945342)
,p_event_id=>wwv_flow_imp.id(54027755450496945341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setItemProperties(''SET_ITEM_PROPS'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54007848209690953481)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize Muni'
,p_process_sql_clob=>' KVS0000.init_muni(:P0_USER, :P0_MUNI);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54007848247893953482)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize Page'
,p_process_sql_clob=>'apex2050.on_load_page;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54007683292607374961)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54014747642757603841)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_ITEM_PROPS'
,p_process_sql_clob=>'apex2050.set_item_property;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
