prompt --application/shared_components/user_interface/lovs/lov_pur1071l_vendore_code
begin
--   Manifest
--     LOV_PUR1071L_VENDORE_CODE
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
 p_id=>wwv_flow_imp.id(54042439120442888772)
,p_lov_name=>'LOV_PUR1071L_VENDORE_CODE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct pv.CODE_1099 || '' - '' || p.DESC_1099 display_1099',
'     , pv.CODE_1099',
'     , p.DESC_1099',
'  from PUR_VENDOR_1099_CODE pv join PUR_1099_CODE p on pv.CODE_1099 = p.CODE_1099',
'-- where muni_code = :P0_MUNI ',
'where (v(''P''||:APP_PAGE_ID||''_MUNI_CODE_1099'') IS NOT NULL AND muni_code = v(''P''||:APP_PAGE_ID||''_MUNI_CODE_1099'') OR muni_code = :P0_MUNI)',
' AND   (v(''P''||:APP_PAGE_ID||''_VENDOR_CODE'') IS NOT NULL AND vendor_code = v(''P''||:APP_PAGE_ID||''_VENDOR_CODE'') OR v(''P''||:APP_PAGE_ID||''_VENDOR_CODE'') IS NULL)'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'CODE_1099'
,p_display_column_name=>'DISPLAY_1099'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'CODE_1099'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54042441946710928111)
,p_query_column_name=>'DISPLAY_1099'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54042442295924928111)
,p_query_column_name=>'CODE_1099'
,p_heading=>'Code'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54042442662977928113)
,p_query_column_name=>'DESC_1099'
,p_heading=>'Description'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
