prompt --application/shared_components/user_interface/lovs/ub_meter_placement
begin
--   Manifest
--     UB_METER_PLACEMENT
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
 p_id=>wwv_flow_imp.id(54059908174675456856)
,p_lov_name=>'UB_METER_PLACEMENT'
,p_lov_query=>'.'||wwv_flow_imp.id(54059908174675456856)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54059908508521456858)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Inside'
,p_lov_return_value=>'I'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54059908914622456858)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Outside'
,p_lov_return_value=>'O'
);
wwv_flow_imp.component_end;
end;
/
