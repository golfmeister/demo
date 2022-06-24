prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 140951
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(25650867190669241260)
,p_theme_id=>42
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Redwood-Theme#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(25650867503289241261)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(25650867981949241261)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(25650868389943241261)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(25650868716367241261)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(53871802247606223800)
,p_theme_id=>42
,p_name=>'KVS'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Region-Header-BG":"rgba(189,231,248,0.97)","@Nav-Exp":"280px","@Actions-Exp":"410px"},"customCSS":".t-TreeNav.a-TreeView .is-expandable>.a-TreeView-toggle:before{  \n    content: \"+\";  \n}  \n.t-TreeNav.a-TreeView .is-coll'
||'apsible>.a-TreeView-toggle:before{  \n    content: \"-\";  \n}  \n.display-only-start .apex-item-display-only { text-align: start;}\n.display-only-center .apex-item-display-only {  text-align: center;}\n.display-only-end .apex-item-display-only {  te'
||'xt-align: end;}\n:root {\n  --jui-dialog-titlebar-background-color: var(--u-color-5);\n  --jui-dialog-titlebar-text-color: var(--u-color-5-contrast);\n}","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#165619173824677038.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(54002049207531206910)
,p_theme_id=>42
,p_name=>'Vita (Copy)'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-OG":"rgba(231, 239, 240, 1)"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#294134536386821839.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(54020195267205605009)
,p_theme_id=>42
,p_name=>'KVS - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_config=>'{"customCSS":".t-TreeNav.a-TreeView .is-expandable>.a-TreeView-toggle:before{  \n    content: \"+\";  \n}  \n.t-TreeNav.a-TreeView .is-collapsible>.a-TreeView-toggle:before{  \n    content: \"-\";  \n}  \ntd[headers=\"LINK\"] {  \n   width: 15px !imp'
||'ortant;  \n}","vars":{}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#21062912234911492.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp.component_end;
end;
/
