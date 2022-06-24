prompt --application/shared_components/logic/application_processes/get_popup_item_list
begin
--   Manifest
--     APPLICATION PROCESS: GET_POPUP_ITEM_LIST
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
 p_id=>wwv_flow_imp.id(54038107242370947928)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_POPUP_ITEM_LIST'
,p_process_sql_clob=>'KVS_BASELINE.get_popup_item_list;'
,p_process_clob_language=>'PLSQL'
,p_required_patch=>wwv_flow_imp.id(54038106894165943563)
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_imp.component_end;
end;
/
