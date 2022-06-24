prompt --application/shared_components/user_interface/lovs/lov_gl1051l
begin
--   Manifest
--     LOV_GL1051L
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
 p_id=>wwv_flow_imp.id(54007659095609795849)
,p_lov_name=>'LOV_GL1051L'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONTROL_ACCT || '' - '' || ACCT_TYPE display_acct',
'     , CONTROL_ACCT',
'     , ACCT_TYPE',
'  from GL_ACCT_CHART_4',
'  where acct_type in (''A'',''L'',''F'')',
'  order by CONTROL_ACCT,ACCT_TYPE'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'GL_ACCT_CHART_4'
,p_return_column_name=>'CONTROL_ACCT'
,p_display_column_name=>'CONTROL_ACCT'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54009997282131249566)
,p_query_column_name=>'DISPLAY_ACCT'
,p_heading=>'-'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54009996839110249564)
,p_query_column_name=>'CONTROL_ACCT'
,p_heading=>'Control Acct'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54009997679289249566)
,p_query_column_name=>'ACCT_TYPE'
,p_heading=>'Type'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
