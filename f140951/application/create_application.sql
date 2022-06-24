prompt --application/create_application
begin
--   Manifest
--     FLOW: 140951
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_AJC')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Demo')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'DEMO')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'4413F54EFD8DCFDC9529664253CBB55C954D2F56035EAC35649E8CEB17CF2C72'
,p_bookmark_checksum_function=>'SH1'
,p_accept_old_checksums=>false
,p_max_session_length_sec=>28800
,p_max_session_idle_sec=>28800
,p_compatibility_mode=>'21.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'0'
,p_date_format=>'MM/DD/YYYY'
,p_nls_sort=>'BINARY_CI'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_imp.id(54129006974884301186)
,p_populate_roles=>'A'
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'My Municipality'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_referrer_policy=>'strict-origin-when-cross-origin'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(26193550320690935502)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_default_error_display_loc=>'INLINE_IN_NOTIFICATION'
,p_tokenize_row_search=>'N'
,p_substitution_string_01=>'FORMAT_USD'
,p_substitution_value_01=>'999G999G999G999G990D00'
,p_substitution_string_02=>'NULL_LABEL'
,p_substitution_value_02=>'----  Select  ----'
,p_substitution_string_03=>'REGION_BG'
,p_substitution_value_03=>'u-color-17-bg'
,p_last_updated_by=>'GOLFMEISTER2005@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20220624160711'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>1706
,p_ui_type_name => null
,p_print_server_type=>'INSTANCE'
,p_is_pwa=>'N'
);
wwv_flow_imp.component_end;
end;
/
