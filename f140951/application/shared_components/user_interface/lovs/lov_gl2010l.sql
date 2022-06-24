prompt --application/shared_components/user_interface/lovs/lov_gl2010l
begin
--   Manifest
--     LOV_GL2010L
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
 p_id=>wwv_flow_imp.id(54007755114630689307)
,p_lov_name=>'LOV_GL2010L'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GL_FOREX'
,p_return_column_name=>'TRANS_DATE'
,p_display_column_name=>'TRANS_DATE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'TRANS_DATE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007779095940567999)
,p_query_column_name=>'TRANS_DATE'
,p_heading=>'Date'
,p_display_sequence=>10
,p_data_type=>'DATE'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007779449873568000)
,p_query_column_name=>'RATE'
,p_heading=>'Rate'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007779852357568000)
,p_query_column_name=>'CURRENCY_CODE_TO'
,p_heading=>'Currency Code To'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54007780287552568002)
,p_query_column_name=>'CURRENCY_CODE_FROM'
,p_heading=>'Currency Code From'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
