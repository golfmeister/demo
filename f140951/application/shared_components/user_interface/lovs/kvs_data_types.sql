prompt --application/shared_components/user_interface/lovs/kvs_data_types
begin
--   Manifest
--     KVS_DATA_TYPES
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
 p_id=>wwv_flow_imp.id(54131577030424448440)
,p_lov_name=>'KVS_DATA_TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(54131577030424448440)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131577327826448441)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Text'
,p_lov_return_value=>'T'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131577722014448441)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Numeric'
,p_lov_return_value=>'N'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131578101061448442)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Date'
,p_lov_return_value=>'D'
);
wwv_flow_imp.component_end;
end;
/
