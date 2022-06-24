prompt --application/shared_components/user_interface/lovs/lov_pur1030l
begin
--   Manifest
--     LOV_PUR1030L
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
 p_id=>wwv_flow_imp.id(54007716062009884636)
,p_lov_name=>'LOV_PUR1030L'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BILL_TO_CODE || '' - '' || BILL_TO_NAME display_bill',
'     , BILL_TO_CODE',
'     , BILL_TO_NAME',
'     , ADDR1',
'     , CITY',
'     , CONTACT',
'  from PUR_BILL_TO',
' --where muni_code = :P0_MUNI'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'PUR_BILL_TO'
,p_return_column_name=>'BILL_TO_CODE'
,p_display_column_name=>'DISPLAY_BILL'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'BILL_TO_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010174552929743658)
,p_query_column_name=>'DISPLAY_BILL'
,p_heading=>'-'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010174981468743658)
,p_query_column_name=>'BILL_TO_CODE'
,p_heading=>'Bill To<br>Code'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010175378056743660)
,p_query_column_name=>'BILL_TO_NAME'
,p_heading=>'Name'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010175783997743660)
,p_query_column_name=>'ADDR1'
,p_heading=>'Address 1'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010176182552743660)
,p_query_column_name=>'CITY'
,p_heading=>'City'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010176606841743661)
,p_query_column_name=>'CONTACT'
,p_heading=>'Contact'
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
