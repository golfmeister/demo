prompt --application/shared_components/user_interface/lovs/lov_gl1080l
begin
--   Manifest
--     LOV_GL1080L
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
 p_id=>wwv_flow_imp.id(54007712702128688953)
,p_lov_name=>'LOV_GL1080L'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select group_code ||'' - ''||group_desc as display_val',
'     , group_code',
'     , group_desc',
'from GL_ALT_GROUP',
'where muni_code = :P0_MUNI'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'GL_ALT_GROUP'
,p_return_column_name=>'GROUP_CODE'
,p_display_column_name=>'DISPLAY_VAL'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'GROUP_DESC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54009937153207484447)
,p_query_column_name=>'DISPLAY_VAL'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54009813100842312825)
,p_query_column_name=>'GROUP_CODE'
,p_heading=>'Table Code'
,p_display_sequence=>15
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54009812730251312825)
,p_query_column_name=>'GROUP_DESC'
,p_heading=>'Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
