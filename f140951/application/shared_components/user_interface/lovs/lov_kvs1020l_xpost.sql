prompt --application/shared_components/user_interface/lovs/lov_kvs1020l_xpost
begin
--   Manifest
--     LOV_KVS1020L_XPOST
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
 p_id=>wwv_flow_imp.id(53879120019240453600)
,p_lov_name=>'LOV_KVS1020L_XPOST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT muni_code||'' - ''||muni_name display_muni_code, muni_code, muni_name',
'FROM kvs_muni',
'WHERE muni_code <> :P0_MUNI',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'KVS_MUNI'
,p_return_column_name=>'MUNI_CODE'
,p_display_column_name=>'DISPLAY_MUNI_CODE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_oracle_text_column_name=>'MUNI_CODE'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(53879120431215471480)
,p_query_column_name=>'MUNI_CODE'
,p_heading=>'Muni Code'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(53879121230205471481)
,p_query_column_name=>'DISPLAY_MUNI_CODE'
,p_heading=>'Display Muni Code'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(53879120840119471481)
,p_query_column_name=>'MUNI_NAME'
,p_heading=>'Muni Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
