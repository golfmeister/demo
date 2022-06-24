prompt --application/shared_components/user_interface/lovs/lov_pur1080l_ap
begin
--   Manifest
--     LOV_PUR1080L_AP
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
 p_id=>wwv_flow_imp.id(54044037125605411625)
,p_lov_name=>'LOV_PUR1080L_AP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VENDOR_TYPE || '' - '' || VENDOR_TYPE_DESC display_vendor_type',
'     , VENDOR_TYPE',
'     , VENDOR_TYPE_DESC',
'  from PUR_VENDOR_TYPE',
' --where muni_code = :P0_MUNI'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'PUR_VENDOR_TYPE'
,p_return_column_name=>'VENDOR_TYPE'
,p_display_column_name=>'DISPLAY_VENDOR_TYPE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'VENDOR_TYPE_DESC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54044037421395411611)
,p_query_column_name=>'DISPLAY_VENDOR_TYPE'
,p_heading=>'-'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54044037796904411610)
,p_query_column_name=>'VENDOR_TYPE'
,p_heading=>'Vendor Type'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54044038227642411608)
,p_query_column_name=>'VENDOR_TYPE_DESC'
,p_heading=>'Description'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
