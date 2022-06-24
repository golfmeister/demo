prompt --application/pages/page_31028
begin
--   Manifest
--     PAGE: 31028
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
 p_id=>31028
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'Attachments'
,p_alias=>'ATTACHMENTS2'
,p_page_mode=>'MODAL'
,p_step_title=>'Attachments'
,p_warn_on_unsaved_changes=>'N'
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
,p_dialog_width=>'1100'
,p_page_component_map=>'03'
,p_last_updated_by=>'DCHING'
,p_last_upd_yyyymmddhh24miss=>'20211202221705'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54046726634620297088)
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
 p_id=>wwv_flow_imp.id(54059780633192831438)
,p_name=>'BA'
,p_region_name=>'P31026_BA'
,p_parent_plug_id=>wwv_flow_imp.id(54046726634620297088)
,p_template=>wwv_flow_imp.id(54128973156403301149)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>'RETURN apex31028.coll_query(''BA'');'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P31028_TRANS_NO,P31028_MUNI_CODE,P31028_YEAR,P31028_ITEM_NO'
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
 p_id=>wwv_flow_imp.id(54033304717257651655)
,p_query_column_id=>1
,p_column_alias=>'COLLECTION_NAME'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54033305078378651655)
,p_query_column_id=>2
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54033304260403651653)
,p_query_column_id=>3
,p_column_alias=>'BSELECT'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54033305534960651657)
,p_query_column_id=>4
,p_column_alias=>'IMAGE_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    vCreate VARCHAR2(1) := ''Y'';',
'    vUpdate VARCHAR2(1) := ''Y'';',
'    vDelete VARCHAR2(1) := ''Y'';',
'    CURSOR get_security IS',
'        SELECT create_allowed, update_allowed, delete_allowed',
'        FROM kvs_user_module',
'        WHERE user_id = :P0_USER AND module_no = ''GL2060AT'';',
'    vRetVal BOOLEAN := TRUE;',
'BEGIN',
'    OPEN get_security;',
'    FETCH get_security INTO vCreate, vUpdate, vDelete;',
'    IF get_security%Found THEN',
'        IF NVL(vUpdate,''N'') = ''N'' THEN',
'            vRetVal := FALSE;',
'        ELSE ',
'            vRetVal := TRUE;',
'        END IF;',
'    ELSE',
'        IF NOT kvs_apex.ac(31025,''U'') THEN',
'            vRetVal := FALSE;',
'        ELSE',
'            vRetVal := TRUE;',
'        END IF;',
'    END IF;',
'    RETURN vRetVal;',
'END;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54033305854405651657)
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
 p_id=>wwv_flow_imp.id(54033306312194651658)
,p_query_column_id=>6
,p_column_alias=>'IMAGE_SIZE'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:APEX_COLLECTIONS:BLOB001:SEQ_ID::C003:C005:::attachment::'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54033303905622651652)
,p_query_column_id=>7
,p_column_alias=>'IMG_SZ'
,p_column_display_sequence=>6
,p_column_heading=>'Image Size'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54046726782853297089)
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
 p_id=>wwv_flow_imp.id(54033302432655651636)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(54046726634620297088)
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
 p_id=>wwv_flow_imp.id(54033300454237651614)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54046726782853297089)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54033301329249651617)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(54046726782853297089)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Delete Attachments'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54033301687724651619)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(54046726782853297089)
,p_button_name=>'OK'
,p_button_static_id=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54033300863412651616)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(54046726782853297089)
,p_button_name=>'HELP'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(54128995927239301172)
,p_button_image_alt=>'Help'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:openKVSDoc();'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(54033315191045651696)
,p_branch_name=>'go to 31028'
,p_branch_action=>'f?p=&APP_ID.:31028:&SESSION.:AFTER_UPLOAD:&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(54033302432655651636)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54031733638524562338)
,p_name=>'P31028_ITEM_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54059780633192831438)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54033302810064651638)
,p_name=>'P31028_FILE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54046726634620297088)
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
 p_id=>wwv_flow_imp.id(54033303231296651646)
,p_name=>'P31028_CHANGED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54046726634620297088)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54033306721420651660)
,p_name=>'P31028_TRANS_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54059780633192831438)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54033307455542651661)
,p_name=>'P31028_MUNI_CODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(54059780633192831438)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54033307934801651661)
,p_name=>'P31028_YEAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(54059780633192831438)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54033311056328651685)
,p_name=>'onClickOk'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54033301687724651619)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54033311503037651686)
,p_event_id=>wwv_flow_imp.id(54033311056328651685)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex31028.save_image;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54033311962573651688)
,p_event_id=>wwv_flow_imp.id(54033311056328651685)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54033312410547651688)
,p_name=>'onClickDelete'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54033301329249651617)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54033312877736651689)
,p_event_id=>wwv_flow_imp.id(54033312410547651688)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'clickDelGrid(''P31026_BA'',''BA'',''Attachment'',false);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54033313285630651691)
,p_name=>'onClickCancel'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54033300454237651614)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54033313788853651692)
,p_event_id=>wwv_flow_imp.id(54033313285630651691)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process (',
'        ''VALIDATE_CHANGES''',
'       ,{',
'        }',
'       ,{',
'          success: function(pData){',
'            console.log(''pData'',pData)',
'            if (pData.change==''Y''){',
'                customConfirm( "This page is asking you to confirm that you want to leave - data you have entered may not be saved.", function( okPressed ) ',
'                {',
'                    if (okPressed){',
'                        apex.navigation.dialog.close(true)',
'                    }',
'                    else{',
'                        return;',
'                    }',
'                }, "Leave Page", "Stay on Page");',
'            }',
'            else',
'            {',
'                apex.navigation.dialog.close(true);',
'            }',
'         }',
'       }',
'    );',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54033314207961651692)
,p_name=>'setItemProps'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54033314699547651694)
,p_event_id=>wwv_flow_imp.id(54033314207961651692)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setItemProperties(''SET_ITEM_PROPS'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54033308324328651677)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'initImageCollection'
,p_process_sql_clob=>'apex31028.init_GBA;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'AFTER_UPLOAD'
,p_process_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_process_comment=>'NOT APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name => ''BA'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54033308673012651678)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPLOAD_IMAGE'
,p_process_sql_clob=>'apex31028.upload_image;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(54033302432655651636)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54033309866900651682)
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
 p_id=>wwv_flow_imp.id(54033309512044651680)
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
 p_id=>wwv_flow_imp.id(54033309111464651680)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ClickDelGrid'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   htp.p(kvs_apex.click_del_grid);',
'   apex31028.save_image;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54033310283283651682)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_ITEM_PROPS'
,p_process_sql_clob=>'apex31028.set_item_properties;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54033310664834651682)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VALIDATE_CHANGES'
,p_process_sql_clob=>'apex31028.validate_changes;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
