prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 140951
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(54128997275205301176)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(54128960051758301136)
,p_default_dialog_template=>wwv_flow_imp.id(54128958610964301135)
,p_error_template=>wwv_flow_imp.id(54128956550535301133)
,p_printer_friendly_template=>wwv_flow_imp.id(54128960051758301136)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(54128956550535301133)
,p_default_button_template=>wwv_flow_imp.id(54128995927239301172)
,p_default_region_template=>wwv_flow_imp.id(54128973156403301149)
,p_default_chart_template=>wwv_flow_imp.id(54128973156403301149)
,p_default_form_template=>wwv_flow_imp.id(54128973156403301149)
,p_default_reportr_template=>wwv_flow_imp.id(54128973156403301149)
,p_default_tabform_template=>wwv_flow_imp.id(54128973156403301149)
,p_default_wizard_template=>wwv_flow_imp.id(54128973156403301149)
,p_default_menur_template=>wwv_flow_imp.id(54128977522019301153)
,p_default_listr_template=>wwv_flow_imp.id(54128973156403301149)
,p_default_irr_template=>wwv_flow_imp.id(54128972614439301148)
,p_default_report_template=>wwv_flow_imp.id(54128983178100301159)
,p_default_label_template=>wwv_flow_imp.id(54128995403359301172)
,p_default_menu_template=>wwv_flow_imp.id(54128996419674301174)
,p_default_calendar_template=>wwv_flow_imp.id(54128996504629301174)
,p_default_list_template=>wwv_flow_imp.id(54128990594266301166)
,p_default_nav_list_template=>wwv_flow_imp.id(54128994232085301170)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(54128994232085301170)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(54128993284977301169)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(54128963575367301140)
,p_default_dialogr_template=>wwv_flow_imp.id(54128963176135301139)
,p_default_option_label=>wwv_flow_imp.id(54128995403359301172)
,p_default_required_label=>wwv_flow_imp.id(54128995619375301172)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_imp.id(54128993223174301169)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/22.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
