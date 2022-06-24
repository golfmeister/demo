prompt --application/shared_components/user_interface/lovs/lov_gl1040l
begin
--   Manifest
--     LOV_GL1040L
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
 p_id=>wwv_flow_imp.id(54041628825633506928)
,p_lov_name=>'LOV_GL1040L'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEGMENT_CODE || '' - '' || SEGMENT_DESC as display_segment',
'     , SEGMENT_CODE',
'     , SEGMENT_DESC',
'     , ACCT_TYPE',
'  from GL_SEGMENT',
'where segment_no = 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'GL_SEGMENT'
,p_return_column_name=>'SEGMENT_CODE'
,p_display_column_name=>'DISPLAY_SEGMENT'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'SEGMENT_CODE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54041629081040506938)
,p_query_column_name=>'DISPLAY_SEGMENT'
,p_heading=>'Display Segment'
,p_display_sequence=>5
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54041629498478506938)
,p_query_column_name=>'SEGMENT_CODE'
,p_heading=>'Code'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54041629856125506939)
,p_query_column_name=>'SEGMENT_DESC'
,p_heading=>'Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54041630313864506939)
,p_query_column_name=>'ACCT_TYPE'
,p_heading=>'Type'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
