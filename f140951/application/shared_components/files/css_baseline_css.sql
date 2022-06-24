prompt --application/shared_components/files/css_baseline_css
begin
--   Manifest
--     APP STATIC FILES: 140951
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '696E7075742E76616C4572726F722C0D0A74657874617265612E76616C4572726F72207B0D0A20206261636B67726F756E642D636F6C6F723A20234641453745373B0D0A7D0D0A200D0A7370616E2E76616C4572726F72207B0D0A20206D617267696E2D';
wwv_flow_imp.g_varchar2_table(2) := '6C6566743A203570783B0D0A2020636F6C6F723A20236336306631333B0D0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(54030386705502470660)
,p_file_name=>'css/baseline.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
