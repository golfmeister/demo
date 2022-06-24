prompt --application/shared_components/user_interface/lovs/lov_gl1010y2
begin
--   Manifest
--     LOV_GL1010Y2
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
 p_id=>wwv_flow_imp.id(54007651578497336152)
,p_lov_name=>'LOV_GL1010Y2'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GL_FISCAL_YEAR_2'
,p_return_column_name=>'YEAR'
,p_display_column_name=>'YEAR'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'YEAR'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007651958447341280)
,p_query_column_name=>'YEAR'
,p_heading=>'Year'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007652389146341280)
,p_query_column_name=>'PERIOD_01_FROM'
,p_heading=>'From'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007652797217341282)
,p_query_column_name=>'PERIOD_13_TO'
,p_heading=>'To'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
