prompt --application/shared_components/user_interface/lovs/gl_budget_check
begin
--   Manifest
--     GL_BUDGET_CHECK
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
 p_id=>wwv_flow_imp.id(54150861348140357845)
,p_lov_name=>'GL_BUDGET_CHECK'
,p_lov_query=>'.'||wwv_flow_imp.id(54150861348140357845)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54150861637695357846)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Advisory'
,p_lov_return_value=>'ADV'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54150861914706357846)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Absolute'
,p_lov_return_value=>'ABS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54150862324058357847)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'None'
,p_lov_return_value=>'NON'
);
wwv_flow_imp.component_end;
end;
/
