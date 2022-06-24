prompt --application/shared_components/user_interface/lovs/kvs_adv_abs
begin
--   Manifest
--     KVS_ADV_ABS
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
 p_id=>wwv_flow_imp.id(54132120726099893943)
,p_lov_name=>'KVS_ADV_ABS'
,p_lov_query=>'.'||wwv_flow_imp.id(54132120726099893943)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54132121162761893945)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Advisory'
,p_lov_return_value=>'ADV'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54132121531922893945)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Absolute'
,p_lov_return_value=>'ABS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54132121949570893946)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'None'
,p_lov_return_value=>'NON'
);
wwv_flow_imp.component_end;
end;
/
