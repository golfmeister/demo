prompt --application/shared_components/user_interface/lovs/kvs_font_name
begin
--   Manifest
--     KVS_FONT_NAME
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
 p_id=>wwv_flow_imp.id(54001703033136206974)
,p_lov_name=>'KVS_FONT_NAME'
,p_lov_query=>'.'||wwv_flow_imp.id(54001703033136206974)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54001703270526206974)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Arial'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54001703739219206976)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Times'
,p_lov_return_value=>'T'
);
wwv_flow_imp.component_end;
end;
/
