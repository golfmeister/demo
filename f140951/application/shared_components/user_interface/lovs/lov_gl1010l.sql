prompt --application/shared_components/user_interface/lovs/lov_gl1010l
begin
--   Manifest
--     LOV_GL1010L
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
 p_id=>wwv_flow_imp.id(54007643464455816103)
,p_lov_name=>'LOV_GL1010L'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GL_OPEN_PERIOD'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'muni_code = :P0_MUNI',
'and and year = v(''P''||:APP_PAGE_ID||''_VYEAR'')'))
,p_return_column_name=>'PERIOD'
,p_display_column_name=>'PERIOD'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'PERIOD'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54008292162284444457)
,p_query_column_name=>'PERIOD'
,p_heading=>'Period No'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54008292556911444458)
,p_query_column_name=>'MUNI_CODE'
,p_heading=>'Muni Code'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54008292943409444458)
,p_query_column_name=>'MUNI_CODE_YEAR'
,p_heading=>'Muni Code Year'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54008293430776444460)
,p_query_column_name=>'YEAR'
,p_heading=>'Year'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/
