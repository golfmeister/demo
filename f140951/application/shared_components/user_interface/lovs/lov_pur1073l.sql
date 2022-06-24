prompt --application/shared_components/user_interface/lovs/lov_pur1073l
begin
--   Manifest
--     LOV_PUR1073L
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
 p_id=>wwv_flow_imp.id(54007863980591686788)
,p_lov_name=>'LOV_PUR1073L'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select year',
'     , ytd_amt',
'     , ytd_with_amt',
'     , with_amt_refunded',
'     , nvl(ytd_with_amt - with_amt_refunded,0) as vremain_amt',
'  from pur_vendor_1099_amt',
' WHERE  (v(''P''||:APP_PAGE_ID||''_VENDOR_CODE'') IS NOT NULL AND vendor_code = v(''P''||:APP_PAGE_ID||''_VENDOR_CODE'') OR v(''P''||:APP_PAGE_ID||''_VENDOR_CODE'') IS NULL) ',
'  AND   (v(''P''||:APP_PAGE_ID||''_CODE_1099'')   IS NOT NULL AND code_1099   = v(''P''||:APP_PAGE_ID||''_CODE_1099'')   OR v(''P''||:APP_PAGE_ID||''_CODE_1099'') IS NULL) ',
'  AND   ((ytd_with_amt - with_amt_refunded) > 0 OR code_1099 = ''G'') ',
' order by year  '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'YEAR'
,p_display_column_name=>'YEAR'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'YEAR'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007864507722699972)
,p_query_column_name=>'YEAR'
,p_heading=>'Year'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007864910744699972)
,p_query_column_name=>'YTD_AMT'
,p_heading=>'YTD Amount'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007865312474699972)
,p_query_column_name=>'YTD_WITH_AMT'
,p_heading=>'Backup Withholding'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007865684085699974)
,p_query_column_name=>'WITH_AMT_REFUNDED'
,p_heading=>'With. Refunded'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007866064580699974)
,p_query_column_name=>'VREMAIN_AMT'
,p_heading=>'With. Remain'
,p_display_sequence=>50
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/
