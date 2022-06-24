prompt --application/shared_components/user_interface/lovs/kvs_row_delimiters
begin
--   Manifest
--     KVS_ROW_DELIMITERS
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
 p_id=>wwv_flow_imp.id(54131532690043421782)
,p_lov_name=>'KVS_ROW_DELIMITERS'
,p_lov_query=>'.'||wwv_flow_imp.id(54131532690043421782)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131533029960421783)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'None'
,p_lov_return_value=>'E'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131533454852421784)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'CR'
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131533829709421784)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'NL'
,p_lov_return_value=>'N'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131534248796421785)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'CR + NL'
,p_lov_return_value=>'B'
);
wwv_flow_imp.component_end;
end;
/
