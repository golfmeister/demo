prompt --application/pages/page_02025
begin
--   Manifest
--     PAGE: 02025
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp_page.create_page(
 p_id=>2025
,p_user_interface_id=>wwv_flow_imp.id(54129006692986301185)
,p_name=>'DBA Utilities'
,p_alias=>'DBA-UTILITIES'
,p_page_mode=>'MODAL'
,p_step_title=>'DBA Utilities'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(54129603428897909279)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function initCobol() {',
'   var vOK = confirm(''Do you want to initialize Cobol?'');',
'   if (!vOK) {',
'      return;',
'   }',
'   var lSpinner$ = apex.util.showSpinner();',
'   apex.server.process(''initCobol'', {}, ',
'   {',
'      success: function(gReturn) {',
'         lSpinner$.remove();',
'         if (gReturn.substr(0,1) == ''0'') {',
'             showError(gReturn.substr(1));',
'         }',
'         else if (gReturn.substr(0,1) == ''1'') {',
'             apex.message.showPageSuccess("Cobol has been initialized successfully.");',
'         }',
'         else {',
'             showError(gReturn);',
'         }',
'      },',
'      dataType: "text"',
'   });',
'}'))
,p_step_template=>wwv_flow_imp.id(53708150917004456860)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_page_component_map=>'06'
,p_last_updated_by=>'DCHING'
,p_last_upd_yyyymmddhh24miss=>'20211209201345'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54213376859725673098)
,p_plug_name=>'Heading'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54213376725103673097)
,p_plug_name=>'DBA Utilities'
,p_parent_plug_id=>wwv_flow_imp.id(54213376859725673098)
,p_icon_css_classes=>'fa-wrench'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(54128970921428301147)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54213376991228673099)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_imp.id(54128973156403301149)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_imp.id(54045408523740772822)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(54128988254333301164)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54045408044394772822)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'initCobol'
,p_process_sql_clob=>'htp.p(kvs_apex.init_cobol);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
