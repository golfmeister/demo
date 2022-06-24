prompt --application/shared_components/user_interface/lovs/gl_open_period
begin
--   Manifest
--     GL_OPEN_PERIOD
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
 p_id=>wwv_flow_imp.id(54006262437841804810)
,p_lov_name=>'GL_OPEN_PERIOD'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select YEAR||'' From: ''||PERIOD_01_FROM||'' To: ''||PERIOD_13_TO  D,',
'       YEAR R',
'from GL_OPEN_PERIOD_2',
'order by r desc'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
