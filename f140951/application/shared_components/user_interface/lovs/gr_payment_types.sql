prompt --application/shared_components/user_interface/lovs/gr_payment_types
begin
--   Manifest
--     GR_PAYMENT_TYPES
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
 p_id=>wwv_flow_imp.id(54129179968701118325)
,p_lov_name=>'GR_PAYMENT_TYPES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pay_type_desc d,',
'       pay_type_code r',
'  from gr_payment_type',
'  WHERE muni_code = :P0_MUNI',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
