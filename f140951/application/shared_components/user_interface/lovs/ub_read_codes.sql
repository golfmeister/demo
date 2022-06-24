prompt --application/shared_components/user_interface/lovs/ub_read_codes
begin
--   Manifest
--     UB_READ_CODES
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
 p_id=>wwv_flow_imp.id(54059887198378294372)
,p_lov_name=>'UB_READ_CODES'
,p_lov_query=>'.'||wwv_flow_imp.id(54059887198378294372)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54059887496570294436)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ACTUAL'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54059887863579294444)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'ACTUAL * HIGHER THAN AVERAGE'
,p_lov_return_value=>'H'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54059888350417294445)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'ACTUAL * LOWER THAN AVERAGE'
,p_lov_return_value=>'L'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54059888754211294445)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'ADJUSTED * HISTORY ONLY'
,p_lov_return_value=>'X'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54059889097758294447)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'CARD READING'
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54059897756795396352)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'ESTIMATED'
,p_lov_return_value=>'E'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54059898033699396353)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'ESTIMATED * BURIED METER'
,p_lov_return_value=>'B'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54059898444041396359)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'ESTIMATED * NON WORKING METER'
,p_lov_return_value=>'N'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54059898782626396359)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'ESTIMATED * PULLED METER'
,p_lov_return_value=>'P'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54059899175968396361)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'ESTIMATED * SUBMERGED METER'
,p_lov_return_value=>'S'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54059899642625396361)
,p_lov_disp_sequence=>11
,p_lov_disp_value=>'FINAL READ'
,p_lov_return_value=>'F'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54059900019781396362)
,p_lov_disp_sequence=>12
,p_lov_disp_value=>'REPLACE METER'
,p_lov_return_value=>'R'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54059900395533396362)
,p_lov_disp_sequence=>13
,p_lov_disp_value=>'UPDATED READING'
,p_lov_return_value=>'U'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54059900837257396364)
,p_lov_disp_sequence=>14
,p_lov_disp_value=>'WEB READING'
,p_lov_return_value=>'W'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54059901236332396364)
,p_lov_disp_sequence=>15
,p_lov_disp_value=>'ZERO CONSUMPTION, NO BILL'
,p_lov_return_value=>'Z'
);
wwv_flow_imp.component_end;
end;
/
