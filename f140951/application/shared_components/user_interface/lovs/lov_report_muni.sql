prompt --application/shared_components/user_interface/lovs/lov_report_muni
begin
--   Manifest
--     LOV_REPORT_MUNI
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
 p_id=>wwv_flow_imp.id(54011331940182215169)
,p_lov_name=>'LOV_REPORT_MUNI'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT muni_code as col_display, muni_code as col_return, rownum as order_seq ',
'  FROM kvs_user_muni',
'  WHERE user_id = :APP_USER',
'UNION ALL',
'  SELECT ''All'' as col_display, ''All'' as col_return, 100 AS order_seq ',
'  FROM DUAL'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COL_RETURN'
,p_display_column_name=>'COL_DISPLAY'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'ORDER_SEQ'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
