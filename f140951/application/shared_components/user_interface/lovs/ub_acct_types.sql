prompt --application/shared_components/user_interface/lovs/ub_acct_types
begin
--   Manifest
--     UB ACCT_TYPES
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
 p_id=>wwv_flow_imp.id(54165354936366678108)
,p_lov_name=>'UB ACCT_TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(54165354936366678108)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54165355269981678114)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Master'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54165355641492678117)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Master Meter'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54165356076074678117)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Deduct from Master'
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54165356501722678118)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Deduct from Sub Account'
,p_lov_return_value=>'3'
);
wwv_flow_imp.component_end;
end;
/
