prompt --application/shared_components/logic/application_computations/g_jobcount
begin
--   Manifest
--     APPLICATION COMPUTATION: G_JOBCOUNT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(53999162222452968213)
,p_computation_sequence=>10
,p_computation_item=>'G_JOBCOUNT'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'1'
);
wwv_flow_imp.component_end;
end;
/
