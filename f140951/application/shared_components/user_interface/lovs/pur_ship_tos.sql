prompt --application/shared_components/user_interface/lovs/pur_ship_tos
begin
--   Manifest
--     PUR_SHIP_TOS
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
 p_id=>wwv_flow_imp.id(54132117824843893929)
,p_lov_name=>'PUR_SHIP_TOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ship_to_code d,',
'       ship_to_name r',
'  from pur_ship_to',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
