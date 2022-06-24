prompt --application/shared_components/user_interface/lovs/kvs_print_multi_invoice
begin
--   Manifest
--     KVS_PRINT_MULTI_INVOICE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(54001696945863073751)
,p_lov_name=>'KVS_PRINT_MULTI_INVOICE'
,p_lov_query=>'.'||wwv_flow_imp.id(54001696945863073751)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54001697222486073760)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Detail'
,p_lov_return_value=>'D'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54001697602599073770)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Invoice # List'
,p_lov_return_value=>'L'
);
wwv_flow_imp.component_end;
end;
/
