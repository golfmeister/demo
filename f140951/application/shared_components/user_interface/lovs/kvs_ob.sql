prompt --application/shared_components/user_interface/lovs/kvs_ob
begin
--   Manifest
--     KVS_OB
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
 p_id=>wwv_flow_imp.id(54132119343028893933)
,p_lov_name=>'KVS_OB'
,p_lov_query=>'.'||wwv_flow_imp.id(54132119343028893933)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54132119740614893934)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Batch'
,p_lov_return_value=>'B'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54132120113835893939)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Online'
,p_lov_return_value=>'O'
);
wwv_flow_imp.component_end;
end;
/
