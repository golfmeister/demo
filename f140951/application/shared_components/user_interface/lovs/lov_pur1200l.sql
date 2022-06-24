prompt --application/shared_components/user_interface/lovs/lov_pur1200l
begin
--   Manifest
--     LOV_PUR1200L
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
 p_id=>wwv_flow_imp.id(54007753849774601747)
,p_lov_name=>'LOV_PUR1200L'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TEMPLATE_CODE || '' - '' || TEMPLATE_DESC display_template',
'     , TEMPLATE_CODE',
'     , TEMPLATE_DESC',
'  from KVS_REPORT_TEMPLATE',
' where module_no = nvl( v(''P''|| :APP_PAGE_ID || ''_MODULE_NO'') ,  module_no )'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'KVS_REPORT_TEMPLATE'
,p_return_column_name=>'TEMPLATE_CODE'
,p_display_column_name=>'DISPLAY_TEMPLATE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'TEMPLATE_DESC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010324909764338992)
,p_query_column_name=>'DISPLAY_TEMPLATE'
,p_heading=>'-'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010325320040338994)
,p_query_column_name=>'TEMPLATE_CODE'
,p_heading=>'Template Code'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54010325728596338994)
,p_query_column_name=>'TEMPLATE_DESC'
,p_heading=>'Description'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
