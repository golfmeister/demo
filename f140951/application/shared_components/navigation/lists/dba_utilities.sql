prompt --application/shared_components/navigation/lists/dba_utilities
begin
--   Manifest
--     LIST: DBA Utilities
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
 p_id=>wwv_flow_imp.id(54045408523740772822)
,p_name=>'DBA Utilities'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(54045408763964772825)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Initialized Cobol'
,p_list_item_link_target=>'javascript:initCobol();'
,p_list_item_icon=>'fa-copyright'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(53941717688560283987)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Change Cons Period'
,p_list_item_link_target=>'f?p=&APP_ID.:2026:&SESSION.::&DEBUG.:2026:::'
,p_list_item_icon=>'fa-clipboard-edit'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
