prompt --application/shared_components/user_interface/lovs/kvs_wf_groups
begin
--   Manifest
--     KVS_WF_GROUPS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(54150886847441491787)
,p_lov_name=>'KVS_WF_GROUPS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select group_desc d,',
'       group_code r',
'  from kvs_workflow_group',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
