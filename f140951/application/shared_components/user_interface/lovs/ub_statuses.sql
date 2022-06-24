prompt --application/shared_components/user_interface/lovs/ub_statuses
begin
--   Manifest
--     UB_STATUSES
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
 p_id=>wwv_flow_imp.id(54165002137849031634)
,p_lov_name=>'UB_STATUSES'
,p_lov_query=>'.'||wwv_flow_imp.id(54165002137849031634)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54165002530620031639)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Active'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54165002850191031643)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Inactive'
,p_lov_return_value=>'I'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54165003319965031644)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Closed - Calculate charges'
,p_lov_return_value=>'CC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54165003637589031645)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed - Do NOT calculate charges'
,p_lov_return_value=>'CX'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54165004057737031646)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'No bill processing'
,p_lov_return_value=>'NB'
);
wwv_flow_imp.component_end;
end;
/
