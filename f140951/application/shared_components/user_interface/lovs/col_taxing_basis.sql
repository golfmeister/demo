prompt --application/shared_components/user_interface/lovs/col_taxing_basis
begin
--   Manifest
--     COL_TAXING_BASIS
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
 p_id=>wwv_flow_imp.id(54131482759227948943)
,p_lov_name=>'COL_TAXING_BASIS'
,p_lov_query=>'.'||wwv_flow_imp.id(54131482759227948943)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131483073120948946)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'County'
,p_lov_return_value=>'CO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131483452064948952)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Municipal'
,p_lov_return_value=>'MU'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131483780803948953)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'School'
,p_lov_return_value=>'SC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131484185928948954)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Fee'
,p_lov_return_value=>'FE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131484580892948955)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Online Interest  / Penalty'
,p_lov_return_value=>'OP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131485008098948955)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Other Taxable'
,p_lov_return_value=>'OT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131485394757948956)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Others'
,p_lov_return_value=>'O'
);
wwv_flow_imp.component_end;
end;
/
