prompt --application/shared_components/navigation/lists/kvs_administration
begin
--   Manifest
--     LIST: KVS Administration
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(54045367479622674575)
,p_name=>'KVS Administration'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(54045367800754674583)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Backup'
,p_list_item_link_target=>'f?p=&APP_ID.:2005:&SESSION.::&DEBUG.:2005:::'
,p_list_item_icon=>'fa-database'
,p_list_text_01=>'View and schedule Enterprise backup.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(54045368184179674588)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Theme Style'
,p_list_item_link_target=>'f?p=&APP_ID.:2010:&SESSION.::&DEBUG.:2010:::'
,p_list_item_icon=>'fa-eye'
,p_list_text_01=>'Set application user interface theme style for all users.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(54045368582282674589)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'News and Messages'
,p_list_item_link_target=>'f?p=&APP_ID.:2015:&SESSION.::&DEBUG.:2015:::'
,p_list_item_icon=>'fa-commenting'
,p_list_text_01=>'View and create messages for group of users.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(54045368982749674589)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'DBA Utilties'
,p_list_item_link_target=>'f?p=&APP_ID.:2025:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-wrench'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(53712411901341316113)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'User logs'
,p_list_item_link_target=>'f?p=&APP_ID.:2035:&SESSION.::&DEBUG.:2035:::'
,p_list_item_icon=>'fa-user-magnifying-glass'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
