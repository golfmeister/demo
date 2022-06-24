prompt --application/shared_components/user_interface/lovs/lov_pur1110l
begin
--   Manifest
--     LOV_PUR1110L
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
 p_id=>wwv_flow_imp.id(54007726002938101042)
,p_lov_name=>'LOV_PUR1110L'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CHECK_ID || '' - '' || NAME display_check_id',
'     , CHECK_ID',
'     , NAME',
'  from PUR_AP_BANK_ACCT',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'PUR_AP_BANK_ACCT'
,p_return_column_name=>'CHECK_ID'
,p_display_column_name=>'DISPLAY_CHECK_ID'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010316326570268789)
,p_query_column_name=>'DISPLAY_CHECK_ID'
,p_heading=>'-'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010316657283268791)
,p_query_column_name=>'CHECK_ID'
,p_heading=>'Check ID'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010317113844268791)
,p_query_column_name=>'NAME'
,p_heading=>'Description'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
