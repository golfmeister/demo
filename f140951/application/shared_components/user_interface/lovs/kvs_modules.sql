prompt --application/shared_components/user_interface/lovs/kvs_modules
begin
--   Manifest
--     KVS_MODULES
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
 p_id=>wwv_flow_imp.id(54150870331741420704)
,p_lov_name=>'KVS_MODULES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(module_desc) module_desc,',
'       module_no',
'  from kvs_module',
'  WHERE internal_use = ''N''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'MODULE_NO'
,p_display_column_name=>'MODULE_DESC'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
