prompt --application/shared_components/navigation/breadcrumbs/kvs_breadcrumb
begin
--   Manifest
--     MENU: KVS Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(54129008025175301189)
,p_name=>'KVS Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(53854259008335174196)
,p_parent_id=>wwv_flow_imp.id(54017679878316728371)
,p_short_name=>'Billing Calculations / Register'
,p_link=>'f?p=&APP_ID.:82015:&SESSION.::&DEBUG.:::'
,p_page_id=>82015
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(53854381501152225911)
,p_parent_id=>wwv_flow_imp.id(54017679878316728371)
,p_short_name=>'Utility Bill Forms'
,p_link=>'f?p=&APP_ID.:83010:&SESSION.::&DEBUG.:::'
,p_page_id=>83010
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(53895185330152682387)
,p_parent_id=>wwv_flow_imp.id(54003598108733465727)
,p_short_name=>'Chart of Accounts'
,p_link=>'f?p=&APP_ID.:31005:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>31005
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(53896619740025847477)
,p_parent_id=>wwv_flow_imp.id(53895185330152682387)
,p_short_name=>'Chart of Account'
,p_link=>'f?p=&APP_ID.:31006:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>31006
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(53923697493640322783)
,p_parent_id=>wwv_flow_imp.id(54017679878316728371)
,p_short_name=>'Consumers'
,p_link=>'f?p=&APP_ID.:81005:&SESSION.::&DEBUG.:::'
,p_page_id=>81005
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(53923977529208339767)
,p_parent_id=>wwv_flow_imp.id(53923697493640322783)
,p_short_name=>'Consumer'
,p_link=>'f?p=&APP_ID.:81006:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>81006
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(53998502610408377678)
,p_parent_id=>wwv_flow_imp.id(54017679878316728371)
,p_short_name=>'Groups'
,p_link=>'f?p=&APP_ID.:1020:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1020
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(53998629491243386399)
,p_parent_id=>wwv_flow_imp.id(53998502610408377678)
,p_short_name=>'Group'
,p_link=>'f?p=&APP_ID.:1021:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1021
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(54003598108733465727)
,p_parent_id=>wwv_flow_imp.id(54017679878316728371)
,p_short_name=>'General Ledger'
,p_link=>'f?p=&APP_ID.:30000:&SESSION.::&DEBUG.:::'
,p_page_id=>30000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(54006232267633449010)
,p_parent_id=>wwv_flow_imp.id(54017679878316728371)
,p_short_name=>'Users'
,p_link=>'f?p=&APP_ID.:1025:&SESSION.::&DEBUG.:::'
,p_page_id=>1025
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(54006265389215480109)
,p_parent_id=>wwv_flow_imp.id(54006232267633449010)
,p_short_name=>'User'
,p_link=>'f?p=&APP_ID.:1026:&SESSION.'
,p_page_id=>1026
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(54017679878316728371)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp.component_end;
end;
/
