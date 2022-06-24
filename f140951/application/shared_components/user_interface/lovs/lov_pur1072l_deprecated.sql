prompt --application/shared_components/user_interface/lovs/lov_pur1072l_deprecated
begin
--   Manifest
--     LOV_PUR1072L (DEPRECATED)
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
 p_id=>wwv_flow_imp.id(54007721778120047328)
,p_lov_name=>'LOV_PUR1072L (DEPRECATED)'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PUR_VENDOR_ADDR'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'vendor_code = ''0000013759''',
'and muni_code = :P0_MUNI'))
,p_return_column_name=>'ITEM_NO_ADDR'
,p_display_column_name=>'ITEM_NO_ADDR'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'ITEM_NO_ADDR'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007722210147061269)
,p_query_column_name=>'ITEM_NO_ADDR'
,p_heading=>'#'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007722636129061269)
,p_query_column_name=>'DOING_BUS_AS'
,p_heading=>'DBA'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007723009584061271)
,p_query_column_name=>'ADDR1'
,p_heading=>'Address 1'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007723775392061272)
,p_query_column_name=>'CITY'
,p_heading=>'City'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007723344847061271)
,p_query_column_name=>'STATE'
,p_heading=>'State'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007724203259061272)
,p_query_column_name=>'CONTRACT_NO'
,p_heading=>'Contract No'
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007724625769061274)
,p_query_column_name=>'DIRECT_PAY'
,p_heading=>'DP'
,p_display_sequence=>70
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
