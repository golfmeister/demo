prompt --application/shared_components/logic/application_items/g_dload_seq
begin
--   Manifest
--     APPLICATION ITEM: G_DLOAD_SEQ
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(54046686920914918608)
,p_name=>'G_DLOAD_SEQ'
,p_protection_level=>'S'
,p_escape_on_http_output=>'N'
);
wwv_flow_imp.component_end;
end;
/
