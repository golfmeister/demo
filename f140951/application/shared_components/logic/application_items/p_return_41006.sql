prompt --application/shared_components/logic/application_items/p_return_41006
begin
--   Manifest
--     APPLICATION ITEM: P_RETURN_41006
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
 p_id=>wwv_flow_imp.id(54034933132904466286)
,p_name=>'P_RETURN_41006'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
);
wwv_flow_imp.component_end;
end;
/
