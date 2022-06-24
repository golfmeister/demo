prompt --application/shared_components/user_interface/lovs/lov_pur2020l
begin
--   Manifest
--     LOV_PUR2020L
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
 p_id=>wwv_flow_imp.id(54007783897714675817)
,p_lov_name=>'LOV_PUR2020L'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with',
'  vw_init_muni as',
'  (',
'    select KVS_BASELINE.get_sid from dual',
'  )',
'select REQ_NO || '' - '' || REQ_DESC display_req',
'     , REQ_NO',
'     , SEGMENT_CODE',
'     , REQ_DESC',
'     , CREATED_BY',
'     , ORDERED_BY',
'  from PUR_REQ_HDR',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'PUR_REQ_HDR'
,p_return_column_name=>'REQ_NO'
,p_display_column_name=>'DISPLAY_REQ'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'REQ_DESC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010334334492454016)
,p_query_column_name=>'DISPLAY_REQ'
,p_heading=>'-'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010334705560454016)
,p_query_column_name=>'REQ_NO'
,p_heading=>'Req No'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010335038036454017)
,p_query_column_name=>'SEGMENT_CODE'
,p_heading=>'Dept. Code'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010335518163454017)
,p_query_column_name=>'REQ_DESC'
,p_heading=>'Description'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010335904506454019)
,p_query_column_name=>'CREATED_BY'
,p_heading=>'Entered By'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010336322655454019)
,p_query_column_name=>'ORDERED_BY'
,p_heading=>'Ordered By'
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
