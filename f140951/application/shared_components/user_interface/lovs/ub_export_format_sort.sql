prompt --application/shared_components/user_interface/lovs/ub_export_format_sort
begin
--   Manifest
--     UB_EXPORT_FORMAT_SORT
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
 p_id=>wwv_flow_imp.id(54064191286570248673)
,p_lov_name=>'UB_EXPORT_FORMAT_SORT'
,p_lov_query=>'.'||wwv_flow_imp.id(54064191286570248673)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54064191636533248683)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Account'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54064192796477263411)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Book/Account/Meter'
,p_lov_return_value=>'N'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54064192473909263411)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Book/Page'
,p_lov_return_value=>'B'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54064193243042265897)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Zip/Account'
,p_lov_return_value=>'Z'
);
wwv_flow_imp.component_end;
end;
/
