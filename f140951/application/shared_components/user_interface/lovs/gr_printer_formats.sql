prompt --application/shared_components/user_interface/lovs/gr_printer_formats
begin
--   Manifest
--     GR_PRINTER_FORMATS
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
 p_id=>wwv_flow_imp.id(54130884576687142327)
,p_lov_name=>'GR_PRINTER_FORMATS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select format_desc d,',
'       format_code r',
'  from gr_printer_format',
'  WHERE muni_code = :P0_MUNI',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
