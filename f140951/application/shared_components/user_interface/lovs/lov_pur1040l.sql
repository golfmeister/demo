prompt --application/shared_components/user_interface/lovs/lov_pur1040l
begin
--   Manifest
--     LOV_PUR1040L
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
 p_id=>wwv_flow_imp.id(54007718357463926010)
,p_lov_name=>'LOV_PUR1040L'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SHIP_TO_CODE || '' - '' || SHIP_TO_NAME display_ship',
'     , SHIP_TO_CODE',
'     , SHIP_TO_NAME',
'     , ADDR1',
'     , CITY',
'     , CONTACT',
'  from PUR_SHIP_TO',
' --where muni_code = :P0_MUNI'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'PUR_SHIP_TO'
,p_return_column_name=>'SHIP_TO_CODE'
,p_display_column_name=>'DISPLAY_SHIP'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'SHIP_TO_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010191252682827100)
,p_query_column_name=>'DISPLAY_SHIP'
,p_heading=>'-'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010191685199827100)
,p_query_column_name=>'SHIP_TO_CODE'
,p_heading=>'Ship To<br>Code'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010192065333827102)
,p_query_column_name=>'SHIP_TO_NAME'
,p_heading=>'Name'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010192481034827102)
,p_query_column_name=>'ADDR1'
,p_heading=>'Address 1'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010192923836827102)
,p_query_column_name=>'CITY'
,p_heading=>'City'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010193313978827103)
,p_query_column_name=>'CONTACT'
,p_heading=>'Contact'
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
