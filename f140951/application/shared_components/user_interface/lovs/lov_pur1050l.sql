prompt --application/shared_components/user_interface/lovs/lov_pur1050l
begin
--   Manifest
--     LOV_PUR1050L
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
 p_id=>wwv_flow_imp.id(54007720673913951939)
,p_lov_name=>'LOV_PUR1050L'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CODE_1099 || '' - '' || DESC_1099 display_1099',
'     , CODE_1099',
'     , DESC_1099',
'  from PUR_1099_CODE'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'PUR_1099_CODE'
,p_return_column_name=>'CODE_1099'
,p_display_column_name=>'DISPLAY_1099'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESC_1099'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010201546580852582)
,p_query_column_name=>'DISPLAY_1099'
,p_heading=>'-'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010201950205852582)
,p_query_column_name=>'CODE_1099'
,p_heading=>'1099 Code'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010202403593852582)
,p_query_column_name=>'DESC_1099'
,p_heading=>'Description'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
