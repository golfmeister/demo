prompt --application/shared_components/user_interface/lovs/pur_vendor_addrs_vendor2
begin
--   Manifest
--     PUR_VENDOR_ADDRS_VENDOR2
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
 p_id=>wwv_flow_imp.id(53998031253997313417)
,p_lov_name=>'PUR_VENDOR_ADDRS_VENDOR2'
,p_lov_query=>'RETURN apex41008.coll_query(''LOV_PVA'');'
,p_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ITEM_NO_ADDR'
,p_display_column_name=>'ITEM_NO_ADDR'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'ADDRESS'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(53998031615225313419)
,p_query_column_name=>'ITEM_NO_ADDR'
,p_heading=>'#'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(53998032041354313419)
,p_query_column_name=>'ADDRESS'
,p_heading=>'Address'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(53998032444210313420)
,p_query_column_name=>'DOING_BUS_AS'
,p_heading=>'Doing Bus As'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(53998032849690313420)
,p_query_column_name=>'CONTRACT_NO'
,p_heading=>'Contract No'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(53998033235278313420)
,p_query_column_name=>'DIRECT_PAY'
,p_heading=>'Direct Pay'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
