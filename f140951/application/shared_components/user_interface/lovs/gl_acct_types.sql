prompt --application/shared_components/user_interface/lovs/gl_acct_types
begin
--   Manifest
--     GL_ACCT_TYPES
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
 p_id=>wwv_flow_imp.id(54150600999105712634)
,p_lov_name=>'GL_ACCT_TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(54150600999105712634)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54150601367086712635)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Asset'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54150601749510712637)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Liability'
,p_lov_return_value=>'L'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54150602082967712637)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Fund Balance'
,p_lov_return_value=>'F'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54150602480531712637)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Revenue'
,p_lov_return_value=>'R'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54150602938314712638)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Expense'
,p_lov_return_value=>'E'
);
wwv_flow_imp.component_end;
end;
/
