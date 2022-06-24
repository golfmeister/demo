prompt --application/shared_components/security/authentications/kvs
begin
--   Manifest
--     AUTHENTICATION: KVS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(54172314273221445215)
,p_name=>'KVS'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'kvs_apex_login'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_imp.component_end;
end;
/
