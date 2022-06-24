prompt --application/shared_components/user_interface/lovs/pur_state_list
begin
--   Manifest
--     PUR_STATE_LIST
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
 p_id=>wwv_flow_imp.id(54001747036799491854)
,p_lov_name=>'PUR_STATE_LIST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STATE',
'      ,STATE_NAME',
'  FROM KVS_STATE',
' ORDER BY ITEM_NO',
'      ,STATE'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'STATE'
,p_display_column_name=>'STATE_NAME'
);
wwv_flow_imp.component_end;
end;
/
