prompt --application/shared_components/user_interface/lovs/pur_print_order_approved_by
begin
--   Manifest
--     PUR_PRINT_ORDER_APPROVED_BY 
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
 p_id=>wwv_flow_imp.id(54001699008720130576)
,p_lov_name=>'PUR_PRINT_ORDER_APPROVED_BY '
,p_lov_query=>'.'||wwv_flow_imp.id(54001699008720130576)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54001699258221130577)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'None'
,p_lov_return_value=>'None'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54001699719572130577)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'PO'
,p_lov_return_value=>'PO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54001700102772130579)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Voucher'
,p_lov_return_value=>'Voucher'
);
wwv_flow_imp.component_end;
end;
/
