prompt --application/shared_components/user_interface/lovs/kvs_column_delimiters
begin
--   Manifest
--     KVS_COLUMN_DELIMITERS
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
 p_id=>wwv_flow_imp.id(54131531728262285526)
,p_lov_name=>'KVS_COLUMN_DELIMITERS'
,p_lov_query=>'.'||wwv_flow_imp.id(54131531728262285526)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131531994776285527)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Comma'
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131532391085285527)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Tab'
,p_lov_return_value=>'T'
);
wwv_flow_imp.component_end;
end;
/
