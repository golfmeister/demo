prompt --application/shared_components/user_interface/lovs/kvs_required_tablles
begin
--   Manifest
--     KVS_REQUIRED_TABLLES
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
 p_id=>wwv_flow_imp.id(54131833705963204631)
,p_lov_name=>'KVS_REQUIRED_TABLLES'
,p_lov_query=>'.'||wwv_flow_imp.id(54131833705963204631)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131834168529204640)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Budget Adjustment'
,p_lov_return_value=>'GBA'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131834539915204646)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Fixed Asset'
,p_lov_return_value=>'FA'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131834906821204649)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'GR Collection'
,p_lov_return_value=>'GRR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131835307082204649)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Journal Entry'
,p_lov_return_value=>'JE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131835734889204650)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Override / One Time'
,p_lov_return_value=>'PVO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131836099707204650)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Purchase Order'
,p_lov_return_value=>'PO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131836481161204651)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Requisition'
,p_lov_return_value=>'REQ'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(54131836974973204651)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Voucher'
,p_lov_return_value=>'VCH'
);
wwv_flow_imp.component_end;
end;
/
