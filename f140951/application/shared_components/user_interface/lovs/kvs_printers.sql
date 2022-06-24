prompt --application/shared_components/user_interface/lovs/kvs_printers
begin
--   Manifest
--     KVS_PRINTERS
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
 p_id=>wwv_flow_imp.id(54132329744786090694)
,p_lov_name=>'KVS_PRINTERS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select printer_desc, printer_name',
'  from kvs_printer',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'PRINTER_NAME'
,p_display_column_name=>'PRINTER_DESC'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
