prompt --application/shared_components/user_interface/lovs/kvs_module_types
begin
--   Manifest
--     KVS_MODULE_TYPES
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
 p_id=>wwv_flow_imp.id(53711723529086175528)
,p_lov_name=>'KVS_MODULE_TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(53711723529086175528)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(53711723873582175529)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Actions'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(53711724233262175530)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Processes'
,p_lov_return_value=>'P'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(53711724611345175530)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Reports'
,p_lov_return_value=>'R'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(53711725070004175531)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Setups'
,p_lov_return_value=>'S'
);
wwv_flow_imp.component_end;
end;
/
