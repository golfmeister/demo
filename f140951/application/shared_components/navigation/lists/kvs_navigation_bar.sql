prompt --application/shared_components/navigation/lists/kvs_navigation_bar
begin
--   Manifest
--     LIST: KVS Navigation Bar
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
 p_id=>wwv_flow_imp.id(54129018568395330159)
,p_name=>'KVS Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(53999160956016936452)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'Scheduler'
,p_list_item_link_target=>'f?p=&APP_ID.:3120:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gears'
,p_list_text_01=>'&G_JOBCOUNT.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(54129018744481330160)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Help'
,p_list_item_icon=>'fa-question-circle'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(54129019120603330164)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'&P0_USER.'
,p_list_item_icon=>'fa-user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(54129019564492330164)
,p_list_item_display_sequence=>21
,p_list_item_link_text=>'Change Password'
,p_parent_list_item_id=>wwv_flow_imp.id(54129019120603330164)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(54045365342243397967)
,p_list_item_display_sequence=>22
,p_list_item_link_text=>'Set User Style'
,p_list_item_link_target=>'f?p=&APP_ID.:2010:&SESSION.::&DEBUG.:2010:P2010_USER:Y:'
,p_parent_list_item_id=>wwv_flow_imp.id(54129019120603330164)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(54129019922785330165)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_parent_list_item_id=>wwv_flow_imp.id(54129019120603330164)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
