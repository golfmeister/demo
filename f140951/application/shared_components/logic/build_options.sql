prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 140951
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>53682786834604570828
,p_default_application_id=>140951
,p_default_id_offset=>53962310681988211080
,p_default_owner=>'WKSP_AJC'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(54038106894165943563)
,p_build_option_name=>'PopUp LOV button (+) functionality'
,p_build_option_status=>'INCLUDE'
,p_build_option_comment=>'This Build Option contains the Popup LOV (+) functionality - a button (+) is added to specific Popup LOVs in order to redirect to the maitenance page.'
);
wwv_flow_imp.component_end;
end;
/
