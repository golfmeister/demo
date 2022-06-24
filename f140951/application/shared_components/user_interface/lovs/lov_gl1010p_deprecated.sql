prompt --application/shared_components/user_interface/lovs/lov_gl1010p_deprecated
begin
--   Manifest
--     LOV_GL1010P (DEPRECATED)
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
 p_id=>wwv_flow_imp.id(54007649073266100583)
,p_lov_name=>'LOV_GL1010P (DEPRECATED)'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GL_OPEN_PERIOD'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'muni_code = :P0_MUNI',
'and year = v(''P''||:APP_PAGE_ID||''_YEAR'')'))
,p_return_column_name=>'PERIOD'
,p_display_column_name=>'PERIOD'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'PERIOD'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54008318722647768007)
,p_query_column_name=>'PERIOD'
,p_heading=>'Period No'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/
