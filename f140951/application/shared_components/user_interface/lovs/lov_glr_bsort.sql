prompt --application/shared_components/user_interface/lovs/lov_glr_bsort
begin
--   Manifest
--     LOV_GLR_BSORT
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
 p_id=>wwv_flow_imp.id(54010589590004505939)
,p_lov_name=>'LOV_GLR_BSORT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT ''Type'' as col_display, ''Type'' as col_return, 10 AS order_seq ',
'  FROM DUAL',
'UNION ALL',
'  SELECT InitCap(segment_name) as col_display, InitCap(segment_name) as col_return, (segment_no + 10) as order_seq ',
'  FROM GL_MUNI_SEGMENT',
'UNION ALL',
'  SELECT ''Alt Sort'' as col_display, ''Alt Sort'' as col_return, 100 AS order_seq ',
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
