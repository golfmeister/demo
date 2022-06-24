prompt --application/shared_components/navigation/lists/kvs_context_menu
begin
--   Manifest
--     LIST: KVS Context Menu
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
 p_id=>wwv_flow_imp.id(53999550343331587416)
,p_name=>'KVS Context Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(54009050227137067447)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Full Description'
,p_list_item_link_target=>'javascript:openDescriptionPage();'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(53999550565851587430)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Detail'
,p_list_item_link_target=>'javascript:openDetailPage();'
,p_list_item_current_for_pages=>'javascript:openDetailPage();'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(53999550954436587432)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Property'
,p_list_item_link_target=>'javascript:openPropertyPage();'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(53999551374355587433)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'KVS Doc'
,p_list_item_link_target=>'javascript:openKVSDoc();'
,p_list_item_current_for_pages=>'javascript:openKVSDoc();'
);
wwv_flow_imp.component_end;
end;
/
