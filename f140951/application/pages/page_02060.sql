prompt --application/pages/page_02060
begin
--   Manifest
--     PAGE: 02060
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
 p_id=>2060
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Attachments'
,p_alias=>'ATTACHMENTS3'
,p_page_mode=>'MODAL'
,p_step_title=>'Attachments'
,p_welcome_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'<!--',
'',
'function f_OnChange(cb){',
'var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=OnChangeCollection'',$v(''pFlowStepId''));',
'get.addParam(''x01'',cb.id);',
'get.addParam(''x02'',cb.value);',
'var gReturn = get.get();',
'get = null;',
'}',
'',
'function f_ClickCheckBox(cb){',
'var get = new htmldb_Get(null,&APP_ID.,''APPLICATION_PROCESS=OnChangeCollection'',&APP_PAGE_ID.);',
'get.addParam(''x01'',cb.id);',
'get.addParam(''x02'',cb.checked ? ''Y'' : ''N'');',
'var gReturn = get.get();',
'get = null;',
'}',
'//-->',
'</script>'))
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(54165645331854839162)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function customConfirm( pMessage, pCallback, pOkLabel, pCancelLabel ){',
'    var l_original_messages = {"APEX.DIALOG.OK":     apex.lang.getMessage("APEX.DIALOG.OK"),',
'                               "APEX.DIALOG.CANCEL": apex.lang.getMessage("APEX.DIALOG.CANCEL")};',
'',
'    //change the button labels messages',
'    apex.lang.addMessages({"APEX.DIALOG.OK":     pOkLabel});',
'    apex.lang.addMessages({"APEX.DIALOG.CANCEL": pCancelLabel});',
'',
'    //show the confirm dialog',
'    apex.message.confirm(pMessage, pCallback);',
'    ',
'    //the timeout is required since APEX 19.2 due to a change in the apex.message.confirm',
'    setTimeout(function () {',
'    //changes the button labels messages back to their original values',
'    apex.lang.addMessages({"APEX.DIALOG.OK":     l_original_messages["APEX.DIALOG.OK"]});',
'    apex.lang.addMessages({"APEX.DIALOG.CANCEL": l_original_messages["APEX.DIALOG.CANCEL"]});',
'    }, 0);',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'800'
,p_dialog_chained=>'N'
,p_page_component_map=>'03'
,p_last_updated_by=>'DCHING'
,p_last_upd_yyyymmddhh24miss=>'20211202221705'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54059829464512123221)
,p_plug_name=>'Attachments'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(54072883463084657571)
,p_name=>'Attachments'
,p_region_name=>'P31016_JI'
,p_parent_plug_id=>wwv_flow_imp.id(54059829464512123221)
,p_template=>wwv_flow_imp.id(54128973156403301149)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>'RETURN apex2060.coll_query; '
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2060_COLLECTION_NAME,P2060_MUNI_CODE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(54128983178100301159)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b>No Data Found.</b>'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54046405561734477786)
,p_query_column_id=>1
,p_column_alias=>'COLLECTION_NAME'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54046405961213477788)
,p_query_column_id=>2
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54046406412873477788)
,p_query_column_id=>3
,p_column_alias=>'BSELECT'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54046406757250477789)
,p_query_column_id=>4
,p_column_alias=>'IMAGE_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Download'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54046407166669477789)
,p_query_column_id=>5
,p_column_alias=>'IMAGE_TYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Image Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54046404773250477778)
,p_query_column_id=>6
,p_column_alias=>'IMAGE_SIZE'
,p_column_display_sequence=>6
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:APEX_COLLECTIONS:BLOB001:SEQ_ID::C003:C005:::attachment::'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54045972825140433775)
,p_query_column_id=>7
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'File Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54059829612745123222)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128963575367301140)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54046403263359477753)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(54059829464512123221)
,p_button_name=>'UPLOAD'
,p_button_static_id=>'UPLOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Upload Attachment'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54046409490138477794)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54059829612745123222)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54045973454149433782)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(54059829612745123222)
,p_button_name=>'OK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(54046418028636477855)
,p_branch_name=>'go to 2060'
,p_branch_action=>'f?p=&APP_ID.:2060:&SESSION.:AFTER_UPLOAD:&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(54046403263359477753)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54045972731146433774)
,p_name=>'P2060_COLLECTION_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(54072883463084657571)
,p_item_default=>'VCHTEMP'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54045973265037433780)
,p_name=>'P2060_PARAM1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(54072883463084657571)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54045973358550433781)
,p_name=>'P2060_PARENT_PAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(54072883463084657571)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54046403729915477764)
,p_name=>'P2060_FILE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54059829464512123221)
,p_prompt=>'File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_field_template=>wwv_flow_imp.id(54128995403359301172)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54046404131013477769)
,p_name=>'P2060_CHANGED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54059829464512123221)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54046408422615477792)
,p_name=>'P2060_MUNI_CODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(54072883463084657571)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54045973016295433777)
,p_name=>'Cancel Dailog'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54046409490138477794)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54045973049819433778)
,p_event_id=>wwv_flow_imp.id(54045973016295433777)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54046431231084867543)
,p_name=>'onClickOk'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54045973454149433782)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54046431302223867544)
,p_event_id=>wwv_flow_imp.id(54046431231084867543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process (',
'  ''UPDATE_COLLECTION''',
'    ,{              ',
'     }',
'    ,{ dataType: ''text''',
'      ,async: true',
'      ,success: function(pData){',
'         apex.submit({ request:''OK'',showWait:"true" });',
'    }',
'  }',
'); '))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54046411354257477835)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPLOAD_IMAGE'
,p_process_sql_clob=>'apex2060.upload_image;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(54046403263359477753)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54046430293873867534)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(54045973454149433782)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54046412564095477836)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
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
 p_id=>wwv_flow_imp.id(54046412202217477836)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'OnChangeCollection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   KVS_APEX.OnChangeCollection(wwv_flow.g_x01,wwv_flow.g_x02);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54046431367684867545)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_COLLECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vColl   VARCHAR2(10) := v(''P2060_COLLECTION_NAME'');',
'BEGIN',
' FOR r IN (SELECT *',
'           FROM  apex_collections',
'           WHERE collection_name = vColl ',
'           )',
'LOOP',
'  APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'       p_collection_name => vColl,',
'       p_seq => r.seq_id,',
'       p_attr_number => ''8'',',
'       p_attr_value => ''N'');',
' END LOOP;     ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
