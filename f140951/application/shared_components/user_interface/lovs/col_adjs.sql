prompt --application/shared_components/user_interface/lovs/col_adjs
begin
--   Manifest
--     COL_ADJS
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
 p_id=>wwv_flow_imp.id(54130185419374159662)
,p_lov_name=>'COL_ADJS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select adj_desc,',
'       adj_code',
'  from col_adj',
'  WHERE ledger_type = ''A'' AND',
'        muni_code = :P0_MUNI',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ADJ_CODE'
,p_display_column_name=>'ADJ_DESC'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
