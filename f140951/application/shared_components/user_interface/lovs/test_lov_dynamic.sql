prompt --application/shared_components/user_interface/lovs/test_lov_dynamic
begin
--   Manifest
--     TEST_LOV_DYNAMIC
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
 p_id=>wwv_flow_imp.id(54007732565949720855)
,p_lov_name=>'TEST_LOV_DYNAMIC'
,p_lov_query=>'return apex31006.get_segment_query;'
,p_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SEGMENT_CODE'
,p_display_column_name=>'SEGMENT_CODE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'SEGMENT_CODE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007733185040729005)
,p_query_column_name=>'SEGMENT_CODE'
,p_heading=>'CODE'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007733606412729005)
,p_query_column_name=>'SEGMENT_DESC'
,p_heading=>'Segment Desc'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007733971502729007)
,p_query_column_name=>'ADD_BUTTON'
,p_heading=>'Add Button'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007734429195729007)
,p_query_column_name=>'ORDER1'
,p_heading=>'Order1'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/
