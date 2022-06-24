prompt --application/shared_components/user_interface/lovs/lov_gl1052l
begin
--   Manifest
--     LOV_GL1052L
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
 p_id=>wwv_flow_imp.id(54007665641297938735)
,p_lov_name=>'LOV_GL1052L'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GL_ACCT_CHART_5'
,p_return_column_name=>'CONTROL_ACCT'
,p_display_column_name=>'CONTROL_ACCT'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'CONTROL_ACCT'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
