prompt --application/shared_components/user_interface/lovs/ub_import_dtl_type
begin
--   Manifest
--     UB_IMPORT_DTL_TYPE
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
 p_id=>wwv_flow_imp.id(54064144768378405544)
,p_lov_name=>'UB_IMPORT_DTL_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(54064144768378405544)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54064155042214669684)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Header'
,p_lov_return_value=>'H'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54064145859058405606)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Account'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54064146258656405606)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Meter'
,p_lov_return_value=>'M'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54064145112875405600)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Detail'
,p_lov_return_value=>'D'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54064145520498405605)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Unused'
,p_lov_return_value=>'U'
);
wwv_flow_imp.component_end;
end;
/
