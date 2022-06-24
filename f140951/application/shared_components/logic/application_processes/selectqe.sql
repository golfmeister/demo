prompt --application/shared_components/logic/application_processes/selectqe
begin
--   Manifest
--     APPLICATION PROCESS: selectQE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(53719064910717184637)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'selectQE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   vPage NUMBER       := APEX_APPLICATION.g_x02;',
'   vMod  VARCHAR2(20) := APEX_APPLICATION.g_x03;',
'   ',
'   function get_url return varchar2 is',
'   begin',
'      return APEX_PAGE.GET_URL (',
'         p_page  => vPage',
'       );',
'   end;',
'',
'BEGIN',
'    insert into kvs_apex_user_log(module_no,user_id,log_date)',
'       values(vMod,v(''P0_USER''),SYSDATE);',
'    apex_json.open_object;',
'    apex_json.write(''success'', ''1'');',
'    apex_json.write(''redirect'', get_url);',
'    apex_json.close_object; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_imp.component_end;
end;
/
