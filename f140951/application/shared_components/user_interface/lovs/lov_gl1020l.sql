prompt --application/shared_components/user_interface/lovs/lov_gl1020l
begin
--   Manifest
--     LOV_GL1020L
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
 p_id=>wwv_flow_imp.id(53879111813454397996)
,p_lov_name=>'LOV_GL1020L'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select grant_code ||'' - ''||grant_desc display_grant_code,',
'       grant_code,',
'       grant_desc',
'  from gl_grant',
'WHERE muni_code = :P0_MUNI'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'GRANT_CODE'
,p_display_column_name=>'DISPLAY_GRANT_CODE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'GRANT_CODE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(53879112154714397997)
,p_query_column_name=>'GRANT_CODE'
,p_heading=>'Grant'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(53879112881461397997)
,p_query_column_name=>'DISPLAY_GRANT_CODE'
,p_heading=>'Display Grant Code'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(53879112535658397997)
,p_query_column_name=>'GRANT_DESC'
,p_heading=>'Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
