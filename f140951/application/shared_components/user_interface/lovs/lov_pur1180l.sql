prompt --application/shared_components/user_interface/lovs/lov_pur1180l
begin
--   Manifest
--     LOV_PUR1180L
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
 p_id=>wwv_flow_imp.id(54007729109135141703)
,p_lov_name=>'LOV_PUR1180L'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BANK_CODE || '' - '' || BANK_NAME display_bank',
'     , BANK_CODE',
'     , BANK_NAME',
'     , ROUTING_NO',
'     , ADDR1',
'     , CITY',
'     , STATE',
'     , ZIP',
'  from KVS_BANK_CODE'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'KVS_BANK_CODE'
,p_return_column_name=>'BANK_CODE'
,p_display_column_name=>'DISPLAY_BANK'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'BANK_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010320392054315467)
,p_query_column_name=>'DISPLAY_BANK'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010320654996315467)
,p_query_column_name=>'BANK_CODE'
,p_heading=>'Bank Code'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010321102263315469)
,p_query_column_name=>'BANK_NAME'
,p_heading=>'Name'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010321450613315469)
,p_query_column_name=>'ROUTING_NO'
,p_heading=>'Routing No'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010321912063315471)
,p_query_column_name=>'ADDR1'
,p_heading=>'Address 1'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010322278165315471)
,p_query_column_name=>'CITY'
,p_heading=>'City'
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010322658710315471)
,p_query_column_name=>'STATE'
,p_heading=>'State'
,p_display_sequence=>70
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010323134781315472)
,p_query_column_name=>'ZIP'
,p_heading=>'Zip Code'
,p_display_sequence=>80
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
