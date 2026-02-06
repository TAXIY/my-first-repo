prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>129523673995293938205
,p_default_application_id=>121450
,p_default_id_offset=>0
,p_default_owner=>'WKSP_QDSICAI'
);
end;
/
 
prompt APPLICATION 121450 - Demo - Customer Orders
--
-- Application Export:
--   Application:     121450
--   Name:            Demo - Customer Orders
--   Date and Time:   06:22 Friday February 6, 2026
--   Exported By:     ABHISHEK.ABHA77@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     39
--       Items:                   69
--       Validations:              2
--       Processes:               32
--       Regions:                 95
--       Buttons:                 58
--       Dynamic Actions:         22
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          9
--       Navigation:
--         Lists:                 10
--         Breadcrumbs:            1
--           Entries:              9
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  10
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.13
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_QDSICAI')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Demo - Customer Orders')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'DEMO-CUSTOMER-ORDERS')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'F9082D40217E6A17EF2086A77AB31E583360077039463B16330B955D4D3DC3B8'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(133024414271588564271)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Demo - Customer Orders'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(133024421660655564284)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Demo - Customer Orders'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_version_scn=>15710237132427
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>wwv_flow_imp.id(133025102734668569764)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(121450)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(133024415036766564272)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(133024416283933564274)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_121450_push_notifications_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(133025102734668569764)
,p_name=>'App 121450 Push Notifications Credentials'
,p_static_id=>'App_121450_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(133024415036766564272)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15710237118426
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133024436810406564308)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133024438313331564311)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133024449593979564322)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Order Search'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-cards'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133024455942139564337)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133024723272605567254)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133024738646340567950)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Customer Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133024744992367567960)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Product Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133024749665337567968)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Product Reviews'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133024754359797567976)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Store Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025075013406569723)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(133024421546356564284)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(133024416283933564274)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15710237127466
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025071268197569719)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025071626050569721)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&APP_SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(133024419045629564281)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025071971432569721)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(133024419562055564281)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025072459666569721)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&APP_SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(133025071971432569721)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(133024419562055564281)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025072825811569721)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(133025071971432569721)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025073251605569722)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&APP_SESSION.::&DEBUG.:10060::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(133025071971432569721)
,p_required_patch=>wwv_flow_imp.id(133024419562055564281)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025073558360569722)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025102485010569763)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(133025073558360569722)
,p_required_patch=>wwv_flow_imp.id(133025096059644569755)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025074054763569722)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(133025073558360569722)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025074429566569722)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(133025073558360569722)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(133024893936091569472)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
,p_version_scn=>15710237071858
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133024894308708569473)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133024894742756569474)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Order Search'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-cards'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133024895157717569474)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133024895522493569474)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133024895904006569474)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Customer Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133024896382243569474)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Product Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133024896775607569475)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Product Reviews'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133024897185849569475)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Store Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(133025076189647569724)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(133024419243983564281)
,p_version_scn=>15710237118848
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025076530583569725)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(133024419243983564281)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(133025076821598569725)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(133024419607360564281)
,p_version_scn=>15710237119004
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025077218169569725)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(133024419607360564281)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(133025077552867569726)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(133024418948889564281)
,p_version_scn=>15710237119504
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025077924171569726)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025078300429569726)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:10031::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025078705825569727)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025079173421569727)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025079523985569727)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RR,10034::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025079980573569727)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10035:&APP_SESSION.::&DEBUG.:RR,10035::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report of automation executions and messages logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(133025080229261569728)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(133024418811550564281)
,p_version_scn=>15710237119725
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025080636897569728)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025081069772569728)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(133025081334928569728)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(133024419045629564281)
,p_version_scn=>15710237119899
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025081731878569729)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&APP_SESSION.::&DEBUG.:10053::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_administration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(133025082064569569729)
,p_name=>'Application Administration'
,p_list_status=>'PUBLIC'
,p_version_scn=>15710237120126
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025082483434569729)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Stores'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025082840147569729)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Products'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(133025099683901569760)
,p_name=>'User Settings'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(133025096059644569755)
,p_version_scn=>15710237126949
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(133025100001886569760)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(133025095773438569755)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000206494441547801EC954B4BE35014C7FF93696F1A3B660A9DE9747CDBAA58152B5A902E1471A3EE14F77E04BF85DFC1A5E05674270A22A282282E742988EFE2FB';
wwv_flow_imp.g_varchar2_table(2) := '8D6D539BC4DE2BD414426E6B0A8234F0BF3939E7DC737E9C901B617C6252FF4A09F8E2AB04509AC0F79880AEEB4826E24CD42EE4C3B23D8174FA151E37417738848EE6204441859AF1E50BC105D0527154797F31FD788D231CF0E7C8256868690CE0E1F1';
wwv_flow_imp.g_varchar2_table(3) := '1989A482AEF656A8CA0BCB71E8292E87C0CBA8F9EF43341266AAF4FB3032D897239728B2126A5A81A62ACCF67A3C2CA73558C39EAD162E80D5661A138993DEF0D341E074BA982D49EF50EC81B3D806A8F079A128295464A6F3CFF707894412D5FEBF9CB6';
wwv_flow_imp.g_varchar2_table(4) := '1F61DB007DD14EEC1F1D672B1E9E9C81FAB20E8E611BC0EB91D1110AE2E6EE1E97D7B7E889B4A1DC5DC669FB11B60D404BF547BBA0A614C81241A43D445D79AB2800B4DBD8E81086077AA959908A06505057433217207671858DED5D266ACF2DAC205F1D';
wwv_flow_imp.g_varchar2_table(5) := '9CC60CADCC4D2E003D7C8C075159F96F18E510259C9C5FA1A1A11E4D8DC11CC9B26CDED5E0E50218724D4D42080275B5585EDB84A66BA639564E2E003DDFAD0AD05816627D0BAAA6521793A6F181B800E7B74F989A9967DA3B8A6129D3C44CAB5B3B38BB';
wwv_flow_imp.g_varchar2_table(6) := 'BCC3F4EC22CBA57B8E2FEE1988D5C205202E09EECC7BFF8C88F8FE6FB00560B5B91831EE048AD1C4AA4609A03481EF3F01AB2F80C6DE000000FFFF1C43D9B800000006494441540300484A059018B774AB0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(133024417442401564278)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC9D097014D799C7FF3D874E740BC4654002C469B001112464035EE380E390B22B653BB5D9B59DAC41B22D11AAB27682A85DD605AA5D6FC56B';
wwv_flow_imp.g_varchar2_table(2) := 'D01A10E5F566B76A2B954AB6B2BBDEA4923895C4490CC6068CB0B91CB0850D96903492D07DCCCCCBF7F58C882424D0F4EB397AFA4DF5D7DDD3F38EEFFB7FBF79FDBA5B8703EAA5149050400124219EAA0A28801405520A2880A4E4539515408A01290514';
wwv_flow_imp.g_varchar2_table(3) := '4052F2A9CA0A20C5809402860192EA55558E1B0514407193CAE804A2008A8EEE71D3AB02286E52199D401440D1D13D6E7A5500C54D2AA3138802283ABAC74DAF91076802D27DE39FFE2DED99975E9D5AF152EDDC8A170F2DAFDC73B864FBDE431B2BF61C';
wwv_flow_imp.g_varchar2_table(4) := 'FAB21D8C63E5983976D680B5604D26205DC48B44172021B4E7AA6B175656D73EB17DEFC103957B6B8F57EE3D3430C93BD8E11A74366883E2A2E6C42968FEB705F04B4DC3FFD9C138568E9963670D580BD684B5A90C68F42A6BC6DA813444145F1105A8A2';
wwv_flow_imp.g_varchar2_table(5) := 'FAF5C9DBAB0F6CA9D873706F65F5C1372BAB6BDB1C429C2311BE2FA09503622569E12653CBD80A9036BA46CFB066AC1D6BA86BB9B7760F8FCE3B76BF963D76D5F01C8D1C40F44DD1FC0325B47941D3B49D10DAFD145206995AE414C8086829AA1C1A5EF0';
wwv_flow_imp.g_varchar2_table(6) := '270C96105C9A5C9313AF1D7680B6D6D6BAB7571F7C9ABE29E7A1E17F00AD04EA15160504B096BEA06F90D6E7B6571FFA266B1F968E86351A568076EC393823A9054729A8C3D46721995A22A3C00221F05A728B385241D38670761936802AAA0F2DF669DA';
wwv_flow_imp.g_varchar2_table(7) := 'B1E0BC269C31A8B6C7518046A4559A1838BAE3C5C34BC629227D382C0055EEA92DD5048E907733C84C5A5433061598EB73FADFAEA83EBCCE60FD5B56331D201E79A0895F50AF6A824C22C4C892A109FFCFC23112990AD0D6DDB52934F2FC88444B21534B';
wwv_flow_imp.g_varchar2_table(8) := '6C2990E275F97FC83932D32D53014A72F90F90738BC9D412830AD0977B493047A679671A40157B0F3E094D7BC234CF5443E1518072A4E7CAA4D64D0168C7CB2F276BD05E36C927D54C9815A05C7D6F2B4D37CCE8C614807C3D293CF26499E1906A23220A';
wwv_flow_imp.g_varchar2_table(9) := '6427B9C45F9BD1933C404210D0F81662F7A53C1B4B014DAB34E39187344095FF58FB45F26F01995A2CA5805814CC9D94D7D200093FD4E8036BBECCC89D14404FEEFEF7240DD8684DF994D79C3BBE009251420AA04C67DF1AEA5CAA0DAAAF96E829E010DD';
wwv_flow_imp.g_varchar2_table(10) := 'C95F90E95E2AF97EA7830192E95FD58DB202B23994028866F10AA0280320DDBD105239340C90E0CB77A0543A80186EC026AE4507A067FFF9401E099C43A6166B2B90F76CF5BF1ACEA3E11128D1EF36DCA9B5F58E3FEF131C09538D46651820BF80FA910D';
wwv_flow_imp.g_varchar2_table(11) := 'A3AAC7583D995C4A00E45500C5180846DDF10BE3B9340C90A639928D3AACEAC596029A70B88C7A641820A14E61F0FB7CE8EFEB456F4F17BA3BAFA3A7AB137DBDDD18E8EF339A8FE8D473C00D832FC300C1C6231003D2EE69424BE3555CF734A3B3AD15DD';
wwv_flow_imp.g_varchar2_table(12) := '1DD7D175BD0D1DAD1EB4B7F06757D0D5D1A64366303711AB2633181806C8E9F719A63662CA84A12386A49D0019E8EB83C3E9407656260AF267A168C5322C59548899D3A722353599C0F1A3A7B313AD4D0D181CE80F8327263629311818064840F39A1882';
wwv_flow_imp.g_varchar2_table(13) := '259AE251874F530E0D9857301B0FDEBF01F71417E1CE450B307D6A1EE6E5CFC6CABBEEC4FDEB4AB1A1B418599999F0FBFD686BBE86FEDE1E4BC418AA9386010AB523AB97EFA4D3138F3A3CE26CB8772D962C2C849346A0F1E24A4F9F847B4B8A70F7F2A5';
wwv_flow_imp.g_varchar2_table(14) := '70BB9DE868F3C03B38305E71CB1EB72440824EDA9C0C9E8B44C278D4E9A509725252228A8B566052EAC4EF60CC9A310DCB962CA6C78602D75B5BF409F6689F39168EC98A14590EA0EE8E76347FFE19CD2D1AC173914818CF7B38B92B693471B99CBC1B92';
wwv_flow_imp.g_varchar2_table(15) := 'F1BC68DAD429F079BD63FADCDAD4A8C7C4577221351C03852D0550E072B9032E3A2514CE9D8315CB16DFD216CCCBD7259E9E37191BEF596DC8E617DCA1B73167D64CE4E664EBFBA3570D4DCDB870E9137C72F93374758D3DD7B9EBCEC5484848D0ABDE57';
wwv_flow_imp.g_varchar2_table(16) := '5A34C297A2E5FC994BBF92EBEBE9D6CB586565298006E89E0B0BBBF1DE126C5C578CE255CB6F694B17CEE3E2B863FA143CBC69BD214B494AD2DBC89F1300497F135CF96882FCBB23C7F0EEF153387FE1224E9F398F5FFFE1083EAEFF2C58E2CF9B04B71B';
wwv_flow_imp.g_varchar2_table(17) := 'D3F2A6E8079616168CF0E5A9471FC25F3DF22000602846BDA005569602886FDCB1A67366CDE0CD848DA64C132E3BBAE0E5AB8DFAA149A9A9FA76F8EAFC4797D0D6DE819CAC3414DDB5188B0BE700F460E9C3F317D0D373F3CDC4D49464BDFAC79F5ED5B7';
wwv_flow_imp.g_varchar2_table(18) := 'C3574B1714E86F7D3E6B5DDC5A0A20A14B0C38342DB837B14D88C54734DAD3DB8BC4C48431FB6CBFDEA1977D60FD5AAC5EB15CBF745FBA682E0441D4DE11F84C2F105CA50401EAEABEF93497183CBD0DC518AC12F31B4B0164544D99116860C04B732ED7';
wwv_flow_imp.g_varchar2_table(19) := '985D7BE9518683144C4F4BBBF1796A4A60A4F27A7D378E0DEDF0698CF7FB07AD35CAB0CFE319853FDE47EA382B90929C84FEFEB1EF244FA2CB799A06E1BD531F62707010AD6D6DB854FF2957435A5A0024FD4D70D5DB17682795DA0C1EB2FCC61600C99C';
wwv_flow_imp.g_varchar2_table(20) := 'C2727332E806A00F7C477974B6E7D29D673E76F2F439BCF65F3FC60F7EF273347BDA9199998EAC8C74FE6884F5D2E9900F4C9F92CB9BB8305B0024730A9B396DAA9E684F6BBBBE1DBECA4C4FC3BAD235C89F7D0772B273307D5A9E7E877AEDEA55C38BDD';
wwv_flow_imp.g_varchar2_table(21) := 'D81F9A33CD9D33F3C631ABEF38AC1EC044FC9719811614CCD2BB68B8D6A46F47AF18A2654B16A264F50A14DDBD4C7F4636D6CD461EC19A3C2D3432A5617276E6E86664DF47ADBE2D000242BB6AC3B0175F5E3B1C1AAE35B70C3B1AFAEEB5660F3DA11758';
wwv_flow_imp.g_varchar2_table(22) := '44F78042AF1DBB356C0190CC73A6E4C44414D293F79E9E5E34B7B41ACE64FDA7819B8BAB972F32DC462C56B4054032A7304EDAFAE215BCC1C5FA7A7D1BEAAA9BEEFB34B578307DEA6414E6074E89A1B611ABE56D0190CC249A13B78C1E894C9D9283A626';
wwv_flow_imp.g_varchar2_table(23) := '0FC6BA09C8656E65FC9C0C02FAF3AF5B95B3E267B600487604E2C46E285EC91B9CFDE8A2BE9DE8AAA7B70F573E6F4066FA24ACA687A613AD679572B600C88C6494AC5A86ECAC7434345C434767D7849B3C73FE23FDD1C6837F510A4D333E999F7087112E';
wwv_flow_imp.g_varchar2_table(24) := '680B80644F619C13A7C3814736DDC7BBA83B734EDFDE6EE5696BC7E704DCCC6993514A00DEAE7C343E97EDD3160099F5C55FB1B4107367CF406B6BFB8D4716E325C0E7F3E3E4A90F68D401FEF2E1CDE315B3FC715B00049877EAF8FA239BE1746A387BEE';
wwv_flow_imp.g_varchar2_table(25) := '02C6FBE131D08B7F3688E73FFC334BB36704EE66D3E1B85B6C0190CC7DA0D119CFCBCDC6C67BD7C04F5755EFBE7F0A63B57D954E5B9F5EB9AA4F9CBFBA79C3E826E2EABD2D00323B635BEEBF07F9B3A6A3B3B31BA7CF9E1FD17C37DD707CFFF419FDD853';
wwv_flow_imp.g_varchar2_table(26) := '8F6D41526282BE1FAF2B5B0064D61C6838047FF3B52D484E4A44FDE52B686C6A0E7C44A3D27B27EBE0F3F9F025BAEA9A1F470F4D0301DEBCB6054030710E84E02B2B3D1DDF78FCCBA0C7643879FA4334D1638EE33469BEDED189A50BE7E2C1FB4A8225E3';
wwv_flow_imp.g_varchar2_table(27) := '7B631380686808431E97CC2FC097E8743638E0C5D1774FE06A4323F22667E3E9AF7D250CC8862100992683756D019019F781827ADDB4D9BCBE180F6F5EAF1F5F306F36BEBDEDEB70BBC6FE1158BD509CAD6C015038E640C339D858BA1A07F63E8FED4F3D';
wwv_flow_imp.g_varchar2_table(28) := '8678FA71D5E1318EB76F0B80C60B5E1D9757400124AFA1AD5B5000D93AFDF2C12B80E435B4750B0A205BA75F3EF8D00192EF53B510470A2880E22899D1084501140DD5E3A84F4B02F4EAEB3FC044ECBFFFFF4D3D55C7DE3F8367AA5E8A79D39DB5D8CA92';
wwv_flow_imp.g_varchar2_table(29) := '00E54DC9C5442C272BF01BA0292949C8C84897B2A1DF364D4D49446E4E5658CC62ECE8EE5A12A0AF3EB41113B1F56B8BF42073B2B3B17EED17A46C4DD10AB8E81957774F3FE617CCC2635FD964BAE9CE5A6C654980A2A1318F666B8AEED6213AFA5E1D4E';
wwv_flow_imp.g_varchar2_table(30) := '7E70361A6EC45C9F110428E6620FD92105D1CD9229806ED6E496476E866862BFE273CB462DFCA102C840F24642740A274EDBF774A60032001057190ED13BC7EB6C0B910288693068A3213A69C391480164109EA16AC3213A4A2391DD2052000D9120B165';
wwv_flow_imp.g_varchar2_table(31) := '888AE93E91DBED024374A22EF07B61469A34EF77688DF41E7A1D2B0074232AA733F08F4E2E5F69B8712C5676B2B3323074B3F19D13A711EA48D4DADAA687E2700662D4DF586065298012129374497FFE9BDFE3CDB78EEADF76FEC68F671F9E0FFC2D1FFE';
wwv_flow_imp.g_varchar2_table(32) := '8F817FBCF409C26D1E4F2BF283FF86817D3A76E2148174E6B676EC441D7EF9D6DB7A6C4331EA6F2CB0B21440C9A969702726EA7FB7F9A34BF59498B3B7B40B173FD153D0D8E4C1D90B1723627FFCF8B2DE27AF8ED79D23C84FDFD68ED79D85A7AD130914';
wwv_flow_imp.g_varchar2_table(33) := '1BC7C875AD6296028845CDCACD4366CE644CCAC8446A7A465C18C792993B0599141BC76825B31C402C6E4252325226A523352D232E8C63B1DAA98BF3C0664980D87165B1A180022836F260592FE21A20CB66C5428E2B802C94AC5874D530407E0D37FFDB';
wwv_flow_imp.g_varchar2_table(34) := 'BD588C50F9747B0584BFF7F685C62E6118204D0134B6A2163C2A934BC30009096A2DA8715CBB2C934BC3003934973A85C5095632B9940048CD81E2841FFE3B8F860703C30041780D4FBC625E78BB3928914BC300F53B85616AED969F588F5726978601F2';
wwv_flow_imp.g_varchar2_table(35) := '66B83C244C1F995AACAD405F309786A2300CD0E16DDB060171CC50AFAA520C29208E057269CC25C30005BBFB6D70AB36D655402A87520039FC90EA1CEA1575056473280550BB2FE91D5240CD8348048B2E7DC11C1A765F0AA0EFEF7EAA4F68F85FC3BDC7';
wwv_flow_imp.g_varchar2_table(36) := '5D456B05C4B9E31CCA782D0590DEB1DFFF8ABE552BEB296042EEA401AAD9F50C9FC6D4D598F5F03916CC9D94E7D200057A176A140A0861A1B539393305A0ECC16B3F26E5AE90A9C51A0A5C0DE64CDA5B5300DABD7BB71702CF497BA31A88880242A05CCF';
wwv_flow_imp.g_varchar2_table(37) := '9909BD990210FBB17F57195F8DEDE37D6531ADC0BE9A5D656F98E5A16900B1437DB9DADFD2E38DF7785F59480A44A4305DB6FF369023F3BA3315207EA6E270E05172AF9D4C2DB1A5C03587703ECE3932D32D530162C75EF96E79BD7088FB68BF9E4C2D31';
wwv_flow_imp.g_varchar2_table(38) := 'A180765938F1C57D554F5F33DB1DD30162076BBE5BFEBE4FF3AE82267EC5EF95454F014DC3AF7DDAE0CA9AEF94D585C38BB000C48EBEBAF3394FC3BC9C4DB47F884C2D515040407CEFF379D90F702EC2D57DD80062877FF4E8A3BEFD5565E574895F4EEF';
wwv_flow_imp.g_varchar2_table(39) := '07C8D41219057A3581C76BAACABFCD39086797610568C871BAC43FE414A280AE02FE5E009F0D1D575BD315A09BB9DA6ED27AFEBE5D653F44045E110188E3F8975DE5576B7696BDD8383F3B1F423C4220FD828ED386D66A31AC0055F491BD21A03DD4303F';
wwv_flow_imp.g_varchar2_table(40) := '7BCEFEAA6DFFC05AD3B1882C110368281A1E52F7EF2AFF494D55D9A63EA7964543ED3AFAEC5B04D57F40C307B4EF2553CBD80A78592301FCA710DA0EA139D627B9DC59344DD85253B5EDA7ACEDD8D5C27734E2000D0FE5F077B65DA7A1F67724C03E82EA';
wwv_flow_imp.g_varchar2_table(41) := 'C9FD3BCB96D1BEBBCBE54EF7BA7DD3845B9B277CB80BC2B156031E10025BEC601C2BC7CCB1B306AC056BC2DAB046F4E57BA266D7B6576A766E7DEBA517BED98928BEA20AD07871BF4EA21C78FED9C69AE7B75DAAF9BBB2BAFDBBB61ED95755F626DF82B7';
wwv_flow_imp.g_varchar2_table(42) := '8371AC1C33C7CE1AB016ACC9787A45F3784C02144D4154DFA129A0000A4D2F557A94020AA0EFC4D90E0000005B494441545182A8B7A129A0000A4DAFF8296D52240A209384B46B330A20BB66DEA4B81540260969D766144076CDBC49712B804C12D2AECD';
wwv_flow_imp.g_varchar2_table(43) := '2880EC9A7993E256009924A47D9A1919A90268A41EEA5D880A288042144C151FA9C09F000000FFFFC9A3FB1F00000006494441540300D60968999E7B7CEB0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(133024417779823564279)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC9D497014D719C7BF99D1481AAD0809210C4862118BD8C4228110B604C260631212075276CAC18E0F768C5339A51C57E5987252957B52F625';
wwv_flow_imp.g_varchar2_table(2) := 'A9F2C5075F924B52CEE6503194C160C0069B45EC8BF67D9B91461AF7EB51BF6E8446D3D274F7BCD7FD9F52CF7CFDFAF5F7BEF7FBFA3FD3AF37F97FF9DEFB314C60E0D56DC04F788180870940001E4E3EBA4E0401602BF0340108C0D3E947E73D2C00241F';
wwv_flow_imp.g_varchar2_table(3) := '04B00B846DC0E304F00BE0F10DC0EBDD8700BCBE0578BCFF1080C73700AF771F02F0E216803E730210004701C38B0420002F661D7DE60420008E0286170940005ECC3AFACC0940001C050C2F1098DE4708603A11CC7B8A0004E0A974A3B3D3094000D389';
wwv_flow_imp.g_varchar2_table(4) := '60DE530420004FA51B9D9D4E0002984E04F39E22E02101782AAFE8AC490210804950A8E64E0210803BF38A5E992400019804856AEE240001B833AFE895490210804950525743F00909400009D16081170840005EC832FA9890000490100D1678810004E0';
wwv_flow_imp.g_varchar2_table(5) := '852CA38F0909400009D160811B0824EB0304908C1096BB9A0004E0EAF4A273C9084000C90861B9AB094000AE4E2F3A978C0004908C1096BB9A808B05E0EABCA173161180002C02093772128000E4CC1BA2B6880004601148B8919300042067DE10B54504';
wwv_flow_imp.g_varchar2_table(6) := '20008B400AE506C1982600019846858A6E240001B831ABE89369021080695462541C1F8BD0D0401F0DF476515F573B75B73FA2CED6FBEAC46C56C696B13AACAE18518B1B0504206E6E7864B1588C468707A9A7A3957A3BDB69647080C22323341689D044';
wwv_flow_imp.g_varchar2_table(7) := '344AB1C9983A319B95B165AC0EABCBD6191D1E22E6833B84C10940001C8598C6C8D00075B53DA0C1BE5E8A8E8FCF3948B6CE605F8FEA838968CE0E245B61AEE142007325E6607D7557A6BF8FD837BCD66C3098414B1697D2E68DEB684F7D2DED6FDC4387';
wwv_flow_imp.g_varchar2_table(8) := '0F36ABD3FEC6066A50CA3656AFA5B2C58B28180C68ABA93E0615110DF476F33218441080805BC1C44454DDDD61BB325A78191901AA5E5B45CFEFDF4B75DBB7D08AF2E5545CB4807273431408F8D5293737874A94B25595E5B4737B0D3DD7BC575D272310';
wwv_flow_imp.g_varchar2_table(9) := '20ED151E19567D4F4E4C68459EFE8400044B7F6C72521DDCB25D172DB4D245C5EA377DD5AA4AF2F9B4D2E49F7EBF8FD83ACD4D0DB4A8A498AFC07CF776B5512C36C9CBBC6A40008265BE5F39BA3311D5BF9D575494537DED36CACACA9C77A4D95959B45B';
wwv_flow_imp.g_varchar2_table(10) := 'F15159B19CFB606D607788B00BC4B708010C36E01D0B8779241BD6AFA1CD1BD6F2F9940C1FD1960DEBA87A5D157713191D558F2EF1020F1A7EF7F459EE9E8C8F8DA9C7F7B55E54562CA3D52B2AB459CB3EAB56565265F932EE6FB09F1D5D1AE3F35E335C';
wwv_flow_imp.g_varchar2_table(11) := '250036C0EBEFE9540FF9753CBC47324DBD9D6D44B1F8E6575CBC90B654AF8FCFD8F0BE65C37A2A51DA505D2B6DF674B42565C50EC532B68CB1BA9E4BDE5C2180C9C90975E0C8F669D9CFFAE484BC83BB8072C4A6B6661391B2CB4276BD14DF3B9436FC01';
wwv_flow_imp.g_varchar2_table(12) := 'C530D90663CAD832C67DDD1DC4989B5C55E86AAE10407F4F977A565468D2268363BB27A90C784D36A30EAA2B96E98362B3EBB17A6C9C32D0E38EF309D20B203C3244E39108CB0B854259D4D4504BAFBE7484DE7EFDE5794FAAB3A9B73FBDF70ED939FDEE';
wwv_flow_imp.g_varchar2_table(13) := 'D727A65A8A7FB063F8712BF9FB9DFB0FE9CCB98BF48F7F9F542766B3B2E46BC66B4C1F63FCFEDD1309FBCAE27CF9C801CACD09A92B8F45C21456CE29A83312BFC92F80D1118E7F77ED56DAB07635E5E5E4F032D18DCBD76FF2100B0BF3151167F3F94446';
wwv_flow_imp.g_varchar2_table(14) := '381CA1FF7FFE055DFAFA1B6AEBE8A43165003DA64CCC66659F9D3947E148F2816D4E4E3615E4E7F166AE5CBFCDEDE9C682823C7ABAAE868E1C6CE48B22619D3D2F94CC905E00E363F16F7FC67DA572E4847DCA345D6DB9CBC35D525ACAEDD98C335F5EA4';
wwv_flow_imp.g_varchar2_table(15) := '9E9EBE8455BABB7BE9DC854B09971B172C59ACB779F5E61DE3A219EDCDEB56F17276E48ACF486A482F80D8A47218630A7E66303865C9F3D1DAD1C5835D5854C8ED44C6AD3BF7A9AF6F405D9C971BA2034DBBE9CDE3C7E88DE347E9C0DE06CACB8DFFFA75';
wwv_flow_imp.g_varchar2_table(16) := '2B02B97DEF815A6FB6B7A2050BF8E2B6CEE4FBF50579B9BCBE1B2EA7905E003C1B921AC323A33CF2507688DB898CD6F60EBEA861E736AA5A594119191914CC0852D58A726AD8B58D2F6F6DD3EBF2C26946283B8B970C0FEBB1F042971B10409A136C1440';
wwv_flow_imp.g_varchar2_table(17) := 'CED40073B690FA07E2DFFEACCE4AC3092D36CFA6CA654BD8873A0D0C0EAA9FB3BD8542FA98635839333C5B5D372E8300D29CD549C32E5C4C3B13364B4C3E9F9EB2584CDFFDD356F1914F334D7DFA03BA3F632CA65616A052AA21E8BD4FD513D69F1781DC';
wwv_flow_imp.g_varchar2_table(18) := '1CFD1B787C3C9AD487F1A8CD9D078F9EA87FDB5056909FFFC4F2E905E3869B6C4286DDA1E9F5DC3A0F01A439B3C68D2E32753E63B6902A962FE58B3FFBFC4B6AB9734FBD2D321A8D52CBED7B744A29D32A54962FD7CC849FA3CA21556D614E28F91844AB';
wwv_flow_imp.g_varchar2_table(19) := 'EB964F0820CD992CD5AEC951E218181C52DE67FF5BF65419152F2C522B0D0D8FD027FF3D45EF7FF8317DA04C9F7C7A8A58195BC8EE2178AA6C1133679D0607F47142D9A285B3D675E3420820CD592D2BD56F5431230016EE8E9ACD8A08F4C397ACCC3895';
wwv_flow_imp.g_varchar2_table(20) := '1417D1D6CD1B8D4509EDBE015D744B169724ACE7D60510409A335BB1B48C47D0D5D3CBEDD98CECEC4CDAB3AB966A365513FBA6CFCC0CAAD7F6942A6262650D3B7750B6C91B68BA7B7A7853C62348BCD0E586C40270476636AE5DC58FDBF4F5F5D3C41CAE';
wwv_flow_imp.g_varchar2_table(21) := '6465E30176B7D8F3FB9BE8B9E646AADFB18D58995932E1C81869BF3A81808FAAAB56985DD535F5208034A7927D532F7DAA9447F1A8BD9DDB761BAD86936A2B94C1B5F1E679BBDB16C53F0420402636AD5BCDA3686BEFE4B6DD86F14CF1E6F57A0C76B72B';
wwv_flow_imp.g_varchar2_table(22) := '927F0840806CD46FDBC4A3E8E8D4AF0DE285361863CAEE4F6757FCDA1FBF72EE6C9721061B9A13D6250420406A4A8A0AA962EA1286687482D8056F64F3EB96E142B9AA55159467E2320C9B434A8B7B08202DD89F6CB4A176332FBC7DEF3EB767342C28BC';
wwv_flow_imp.g_varchar2_table(23) := '735F6FE399BAAD167894D305042048DEEAB76EA29CA90BD3868686A9B5C3BEB1C01DE5DB3F128EDF3053B4A0806A36AC118482F3614000CE339FB1C540C04FF5DBF5B1C0F596C47767CDE8600E85376EE937BE3CB3732B3F0C3B0717AEA90A010894CA83';
wwv_flow_imp.g_varchar2_table(24) := '8DBB28180CA811B17302ED360C88D94D322353F720B05F9C26C3FD036AC31E7B8300044A381B88D6D5E897307C7BADC5D2E8262727E9DA8D9BDC67A3B2F1672967917981070D0840B0A41FDA5BCF7F05FA0706E961AB7527C66EDCBE4B11E5F027EB72AE';
wwv_flow_imp.g_varchar2_table(25) := '72D4E7D9A7EB9829D56475B01080D54453F4575458404DBBB6732F57AE5EA719EE7BE1CBCD1A63E3E3D472531F571CDAB7DBF4F54266DB90B11E042060D60EED6BA0FCA99BDB4747C3D46218B4CE37DC2BDFDE20768E81AD5F565A427BEB7591B132AF4E';
wwv_flow_imp.g_varchar2_table(26) := '1080809967FBE52F3437F0C8AEB6B4D08822045E3047A3BBB78FEE3D7CC8D73A7A682FB7BD6E4000826E01EC21548BA76E50999C88D185AFAECC3BD20B5F5DE60FDE5DA39CF5F5E2559F89E0410089C8A4B9DCE7F3D18BCFEFE3517475F728DFE2AD7CDE';
wwv_flow_imp.g_varchar2_table(27) := 'ACC1C610C6C79D1C3DA4FB34EBC3CDF52412809BD33073DF36AD5D497535D57CE1E56FAF9A7AE4A1B6424F6FBF327ED09F3CC7C616CB4CDC26A9ADEF854F0840F02CBFF4FD0354981F7F1ADBF85894CE5FFCDA54C4EC5F209DBBF815AF5BBEB48C0E1BC6';
wwv_flow_imp.g_varchar2_table(28) := '157C81C70D0840F00D80DD30F3DA8FBF47CA1E911A29DB15BA7AE3966ACFF676F6E225624790581DF61F267FA6F86036A6C70940008FF310726EEDCA72DA535B43DAEB9A723677B6CB24AE2902E9E8885FEBCFD63972A0911697C49F24C1E631E9042000';
wwv_flow_imp.g_varchar2_table(29) := '9D85D0D6B1C3CD647C82C4F94B5FF3B3BAC6C0BBBA7BE95A8BFE0BB16E75253537EC3056816D2000011860086B2A81650402F4F3575EA4ACCC0C658E888D07CE9CBFF8D859627693FB3965D7477B64227BA6FF1B3FF9815A1F6F3313800066E622646969';
wwv_flow_imp.g_varchar2_table(30) := '71111D3F76987C53D1F5F6F59336D065D7F89C3E7B4EF955185797063302F4D6F11FE172079546E2370820311B21976CAD5E43079AEA796C8F5ADBE9F4D92F95E93C0D0E0EF3F2575E3C44CB972CE6F33066260001CCCC45E8D223CF3E4DC62B39D9CDED';
wwv_flow_imp.g_varchar2_table(31) := 'DAF37DFC011FBDAAFC4AD46EB1EFDFAC0A0D678EC141007304264AF51F3ED744475F68269F4FDB2122657727486FFDF428ED349C3C13255E51E3800044CD8C89B8F6EDDE4EBF78ED18151715123BD1F5CE5BAFD206973DDD8D6C7E41003603B6DBFD7AE5';
wwv_flow_imp.g_varchar2_table(32) := '30E76F7FF526BD7BE23879F1E9CEA9F28500522588F5A5260001489D3E049F2A0108205582585F6A021080D4E943F0A912105800A9760DEB8340720210407246A8E1620210808B938BAE252700012467841A2E260001B838B9E85A720210407246CED740';
wwv_flow_imp.g_varchar2_table(33) := '8B8E1180001C438D8644240001889815C4E4180108C031D46848440210808859414C8E11709500FEF8E78FC88AC948FFC46FFE40981E6760E463B5EDB43F5709C06978684F7E021080FC39440F5220E02A01BCFDFACB64C564E479E4D0B3E4D474B0B991';
wwv_flow_imp.g_varchar2_table(34) := '0AF2F3F4E67D448D0D7596F4C90A2E9A0F3D40F92D570940F674B0E780D6D76DD74510233A79FA2C5DBEA6FF633BD9FB285AFC1080601981089C4D88400270B6E322B7061138971D08C039D6736A09229813AE79578600E68DCEFE152102FB194300F633';
wwv_flow_imp.g_varchar2_table(35) := '4EA9058820257C4957860092224A7F0588C0BE1C4000F6B135EFD9444D88C004A479548100E6012D5DAB4004D6938700AC676AAB4788C05ABC1080B53C1DF1061158871902B08EA5A39E20026B704300D6704C8B173788202DE00C8D42000618329A1041';
wwv_flow_imp.g_varchar2_table(36) := '6A59935E00FE408013180D87B9ED256346119C625791B6588E61626282FBF40774F6BC5032437A016404831CF9DD07ADDCF69AF184081400274F7D4197AF592B82DBF71E289EE37FC16066DC90F85D7A018472F339FED35F5CA06FAEDFA491D1515EE625';
wwv_flow_imp.g_varchar2_table(37) := 'C34E1144A351BA71EB2E9D3A7B81230DE51A6EDEE1A57219D20B202B3B4499D9D92AF5D1D1087DFAD959FACB477F4DE9E678D5D9D4DBDFFEFE2F9269FAE43F2749FB97A9535D20F64B90EAC3023EF8F063FAE7FF4ED3D070FCCB252BC4B887B426A4FD4C';
wwv_flow_imp.g_varchar2_table(38) := 'A300AC63565054CC45609D57784A44807DE1E42F589868B154E5AE1080DF1FA005C5A5C484C0BE99FC01F90767A26D45FE4080185BC698B166CCC9052F570840CB43764E2E152E5C4425654BA9746939260B1930A68C2D63ACF176C3A7AB04E08684A00F';
wwv_flow_imp.g_varchar2_table(39) := 'CE1280009CE58DD604230001A4232168531802108030A94020E9200001A4833ADA14860004204C2A10483A084000E9A08E368521000108930A6F04225A2F2100D13282781C250001388A1B8D89460002102D2388C751021080A3B8D19868042000D13282';
wwv_flow_imp.g_varchar2_table(40) := '781C25E0A0001CED171A030153042000539850C9AD042000B76616FD3245000230850995DC4A0002706B66D12F53042000539852AC84D585250001089B1A04E6040108C009CA684358021080B0A941604E1080009CA08C3684250001089B1A7704267A2F';
wwv_flow_imp.g_varchar2_table(41) := '2000D13384F86C250001D88A17CE45270001889E21C4672B0108C056BC702E3A010840F40C213E5B09D828005BE3867310B08400046009463891950004206BE610B7250420004B30C289AC042000593387B82D2100015882719A13CC4A43000290265508';
wwv_flow_imp.g_varchar2_table(42) := 'D40E0210801D54E1531A02108034A942A076108000ECA00A9FD2108000A449951C81CA16253FAC95760000008D4944415404205BC610AFA50420004B71C2996C042000D93286782D250001588A13CE64230001C89631C46B29010B0560695C7006028E10';
wwv_flow_imp.g_varchar2_table(43) := '80001CC18C4644250001889A19C4E5080108C011CC684454021080A899415C8E108000ACC00C1FD2128000A44D1D02B7820004600545F890960004206DEA10B8150420002B28C287B404200069532746E0B247F11D000000FFFF6B5D0A89000000064944';
wwv_flow_imp.g_varchar2_table(44) := '415403000DF51679C2467EC70000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(133024418025811564280)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D09781CC595C75FCD68644BB224E40BDF3736C6F8C0878C4F6C83B1218BB1039B902C677613C9060B72EC029661156C019B4D3658062C93';
wwv_flow_imp.g_varchar2_table(2) := '2F21C7972FBB9B84C0EEB29B84243804733BD81CC6A77CDBB2ADCBBAAFE9DE7A234DCFE89EB3BA7BFAAFAF6BBAFAA8AAF77EAFFA3FDDD53D2D17E10F0440C0B10420008E0D3D1C07012208007A010838980004C0C1C187EBCE26C0DE4300980212083894';
wwv_flow_imp.g_varchar2_table(3) := '0004C0A18187DB20C00420004C0109041C4A0002E0D0C0C36D6713F07B0F01F093C01C041C480002E0C0A0C36510F0138000F849600E020E2400017060D0E1B2B309047B0F0108A6813C08388C0004C0610187BB20104C0002104C0379107018010880C3';
wwv_flow_imp.g_varchar2_table(4) := '020E779D4DA0B3F71080CE44B00C020E2200017050B0E12A0874260001E84C04CB20E02002100007051BAE3A9B4077DE4300BAA3827520E01002100087041A6E824077042000DD51C13A10700801088043020D379D4DA027EF21003D91C17A1070000108';
wwv_flow_imp.g_varchar2_table(5) := '40A7206F2C2AEAF750C1F72FDB50F0DCB06F6CFDD1E807B6FC607CDE778AAFD8F864F1550F163E3FE3FEC29DB3F39E7A7E0E92F518706C38461C2B8E19C78E63C8B1E498726C3B85DBF18B8E14808D5B764E949DE4F30F6E2DFE765E61F1CB327D9857B8';
wwv_flow_imp.g_varchar2_table(6) := 'E38C9CEBA226B951F3A4542679DCE75A45F34997CB5B422D7448E8F4A94EAE7D6ED2F790E6FA00C97A0C38361C238E15C78C63C731E458724C39B61CE3F658CB9817BFCC7D80FBC2D79F7A7E8213D5C01102F050E10BB3F20A773E965758FC67996A854B';
wwv_flow_imp.g_varchar2_table(7) := '3F223BC9AF75418FCBA0DF2AD32C223182F0E71002BE58CB98D3ADDC07B82F7835D751EE1B521C764941D8BCF1E9E2998902A3373F1252000A0AFE3339EFC9E29B1F2CDCF1FCC6C2E2931A691F12E94F48104B654A93091308744740F60D719DD0698BF0';
wwv_flow_imp.g_varchar2_table(8) := 'D25E290825323D23D3F5DCA7BA2B60F7750925005F7FEAB94932584F56782A4A48A7577512EB05D168BB0709F69B4660BC6CF94199FEC07D6AE3D61D85DCC7E472C24CB6170039C0336063E18EAFC803FF2F5ECD7D5846E6519946CA840904624960A410';
wwv_flow_imp.g_varchar2_table(9) := '6213F731D9D7DE907DEE5EEE7BB16CC08CBA6C2D00795B77AC7327BBDF11247E28E12D96091308A820B044F6B917933C49BBE465E62A150D46DA465FE56C29000F6DD9B14CAAF0DB24C44BF27A6D5A5F4E623B08C487803E475E66FE96FB22F7C9F8B411';
wwv_flow_imp.g_varchar2_table(10) := 'DF5A6D25007CCA9557B8F3179A4BBC2EB15C2B132610B002816BB94FE61516FF8CFBA8150C0AD506DB0840DED61716CAFBB9FBE468FE1DA13A87FD404031813B651FDDCB0F89296E37E2E66C21000F1616DF4D42E36F7D473EAC11717451D00C02134973';
wwv_flow_imp.g_varchar2_table(11) := 'BDE5EBB366B41ED46628596B0B80AE0BBEF5A213FD443A932C132610B0038164EEB30F6E2DDE6275632D2B00FCE0C5834FEEFC15DF7AB13A44D80702DD11D0056DDE5858FC13EECBDD6DB7C23A4B0A40414141524552C5AFA58A7EDE0A90600308444A40';
wwv_flow_imp.g_varchar2_table(12) := '10DD5DEEA9FC25F7E948EB8867394B0A4065F2B09F92A0BF89A7E3A81B04541110A4AFA9F00C7B51557BDC4EA8C9720220074F9ED675FA52A80E603F10B009813BB96F5BCD564B09C0C6AD3B1F92A7FD0F5B0D12EC01815810E0BECD7D3C1675C5AA0ECB';
wwv_flow_imp.g_varchar2_table(13) := '08C0034FEE582484FEBD5839867A40C08A04641FFF6EDED69D96796CDD1202C0A3A42E5DF0AD3E4BD863C58E039B1286805BDE1D7891FB7CBC3C0AA75E4B1C70959E8A27A4D11365C20402094F400E0A4E6AEFF3A6FB6ABA00E415EEB85A5E1B7DCB7412';
wwv_flow_imp.g_varchar2_table(14) := '3000041412E03EFFC0133BA72B6CB2DBA64C170022B19588DC32610201271170BBDCBAE94F0A9A2A00795B5F582823CEEFE493334C20E03802B7C67A40305C82A60A0009EFBF866B30F60781842220343E0336CD25D304E0A12777AE25127C0640F80301';
wwv_flow_imp.g_varchar2_table(15) := 'E71210D7E53D55BCDA2CFF4D13004DD71E32CB69B40B029622A0E98F98658F290270FFD667C712097E4537E10F0440402C7D60CB0FF80DC451A188A4B02902E016EEFBA4B142264C20000244C2E56ABD874CF8532F00BA2E0F7CD7BD26F88A2641C0C204';
wwv_flow_imp.g_varchar2_table(16) := 'C4DDE43B36D49AE852DB1CD1C6C21DF389747909A0BA65B40702962630BEEDD8506BA372017009971CFD57EB245A03013B101042447C372052FF5C91168CB49CAE93722723B515E540402D8104178007FE65FB081234432D54B40602B62190FDB5A77766';
wwv_flow_imp.g_varchar2_table(17) := 'AAB456E91980684DBA513A270701E52726100081CE04447FAF7653E795F15C562A002E72E1BFF9C4339AA8DBF60404B99651987FD1ECEE8AA670B86575D267855B06FB83809308A83E46940940414101B785EB7F27F566F81A0981E9EDC74A2465C32EC3';
wwv_flow_imp.g_varchar2_table(18) := '0765D885222950E519C1077F4A24655106041C4420B52C79F86455FE2A13004DD770FDAF2AAA68C7D6045CBA16F2A572B48E2A1300218432A7A28582F2206026014142D9B1A24C0034D2C79909156D83805D08E84457AAB2559900089D86A9720AED8080';
wwv_flow_imp.g_varchar2_table(19) := 'AD09E8A4ECCB52990090800010FE40201402211E2BA154D5D73E4A04A0FDB6C6A0BE8CC1761000011F8181EDC78C6F219E1F4A04E064CAE834E944924C98400004FA26E0394BC3FBF7BD5BF47B2811808C866A77F4A6A20610700E8154AA4F56E1AD1201';
wwv_flow_imp.g_varchar2_table(20) := '484AEBAFC41915C0D00608A820D0D731132B1B9408406BB30B6700B18A18EA71040155C78C120168D65B71FD9F60DD56D735F2B6B6504B73133536D4537D6D0DD5D75453637D1D353736506B4B33699A37C1BC56E78EAA6346890024BB7106A0AEEBC4B7';
wwv_flow_imp.g_varchar2_table(21) := 'A52679B0575E2CA58B674F53F9F9735479F13C55579451EDA54AAAADAEA2EACA72AA2ABF4815174AA9ECDC192A2B3D4D7535972006618645D531A34400BCAD108030E36FA9DDF9DBBEBEB65A1EF067E8923CD85B9A9B43B64FF36A54577D89CA4BCF5075';
wwv_flow_imp.g_varchar2_table(22) := '5539B5CAB386900B3B78C7DE8E995862512200EE641706016319358575F1297EF9F9B3F21BBE4A9EF2773DA577B95DD4BF7F3F4A4F1F40975D9641A9A929E4F12475B150D7891AEBEAA8429E35F09942971DB0A20301CD2D948C9B2911000AE31BA30305';
wwv_flow_imp.g_varchar2_table(23) := '2C984A804FDD2BCBCE137F8B071B929AD29F264D1847CB962CA45B565D4FAB562CA5154B16D0750BE7D3CA658BE9E695CBE92699665C3D95060FCA22D1A997F158015F3A68DEAE8242F8F311F0785B1248007C2EE1C32E04344DA3AAB20BBE537792DFDC';
wwv_flow_imp.g_varchar2_table(24) := '7EBBF9DB7DDE353368E5F22534EDCA2B28333DCDBFA9CB3C599E058C1F338A16CD9F4BD72F5D4CC3875D4E24C8F8E3338B8A8BE7A8A5A9D158878C7A029DB459BD0168D17A042E955FA0E64E07E6B42B27137FBB8F182E0FE4304D4E939705D9B367D052';
wwv_flow_imp.g_varchar2_table(25) := '79863060404034F8CCA2520A0DDF3108B34AC7EE1E6BC72100B1266AF3FAF8B43F78902F39D9434B1764CB53FEB1517B9695992145209B860EE9F8B3904B9565A4F32041D42DA08270094000C22596C0FBF337318FD8FB5DE46FEEE58B17505656EC5E55';
wwv_flow_imp.g_varchar2_table(26) := 'EF494AA205F366D3B8B1A3FCCD90B7A5D5770BD158818C3202100065A8ADDD107F03F32D3EBF953C92BF207BB66F84DFBF2E96F399D3A6D2B0CB87185536D4D674B9EC303622133702108028D17ABDADD450574335F21E77951C31E751735BA68BA5F236';
wwv_flow_imp.g_varchar2_table(27) := '5FAB8F86908375D9B367515A6AAA6F395E1F73E580626646BA513D3F50D4173B66CCAC9939B3370A3B20130F1721001152E56F4CBE5EAE90F7C86BAA2AA508D4C96FB02639AA6DCFD4DAD2629098306EACEFF69DB1224E19B7CB4573AF994EFEDB847CF7';
wwv_flow_imp.g_varchar2_table(28) := 'A1A5A9777ECD727B435D9D14DC4ADF33051C038E459C4C4CF86A21001186B85A0E5CF1F572A28D5DF1A9FF94491322A4127EB1016969346AC488F00BCA127CE0730CAA2BCBE512A64808400022A0D6D850474D0D0D46491E2C9B34610CCD9E7155542925';
wwv_flow_imp.g_varchar2_table(29) := 'A59F51E794496369E5926C25C9685466264D18DFED937C72538F534D6D2D9D3875860E1F3D4E65E515E4F56A3DEEDBDD86A9932792CB25AF3BDA375E3D6562AF7ECF9E7E2565043D83D0D4504FFC83A4F6E2988541000210062CFFAEF572C0CA9F1F3B7A';
wwv_flow_imp.g_varchar2_table(30) := '04DD7BC75A5AB56C112D983B33AA94D2BFBFBF5A9A3E6512AD5BBD2CEE69FEEC69469B9C99307634CF424A17CB2AE80FBBDEA43FBDF136EDFD783FED3F789876BFBB87FEF7B53FD167878E90570B4D08D8EFA143061B6D0ECCCAE8D5EF7FB8630D3DFDC8';
wwv_flow_imp.g_varchar2_table(31) := 'FD74D5E4F1469986DA6A239F889978F9040108932C9F76B6063DDA3C7FCEF4306BB0D6EE9F1E3C66189499994E4949A13D817AE07009BDF5DE1EAAAB0F9C09F92BD2349D0E1D3946BBDE7C27E4FBFB4306059E0D385472CA5F55AFF3352B9718DB83C730';
wwv_flow_imp.g_varchar2_table(32) := '8C95C8F4490002D027A28E3BF06FE083D70C1938307831AABC087E5636AA9A422F7C409EB6FBF71E1CA22F5597AAE9D0D1127F3179B72085268C1B4D53AE9840970F09F0A8ADADA37D9F1C30F6EB2D73F9D021C6E6D20B655453576F2CF79419336298B1';
wwv_flow_imp.g_varchar2_table(33) := 'C927CCAD81814C630332BD128000F48A27F1379E97A7F17E2F33060CF0677B9D1F2A394EBAFC96E79DC68D1949F77CF156BA69C562BA61C97CBAFD9655B462E902DEE44B274E9FA69696B6DB8BBE153D7CA4A5F627FE65A17FF399F365FE6CE8F3441B91';
wwv_flow_imp.g_varchar2_table(34) := '0DDDF388F78400448C2E310A3636067EDBEFE9E709C9A9F2F24A63BF79B3AE262184B1CC99A993C6D1D0C1ED67023A517965607FDEDE53E2A704FDDBEAEAFB3E03F0EF9BE8F378FA070188275D1BD45DDF10F8359EC7D3B700D4CA03B3B97D0C848FFB21';
wwv_flow_imp.g_varchar2_table(35) := '83B2BAF53223237036515651D5ED3E9D5706B75F571FB0ABF37E588E1D010840EC58DAB226FED9AEDF70FE759E3FDFD33CA55FE04E059F71B7043D40145CA6B535F05B7F8F272978538F792DE8AE81C71D5A991E2BC3869008400042C294B83BF5EF976C';
wwv_flow_imp.g_varchar2_table(36) := '3817CA48BADBEDA294948008949C3C6394F767F840BE50167838272B23C3BFA9D779B098A4A6069E89E8B510364645000210153EFB174E4949319CA86F0CEDB47BAC1CF8F3177AF39D3DB4FFE0516A6C6A223EF0CF9DBF40AFBEF667AA6F3F85E7DFFF0F';
wwv_flow_imp.g_varchar2_table(37) := '1ED43E1EE02FD4CD9C1F1E0A1E2C4C4F4BED662FE7AD8AB7C710807813B678FDC3826EDBD5D4D48664EDE409132823BDED1ABFA9B9855EDFFD1EFDF0E72F51F14FFE835E7AF58F74F24C695B3D726C70F6CCAB29F829BFB60D5D3F2F55071EE41142D098';
wwv_flow_imp.g_varchar2_table(38) := '91815B7C5DF7C69A58118000C48AA44DEB19312C70FFBD46DEB70FC50D797CD2BCD93389BFDD83F7E73101FF321FF433A64D257E09887F5D6FF34B976A8CCD83076652923BB407928C42C8444400021011B6C429346ED470C399CAAA4B213FC73F409EA2';
wwv_flow_imp.g_varchar2_table(39) := 'AF58B280F8C51EC9C981013B1687815997D1758BAE257E27A051791F998B41B70A4745F0DAB13EAAC7E61E0840007A00E394D5574E1CDBE114BDAC22B47BF6CC470841FC628F9B6E584EFCA2507EE7DF9A9B56D29205F38C4B04DE2F94545E5E61EC76E5';
wwv_flow_imp.g_varchar2_table(40) := 'C47146DEC91915BE43005450B6701BFCF0CDD8A0B380D20B1722B2965F159E75594644652B2AABA8598E25F80BCF983AD19FC53CCE04200071066C87EAA75E31DE30F36C69640260541041E6D4D9F641435976D8D0C194D93EC0281731C599000420CE80';
wwv_flow_imp.g_varchar2_table(41) := 'ED50FDB5D75C6D98D9DCD44C17834EC78D0D71CC9C2B3D6FD43E67FA14238F4CFC094000E2CFD8F22D0CCECAA45123861A761E3F79DAC8C73B73561EFC4D5274FCED048B917F9D13E7AA7C8600A8226DF176E6CF0A9C05949EBF10D22FF862E152B0D84C';
wwv_flow_imp.g_varchar2_table(42) := '1C37920649318A45BDA82334021080D03825FC5E4BE7CFA294FE6D8FDF6A9A4E25C74FC6DDD88D7A6800000FBB4944415467FEC55FF0E5C60D8BB2E3DE261AE8480002D091876397F86EC0C2B9330CFF8F9D3C452C04C68A38640E1E3946FEFF3D386860';
wwv_flow_imp.g_varchar2_table(43) := '26CDBCEA8A38B4822A7B230001E88D8EC3B6DDB0789EF14C005F979F38DDF5873EB142D2D0D048A74E9F35AABB71E9B546DEE91995FE430054D2B6785B7CFB6DDECC698695070F1F0DF9C940A35088994F0E1C32F64C1F904A0B674F37969151470002A0';
wwv_flow_imp.g_varchar2_table(44) := '8EB52D5A5ABD6C0109D1662A9F051C3A2A4FD3DB1663F65959554D67CF056EFDAD90671EFC33E39835808A422600010819953376BC7C7056876BF1A3C74EC4FC8EC0A7070E1A3007A4A5D08A05738C6564D4128000A8E56D8BD6D6AC5C2ACF02DA4E03BC';
wwv_flow_imp.g_varchar2_table(45) := '5E2F7D76E868CCECE67F1C525E117845D8F58BB389072063D680CD2B526D3E044035711BB4376CC8209A356DB261E98953A7A8B636362FE9DCF769E035E1FCEDCF038F4643C828270001508EDC1E0D7E7EF532F2FFCC976F077EB0F7A3A80DFFE4B34352';
wwv_flow_imp.g_varchar2_table(46) := '48EA8C7AD6AD5E4E6E17BAA001C4840CE89B00DD0E4D0ECACAA4CFAD586C987AA9BAC6F7BFFF8C1561662A2B2F118F27F88B4D1A3F9A16CC0E3C7DE85F8FB95A021000B5BC6DD5DACA25D93432E88D41078F94504388EF0DECECE8DE4F3E33567992DC74';
wwv_flow_imp.g_varchar2_table(47) := 'CFED9F339691692360C62704C00CEA366AF3CE75AB49B4DBCB0382A1FEABAFF622BED9E192E3545D1378E5D72A79AB715084EF0EF055888F98118000C40C656256C42F0BC90EFAB9F0F90B17E96818BF13A892970E9F1D3A62C0E1F7FDADBA0E4FFD1940';
wwv_flow_imp.g_varchar2_table(48) := '4CCE40004C0E801D9ABFFDE6E594919E6698FAC9FE83547929F0165F6343A74C4B6B2BBDBBE743E3FF08F2E6BB6EFB1C06FE1884451204C02281B0B21969A929BE6B7621FC1703441F7CF8519F8F09EFD9FB3135363419AEF15386578C1B652C23132060';
wwv_flow_imp.g_varchar2_table(49) := '560E026016799BB53B75D238BA410E0AFACDAEAF6FA03DFB3EF62F7699F375FFF90B65C6FA896347D29A954B8C6564AC41C0650D3360851D08AC5D751D4D9938D630F55CE9053A2207F88C15ED998B6515B4FFC0E1F625A2CC8C01947BD76DC63232D621';
wwv_flow_imp.g_varchar2_table(50) := '0001B04E2C2C6F095F00E4FCDD3A1A183482FFA93CD083BFE9F989C1F73FDC67F82284A00DF2E04F0BFA7F82C646644C270001303D04F63280FF99E857BFBC9692E4BD7CBFE5EFCBF1001E146C6C6AA6DDEF7FD0E1C7435F5A7B238D1E71B97F57CCBB21';
wwv_flow_imp.g_varchar2_table(51) := '60E62A088099F46DDAF6D891C3E86F3F7783613D3F1FF0D6BB1FD05BEFEDE930E877ED9CE9B478EE4C633F64AC47000260BD98D8C2A225D933E9A6150B0D5B5B5BBD14FCCF45A74D994877AD5B6D6C47C69A042000D68C8B2DACBAE5FAC574DBCDCBC9E5';
wwv_flow_imp.g_varchar2_table(52) := 'E6D18180C98BB36751EE9DEB48888EEB037B206715021000AB44C2A6765CBF681E3DF4F75FF6FD6620333D8DBEF2C55BE8CBB7DE88877D428CA7D9BB4100CC8E4002B43F49DEE3CFDF781F3DF5C8FD3477C6D404F0C8392E40009C136B780A025D084000';
wwv_flow_imp.g_varchar2_table(53) := 'BA20C10A10700E01088073620D4F2D46C00AE64000AC1005D800022611800098041ECD828015084000AC1005D800022611800098041ECD3A9B8055BC8700582512B003044C20000130013A9A0401AB108000582512B003044C20000130013A9A7436012B';
wwv_flow_imp.g_varchar2_table(54) := '790F01B05234600B0828260001500C1CCD818095084000AC140DD802028A09400014034773CE266035EF21005146E4B91FFD826295CA2BAB0C6B7EF5EA1F6943FE7790FA60600043262202108088B0A11008240601084062C4115E80404404200011610B';
wwv_flow_imp.g_varchar2_table(55) := '14BA65F5328A554A4F1F60547CE5151369F1FCB98AD31CDF7FF1318C909971A387D3BA9BAFB764BAEF8E35D242FB4C56B41402106554C68C184EB14AC949498635491E0F0D1A94A5380DA485D9733B88C0F153E7E893834768C4B0A1964BA9A969062F64';
wwv_flow_imp.g_varchar2_table(56) := '22230001888C5BC2964A4EF6741181C3474FD0EFFFFC56C2FAEC64C720004E8E7E0FBE43047A009380AB21000918D458B8D49308BCF6C6DBB1A8DE717558D561088055236301BBBA138143478E1344C002C1899109108018814CD46A0C11480F0CB84104';
wwv_flow_imp.g_varchar2_table(57) := '1227DA1080C48965DC3CF18980BC25C9FFFACBDF0844C04FC2DE730880BDE3A7CCFAE4E4645A08118888B7950B4100AC1C1D8BD90611B0584062600E042006109D54054420B1A20D0148AC782AF10622A004B3924620004A30275E231081D0626AF5BD20';
wwv_flow_imp.g_varchar2_table(58) := '00568F9085ED8308583838219A060108111476EB9E40400406183BF02DC23FFCE51D631919EB128000583736B6B1AC4D04E65046D0CF990F1E3E461001EB87100210668C84E888CCAB6961D6D0F3EE3AE9C64661E4EC91F18940F61CCA542802BAAE9308';
wwv_flow_imp.g_varchar2_table(59) := '02253AC5C66C727668BF636FB683C526DBE84E4A222102BDAEB2AADA648BACD37CBF7EC9B4408A40D7338177E362E4C5F24A921AE0AB5BB804716C087F611180008485AB6DE7A4E4E4B68CFC7C77CF3EF989C94F80456061171128919703B11781F7F77E';
wwv_flow_imp.g_varchar2_table(60) := 'E26F96923C8198182B91E9930004A04F445D77481B9061AC3C7EEA2CFDF8DF5FA6DFEDDA4D6F7FB02FAAD4D0D868D45B5E5949FB3E3D60CB74E048096566A493DB1D38533A78B8847EFFFA6E7A7DF77B51A7FFFBD39B3EE6C74F9E3178A5A5671A796442';
wwv_flow_imp.g_varchar2_table(61) := '270001089D95B16772FF144ACB0874B8BAFA063A527292FEFAD1FEA852434393D1C6D973E7E9F88953B64DA7CE9C23AF5737FCE1CCE1632769FFC1A351A792E3A78899739D9C3816C9FDFA73D632C92E864000228C147FE3640E1C4C7CED196115281625';
wwv_flow_imp.g_varchar2_table(62) := '0166CF31E058445995638B4300A2087DBF94541A34740471274CBF2CCB7756C0DF4648997165C1AC9939B3E718441142C717850044D9055C6E3771274C494B27FE26429207BFBC1E8F270766CDCC5D6E37E12F3A021080E8F8A13408742160A71510003B';
wwv_flow_imp.g_varchar2_table(63) := '450BB682408C094000620C14D581809D084000EC142DD80A023126000188315054E76C0276F31E0260B788C15E1088210108400C61A22A10B01B010880DD22067B412086042000318489AA9C4DC08EDE2B118016B7C76B4738B01904CC22E0A5A466156D';
wwv_flow_imp.g_varchar2_table(64) := '2B110097578700A88826DA481802EE244DC931A3440054399330D187238E27D0EC4D200150E58CE37B0D00984620D60D278BA4D658D7D95D7D4ACE005439D39D83580702762490949C406700D452DF60C720C06610308B406B5D63E20C025E4623EBCD02';
wwv_flow_imp.g_varchar2_table(65) := '897641C08E04541D334A2E010A0ABEC06A1678E19D1D23029B41A007027158DDD47ECCC4A1EA8E552A1180B6264569DB1C9F200002BD135077AC2814001D02D07BD4B11504DA0968C7DB33719F2914008200C43D9C68201108E82201CF0004D18144080E';
wwv_flow_imp.g_varchar2_table(66) := '7C00816002F1C8BB744ABC33009DF4BD843F1000813E09A83C56945D0268C20501E833F4D8010488541E2B2E55C007379F3B24DBD264C2040220D03381FAF663A5E73D62B8459900141414F0C17F3886B6A32A103095409C1AFFB8FD588953F51DAB5526';
wwv_flow_imp.g_varchar2_table(67) := '00DCAC2E089701843F10E8998020A1F418512A0042A35D843F1000811E09E8BA9EB802A07BDCFF233DD765C2040220D09580AE795AFEABEBEAF8AD517A06B0FDE1AF9E269D3E8A9F3BA81904D410884B2BF2D878F6E18D67E352770F952A1500B64108FA';
wwv_flow_imp.g_varchar2_table(68) := '2DCF914000043A1230E3D8502F009A0E01E818772C81808F80A66B2FFB320A3F940B40FD50D76E227182F0070220104CE0E4A0D60B1F04AF5091572E002FE4E4B410693F56E11CDA00817810884F9DFA8B0505054ADE03186CBF7201E0C6BDBAF74539C7';
wwv_flow_imp.g_varchar2_table(69) := 'DD00090113084802ADE476FD48CE954FA608C0739B1F38218FFEDF2BF7160D82803509BC5AF448CE49334C334500D851B7A63FCD732410703A0197A63F631603D304E099C7D6EFD2897E6796E3681704222110EB327C0CF0B110EB7A43ADCF3401F019E8';
wwv_flow_imp.g_varchar2_table(70) := 'A6877D737C80804309E85EF18F66BA6EAA006C7F24779F74FE15993081801309BCF2ECE3391F9BE9B8A902C08EBB5DDE6FC979AD4C9840C04904EA744D7CD36C874D1780EF3F7AFF115D178F990D02ED83405F0462BA5DA76F6D7F2CE7684CEB8CA032D3';
wwv_flow_imp.g_varchar2_table(71) := '05806D2E9D9CB55DCEDF94091308243C0141B4BB68736EB1151CB58400FCF20B5FF0CA4B81FB24105C0A480898129A409DA6897BACE2A125048061F0A580D0F57B655E930913082422018D74FD2E2B9CFAFBE15A4600D8A06D9BD7FF9A84C8E73C120858';
wwv_flow_imp.g_varchar2_table(72) := '89402C6C91635DDF2CDABCFE37B1A82B5675584A00D8A9A24D394F934EFC5B015E4402814421B06DFBE61CD39EF8EB09A2E504800D6D1C2272E4FC35993081402210F8CDC096D26F58D1114B0A00FF64B8B145AC15442F59111A6C02813008BC22FBF29D';
wwv_flow_imp.g_varchar2_table(73) := '0505BED7E287514CCDAE96140076FD85829CFA6D9B726E173A6DE5652410308B4014ED3E252F69D7715F8EA28EB816B5AC00F8BC1642DFB639F7317926C0B74DBCBE75F80001EB1368D675FDCEA2FCDC4D72505BB7B2B9D616807672DBF2737F2A845824';
wwv_flow_imp.g_varchar2_table(74) := '170FCA840904AC4B40D0C79A4E8BB66F5EFF73EB1A19B0CC1602C0E6CACB8177AB5BFACD22D2BF2D975B64C20402562220FBA4BEA5719098F3ECE65CE5EFF68B14846D04801DFC71C17D8D45F9EB0BBCC275B55CFE6F993081405C098450399FE2FFCAED';
wwv_flow_imp.g_varchar2_table(75) := 'F25E25FBE6E33C801D4219CBEC622B01F0537B6ED3D70E15E5E7AED184BE588E0FECF6AFC71C045412D005EDD25DFA1CD917FF969F6455D976ACDAB2A500F89D7F76D3FADD727C60B1AE6B0B48173F93EB9B64C20402F124D044827ECE5F3EDB37E52EDF';
wwv_flow_imp.g_varchar2_table(76) := 'FEE8FA0FE3D958BCEBB6B500F8E16CDFBCE19DA2CD39777B5AC428191C7EC38AE93FB3F4DB8679C2102821A13FCC7DAC6853EE9DFCE593089E258400F803F1BD829C32199CEFCA53B24982F4D572FDF3F202ED949C630281B00970DF91FD6887BCCCBC51';
wwv_flow_imp.g_varchar2_table(77) := 'F6A989459BD67F87FB58D81559B84042094030E76DF9EB7F278376FFF6FCDC31BA9B66C9EB357EE9C81B729F3A993081407704B86FC83E221E7791EB1AEE3BB21F6DD8969F9BB08FA527AC00044797DF3D28AFD7B64A41B84EA6016E9736510AC26D42A7';
wwv_flow_imp.g_varchar2_table(78) := '27E47EFC4EC2BD44BAD2FFCA2ADBC5641A015FAC65CCE915EE03DC17744D4CE2BE2193EC23395B9EC9FF1A6F37CD42550D3B42003AC3FCFEA31B4AA420BCB46D73EE3FCB80AF95E99AA2FCF5238BF273859EDEDCDFD5D290D5DAE21D9EA4278FD134F704';
wwv_flow_imp.g_varchar2_table(79) := 'F2D064D949A609D2667A49CC21973617C97A0C38361C238E15C78C63C731E458724C39B61CE3A2B658CB98E7AEE53EC07DC14ABFD1EFDC5FE3B9EC4801E80DE8F6BCBCA6670ABE5EF57CC1FDA5FFB6F92BA79E7DECABC78AFE29F7B0EC24FBB7E56FF8E8';
wwv_flow_imp.g_varchar2_table(80) := 'B9FC9CBF163DBA610F92F518706C38461C2B8E19C78E63C8B1E498726C7B8B7DF036A7E421004E8934FC04816E084000BA81825520E014021000A7441A7E824037042000DD40C12A67137092F7100027451BBE8240270210804E40B008024E2200017052';
wwv_flow_imp.g_varchar2_table(81) := 'B4E12B0874220001E804048BCE26E034EF21004E8B38FC0581200210802018C88280D30840009C1671F80B0241042000413090753601277A0F017062D4E13308B4138000B483C00C049C480002E0C4A8C367106827000168078199B30938D57B08805323';
wwv_flow_imp.g_varchar2_table(82) := '0FBF414012800048089840C0A90420004E8D3CFC0601490002202160723601277B0F017072F4E1BBE30940001CDF0500C0C90420004E8E3E7C773C010880E3BB80B30138DDFBFF070000FFFF7E39EDD500000006494441540300DBC3A0D3650342680000';
wwv_flow_imp.g_varchar2_table(83) := '000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(133024418369887564280)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDDF9931CE779D8F1A76766EF7B17C0E2BE41DCD7E20641F0264D8214255364749A766239929CA45C49C58EAB52959FF22F242EA7922AC796';
wwv_flow_imp.g_varchar2_table(2) := 'AB145B8A1C59B22E5BB47813C44902206E80B8AFBDEF9D23EF3B004810D87EBB67A767A6BBDFEF1606BB3BEFDB6F3FCFE79DD979A6AF49FCBBFFFA67396E18F018E031C06380C7008F01BB1E0309E10B010410400001042C1310A100B06ECA4918010410';
wwv_flow_imp.g_varchar2_table(3) := '4000010A001E030820800002085827A013660B8056E08600020820808065021400964D38E92280000208D82E703B7F0A80DB0EFC8F00020820808055021400564D37C92280000208D82E70377F0A80BB127C470001041040C022010A008B269B54114000';
wwv_flow_imp.g_varchar2_table(4) := '01046C17F82C7F0A80CF2CF8090104104000016B042800AC996A124500010410B05DE0DEFC2900EED5E0670410400001042C11A000B064A2491301041040C07681CFE74F01F0790F7E430001041040C00A010A002BA6992411400001046C17B83F7F0A80';
wwv_flow_imp.g_varchar2_table(5) := 'FB45F81D0104104000010B0428002C9864524400010410B05DE0C1FC29001E34E11E041040000104622F400110FB2926410410400001DB0526CB9F02603215EE43000104104020E6021400319F60D24300010410B05D60F2FC29002677E15E0410400001';
wwv_flow_imp.g_varchar2_table(6) := '04622D400110EBE925390410400001DB05DCF2A7007093E17E041040000104622C400110E3C925350410400001DB05DCF3A70070B7A105010410400081D80A5000C4766A490C01041040C0760153FE1400261DDA10400001041088A90005404C2796B410';
wwv_flow_imp.g_varchar2_table(7) := '400001046C1730E74F0160F6A115010410400081580A5000C4725A490A01041040C07601AFFC2900BC84684700010410402086021400319C54524200010410B05DC03B7F0A006F237A208000020820103B010A80D84D29092180000208D82EE0277F0A00';
wwv_flow_imp.g_varchar2_table(8) := '3F4AF44100010410402066021400319B50D24100010410B05DC05FFE1400FE9CE885000208208040AC04280062359D24830002082060BB80DFFC2900FC4AD10F01041040008118095000C46832490501041040C07601FFF95300F8B7A227020820800002';
wwv_flow_imp.g_varchar2_table(9) := 'B111A00088CD5492080208208080ED0285E44F015088167D11400001041088890005404C26923410400001046C17282C7F0A80C2BCE88D0002082080402C04280062318D24810002082060BB40A1F95300142A467F041040000104622040011083492405';
wwv_flow_imp.g_varchar2_table(10) := '0410400001DB050ACF9F02A070339640000104104020F2021400919F42124000010410B05D602AF953004C458D6510400001041088B8000540C42790F011400001046C17985AFE140053736329041040000104222D400110E9E923780410400001DB05A6';
wwv_flow_imp.g_varchar2_table(11) := '9A3F05C054E5580E010410400081080B50004478F2081D01041040C07681A9E74F0130753B9644000104104020B2021400919D3A024700010410B05DA098FC29008AD16359041040000104222A400110D189236C0410400001DB058ACB9F02A0383F9646';
wwv_flow_imp.g_varchar2_table(12) := '00010410402092021400919C36824600010410B05DA0D8FC29008A1564790410400001042228400110C14923640410400001DB058ACF9F02A07843464000010410402072021400919B32024600010410B05D2088FC29008250640C041040000104222640';
wwv_flow_imp.g_varchar2_table(13) := '0110B109235C0410400001DB0582C99F02201847464100010410402052021400919A2E824500010410B05D20A8FC29008292641C0410400001042224400110A1C922540410400001DB0582CB9F0220384B46420001041040203202140091992A02450001';
wwv_flow_imp.g_varchar2_table(14) := '0410B05D20C8FC290082D4642C04104000010422224001109189224C0410400001DB0582CD9F0220584F464300010410402012021400919826824400010410B05D20E8FC29008216653C0410400001042220400110814922440410400001DB0582CF9F02';
wwv_flow_imp.g_varchar2_table(15) := '2078534644000104104020F4021400A19F22024400010410B05DA014F953009442953111400001041008B9000540C82788F010400001046C17284DFE1400A5716554041040000104422D400110EAE921380410400001DB054A953F0540A9641917010410';
wwv_flow_imp.g_varchar2_table(16) := '400081100B5000847872080D01041040C07681D2E54F01503A5B4646000104104020B4021400A19D1A024300010410B05DA094F95300945297B111400001041008A9000540482786B010400001046C17286DFE1400A5F565740410400001044229400110';
wwv_flow_imp.g_varchar2_table(17) := 'CA6921280410400001DB054A9D3F0540A985191F010410400081100A5000847052080901041040C07681D2E74F01507A63D680000208208040E804280042372504840002082060BB4039F2A700288732EB4000010410402064021400219B10C241000104';
wwv_flow_imp.g_varchar2_table(18) := '10B05DA03CF9530094C799B5208000020820102A010A80504D07C12080000208D82E50AEFC2900CA25CD7A10400001041008910005408826835010400001046C17285FFE1400E5B3664D0820800002088446800220345341200820800002B60B94337F0A';
wwv_flow_imp.g_varchar2_table(19) := '80726AB32E04104000010442224001109289200C0410400001DB05CA9B3F054079BD591B020820800002A110A00008C53410040208208080ED02E5CE9F02A0DCE2AC0F01041040008110085000846012080101041040C07681F2E74F01507E73D6880002';
wwv_flow_imp.g_varchar2_table(20) := '08208040C50528002A3E0504800002082060BB4025F2A700A8843AEB440001041040A0C2021400159E00568F0002082060BB4065F2A700A88C3B6B450001041040A0A202140015E567E50820800002B60B542A7F0A804AC9B35E04107015C865B3929E18';
wwv_flow_imp.g_varchar2_table(21) := '97D1912119ECEF95FE9E5BD2D77D437A6F5E979E1B57A5FBFA15B975ED92DCBC7A497DBF2CDDEABE9E9BD7A4F7D6F57CDFC1BE1E191D1E9489F131C96632AEEBA101019B0528006C9E7D7247202402D9FC0BFE848C0C0DCA406FB77AB1BF99BF0DF474CB';
wwv_flow_imp.g_varchar2_table(22) := 'F040BF7A311F92B19111191F1B552FEAE3AA3898904C3A937F71CFA4D3921E1F9789B131191F1DCDF71D1E1C907E354EBF2A1CF46DA0F7960C0FF6E797D5EB0A49DA84818088540E8102A072F6AC1901AB0572B99C7AC11EC9BF63EFBE7659F4BBFA01F5';
wwv_flow_imp.g_varchar2_table(23) := 'A2AD8B00FD42AF5FD8759F2923E544150969D1638D0C0DC9605FEF9DAD0797F34586BE5F540C531E9F051188B8000540C42790F0118892807E411F1FBDF3A27FFDB2F4AACDFAA3C34352CE77E5D94C36BFA541EF2EB8A562D04547BE18881224B1C646A0';
wwv_flow_imp.g_varchar2_table(24) := '9289500054529F7523608B807AA77DFB85FFE6A72FFA19B5095FD4BBF48A11A875EB1846D46E077D7C415FF74DB58B604CD82A50B11961C56516A000283338AB43C03681B19161E9CE1FA07723BF1FBFA22FFA2EF8B96C4EC536AC76115C137D30E1D8E8';
wwv_flow_imp.g_varchar2_table(25) := 'B04B4FEE46204881CA8E450150597FD68E406C05F466F59E1BD7D43EFE9BF983F4A292E8C4F8B8F4ABAD017A1781CE212A71132702850A5000142A467F0410300AE8FDFCFAD43DFD02AA4FC3535BFF8DFD0B6A7454EF3B37477D771CFDDF67F7A99F02F9';
wwv_flow_imp.g_varchar2_table(26) := 'A763D66714F4DDBA913F0D51E714C8C00C82C03D0295FE9102A0D233C0FA11889180DEDCDF73E36AFED4BD6237F5A75249993EAD43E6CE99254B172F92B5AB57C8E60DEB65D7F62DF2E4EE87E5F9A71FCFDFF4CFBBB66D516DEB64EDAAE5B274C92299A3';
wwv_flow_imp.g_varchar2_table(27) := '9699D6D12EA9AA5451BAFA855F9F86A8CF50181B1D296A2C1646206C021400619B11E241208202FA8572A0AF47FA7B6F497A62624A19388E237575B5324FBD786FE95A274F3DFAB06CDBB45E36AE5D25AB572C95C50BE6C99C5933A4A3AD551A1BEA2595';
wwv_flow_imp.g_varchar2_table(28) := '4AA95B32FF73477BAB6AEB94C50BE7CBEAE54BA54B2DB35D2DFBD4EE1DA2C79A3F6F767E6CC7515B0CA6105D269D96FE9E9B32D4DF2BB96C760A23B00802F70B54FE770A80CACF0111201069815C2E9B7F711C191C502F8EB98272D1AFC74D8DF5B264E1';
wwv_flow_imp.g_varchar2_table(29) := '3C79785B973CFDD82EE95ABF4666CFEC949A9A1A492693924824A4D02FBD4C5215083535B5F9B136AE5D9D2F28766DDB244B5591A0D759E898B96C4E8606FAF3454E394F5B2C344EFA23E057A0F06796DF91E9870002B117C8A427446FF21F1B297CF3F8';
wwv_flow_imp.g_varchar2_table(30) := 'ACCEE9B27BC756796CD70E59B36A8574B4B78BE34CED1DBA1F685D14B4B7B7C96AB59BE0F14776CA233B364BE78C692205AE52E7DA7BF39AA455EEC21702531408C36214006198056240208202E989F1FCB5F7D31369FFD1AB17DBF6D666D9B165836CDE';
wwv_flow_imp.g_varchar2_table(31) := 'B84E5A5B5BA6F40EDFFF0A27EFE9388EB4B7B5C9D6AEF5B2734B97B4A99826EF39F9BD69B59B431F20C8590293FB706F34042800A2314F448940A804464786D43BFF6B92D117F3F1195963435DFE05F7919DDB64C6F4E91579E1BF3F54BD55401F68B85B';
wwv_flow_imp.g_varchar2_table(32) := 'C5B4AD6B9D14B26B20934E4BDFADEBF9EB07DC3F2EBF23601608472B054038E6812810888CC0E8F0ED0FECC9E973E57C445D5B532D6B573D247AB3FBACCE193E96A84C9799333BF3BB23D6A95D04353555BE82D0047D3D37451744BE16A013022112A000';
wwv_flow_imp.g_varchar2_table(33) := '08D164100A026117C85FCEB7B7DBF7C17EEDAD8D6A13FB4659BC704128DEF17BF9EA2D028B16CE9787B76C928ED626AFEEB7DB7392FF70A131AE1E78DB83FF3D05C2D28102202C33411C08845C405FD4A7BFE796F83DBF7FFE9C99B27DCB66696A6E0E79';
wwv_flow_imp.g_varchar2_table(34) := '660F86D7D4DC245B3777C9BCD99D0F364E728F3E43A0BF5B9F02393E492B7721104E010A8070CE0B5121102A816C2623FAC372FC9CFEE63822AB972F91B5AB574A5595BF4DE9A14AF64E30D5D5D5B26ECD2A59B174A1388E4AEACEFD6EDFF42E116DA4CF';
wwv_flow_imp.g_varchar2_table(35) := '8C70EBC3FD088884C78002203C734124088452209BD52FFE374417015E01A69209D9B46EB52C5DB258F4857ABCFA87BD5DE7B0FCA165B261F50A49AADCBCE2D50706EA0B22F92994BCC6A21D81520B5000945A98F11188B8C080DAE7AF3F20C72B0D7DE0';
wwv_flow_imp.g_varchar2_table(36) := 'DCC3DBB7C89C39B3BDBA46AE7DFEFCB9B273EB26A9ADADF18C5D7F8680BE62A067473A582910A6A42900C2341BC48240C804C6468665CCC735F0F5BBE31D6A9F796B4BF4F6F7FB256F6F6B952D1BD7F9DAB2313A3C24E9098E07F06B4BBFCA08500054C6';
wwv_flow_imp.g_varchar2_table(37) := '9DB522100901FDA97E9E07FD39221BD566FF9618BFF8DF9D2C5D04AC5FB55C44E52C862F7D3CC0605F8FE8EF866E34592710AE842900C2351F44834068048607FB45EFD3F60A68B9DADF3F67D64CAF6EB169D79F34B86CF122CF7CC6C7C6441B7A76A403';
wwv_flow_imp.g_varchar2_table(38) := '021512A000A8107C1C56ABDFDDE47259D1073C718B87839E4FFDD81C191ABCFD91BEFA17C34D5F4BFFA1A5DE2F86862122D7E4388EAC7C68B1CC98DEE119BBFE8024BD0B451F48A96D837C9EE8F172FA4A449E51D0212C02618B8302206C3312F278F43B';
wwv_flow_imp.g_varchar2_table(39) := 'C251B55F586FDEECEBBE91BF1C6CCFCDABC22D260637AE4AF7F52B32D0D79D2FEC4C0FC7A6A686FCF5FC1353F8B43ED3B85168739C846CDEB0561A1BEA8DE1EA17FCFEEE9BEA79A25C956DA0CF931BD7A44F3D07F573513F27F573D3180C8D08DC274001';
wwv_flow_imp.g_varchar2_table(40) := '701F08BF7E5E20A7DEE18F0E0F4AEFCDEBF91706FD076CA0E7960C0F0D883EDA393D3121998934B79818E80FF6D173EAB5DFBFBABA2A7FBA5F2A99FCFC03C6A2DFF4350E36AD5F23A994F9CF684EBD4BCFA433813F47F43CE9E7A07E2EEAE7A47E6EEAE2';
wwv_flow_imp.g_varchar2_table(41) := 'ADF7D6F5FCA589F57A2D9A8E08A41ABE10CD8FDCF0C54B446514484F8C4BDFAD9BD2DFD32DE363A392562FF6D94CF6F6814DB93206C2AA4227B05C6DF66F6969095D5CE50EA8B5B545F43110E55EEFE7D6A79E8BFAC55E3F37F573541705FDDDB7D4F3F6';
wwv_flow_imp.g_varchar2_table(42) := 'A6A4D3139FEBCA2F08DC2B400170AF063FE7053299B4F4F7DE529B2DAFE55FF8F377F21F0256388591000010004944415477041AEA6B65E1FC79777EE3DBA285F3459B844D626C64447AAE5F9581DE6E5F17710A5BFC718B278CF950008471562A18535A';
wwv_flow_imp.g_varchar2_table(43) := 'BDEBEF51FB2A4787866EBFD3AF602CAC3A9C020F2D5E2436EEF7779B8DA4DA0DB274E102B7E68ADEAFB70CE8033ABBD5735A3FB72B1A0C2B0F9D000540E8A6A47201E96B98F775DF50EF16B2950B8235875AA0A9B15EE6CD9B13EA182B119C36696E6AAC';
wwv_flow_imp.g_varchar2_table(44) := 'C4AA7DAD535FC699CF29F04555A24EE11C9602209CF35291A8F4455FF4C14A1559392B8D84C0AAE5CBC4713CAE8213894C820D526F0558BE7471B083063C5A269D16FD1C0F7858868BB000054084272FC8D0F5B9CAFAE677CC542A29B535D5D2D050278D';
wwv_flow_imp.g_varchar2_table(45) := 'EA5D61986E3AA6BADA6A4924BD5FA8F4BEDB469D43437DFE942E7D5A974DB786FA3AA9ABAD91EAEA94E7D44F9FD62E33A64FF3EC676B87999DD3A5ADD5FB52C8FAB9D3505F53F4E34D3FCEABABAB5441E65F5C3FC7C74686FD2F40CF4004C23A08054058';
wwv_flow_imp.g_varchar2_table(46) := '67A68C71E97395077A6F89D7A95F3AA49696467974E766F9D2F34FC8D75E7E5EBEF1F20BF2F5DFDE13AADB375EDE23DFFCF28BF2EA9E2725917074D8AEB76F7DE545F94FDF7D4DFEE4BBDF943FFE8E7DB7FFFC6F7F4FFEE43BDF908737AF7735BADBA08F';
wwv_flow_imp.g_varchar2_table(47) := '76AFD4BE7FBD2FFBF2D56BF2FEFEC3F24F6FBC233FFFA7DFC88F7FF6ABFC4DFFACEF7BFFC061D17D74DFBB3197F3BBB6D15B48C4FC9093AE350FC97FF9A3DF2FFEF1F6ED6FCA9FFEE16BF2C7EAFB575F7A5A66777678A79B13F1738D07EF81E81107010A';
wwv_flow_imp.g_varchar2_table(48) := '8038CC6291398C0E0F79EEF7D7EFA637AF5F2D2FEF795AD6AC582633A64D53EF1CEB24954A85F0562555D5D5EA562362D85C9D4A25541E1DD2AEDEB575B4B6C8B436FB6E2DCD8DD2A2F65D0F8D8C88E9ABBEAE56DADB5B4D5D4AD2363E3121878E1C939F';
wwv_flow_imp.g_varchar2_table(49) := 'FCE2D7B257BDF85F5145C0C0C0A08C8E8E49369BCBDFF4CFFABE2B57AEE5FBFCF497BF96C3473E968989744962320D3AADA35D3D2FD4E3CED0696C3CADB69ED514FD789BAEE6A3536D95593077963CB275A37CE79B5F965DDB368A3862FCD2A70BEAE7BC';
wwv_flow_imp.g_varchar2_table(50) := 'B1138D010A8477A844784323B272098C8F9A37093AEA5DF4E33BB7C8B64D6BD51FB7DA728555F47A12C9A4F16F61329154C54BB2E8F5447D808C7A213D75EEA2310DBDE9DF711C639FA01B4F9E3927BF7AFD4D3977FEA2643219DFC3A7D319397BFE82FC';
wwv_flow_imp.g_varchar2_table(51) := 'F2F537E4F4B9F3BE970BAAE3F4F636E350576E74FBD9D8661C63B2C60E55C0BEBAE709F9C253BBC4F8C01711AFE7BCEAC23F0B0428002C9864538AFAC0A04CD6FCC775CDF2A5B262D912354C795F00D40A8BFA97CD7A9FCDE0A74F51414460E19EBE01E9';
wwv_flow_imp.g_varchar2_table(52) := 'EEED778D541780B3D4FE6DD70E0137E877EE6FBCBB578E7E7CB2A877F17A9C8F8E9E90B7DEFBA0A8710A4D6F96FE6024C353A5AF7F50AE5CBF59E8B0BEFAEB2B333EF3E80ED9B26E95B1BF7ECEEBE7BEB1138D81088479100A8030CF4E1962D3E706EB4D';
wwv_flow_imp.g_varchar2_table(53) := '826EABD2071A6D5CBBDCAD39DCF7E7D40E4F8F082BB5BFD823ACB2369F3C77C178FC476D4D8D4C9FE663FF7200510F0E0ECBEB6FBE23DDDDBD018C767B889BB77AE4F5B7DE95A121F396AEDBBD8BFF7F5A5B6B7E13BFDB48E3E36372EC54E9B64C24D496';
wwv_flow_imp.g_varchar2_table(54) := '9A671FDD2A3535D56E21E477F9E9E7BE6B071AAC10A000B0629ADD939C9818939CE19DF2B2450BA4A9B1C97D005A222D90569BD64F7B6CFEEF509BB41DC7F09636208171B5BFFFEDBDFB64786434A0113F1B66787844DE7A7F9FE8757C766F697E4A5555';
wwv_flow_imp.g_varchar2_table(55) := '190B265D979E38FB4969567E67D45933A6CBA6B52BEFFCF6E037FD9C9F98187FB0817B021608F7701400E19E9F9247971E77FF2390483832675667C96360059513181C1E960B57AE1B0398A95E4C8C1D0268D4BB62DE797FBF8C94E0C5FF6E787AEC77F6';
wwv_flow_imp.g_varchar2_table(56) := 'EE17BDAEBBF795EA7BA7C716934F2E5E95ACAE044A1480E338B272D902311D0BC01600B1FE8B02C0F287403AED7EA4742A959469EDE53FF2DBF229296BFAB76EF5C9ADDE3ED775EA22B0A3CDFBDC76D7017C367C7CEA8CF4F6B91F87E07318CF6EBDBDFD';
wwv_flow_imp.g_varchar2_table(57) := '72E2F439CF7EC5769831AD5D1CC77DABC9D8D8B85CBDD15DEC6A8CCBCF9F3D53DC2310D157FE340E4063D102611F800220EC3354E2F87286030093C9A4713FA2F0157981CBD76F49D6B00BA8A1BE5EF4A99EA54C7454BD189E3EEB6F9F78E78C767964C7';
wwv_flow_imp.g_varchar2_table(58) := '2679F5A567E5DBAFBD9ABFFD0BF5F323DB37C98CE9FE8E53387DF69CE817E052E6A47703D4D7D7B8AE229BCBCAC52B375CDB836868ACAF13FD1C761B4B5F1ED8AD8DFBED10A000B0639E0D59BABF4748A877308EE3DE6E1894A68808F40F0E4A2EEB7EB0';
wwv_flow_imp.g_varchar2_table(59) := 'A43EFFDF714AFB67E2E8F193F983D24C64FA61B873CB06F9F20BCFCABA950FC9F48EF6FC8B9B7E81D3E7DEAF5BF590BCF2E233B273EB06D17D4D63A5D319397AE294A94B206D3555EE07E1897A5AF50D0C06B21EB7411CC711C771DC9AD5FDA636D5CCBF';
wwv_flow_imp.g_varchar2_table(60) := '2205C2BF78699FD9E1CF9F080D028EC31F08034F2C9ABC2E00545757277A3740A992D52FC6172F5F360FAF1E867B9E7E4C361A0E6ABB3BC0C6352B45F715B5CCDDFB26FB7EF1D265C918B67C4CB64C21F7398E633C1340EFFED705803E08B390710BE9EB';
wwv_flow_imp.g_varchar2_table(61) := '5ED615320A7DE32C400110E7D92537043C044686CD47DCD7D5D68AE394EECFC4B51B37D5160873903B366F107DB53B73AFCF5A75DF1D1E9736CEAAAD1ED7AE977613BCB6FB2CAACFFFA44F3FD55B5F741C9F6FE1B7B80844218FD23DB3A3903D312260B9';
wwv_flow_imp.g_varchar2_table(62) := 'C0C8D898BB807A175D5757EBDE1E40CBD56BE63310664C6F932E1FEFFCEF0FA56BED2AD107E2DD7FFFBDBF5F2DD1C578EEAEA3D664A7DE9EF70F8C188FBFB83B0EDF112895000540A964191781900BF40D0ECBC8A87B01A05EFFA5AEB6AEA459F47BEC07';
wwv_flow_imp.g_varchar2_table(63) := 'BF7D05CAA985B07CD922E382FD0303C6F6621BEBD5EE1327E1FE2776706848B27A5F40B12B62F9100A442324F7476734E2274A041098A280BE28CEC8887B0120A2F663D71A0E6493E2BFC60CD7A1D0A3CF9A314D7F9BD26D76A779D9F1F189298DEB77A1';
wwv_flow_imp.g_varchar2_table(64) := 'BAFCEE135D464DBEC4C8C8A87024FEE436DC5B1E010A80F238B3160442273091CEC8F56EC32577D56B575DADFBA96C4124A4AFD76F1AA7BDB5C5D46C6C6B6B365FBFA0E40580DA05E02414A24B94A36AF74B211F72E4320C778750202A2151004465A688';
wwv_flow_imp.g_varchar2_table(65) := '138180056E7F0684DA19ED32AEA3B60088E3B8B40673B7E398C7CF1671A4BE7B66C1C4EE358ABE9096E3B8E7A7CF424867BC3FB0CA6B3DB4233055010A80A9CAB11C0211174826139270DCFF04E4242769C395228348BFBABACA384C8FE12A85C6055563';
wwv_flow_imp.g_varchar2_table(66) := '776FAFFADFFD5F8DC7BADD97F4D7A2B7B098AEB1A03FB92F613846C0DF5AE8153E81E844E4FEEC8F4E0E448A00025310D02F3E4D0D8683FCD45BE8F484FBA5A2A7B0CA0716A9A9361F6370E9AAF92C810706BCE78E4B57CDA7F9551B3E2DEF9E61A6FCA3';
wwv_flow_imp.g_varchar2_table(67) := 'FED43FD3C72CEA2B2CEA226CCA2B6041048A14A000281290C51188AA40552A29FAE39E4DF18F97780B405353A369F572FCF439D1E7CC1B3B4DD2A8973971CA7CCDFF9626F33102930C5BD05D6363E32A76F745AAAAAA2499E04FB0BB50345BA214358FBE';
wwv_flow_imp.g_varchar2_table(68) := '28CD16B12210A0407363BDD41ADF81AB5D00139900D7F8E0509DD3CD47EADFBCD52BFB0F1F7D70418F7BF6A9656E9A0E7054CB7BAD5B7529EA9F3ECB4217226E8334D4D58ADE0AE3D6CEFD08945A8002A0D4C28C8F404805F43E687DAA9A5B786A0F808C';
wwv_flow_imp.g_varchar2_table(69) := '4FB87F5CB4DB7285DCAF3F6AD8F1F82BF4EEFEC372FEE215DFC39EBB7859DE53CB981670128E74CEE8307529BA6D626242726E07313A224D4DF54201503473C8068856381E4FBD682543B40820509880FEC438D312C323E64B059B96F5D3A6F781CF9935';
wwv_flow_imp.g_varchar2_table(70) := 'CBDC5555223FF9E5EB72E0A38FCDFD54EB810F8FC94F7FF9CFA65DEFAA97C8DCD9B34AFEE23B62B8C682238EB436358ACE3F1F10FF215001010A800AA0B34A04C222D0DADAE41E8A7AE11DD09F1658E2ABD5AD7A68A938EA1DB97B20EAF55CC5F2F6FB07';
wwv_flow_imp.g_varchar2_table(71) := 'E46FFFFE1772F8D809B9D9DD2D994C267FBB79AB5B0E1F3D217FF3E35FC8DB7B0F8A57B809B5AE55CB979A5617489BB6731DC811E99CDE2EC9047F825D8D22D810B59079F4456DC68817810005A6B5B7896933F4C0C0A014732EBE9F50F5E70D2C9837D7';
wwv_flow_imp.g_varchar2_table(72) := '4F57B976FD96BCF1CE3EF9FE8F7E2E7FF617FF277FFBFEDFFD5CDE78779F5CBF71CBD7180BE7CF93DA9AD25EE048EFFB1F1C1A768DC75105C0FC3933C571D40FAEBD6840A0B4021400A5F5657404422DD0D1D6224ED2FDCFC0E0E050FE5D76A99358B37C';
wwv_flow_imp.g_varchar2_table(73) := '99343636947A35D2AC36BBAF52EB2AF58A7299AC983E6A595F7F61862ABE4A1D07E39753207AEB727FE6472F172246008102055A9A9AA4A9BEDE75A9B4DACC6EFAC020D7050B6C48A692F2F0D64D5253C273F36BEB6A64A75A4739F6BB0F8D8C4A2EABF6';
wwv_flow_imp.g_varchar2_table(74) := '5BB838E8EB1FE8B3305C9AB91B81B20850009485999520104E815AF582ABF7459BA2336DCA362D57685B6D6D8D3CBC6DB3E817EA4297F5EAAF77333CBC6573490B8C7B63E81B347FD2605B5BB338ECFFBF972CF23F4731010A8028CE1A3123109040837A';
wwv_flow_imp.g_varchar2_table(75) := '573C735ABB71B49E222EC76B1C7892C626B51BE0F15D3BA4B5880F01BA7FD8B6B656797CD776B58BC17D4BC7FDCB14FBBB97D99CCEE9C2DEFF629559BE58010A806205591E81880BCC9939DD98414F6FAFB13DE8C6EAAA2AD9BD63ABAC5EB95CF4D5F2A6';
wwv_flow_imp.g_varchar2_table(76) := '3A7E557595AC59B542766FDF52D43885AE5F7F7E42778FBB5922E9C882D9330B1D96FEA1168866701400D19C37A24620308139B36618C7EA1B1892B1D131639FA01B1DF5F678E9A2F9F2D463BB64E1FCB9924C267DAF427F0ADFA205F3E4E94777C99285';
wwv_flow_imp.g_varchar2_table(77) := 'F3A4DC6FB5B5557FFFA0B87D555757CB9205B3DD9AB91F81B2095000948D9A1521104E81CE8E36696870DF3C9ECD64E44677774582AFAE4AC9FA352B65CF338FCB96AE7532AB7386E8CF0FD0C70B388E23896442F4CFFABE593367E4FB3CFFF4E3B26EF5';
wwv_flow_imp.g_varchar2_table(78) := '0AF5AE3F2595F8BAD9D3633C75B2B9B151E6A8582B111BEB2C8D405447A50088EACC1137020109E80301572D5BE43A9A3EA7FDD6ADCA14007783721C4766CFEC94AD9BD6CB138FEC90679FD82D5F78EE2979F1D927F33FEBFBB676ADCFF7711CE7EE6215';
wwv_flow_imp.g_varchar2_table(79) := 'F97EABDB7DF3BF0E68D1BCD992E000404DC1ADC2021400159E00568F40A505F48BD14A5D00185E376F95F140C04A7B14BBFEEEDE5ED72152A984ACD0D6AE3D68889E407423A60088EEDC11390281092C5F3C5FED6777DF643E303824A3653E0E20B0E4CA';
wwv_flow_imp.g_varchar2_table(80) := '3850FFC0A00C0FBB7F7E82FEF0A5D54B16943122568580BB000580BB0D2D085823A02F4A33ADADD93DDF9CC8E56BD7DDDB69C90B5CBC7C45F42E93FC2F93FC375BEDFB6F6CA89BA485BBA22A10E5B82900A23C7BC48E404002C94442967BBC33BDA20A80';
wwv_flow_imp.g_varchar2_table(81) := '5C2E1BD01AE3374C2E9793ABCAC83533B58BC5CBD875591A1028810005400950191281280A74AD5921A994FB6E805BB77A64C4B0793B8A390719F3D0E0B00CA89BDB984D0D0D923FD6C2AD03F7475020DA215300447BFE881E81C004962E9823CDCD4DAE';
wwv_flow_imp.g_varchar2_table(82) := 'E3E977B897AFDD706DB7BDE1C295AB4682CE69ED32B7739AB10F8D0894538002A09CDAAC0B81100BE8B301562C5D688CF0F2D56BC6765B1B757174ED86B9385ABE74812413FCC98DD36324EAB9F0688CFA0C123F02010A74AD5AA67603B8FF59E8EDEF97';
wwv_flow_imp.g_varchar2_table(83) := 'A1E19100D7188FA17A7A7A449F01E0964D7393DAFCEF515CB92DCBFD08944AC0FD995EAA35322E0208845660C5D3DFA0730000100049444154D2F9D2D6DAEA1A9FFE88DB739F5C746DB7B5E1FC85CBA26DDCF29F3F67B6CC66F3BF1B4F44EF8F7ED81400';
wwv_flow_imp.g_varchar2_table(84) := 'D19F433240203081849390D50F2D16D3F5F32F5CBA2CD90C6703C89DAF4C262397AF9B37FF6F59BF526AABABEF2CC13704C2214001108E79200A044223D0B576A5D4D5D6B8C63336362ED76EDC746DB7ADE1C2A52B929E48BBA65D5757238BE7CF766DA7';
wwv_flow_imp.g_varchar2_table(85) := '219A0271889A02200EB3480E080428B064FE2C9937679671C473172E19DB6D69CCE5B2E2B54B64DD8AA5D2DAD4680B09794648800220429345A8089443C0512B59AF5EB4D437D77F37BBBBA57F60C0B5DD96869E9E3EE9EB777770128E6C5EBF4A9249FE';
wwv_flow_imp.g_varchar2_table(86) := 'D4C6EB31118F6C7854C6631EC902814005F471009D333A5CC7D4C7009CBF78D9B5DD9686331E07442E545B52962D9C6B0B0779464C800220621346B8089443604647ABAC5862BE26C0858B6ADF773A538E7042B98EE1A161B9EA7161A4AD1B564B755555';
wwv_flow_imp.g_varchar2_table(87) := '28E327A8A90BC465490A80B8CC24792010B0C036F5E2555BE3FEE23531312167CF5F0878ADD119EEC49973A2CF00708BB8A9B15EB66D5CE5D6CCFD08545C8002A0E2534000088453409FB7BE70DE1C6370A7CF9D37BE081A178E70E3E8D8B85CB86CDE05';
wwv_flow_imp.g_varchar2_table(88) := 'A2F7FDD7D6B89F4D11E1F42D0F3D3EE95300C4672EC904814005AAAB52B26BCB3A710C7F25F429815E47C1071A5448063B7DF69C643339D76892A9843CBA6DA36B3B0D088441C0F0D40E4378C4800002951458B17491CC9D35D318823E102E63D1858146';
wwv_flow_imp.g_varchar2_table(89) := '47473D4FFD5B327FAE4CEF6833BAD1184D8138454D0110A7D92417040216A8AFAD515B01D61B471D1E1E964F2E9937871B078858E399739F48DA70F0A33EE5EFC95D9B4D17538C58C6841B57010A80B8CE2C79211090C0FA95CBA4A3DDFDF301446D093F';
wwv_flow_imp.g_varchar2_table(90) := '79EA8C64B3EA8780D619D661C6C7C7E59CC7E98FF3E7CC92D5CB16853505E22A4A205E0B5300C46B3EC90681C0059A1BEBE5E12DE6AD0023A3639E9BC5030FAC02031E5785CEC4F884EB9A1309471ED9BA411289A46B1F1A10088B000540586682381008';
wwv_flow_imp.g_varchar2_table(91) := 'B1C0C39BD7498DC711EDA7CE9E934CDAFD9AF8214ECF5768A3236ADFBFC72590F57EFF4D6B97FB1A8F4ED113885BC41400719B51F241A004024DF575B27DE36A31EDD81E512F90A7CFC5F7BA00C7CF9C95ACE160C7543221CF3CBA5DAA5229E10B812808';
wwv_flow_imp.g_varchar2_table(92) := '500044619688118110083CBD7BAB8FAD00E765C2F0C9782148634A210C0C0CCA2717CC073AB6B7B78A3E5E624A2B60A10808C42F440A80F8CD291921501281F69666D9D6B5D638B6BE3AE089D3678D7DA2D878E4E31392CD665D43771C9127766C127DD6';
wwv_flow_imp.g_varchar2_table(93) := '846B271A100899000540C82684701008B3C0133BBAA45EED0E30C5A82F0FACAF9467EA13A5B69E9E5EB976F39631E4797367CBC6B52B8C7D688CB6401CA34FC4312972420081D208CC509BB9BBD69AAF6FAFAF8FAFDF31972682F28F7AF8E871D1A73A9A';
wwv_flow_imp.g_varchar2_table(94) := 'D6FCE8F62ED1C74998FAD08640D8042800C23623C48340C8059ED8D9252DCD4DC6282F5DB92A37BB7B8C7DA2D078E1E265E9EDEB3786BA70DE6C59B77C89B10F8D51178867FC1400F19C57B242A0640233A7B5C98635CBC57446402E9B9363C74F4994BF';
wwv_flow_imp.g_varchar2_table(95) := 'F4F10CC74E9D31A6E02412F2F8CE2DD2505763EC4723026114A00008E3AC1013022117784C6DF29EDED16E8CB2BBB7572E5CBA62EC13E6C69367CEC9C8F08831C4154B17CA86554B8D7D688CBE405C33A00088EBCC9217022514E8EC689547B675893EFA';
wwv_flow_imp.g_varchar2_table(96) := 'DD7535399163274E893E26C0B54F481BF4350DCE9C375FD320914CC873F9F3FEB9EA5F48A791B03C0428003C8068460081C905B6AD5F29B367CE98BCF1CEBDFA85F4F8A973777E8BC6B75C2E27878F7E2C19C307FEE84CB66D5C2B4B16CCD13F728BB540';
wwv_flow_imp.g_varchar2_table(97) := '7C93A30088EFDC9219022515686AA893579E7F521249C7B89E33E73F91BE8101639F30355EB9765DAE5EBF610CA9B6B6465E7C6A97DA0262CEDD38088D0854588002A0C213C0EA1188B2C0A2F9B365D5B2C5C61432E9B41CFAE863639FB034A6331939A2';
wwv_flow_imp.g_varchar2_table(98) := '0F5E54BB2F5C6352AFF98F6EDF28AD4D0DAE5D68888F409C33A10088F3EC921B022516A84A25E5C5A7774B557595714DFA623A9F5C0CFF0181C78E9F96E1A161632ED3DA5A65CFE33B8D7D6844200A021400519825624420C402733BA7C9C39BD6794678';
wwv_flow_imp.g_varchar2_table(99) := 'F4C449190FF1E704E8DD1467D5EE0A5322FAA0C7E79E785852293EF0C7E4149FB67867420110EFF9253B044A2EE0388E3CF9F066D19F86675AD9D8E8987C7C2A9C9F13A0AFF37FE8A363A20F0034E5B060DE1CD1073F0A5F08C4408002200693480A0854';
wwv_flow_imp.g_varchar2_table(100) := '5AA0A3AD455E7EFE4911B57F5C0C5FE7CE9F976BD76F1A7A54A6E9D4D9F3D2D3D3675C797D5D8DBCFAC2139248F067D30815A3C6B8A7C22339EE334C7E089449E091ADEB65FE9C59C6B5E92B041EF8F0239908D1AE8081C1413979C6BC65426DE490CDEB';
wwv_flow_imp.g_varchar2_table(101) := '56CA428FFC8CC9D38840C80428004236218483405405F43BE32F3DB3DBF31DF2D8D8841C3D7E321469EA4DFEFB0E7D24E9898C319E691D6DF2CCEEEDC63E34C64D20FEF95000C47F8EC91081B2092C5FB240B66C58EDB9BEF3172E49B7C72677CF4102E8';
wwv_flow_imp.g_varchar2_table(102) := '70EAEC39E9EB335FA3209170E4A5A7774B7B6B73006B640804C2234001109EB92012046221A02F90D3DCDC68CC45BFF33E78E49864B3A613EE8D4314DDD8DBDB2B274E9FF51C67F5F225B266B9F95A079E83D021720236044C0160C32C9323026514686F';
wwv_flow_imp.g_varchar2_table(103) := '6992671EDD2E8E7AE76C5AED40FF80EC3BF8A1A94BC9DA74E171E0A3639E9BFE6B6AAAE40BEADD7F755555C9626160042A254001502979D68B408C05766D5E27EB563EE499E1E5ABD7E4FC85CB9EFD82EEA0AFF5DFDF3FE839EC9E271E91D99DD33CFBD1';
wwv_flow_imp.g_varchar2_table(104) := '216E0276E4430160C73C9325026515A84EA5E4D947B7494B8B7957800EEAC8F193323030A47F2CCBEDCAB51B72FE938B9EEB5ABE74A1ECDAB2CEEBCC46CF71E8804058052800C23A33C48540C40516CE99294F3DA2760538E68B034C8C8FCBBE0F3F2ACB';
wwv_flow_imp.g_varchar2_table(105) := 'F100C3232372F0C3239EB255552979F9F927A4B6A6DAB32F1DE227604B461400B6CC34792250018127B66F940DAB977BAEB9AFAF5FF49600CF8E4574D0071EEE3D7058C6C727CCA3A87AE5E5E71E177D896373475A1188B6000540B4E78FE81108B580E3';
wwv_flow_imp.g_varchar2_table(106) := '38F2CA0B4FC8F4696DE638732267CE9D97AB25BC4AE0C7274E4B6F6FBF390ED5BA66F952D9BD6DA3FA897F760AD8933505803D734DA6085444A0B5A951BEFCFC53E2755680A822405F2570687824F038AF5EBD2627CF9CF31CB7BDAD59BEF1A5673DFBD1';
wwv_flow_imp.g_varchar2_table(107) := '018138085000C46116C90181900BAC7968A13CB67D93787D8D8F4DC8BE83872597CB7A75F5DD3E343424878E7CACC654158661A9542A295FFBE273D2DCD860E84553DC056CCA8F02C0A6D92657042A24E0388E7CF1D9DD32CBC729753D6A33FDB1E3A703';
wwv_flow_imp.g_varchar2_table(108) := '893497CBC9C1C34764746CDC73BC47B777C9AAA50B3CFBD10181B8085000C46526C90381900B54A552F2DA97F788FE543DAF50F5257A2F5FB9EAD5CDD8AE5FFC8F1D3F29377D5C7278D5B285F2DCE33B8DE3D16883805D395200D835DF648B404505E6CF';
wwv_flow_imp.g_varchar2_table(109) := 'EE943D4FE90F0C728C71A837EEF9CDF6FA93FA8C1D0D8D172F5D925367CF1B7ADC6E6A6B6994179F7A44EA6B6B6EDFC1FF085822400160C9449326026111786CDB0659EBE32A81FA74BD0F0E7C28994CE1C703F4F70FC8E1A3C7D57E7F73D6C964429E7B';
wwv_flow_imp.g_varchar2_table(110) := '62972C986BFE1863F328B4C645C0B63C28006C9B71F245A0C2028EE3C8D75E7A5A66CD9CE11949FFC0A0EC57FBF0F5E67CCFCE773A8C8E8CCA7BFB0E4A3AED5D38ECDABA41F4658BEF2CCA3704AC12A000B06ABA49168170083435D4CB575E7C4A1AEAEB';
wwv_flow_imp.g_varchar2_table(111) := '3C03D2C7021C3D7ECAB39FEE30319196BD073F94615504E8DF4DB787962C942F3DFB98A90B6D5609D8972C05807D734EC608844260D9C2B9F2E2D38F4AC2C75FA15367CEC9D9F3E6EBF7EBAD04070E7F24DD3DBD9EF9B53437CABF7CF505A9AE4A79F6A5';
wwv_flow_imp.g_varchar2_table(112) := '03027115F0F1D48B6BEAE48500029516D8B9698DECDEBE59FC7CE2CE87478FC925973303B2D9AC7C78F463D11FF4231E5FB5B535F2075FFF923437D67BF4A4D926011B73A500B071D6C919819008A4920979E9E94764C3DA959E11E93303F61FFA48AEDF';
wwv_flow_imp.g_varchar2_table(113) := 'B8F940DFD367BDB710E88552A994BCF2C253B28883FE340737CB0528002C7F00903E029516A8A9AE92AFAA17E57973667B8692CDE6E4FDFD07E55677CFA77DF58BFFD1133E2E1CE4883CFBD84ED9B171F5A7CBF20302B705ECFC9F02C0CE79276B044225';
wwv_flow_imp.g_varchar2_table(114) := 'D0D45027DFFEC617A5A5A5C533AE4C2627EFECDD2F9F7C72413EB978598E7C7C4AF4E708981674D48BFFA675AB65CFE3DB4DDD6843C02A010A00ABA69B641108AF405B73A37CEBAB2F49838F6BF16732593974F4B81CF0798AE0CA8796CA37BEF84C7893';
wwv_flow_imp.g_varchar2_table(115) := '27B28A0AD8BA720A005B679EBC1108A1C0E27933E5775F7941F4817A5EE1E9DD015E7D74FB9245F3E5B5977F4BF4AE06FD3B370410B82D400170DB81FF1140202402AB972E9097F73C293535C55F9A77CEAC19F2ADAF7C41F4750742921E61844EC0DE80';
wwv_flow_imp.g_varchar2_table(116) := '2800EC9D7B324720B4020F77AD91977EEB514915719EFECCE91DF2DDDF7999D3FD423BCB045669010A804ACF00EB47008149051EDBBA41BEF6A5E7A5BAA66AD276D39DF3E7CC943FFAFDAF485B7393A91B6D0888CD04140036CF3EB923107281EDEB57C8';
wwv_flow_imp.g_varchar2_table(117) := 'BF79ED155F970CBE9BCAAAE58BE53FFCC1D7D43BFF86BB77F11D01042611A000980485BB1040203C024B17CC953FFA967A416F693606954838B275D33AF9CED77F5BAA525CE2D78845E31D01BBBF5100D83DFF648F402404E6CCE8907FFFFB5F9575AB97';
wwv_flow_imp.g_varchar2_table(118) := '4B5595DA25E0DC13B6FA79F6AC4EF9C6975F94DFF9D2B3924CF267ED1E1D7E44C05580678A2B0D0D082010268119ED2DF2AF5E7D417EEF2B2FC9FAD52B64DEEC99EAD629CFECDE21DFFDE6CBA2771724F4157FC21434B1845AC0F6E028006C7F04903F02';
wwv_flow_imp.g_varchar2_table(119) := '1112A84A2565C38AC5F2AFBFFA05F98FDFFEBAFCE91FBE265F7CE611696F698C5016848A4038042800C2310F44810002050AA492C90297A03B02F70AF03305008F010410400001042C14A000B070D24919010410B05D80FC452800781420800002082060';
wwv_flow_imp.g_varchar2_table(120) := 'A100058085934ECA08208080DD0264AF052800B402370410400001042C13A000B06CC24917010410B05D80FC6F0B5000DC76E07F041040000104AC12A000B06ABA4916010410B05D80FCEF0A5000DC95E03B020820800002160950005834D9A48A000208';
wwv_flow_imp.g_varchar2_table(121) := 'D82E40FE9F0950007C66C14F0820800002085823400160CD54932802082060BB00F9DF2B400170AF063F238000020820608900058025134D9A08208080ED02E4FF79010A80CF7BF01B020820800002560850005831CD2489000208D82E40FEF70B5000DC';
wwv_flow_imp.g_varchar2_table(122) := '2FC2EF0820800002085820400160C124932202082060BB00F93F284001F0A009F7208000020820107B010A80D84F310922800002B60B90FF6402140093A9701F0208208000023117A00088F904931E02082060BB00F94F2E400130B90BF7228000020820';
wwv_flow_imp.g_varchar2_table(123) := '106B010A80584F2FC921800002B60B90BF9B0005809B0CF72380000208201063010A80184F2EA921800002B60B90BFBB000580BB0D2D082080000208C456800220B6534B6208208080ED02E46F12A00030E9D0860002082080404C052800623AB1A48500';
wwv_flow_imp.g_varchar2_table(124) := '0208D82E40FE66010A00B30FAD082080000208C45280022096D34A5208208080ED02E4EF254001E025443B0208208000023114A0004F4F5549000010004944415488E1A4921202082060BB00F97B0B5000781BD103010410400081D8095000C46E4A834B';
wwv_flow_imp.g_varchar2_table(125) := '289BCD05375805464A24BC1FDE8EE3542032568940E9057239F5FC55FF4ABFA630AE8198FC0878FF85F4330A7D622990CD66249BCD4636B754554A4C7FFFB2B9ACA452A9C8E647E00898046AF4E35F3DC64D7D68B35B8002C0EEF937663F3E3E21A7CE9C';
wwv_flow_imp.g_varchar2_table(126) := '939EDE5EE91F1890FEFEFE48DC060707656878584E9E3A2BD98C7B013331919177F77F28474F9E938B57AEC9A5ABDC3088FA63E0BA5CBE765DCE5FBA226F7F7048D286C7BFF1C91FF146C2F7274001E0CFC9CA5E7A0FC06FDEDD2FFFF7A7FF283FFCC9AF';
wwv_flow_imp.g_varchar2_table(127) := 'F2DFF5CF61BFFDE0EF7F29DFFFD13FC89B7B0F79CEDB8F7FF5A6FCD50F7E227FF6973F90FFFEBFB96110F5C7C0DFCA7FFB8BBFCD3F9E7FF0B3D73D1FFF74B05B8002C0EEF9F7CC3EA3DE418C8C8EAB77D4A332381C9D9B8E39AB2B188F0CC7C6D3D23B30';
wwv_flow_imp.g_varchar2_table(128) := '24DD7D83DC3088CD63A06F6058C6D563DBE3E11FD366D2F22B4001E0578A7E082080000208C4488002204693492A08208080ED02E4EF5F8002C0BF153D114000010410888D0005406CA6924410400001DB05C8BF10010A8042B4E88B0002082080404C04';
wwv_flow_imp.g_varchar2_table(129) := '2800623291A54A23994C485D6DB534D4D74A63846E752AE64482ABFC95EA71C1B808845180980A13A00028CCCBAADEFAF573D7D60DF2D2B38FCB179F7B5C5EFAADC7E40B11B8BDA462FDED3D4FC9CE4D6B3DE74BF779FAB19DF2F4A33BE5A9DDDBB97DCE';
wwv_flow_imp.g_varchar2_table(130) := '608772D921DBBBD64A6363BDA7E5DD0EAB972D9057F63C2EDF7CF979F9DD575F94D75E7D415E7BE505F99D57F6702B8381B6FEE6979F5773F0C4DD29E13B02930A50004CCAC29D5AA0BABA4A962E5E201D1DEDD2DAD22AADAD6DD216815B3ED6961659B6';
wwv_flow_imp.g_varchar2_table(131) := '64A124128687B8DA40D0ACF2AAAF6F90FA860669686CE2F6398346E5D2289D3367CA8ECD5DD2E4B3083872F2BC5CBCD62D4DCDCDCAB351150F4DD2D8D4244D4DCDDCCA60D0A8AC9B9B5BA45D3D6F453DC6F573D98E1B59162A60F8EB58E850F48F9B4022';
wwv_flow_imp.g_varchar2_table(132) := '919454AA2AC2693962FAAC1FD52A8EA9408870E641875E5F5F275BBAD64B735383AFA1DF3BF0917CF8F1295F7DE9541A816432A51EFF4E690667D458085000C4621A4B934442EF0328CDD06519359D4E7BAE477FE09167273AE4059A1A1BF3454063435D';
wwv_flow_imp.g_varchar2_table(133) := 'FE77D37FD94C46DE7C6F9F1C3971C6D48DB6120B38E294780DE1199E480A17A00028DC8C2510B056A051ED2AD9B16593DA94EFBD252097CDC93FBFF5BE1C3EC696006B1F30241E6A010A80504F0FC121103E81FCEE800DEBFC1501B99CBCF5FE7E8A80F0';
wwv_flow_imp.g_varchar2_table(134) := '4D63CC22229DA90850004C458D6510B05CA0A9A951B66FDA280D0DB59E12F9DD01EF7EC0EE004F293A20505E010A80F27AB336046223A0B704ECD8BCC9D7818139B525E09FDFDEABB6049C8C4DFE24121E0122999A0005C0D4DC580A010494404343BD6C';
wwv_flow_imp.g_varchar2_table(135) := 'D6BB037C9C2298CB66F3BB03383B40C1F10F8110085000846012080181280BE477076CEE127F670764E58D773E908F8E9F8E72CAC41E2A018299AA0005C054E5580E01043E15D0BB03B66DDAE07B77C01BEF7EC0EE804FF5F80181CA08500054C69DB522';
wwv_flow_imp.g_varchar2_table(136) := '103B81467D9D808DEB7D6F0978F33DCE0E88DD83A00209B1CAA90B50004CDD8E251140E03E81C6C606D9B1D5EF7502D4EE8077F7CAA1A327EE1B855F1140A01C021400E550661D085824505F57275BD59680E6E646EFAC73226FBF7F8022C05B8A1E930A';
wwv_flow_imp.g_varchar2_table(137) := '706731021400C5E8B12C02084C2AA0B7046CEDDAE06F77803E3BE0BD7D7C76C0A492DC8940E90428004A67CBC808582DD0505F97DF1DD0DCE4BD2520A7B604BCF10EBB03AC7EC04C217916294E8002A0383F964600018380DE1DB065E35A9F6707B03BC0';
wwv_flow_imp.g_varchar2_table(138) := '40491302810B5000044ECA80082070AF803E3B60DBE68DD2E8E3624159B53B407F8A20170BBA57909F2717E0DE620528008A1564790410F014D05B02F46707F83D30505F27E0D011CE0EF084A50302450850001481C7A20820E05F405F36788BBE6C7093';
wwv_flow_imp.g_varchar2_table(139) := 'BF8F127E6BEF012E16E49FD7BA9E245CBC000540F1868C8000023E051A1B1B64FBE62E69F25504E8EB0470C5409FB47443A060010A8082C9580001048A11A8AFAB2DE83A01FA8A81078F1C2F66952C1B3B01120A428002200845C64000818204F496007D';
wwv_flow_imp.g_varchar2_table(140) := 'B1A0261F0706EA4F11E4624105F1D219015F021400BE98E8840002410BE86302B66FE9F2798A604EF4D901073FFA38E830182F8202841C8C000540308E8C8200025310A8AFAB932D855C36F88383728022600AD22C82C0830214000F9A700F0208945140';
wwv_flow_imp.g_varchar2_table(141) := 'EF0ED0A7083636D479AE3597CDC9DB7BF567079CF4EC4B87B80A9057500214004149320E02084C59A0AEAE56766CDD2C7EAF13F0E67B1FB02560CADA2C88C06D010A80DB0EFC8F00021516A85745C0968DEBA4D9C76707484EE41DB53B80B3032A3C6915';
wwv_flow_imp.g_varchar2_table(142) := '583DAB0C4E800220384B4642008122051A1B1A441F18E8EFEC809CBCF5FE7E39C415038B5467715B0528006C9D79F24620A40275B535A23F3BC0EFEE005D04706060482733F0B0183048010A802035190B0104021168A8AFCF5F2CA8C9CF150373397967';
wwv_flow_imp.g_varchar2_table(143) := 'EF41B6040422CF2036095000D834DBE48A408404F47502766CD924CD3E8B8037DFDF2707B962608466B8F050592258010A80603D190D01040214D0BB03B676ADF77D76803E4590DD01014E0043C55A800220D6D34B7208445FA0A1A141B6756D90465F97';
wwv_flow_imp.g_varchar2_table(144) := '0DCE719D80E84FB94B06DC1DB4000540D0A28C870002810BD4D7D7C9CEAD6A774073A3F7D83911AE13E0CD440F042800780C2080402404EA6A6B257F9D009F4540FE3A015C36381273EB2748FA042F400110BC29232280408904F2D709D8DC25BECE0EC8';
wwv_flow_imp.g_varchar2_table(145) := 'E6E4ADFC65834F94281A864520DA021400D19E3FA247C03A017D60A03E3BA0A5A5D93BF7FCEE807D5C36D85B2AE43D08AF14021400A5508DC998397DBDD598E4421AF112D045C0567DD960BFBB03F61E94031F1E8B1702D92050A40005409180D15F5CBD';
wwv_flow_imp.g_varchar2_table(146) := '457249229B716F735984BB11289B803E307087DA1DE0E78A81B99C3E3BE0A0EC3F7CB46CF1856145E6223E3ACFEF3058C631060A8038CE6A01393909F78740269B95B1B1B10246A32B02E515A8D5970DDEB4417CED0E50A1BDB3EF90355B0232998C9836';
wwv_flow_imp.g_varchar2_table(147) := 'E2999EFB8A8A7F1608B8FFF5B7207952144926AB5C1932E9B474F70DB8B6D380401804EAEBEA649BBE5890CF4F117CDB924F11ECED1F50AFFFEEEFF24DCFFD30CCEB6731F053A90428004A251B917153558602209B934B97AF452413C2B459A0AEAE5676';
wwv_flow_imp.g_varchar2_table(148) := '6CDD242DCD4DDE0CEA35F1ADF7F6CBBEC347BCFB46B8C7A5ABD78D5B004CCFFD08A74DE805085000148015C7AEFA8F80E338AEA99D3C7B5EC646475DDB6940202C02B535D5A22F1BDCD2E2A3085041BFBBEF706C7707A42726E4C4E9B32ACBC9FF398E23';
wwv_flow_imp.g_varchar2_table(149) := 'FAB93F796BB8EE259AD209500094CE361223A7525562DA17D8DF3F287B0F47F4E869F7BAE6D3B9F1D1E5D3BEFC107E017D60E0B64D1BA5A9B1C13B58B52540EF0E3874347ED70938FCF129B97EA3C7D5403FE7F573DFB5030D560850005831CDEE49A6AA';
wwv_flow_imp.g_varchar2_table(150) := '6B24613810502F79F8C871397CF4B8E823A9F5EF51B9251249CF50F51F42CF4E748894803E4570C7D62EF17560A02A02DE7C779FEC3B148FDD01FA39AADFF9BFFBC121E39C25D4735E3FF78D9D42D14810A514A00028A56E04C6761C47AA6B6A8D91EA3F';
wwv_flow_imp.g_varchar2_table(151) := '2AEFA83F28EF7E70400607078D7DC3D4A8DFDDABBFEFAE21E953A4B299AC6B3B0DD115D0970DDEB07AB9DA1250EF2B8977F71F960F225E048C8E8CC8DE0387E557BF79CFB358D7CF79C7D1CF105F3C748AA94022A67991560102758DCDE238E63F06E974';
wwv_flow_imp.g_varchar2_table(152) := '46F67F785C7EFCF35FCBDEFD87E4D4D97372B3A7570686866570782454B7DB310D4B4F6FAF64B3861778551D8C8D8D8A3E5D4AF7D3850EB75CFEC5239A0E5935DF99FC7CEA39D56707AC59B14CEAEBAABD9F0DEAB1F0DEBEC3B2F7E047323E3E160903FD';
wwv_flow_imp.g_varchar2_table(153) := '98D5C7E75CBA7255DEDB77507EF8D35FAAF88FE6633725EC241CA957CF79539FB0B41147690528004AEB1B89D193C9A434B6B48A986B00D15FDD7D83F2FEC1A3F2F3D7DF91BFF97F3F97BFFEE14FE57B3FF8897C4F7F0FC94DC7F4977FF3F7F277BFF88D';
wwv_flow_imp.g_varchar2_table(154) := 'F128689DCFEBEF7C20FFF08FBFC9DF7EAABE73FB8D44D7E00DF9877F7A537EF6EBDBB79FBFFEA6E8F3FE8747C6F554FBBABDBFFF43F99F7FFD23F9F3BFFA81FCF9F7F4ED87EA7B086F2ABEFFF1BD1FCAFFFAFEDFC98F7EF66BB5F5E298F4F40D79E7A89E';
wwv_flow_imp.g_varchar2_table(155) := 'E34DADED92487AEF1EF31E8C1E5117A00088FA0C06147F5D4393D4D4FADB5C9A5FA57AC7A4379FEBA38DF3B7F1714987E5363121598F8BA0E473D0FFA93CF4F50E429743582C231C877E7C8A9A5F3DCD85DCF43BEBDB8F8789F03CA6EF9F07F518D73116';
wwv_flow_imp.g_varchar2_table(156) := '9A636D5D83E85B211E95EBCB9A4B2D4001506AE1088DDFD4DA26A96A1F9B4B239413A12280C06D01FDDC6E6C69BBFD0BFF23A00428001402FF6E0B24124969699B26C954EAF61DFC8F0002D117509BFDF5735A3FB71389E8FCC98F3E7CF833E0D110FE39';
wwv_flow_imp.g_varchar2_table(157) := '2A6B84FA0F4547E7ECFC31014E42FDE528EBDA591902080429A05FF09BD4BB7EFD9CD6CFED20C766ACE80B5000447F0E4B92813E4AB87DC62CA9A9AB133F07070A5F0820101E0155BBEBE76EDB8C99A28FEF094F607E23A15F39042800CAA11CD1752493';
wwv_flow_imp.g_varchar2_table(158) := 'A9FC2E81A69676A9AAAE964432298EDE2AA0FEB8443425C246209E02EA39A99F9B896432FF5CD5CF59BDC95F3F87E3993059052140011084629CC7701CF50EA251DAA6CF948ECE59D2DAD129FA8F4B6D4343FE0F4D2299944432C10D031E03657F0CDC7E';
wwv_flow_imp.g_varchar2_table(159) := 'B1D7CF45FD9CD4CF4DFD1CD5CFD5BA864611F5DC95887E1176790412E5590D6B898380E324F22FFAFA8F4B736B47BE289836738E4C9B39971B063C06CAFE1898937F0EEAE7A27E4E5655578BA39EA3C217023E0528007C42D10D01041040A01C02ACA35C';
wwv_flow_imp.g_varchar2_table(160) := '021400E592663D08208000020884488002204493412808208080ED02E45F3E010A80F259B32604104000010442234001109AA92010041040C07601F22FA700054039B559170208208000022111A00008C944100602082060BB00F997578002A0BCDEAC0D';
wwv_flow_imp.g_varchar2_table(161) := '0104104000815008500084621A0802010410B05D80FCCB2D4001506E71D687000208208040080428004230098480000208D82E40FEE517A00028BF396B440001041040A0E2021400159F0202400001046C1720FF4A08500054429D752280000208205061';
wwv_flow_imp.g_varchar2_table(162) := '010A800A4F00AB470001046C1720FFCA08500054C69DB52280000208205051010A808AF2B372041040C07601F2AF94000540A5E4592F0208208000021514A000A8203EAB460001046C1720FFCA09500054CE9E352380000208205031010A808AD1B36204';
wwv_flow_imp.g_varchar2_table(163) := '1040C07601F2AFA400054025F559370208208000021512A000A8103CAB450001046C1720FFCA0A500054D69FB52380000208205011010A808AB0B352041040C07601F2AFB4000540A56780F52380000208205001010A800AA0B34A041040C07601F2AFBC';
wwv_flow_imp.g_varchar2_table(164) := '000540E5E7800810400001041028BB000540D9C9592102082060BB00F987418002200CB3400C08208000020894598002A0CCE0AC0E010410B05D80FCC3214001108E79200A041040000104CA2A400150566E5686000208D82E40FE6111A00008CB4C1007';
wwv_flow_imp.g_varchar2_table(165) := '0208208000026514A000282336AB420001046C1720FFF008500084672E8804010410400081B2095000948D9A1521800002B60B907F98042800C2341BC407554DCF000006B6494441548200020820804099042800CA04CD6A10400001DB05C83F5C021400';
wwv_flow_imp.g_varchar2_table(166) := 'E19A0FA2410001041040A02C0214006561662508208080ED02E41F36010A80B0CD08F12080000208205006010A803220B30A041040C07601F20F9F000540F8E6848810400001041028B9000540C989590102082060BB00F987518002208CB3424C082080';
wwv_flow_imp.g_varchar2_table(167) := '00020894588002A0C4C00C8F000208D82E40FEE114A00008E7BC10150208208000022515A00028292F8323800002B60B907F58052800C23A33C485000208208040090528004A88CBD008208080ED02E41F5E010A80F0CE0D912180000208205032010A80';
wwv_flow_imp.g_varchar2_table(168) := '92D1323002082060BB00F98759800220CCB3436C08208000020894488002A044B00C8B000208D82E40FEE116A00008F7FC101D0208208000022511A00028092B8322800002B60B907FD8052800C23E43C487000208208040090428004A80CA9008208080';
wwv_flow_imp.g_varchar2_table(169) := 'ED02E41F7E010A80F0CF111122800002082010B8000540E0A40C88000208D82E40FE5110A00088C22C1123020820800002010B5000040CCA7008208080ED02E41F0D010A8068CC135122800002082010A8000540A09C0C86000208D82E40FE5111A00088';
wwv_flow_imp.g_varchar2_table(170) := 'CA4C1127020820800002010A50000488C95008208080ED02E41F1D010A80E8CC1591228000020820109800054060940C84000208D82E40FE5112A00088D26C112B020820800002010950000404C93008208080ED02E41F2D010A8068CD17D12280000208';
wwv_flow_imp.g_varchar2_table(171) := '201088000540208C0C82000208D82E40FE5113A00088DA8C112F020820800002010850000480C81008208080ED02E41F3D010A80E8CD191123800002082050B4000540D1840C80000208D82E40FE5114A00088E2AC1133020820800002450A50001409C8';
wwv_flow_imp.g_varchar2_table(172) := 'E208208080ED02E41F4D010A8068CE1B512380000208205094000540517C2C8C000208D82E40FE5115A00088EACC1137020820800002450850001481C7A208208080ED02E41F5D010A80E8CE1D912380000208203065010A8029D3B12002082060BB00F9';
wwv_flow_imp.g_varchar2_table(173) := '4759800220CAB347EC0820800002084C518002608A702C86000208D82E40FED116A00088F6FC113D0208208000025312A00098121B0B21800002B60B907FD4052800A23E83C48F0002082080C014042800A680C62208208080ED02E41F7D010A80E8CF21';
wwv_flow_imp.g_varchar2_table(174) := '1920800002082050B0000540C1642C80000208D82E40FE7110A00088C32C9203020820800002050A500014084677041040C07601F28F870005403CE6912C10400001041028488002A0202E3A23800002B60B907F5C042800E23293E48100020820804001';
wwv_flow_imp.g_varchar2_table(175) := '0214000560D115010410B05D80FCE3234001109FB924130410400001047C0B5000F8A6A22302082060BB00F9C7498002204EB3492E082080000208F814A000F0094537041040C07601F28F97000540BCE6936C104000010410F0254001E08B894E082080';
wwv_flow_imp.g_varchar2_table(176) := '80ED02E41F37010A80B8CD28F9208000020820E0438002C007125D10400001DB05C83F7E021400F19B5332420001041040C0538002C093880E08208080ED02E41F47010A8038CE2A39218000020820E0214001E001443302082060BB00F9C7538002209E';
wwv_flow_imp.g_varchar2_table(177) := 'F34A56082080000208180528008C3C3422800002B60B907F5C052800E23AB3E485000208208080418002C080431302082060BB00F9C757800220BE734B66082080000208B80A5000B8D2D080000208D82E40FE7116A00088F3EC921B0208208000022E02';
wwv_flow_imp.g_varchar2_table(178) := '14002E30DC8D000208D82E40FEF116A00088F7FC921D020820800002930A50004CCAC29D08208080ED02E41F77010A80B8CF30F921800002082030890005C02428DC85000208D82E40FEF117A00088FF1C93210208208000020F0850003C40C21D082080';
wwv_flow_imp.g_varchar2_table(179) := '80ED02E46F830005800DB34C8E082080000208DC274001701F08BF22800002B60B90BF1D02140076CC3359228000020820F039010A80CF71F00B02082060BB00F9DB22400160CB4C9327020820800002F7085000DC83C18F08208080ED02E46F8F000580';
wwv_flow_imp.g_varchar2_table(180) := '3D734DA60820800002087C2A4001F029053F20800002B60B90BF4D02140036CD36B922800002082070478002E00E04DF10400001DB05C8DF2E010A00BBE69B6C114000010410C80B5000E419F80F010410B05D80FC6D13A000B06DC6C917010410400001';
wwv_flow_imp.g_varchar2_table(181) := '254001A010F887000208D82E40FEF6095000D837E7648C0002082080805000F02040000104AC1700C046010A001B679D9C1140000104AC17A000B0FE2100000208D82E40FE760A5000D839EF648D0002082060B9000580E50F00D2470001DB05C8DF5601';
wwv_flow_imp.g_varchar2_table(182) := '0A005B679EBC1140000104AC16A000B07AFA491E01046C17207F7B052800EC9D7B324700010410B0588002C0E2C927750410B05D80FC6D16A000B079F6C91D01041040C05A010A006BA79EC41140C07601F2B75BE0FF030000FFFFA4A53E3D0000000649';
wwv_flow_imp.g_varchar2_table(183) := '444154030069ED562C8F4F06250000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(133024418674085564281)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(133024409765159564266)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15710235974864
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(133024410042246564268)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15710235975158
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(133024410375127564268)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15710235975204
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(133024410635857564268)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15710235975253
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(133024410990959564268)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15710235975294
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(133024411257684564268)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15710235975335
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(133024411579039564268)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15710235975376
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(133024411870542564269)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15710235975412
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(133024412170400564269)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15710235975450
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(133024412476999564269)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15710235975493
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(133024412704537564269)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15710235975531
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(133024413018468564269)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15710235975576
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(133024413364466564269)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15710235975617
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(133024413626212564270)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15710235975657
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(133024421546356564284)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15710235977965
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(133024421660655564284)
,p_name=>'Reader Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>15710235978076
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(133024421716731564284)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator,Contributor'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>15710235978106
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(133024421152171564283)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>15710235977840
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(133024421305469564284)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>15710235977892
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(133024421441352564284)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>15710235977914
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(133024422541650564286)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(133024419045629564281)
,p_version_scn=>15710235978159
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(133024422944625564287)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(133024418811550564281)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>15710235978490
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(133025012437158569654)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15710237104992
);
end;
/
prompt --application/shared_components/user_interface/lovs/customers_full_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(133024452307561564332)
,p_lov_name=>'CUSTOMERS.FULL_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CUSTOMERS'
,p_return_column_name=>'CUSTOMER_ID'
,p_display_column_name=>'FULL_NAME'
,p_default_sort_column_name=>'FULL_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15710235989284
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(133024910655431569493)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15710237078845
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(133025020030201569662)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(133025020030201569662)||'.'
,p_location=>'STATIC'
,p_version_scn=>15710237106030
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(133025020327524569662)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(133025037385957569680)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_imp.id(133025037385957569680)||'.'
,p_location=>'STATIC'
,p_version_scn=>15710237108597
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(133025037673766569680)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(133025038049488569680)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(133025038444080569681)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(133025049665725569691)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(133025049665725569691)||'.'
,p_location=>'STATIC'
,p_version_scn=>15710237111017
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(133025049909463569691)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(133025050359865569692)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(133025050766280569692)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(133025051149428569692)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/stores_store_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(133024451127724564331)
,p_lov_name=>'STORES.STORE_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'STORES'
,p_return_column_name=>'STORE_ID'
,p_display_column_name=>'STORE_NAME'
,p_default_sort_column_name=>'STORE_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15710235988937
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(133024930616409569536)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>15710237085497
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(133024911375821569508)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(133024911375821569508)||'.'
,p_location=>'STATIC'
,p_version_scn=>15710237079205
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(133024911616352569508)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(133024978995948569614)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_imp.id(133024978995948569614)||'.'
,p_location=>'STATIC'
,p_version_scn=>15710237097717
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(133024979257221569614)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(133024979603701569614)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(133024423278258564287)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(133025095549972569755)
,p_group_name=>'User Settings'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(133024414504624564271)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(133024414780620564271)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(133024449189056564322)
,p_short_name=>'Dashboard'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(133024455554335564336)
,p_short_name=>'Order Search'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(133024737322623567946)
,p_short_name=>'Customers'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(133024744587414567960)
,p_short_name=>'Customer Orders'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(133024749244991567968)
,p_short_name=>'Product Orders'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(133024753913657567975)
,p_short_name=>'Product Reviews'
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(133024760034314567984)
,p_short_name=>'Store Orders'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(133025075909701569724)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(133024415400970564272)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2721322117358710262
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(133024413952544564270)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15710235975706
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(133024418811550564281)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15710235977760
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(133024418948889564281)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15710235977780
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(133024419045629564281)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15710235977792
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(133024419243983564281)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15710235977716
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(133024419562055564281)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15710235977804
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(133024419607360564281)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15710235977816
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(133025095773438569755)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15710237125522
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(133025096059644569755)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15710237125582
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(133024414271588564271)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15710235975899
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Demo - Customer Orders'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024437718397564310)
,p_plug_name=>'Demo - Customer Orders'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024897457046569475)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(133024893936091569472)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_query_num_rows=>15
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024439091125564313)
,p_plug_name=>'Customer Orders'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(133024439412266564313)
,p_region_id=>wwv_flow_imp.id(133024439091125564313)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(133024441111783564315)
,p_chart_id=>wwv_flow_imp.id(133024439412266564313)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'CUSTOMER_ORDER_PRODUCTS'
,p_series_type=>'bar'
,p_items_value_column_name=>'ORDER_TOTAL'
,p_items_label_column_name=>'FULL_NAME'
,p_aggregate_function=>'SUM'
,p_items_label_rendered=>false
,p_items_label_position=>'auto'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(133024439958872564314)
,p_chart_id=>wwv_flow_imp.id(133024439412266564313)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(133024440536658564314)
,p_chart_id=>wwv_flow_imp.id(133024439412266564313)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024441700644564316)
,p_plug_name=>'Product Sales'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(133024442105744564316)
,p_region_id=>wwv_flow_imp.id(133024441700644564316)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(133024443868971564317)
,p_chart_id=>wwv_flow_imp.id(133024442105744564316)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'PRODUCT_ORDERS'
,p_series_type=>'bar'
,p_items_value_column_name=>'TOTAL_SALES'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_aggregate_function=>'SUM'
,p_items_label_rendered=>false
,p_items_label_position=>'auto'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(133024442663234564316)
,p_chart_id=>wwv_flow_imp.id(133024442105744564316)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(133024443220619564317)
,p_chart_id=>wwv_flow_imp.id(133024442105744564316)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024444466958564318)
,p_plug_name=>'Store Total Sales'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(133024444813056564318)
,p_region_id=>wwv_flow_imp.id(133024444466958564318)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(133024445393088564319)
,p_chart_id=>wwv_flow_imp.id(133024444813056564318)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'STORE_ORDERS_STATUS'
,p_series_type=>'pie'
,p_items_value_column_name=>'TOTAL_SALES'
,p_items_label_column_name=>'STORE_NAME'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024445916987564319)
,p_plug_name=>'Product Orders'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(133024446362819564320)
,p_region_id=>wwv_flow_imp.id(133024445916987564319)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(133024448090345564321)
,p_chart_id=>wwv_flow_imp.id(133024446362819564320)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'PRODUCT_ORDERS'
,p_series_type=>'bar'
,p_items_value_column_name=>'ORDER_COUNT'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_aggregate_function=>'SUM'
,p_items_label_rendered=>false
,p_items_label_position=>'auto'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(133024446847947564320)
,p_chart_id=>wwv_flow_imp.id(133024446362819564320)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(133024447483386564320)
,p_chart_id=>wwv_flow_imp.id(133024446362819564320)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024448661897564321)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(133024414504624564271)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Order Search'
,p_alias=>'ORDER-SEARCH'
,p_step_title=>'Order Search'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024450270050564326)
,p_plug_name=>'Search Results'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ORDER_ID",',
'       "ORDER_DATETIME",',
'       "CUSTOMER_ID",',
'       ( select l1."FULL_NAME" from "CUSTOMERS" l1 where l1."CUSTOMER_ID" = m."CUSTOMER_ID") "CUSTOMER_ID_L$1",',
'       "ORDER_STATUS",',
'       "STORE_ID",',
'       ( select l2."STORE_NAME" from "STORES" l2 where l2."STORE_ID" = m."STORE_ID") "STORE_ID_L$2"',
'from "ORDERS" m'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P3_ORDER_BY", "orderBys": [{"key":"CUSTOMER_ID_L$1","expr":"\"CUSTOMER_ID_L$1\" asc"},{"key":"ORDER_DATETIME","expr":"\"ORDER_DATETIME\" asc"},{"key":"ORDER_STATUS","expr":"\"ORDER_STATUS\" asc"}]}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(133024454257402564335)
,p_region_id=>wwv_flow_imp.id(133024450270050564326)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'CUSTOMER_ID_L$1'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'ORDER_DATETIME'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'STORE_ID_L$2'
,p_badge_column_name=>'ORDER_STATUS'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024450300142564326)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(133024450270050564326)
,p_landmark_label=>'Filters'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024453091918564333)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024455058807564336)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(133024414504624564271)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024453501280564333)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024453091918564333)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RR,3::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024450817370564330)
,p_name=>'P3_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133024450300142564326)
,p_prompt=>'Search'
,p_source=>'CUSTOMER_ID,ORDER_STATUS,STORE_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024451666849564331)
,p_name=>'P3_STORE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133024450300142564326)
,p_prompt=>'Store'
,p_source=>'STORE_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'STORES.STORE_NAME'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024452093579564332)
,p_name=>'P3_ORDER_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133024450300142564326)
,p_prompt=>'Order Status'
,p_source=>'ORDER_STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024452735721564332)
,p_name=>'P3_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133024450300142564326)
,p_prompt=>'Customer'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'CUSTOMERS.FULL_NAME'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024454712146564335)
,p_name=>'P3_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133024450270050564326)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'CUSTOMER_ID_L$1'
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Customer Id L$1;CUSTOMER_ID_L$1,Order Datetime;ORDER_DATETIME,Order Status;ORDER_STATUS'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Orders'
,p_alias=>'ORDERS'
,p_step_title=>'Orders'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024456718642564343)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024457530236564345)
,p_plug_name=>'Orders'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'ORDERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'ORDERS'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133024458882477564347)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133024459391939564348)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133024460368397564349)
,p_name=>'ORDER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Order ID'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133024461330838564351)
,p_name=>'ORDER_DATETIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_DATETIME'
,p_data_type=>'TIMESTAMP'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Order Datetime'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133024462368372564352)
,p_name=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Customer'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133024463319261564353)
,p_name=>'ORDER_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133024464395416564354)
,p_name=>'STORE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STORE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Store'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(133024458062195564346)
,p_internal_uid=>133024458062195564346
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(133024421716731564284)
,p_update_authorization_scheme=>wwv_flow_imp.id(133024421716731564284)
,p_delete_authorization_scheme=>wwv_flow_imp.id(133024421716731564284)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(133024458497624564346)
,p_interactive_grid_id=>wwv_flow_imp.id(133024458062195564346)
,p_static_id=>'1330244585'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(133024458622713564347)
,p_report_id=>wwv_flow_imp.id(133024458497624564346)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133024459715397564348)
,p_view_id=>wwv_flow_imp.id(133024458622713564347)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(133024459391939564348)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133024460734870564350)
,p_view_id=>wwv_flow_imp.id(133024458622713564347)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(133024460368397564349)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133024461772434564351)
,p_view_id=>wwv_flow_imp.id(133024458622713564347)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(133024461330838564351)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133024462736879564352)
,p_view_id=>wwv_flow_imp.id(133024458622713564347)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(133024462368372564352)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133024463789506564353)
,p_view_id=>wwv_flow_imp.id(133024458622713564347)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(133024463319261564353)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133024464725037564354)
,p_view_id=>wwv_flow_imp.id(133024458622713564347)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(133024464395416564354)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024711030216567238)
,p_plug_name=>'Order Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'ORDER_ITEMS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(133024457530236564345)
,p_prn_page_header=>'ORDER_ITEMS'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133024712265344567240)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133024712771392567240)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133024713766695567241)
,p_name=>'ORDER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Order'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_parent_column_id=>wwv_flow_imp.id(133024460368397564349)
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133024714759193567242)
,p_name=>'LINE_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Line Item ID'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133024715761754567243)
,p_name=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Product'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133024716725606567244)
,p_name=>'UNIT_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Unit Price'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D00'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133024717797950567244)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D0'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(133024711496783567239)
,p_internal_uid=>133024711496783567239
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(133024421716731564284)
,p_update_authorization_scheme=>wwv_flow_imp.id(133024421716731564284)
,p_delete_authorization_scheme=>wwv_flow_imp.id(133024421716731564284)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(133024711866274567239)
,p_interactive_grid_id=>wwv_flow_imp.id(133024711496783567239)
,p_static_id=>'1330247119'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(133024712063196567239)
,p_report_id=>wwv_flow_imp.id(133024711866274567239)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133024713176082567240)
,p_view_id=>wwv_flow_imp.id(133024712063196567239)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(133024712771392567240)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133024714121310567241)
,p_view_id=>wwv_flow_imp.id(133024712063196567239)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(133024713766695567241)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133024715199159567242)
,p_view_id=>wwv_flow_imp.id(133024712063196567239)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(133024714759193567242)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133024716105419567243)
,p_view_id=>wwv_flow_imp.id(133024712063196567239)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(133024715761754567243)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133024717111196567244)
,p_view_id=>wwv_flow_imp.id(133024712063196567239)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(133024716725606567244)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133024718197761567245)
,p_view_id=>wwv_flow_imp.id(133024712063196567239)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(133024717797950567244)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024457106401564345)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024456718642564343)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_security_scheme=>wwv_flow_imp.id(133024421716731564284)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024465326984564355)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(133024457530236564345)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'ORDERS - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(133024457106401564345)
,p_internal_uid=>133024465326984564355
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024718707149567245)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(133024711030216567238)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'ORDER_ITEMS - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(133024457106401564345)
,p_internal_uid=>133024718707149567245
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Customers'
,p_alias=>'CUSTOMERS'
,p_step_title=>'Customers'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024733548030567942)
,p_plug_name=>'Customers'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CUSTOMERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Customers'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(133024733636221567942)
,p_name=>'Customers'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'CUSTOMER_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:RP:P6_CUSTOMER_ID:\#CUSTOMER_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(133024421716731564284)
,p_owner=>'ABHISHEK.ABHA77@GMAIL.COM'
,p_internal_uid=>133024733636221567942
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024734383260567944)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Customer ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024734787610567944)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024735156189567944)
,p_db_column_name=>'EMAIL_ADDRESS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Email Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(133024808598394569386)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1330248086'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FULL_NAME:EMAIL_ADDRESS'
,p_sort_column_1=>'FULL_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024736802112567946)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(133024414504624564271)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024735649561567945)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024733548030567942)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:6::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133024735990997567945)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(133024733548030567942)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133024736418169567945)
,p_event_id=>wwv_flow_imp.id(133024735990997567945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133024733548030567942)
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Customer'
,p_alias=>'CUSTOMER'
,p_page_mode=>'MODAL'
,p_step_title=>'Customer'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(133024421716731564284)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024725821651567766)
,p_plug_name=>'Customer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CUSTOMERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024729113909567938)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024729595198567938)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024729113909567938)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024730955038567940)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133024729113909567938)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P6_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024731393875567940)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(133024729113909567938)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P6_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024731765643567940)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(133024729113909567938)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P6_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024726264496567768)
,p_name=>'P6_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133024725821651567766)
,p_item_source_plug_id=>wwv_flow_imp.id(133024725821651567766)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer ID'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024727459246567936)
,p_name=>'P6_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133024725821651567766)
,p_item_source_plug_id=>wwv_flow_imp.id(133024725821651567766)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024727812258567937)
,p_name=>'P6_EMAIL_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133024725821651567766)
,p_item_source_plug_id=>wwv_flow_imp.id(133024725821651567766)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Address'
,p_source=>'EMAIL_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133024729686901567938)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133024729595198567938)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133024730486809567939)
,p_event_id=>wwv_flow_imp.id(133024729686901567938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024732592845567941)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(133024725821651567766)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Customer'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>133024732592845567941
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024732976016567941)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>133024732976016567941
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024732104040567940)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(133024725821651567766)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Customer'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>133024732104040567940
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Customer Orders'
,p_alias=>'CUSTOMER-ORDERS'
,p_step_title=>'Customer Orders'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024739359144567952)
,p_plug_name=>'Customer Order Products'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CUSTOMER_ORDER_PRODUCTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Customer Orders'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(133024739476763567952)
,p_name=>'Customer Orders'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ABHISHEK.ABHA77@GMAIL.COM'
,p_internal_uid=>133024739476763567952
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024740138890567955)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Order ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024740514862567955)
,p_db_column_name=>'ORDER_DATETIME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Order Datetime'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024740989988567956)
,p_db_column_name=>'ORDER_STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Order Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024741377896567956)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Customer ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024741706401567957)
,p_db_column_name=>'EMAIL_ADDRESS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Email Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024742143587567957)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024742532062567957)
,p_db_column_name=>'ORDER_TOTAL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Order Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024742942643567958)
,p_db_column_name=>'ITEMS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Items'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(133024814356257569391)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1330248144'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORDER_DATETIME:ORDER_STATUS:EMAIL_ADDRESS:FULL_NAME:ORDER_TOTAL:ITEMS'
,p_sort_column_1=>'ORDER_DATETIME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024744054202567959)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(133024414504624564271)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024743350221567958)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024739359144567952)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Product Orders'
,p_alias=>'PRODUCT-ORDERS'
,p_step_title=>'Product Orders'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024745646174567962)
,p_plug_name=>'Product Orders'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PRODUCT_ORDERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Product Orders'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(133024745792468567962)
,p_name=>'Product Orders'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ABHISHEK.ABHA77@GMAIL.COM'
,p_internal_uid=>133024745792468567962
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024746437001567965)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024746892036567965)
,p_db_column_name=>'ORDER_STATUS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Order Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024747210609567966)
,p_db_column_name=>'TOTAL_SALES'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Total Sales'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024747686766567966)
,p_db_column_name=>'ORDER_COUNT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Order Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(133024820816496569398)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1330248209'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_NAME:ORDER_STATUS:TOTAL_SALES:ORDER_COUNT:'
,p_sort_column_1=>'PRODUCT_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024748799086567967)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(133024414504624564271)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024748069100567966)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024745646174567962)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Product Reviews'
,p_alias=>'PRODUCT-REVIEWS'
,p_step_title=>'Product Reviews'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024750307040567970)
,p_plug_name=>'Product Reviews'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PRODUCT_REVIEWS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Product Reviews'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(133024750441165567970)
,p_name=>'Product Reviews'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ABHISHEK.ABHA77@GMAIL.COM'
,p_internal_uid=>133024750441165567970
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024751108671567972)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024751594853567973)
,p_db_column_name=>'RATING'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Rating'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024751935641567973)
,p_db_column_name=>'AVG_RATING'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Avg Rating'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024752380882567974)
,p_db_column_name=>'REVIEW'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Review'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(133024824319495569402)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1330248244'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_NAME:RATING:AVG_RATING:REVIEW:'
,p_sort_column_1=>'PRODUCT_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024753460646567975)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(133024414504624564271)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024752705929567974)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024750307040567970)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Store Orders'
,p_alias=>'STORE-ORDERS'
,p_step_title=>'Store Orders'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024755086141567978)
,p_plug_name=>'Store Orders Status'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'STORE_ORDERS_STATUS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Store Orders'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(133024755175214567978)
,p_name=>'Store Orders'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ABHISHEK.ABHA77@GMAIL.COM'
,p_internal_uid=>133024755175214567978
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024755979442567980)
,p_db_column_name=>'STORE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Store Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024756397433567980)
,p_db_column_name=>'ADDRESS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024756779767567981)
,p_db_column_name=>'LATITUDE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Latitude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024757177874567981)
,p_db_column_name=>'LONGITUDE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Longitude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024757564785567981)
,p_db_column_name=>'ORDER_STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Order Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024757911255567982)
,p_db_column_name=>'ORDER_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Order Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024758374517567982)
,p_db_column_name=>'TOTAL_SALES'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Total Sales'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(133024827822914569407)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1330248279'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STORE_NAME:ADDRESS:LATITUDE:LONGITUDE:ORDER_STATUS:ORDER_COUNT:TOTAL_SALES:'
,p_sort_column_1=>'STORE_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024759538233567983)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(133024414504624564271)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024758842722567983)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024755086141567978)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Stores'
,p_alias=>'STORES'
,p_page_mode=>'MODAL'
,p_step_title=>'Stores'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024779595319568682)
,p_plug_name=>'Stores'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'select "STORE_ID","STORE_NAME","WEB_ADDRESS","PHYSICAL_ADDRESS","LATITUDE","LONGITUDE",sys.dbms_lob.getlength("LOGO")"LOGO","LOGO_MIME_TYPE","LOGO_FILENAME","LOGO_CHARSET","LOGO_LAST_UPDATED"from "STORES"'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Stores'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(133024779624307568682)
,p_name=>'Stores'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'STORE_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:RP:P12_STORE_ID:\#STORE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ABHISHEK.ABHA77@GMAIL.COM'
,p_internal_uid=>133024779624307568682
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024780319924568684)
,p_db_column_name=>'STORE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Store ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024780779152568685)
,p_db_column_name=>'STORE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Store Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024781188589568685)
,p_db_column_name=>'WEB_ADDRESS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Web Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024781589251568685)
,p_db_column_name=>'PHYSICAL_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Physical Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024781983634568686)
,p_db_column_name=>'LATITUDE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Latitude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024782356133568686)
,p_db_column_name=>'LONGITUDE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Longitude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024782727028568687)
,p_db_column_name=>'LOGO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Logo'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DOWNLOAD:STORES:LOGO:STORE_ID::::::attachment::'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024783124405568687)
,p_db_column_name=>'LOGO_MIME_TYPE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Logo Mime Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024783567854568687)
,p_db_column_name=>'LOGO_FILENAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Logo Filename'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024783926661568688)
,p_db_column_name=>'LOGO_CHARSET'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Logo Charset'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024784381346568688)
,p_db_column_name=>'LOGO_LAST_UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Logo Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(133024833122382569412)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1330248332'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STORE_NAME:WEB_ADDRESS:PHYSICAL_ADDRESS:LATITUDE:LONGITUDE:LOGO'
,p_sort_column_1=>'STORE_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024784874142568688)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024779595319568682)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:12::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133024785109489568689)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(133024779595319568682)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133024785625004568689)
,p_event_id=>wwv_flow_imp.id(133024785109489568689)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133024779595319568682)
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Store'
,p_alias=>'STORE'
,p_page_mode=>'MODAL'
,p_step_title=>'Store'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024766609344568497)
,p_plug_name=>'Store'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'STORES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024775196507568679)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024775597509568679)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024775196507568679)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024776980075568680)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133024775196507568679)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P12_STORE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024777367981568681)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(133024775196507568679)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P12_STORE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024777757294568681)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(133024775196507568679)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P12_STORE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024767042065568498)
,p_name=>'P12_STORE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_item_source_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Store ID'
,p_source=>'STORE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024767836203568672)
,p_name=>'P12_STORE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_item_source_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Store Name'
,p_source=>'STORE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024768261816568672)
,p_name=>'P12_WEB_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_item_source_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Web Address'
,p_source=>'WEB_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024768617433568673)
,p_name=>'P12_PHYSICAL_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_item_source_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Physical Address'
,p_source=>'PHYSICAL_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024769067559568673)
,p_name=>'P12_LATITUDE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_item_source_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Latitude'
,p_source=>'LATITUDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024769421661568674)
,p_name=>'P12_LONGITUDE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_item_source_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Longitude'
,p_source=>'LONGITUDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024769812120568674)
,p_name=>'P12_LOGO'
,p_source_data_type=>'BLOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_item_source_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Logo'
,p_source=>'LOGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'purge_file_at', 'SESSION',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024770287225568675)
,p_name=>'P12_LOGO_MIME_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_item_source_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Logo Mime Type'
,p_source=>'LOGO_MIME_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024770611419568675)
,p_name=>'P12_LOGO_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_item_source_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Logo Filename'
,p_source=>'LOGO_FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024771037553568675)
,p_name=>'P12_LOGO_CHARSET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_item_source_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Logo Charset'
,p_source=>'LOGO_CHARSET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024771414400568676)
,p_name=>'P12_LOGO_LAST_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_item_source_plug_id=>wwv_flow_imp.id(133024766609344568497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Logo Last Updated'
,p_source=>'LOGO_LAST_UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133024775625406568679)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133024775597509568679)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133024776471308568680)
,p_event_id=>wwv_flow_imp.id(133024775625406568679)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024778586369568681)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(133024766609344568497)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Store'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>133024778586369568681
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024778919305568682)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>133024778919305568682
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024778148190568681)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(133024766609344568497)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Store'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>133024778148190568681
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Products'
,p_alias=>'PRODUCTS'
,p_page_mode=>'MODAL'
,p_step_title=>'Products'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024801229229569377)
,p_plug_name=>'Products'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'select "PRODUCT_ID","PRODUCT_NAME","UNIT_PRICE",sys.dbms_lob.getlength("PRODUCT_DETAILS")"PRODUCT_DETAILS",sys.dbms_lob.getlength("PRODUCT_IMAGE")"PRODUCT_IMAGE","IMAGE_MIME_TYPE","IMAGE_FILENAME","IMAGE_CHARSET","IMAGE_LAST_UPDATED"from "PRODUCTS"'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Products'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(133024801328215569377)
,p_name=>'Products'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'PRODUCT_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:RP:P14_PRODUCT_ID:\#PRODUCT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ABHISHEK.ABHA77@GMAIL.COM'
,p_internal_uid=>133024801328215569377
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024802049494569379)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Product ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024802485877569379)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024802949041569379)
,p_db_column_name=>'UNIT_PRICE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Unit Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024803308242569380)
,p_db_column_name=>'PRODUCT_DETAILS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Product Details'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DOWNLOAD:PRODUCTS:PRODUCT_DETAILS:PRODUCT_ID::::::attachment::'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024803796067569380)
,p_db_column_name=>'PRODUCT_IMAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Product Image'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DOWNLOAD:PRODUCTS:PRODUCT_IMAGE:PRODUCT_ID::::::attachment::'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024804162951569380)
,p_db_column_name=>'IMAGE_MIME_TYPE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Image Mime Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024804527139569381)
,p_db_column_name=>'IMAGE_FILENAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Image Filename'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024804972497569381)
,p_db_column_name=>'IMAGE_CHARSET'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Image Charset'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024805366953569382)
,p_db_column_name=>'IMAGE_LAST_UPDATED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Image Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(133024862360827569432)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1330248624'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_NAME:UNIT_PRICE:PRODUCT_DETAILS:PRODUCT_IMAGE'
,p_sort_column_1=>'PRODUCT_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024805875437569382)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024801229229569377)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:14::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133024806177063569382)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(133024801229229569377)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133024806603249569382)
,p_event_id=>wwv_flow_imp.id(133024806177063569382)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133024801229229569377)
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Product'
,p_alias=>'PRODUCT'
,p_page_mode=>'MODAL'
,p_step_title=>'Product'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024789963121569200)
,p_plug_name=>'Product'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PRODUCTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024796802609569373)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024797290755569374)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024796802609569373)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024798689554569375)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133024796802609569373)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P14_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024799040524569375)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(133024796802609569373)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P14_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024799419364569375)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(133024796802609569373)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P14_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024790381681569201)
,p_name=>'P14_PRODUCT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_item_source_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product ID'
,p_source=>'PRODUCT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024790937119569368)
,p_name=>'P14_PRODUCT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_item_source_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Name'
,p_source=>'PRODUCT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024791326185569369)
,p_name=>'P14_UNIT_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_item_source_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit Price'
,p_source=>'UNIT_PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024791762962569369)
,p_name=>'P14_PRODUCT_DETAILS'
,p_source_data_type=>'BLOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_item_source_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Details'
,p_source=>'PRODUCT_DETAILS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'purge_file_at', 'SESSION',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024792169422569369)
,p_name=>'P14_PRODUCT_IMAGE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_item_source_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Image'
,p_source=>'PRODUCT_IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'purge_file_at', 'SESSION',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024792543338569370)
,p_name=>'P14_IMAGE_MIME_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_item_source_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Mime Type'
,p_source=>'IMAGE_MIME_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024792979825569370)
,p_name=>'P14_IMAGE_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_item_source_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Filename'
,p_source=>'IMAGE_FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024793348926569371)
,p_name=>'P14_IMAGE_CHARSET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_item_source_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Charset'
,p_source=>'IMAGE_CHARSET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024793733102569371)
,p_name=>'P14_IMAGE_LAST_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_item_source_plug_id=>wwv_flow_imp.id(133024789963121569200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Last Updated'
,p_source=>'IMAGE_LAST_UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133024797317694569374)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133024797290755569374)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133024798183021569374)
,p_event_id=>wwv_flow_imp.id(133024797317694569374)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024800264891569376)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(133024789963121569200)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Product'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>133024800264891569376
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024800656589569376)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>133024800656589569376
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024799899495569375)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(133024789963121569200)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Product'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>133024799899495569375
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Demo - Customer Orders - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024430313916564299)
,p_plug_name=>'Demo - Customer Orders'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024432476162564304)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(133024430313916564299)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024430884011564302)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133024430313916564299)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024431202317564303)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133024430313916564299)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024431694627564303)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133024430313916564299)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024432053068564304)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133024430313916564299)
,p_prompt=>'Remember me'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024434659169564306)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>133024434659169564306
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(133024435148747564306)
,p_page_process_id=>wwv_flow_imp.id(133024434659169564306)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(133024435663993564307)
,p_page_process_id=>wwv_flow_imp.id(133024434659169564306)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024432743741564304)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>133024432743741564304
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(133024433213204564305)
,p_page_process_id=>wwv_flow_imp.id(133024432743741564304)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(133024433768623564305)
,p_page_process_id=>wwv_flow_imp.id(133024432743741564304)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(133024434295709564306)
,p_page_process_id=>wwv_flow_imp.id(133024432743741564304)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024436552250564307)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>133024436552250564307
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024436174162564307)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>133024436174162564307
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025075476412569724)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(133024414504624564271)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025083124909569729)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025083520155569730)
,p_plug_name=>'Application Administration'
,p_parent_plug_id=>wwv_flow_imp.id(133025083124909569729)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(133025082064569569729)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025083900304569730)
,p_plug_name=>'Configuration'
,p_parent_plug_id=>wwv_flow_imp.id(133025083124909569729)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_list_id=>wwv_flow_imp.id(133025076189647569724)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(133024419243983564281)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025084345957569730)
,p_plug_name=>'User Interface'
,p_parent_plug_id=>wwv_flow_imp.id(133025083124909569729)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_list_id=>wwv_flow_imp.id(133025076821598569725)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(133024419607360564281)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025084708452569731)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_imp.id(133025083124909569729)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_list_id=>wwv_flow_imp.id(133025077552867569726)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(133024418948889564281)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025085190952569731)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025085581346569732)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(133025085190952569731)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(133024418811550564281)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025086373430569732)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(133025085581346569732)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(133025086775061569733)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(133025085581346569732)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from apex_appl_acl_roles r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(133025087446708569736)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(133025087853294569737)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(133025088231185569737)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025091354940569741)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(133025085581346569732)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(133025080229261569728)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025091749107569741)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(133025085190952569731)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(133024419045629564281)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(133025092168225569742)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(133025091749107569741)
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(133025092800289569751)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(133025093274426569751)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025095111475569753)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(133025091749107569741)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(133025081334928569728)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025085929707569732)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133025085581346569732)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133025090430942569740)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133025085929707569732)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133025090974850569740)
,p_event_id=>wwv_flow_imp.id(133025090430942569740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133025086775061569733)
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Configuration Options'
,p_alias=>'CONFIGURATION-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_required_patch=>wwv_flow_imp.id(133024419243983564281)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024897867420569476)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024898098719569476)
,p_plug_name=>'Configuration Options'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end )) "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from dual) m',
' where application_id = :APP_ID ',
' and (feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'',''APPLICATION_CONFIGURATION'') or feature_identifier is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Configuration Options'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(133024898694320569477)
,p_name=>'Configuration Options'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ABHISHEK.ABHA77@GMAIL.COM'
,p_internal_uid=>133024898694320569477
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024899345466569479)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024899727680569480)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Feature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024900137934569480)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_filtering=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024900515561569481)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024900985623569481)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024901394271569481)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024901723154569482)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(133024904566100569486)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1330249046'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024906213149569488)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024897867420569476)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024905500319569487)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133024898098719569476)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(133024907064343569489)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024906688282569489)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Configuration Options updated. '
,p_internal_uid=>133024906688282569489
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_required_patch=>wwv_flow_imp.id(133024419607360564281)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024907379637569490)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024907404153569490)
,p_plug_name=>'Configure Appearance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024909891366569492)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133024907379637569490)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024908490271569491)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024907379637569490)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(133024910239065569493)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024910505091569493)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133024907404153569490)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024911210382569508)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133024907404153569490)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_imp.id(133024911375821569508)||'.'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133024908560126569491)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133024908490271569491)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133024909281358569492)
,p_event_id=>wwv_flow_imp.id(133024908560126569491)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024912417704569509)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>133024912417704569509
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024912882642569510)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>133024912882642569510
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'Activity Dashboard'
,p_alias=>'ACTIVITY-DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_required_patch=>wwv_flow_imp.id(133024418948889564281)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024913169878569510)
,p_plug_name=>'Hourly Page Events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(133024913285823569510)
,p_region_id=>wwv_flow_imp.id(133024913169878569510)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(133024915364141569512)
,p_chart_id=>wwv_flow_imp.id(133024913285823569510)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10030_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(133024915958441569512)
,p_chart_id=>wwv_flow_imp.id(133024913285823569510)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(133024916508331569513)
,p_chart_id=>wwv_flow_imp.id(133024913285823569510)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024913304783569510)
,p_plug_name=>'Most Active Pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(133024913426530569510)
,p_region_id=>wwv_flow_imp.id(133024913304783569510)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(133024920312257569516)
,p_chart_id=>wwv_flow_imp.id(133024913426530569510)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(133024920923769569517)
,p_chart_id=>wwv_flow_imp.id(133024913426530569510)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(133024921544248569517)
,p_chart_id=>wwv_flow_imp.id(133024913426530569510)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024913542354569510)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(133024913636314569510)
,p_region_id=>wwv_flow_imp.id(133024913542354569510)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(133024917813509569514)
,p_chart_id=>wwv_flow_imp.id(133024913636314569510)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(133024918481946569514)
,p_chart_id=>wwv_flow_imp.id(133024913636314569510)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(133024919098799569515)
,p_chart_id=>wwv_flow_imp.id(133024913636314569510)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(133024913719719569510)
,p_name=>'Recent Errors'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(133024922741868569524)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(133024923167592569524)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(133024913800803569510)
,p_name=>'Latest Activity'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(133024926084214569532)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(133024926472971569533)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024913985394569510)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024928867764569535)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024913169878569510)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024929228459569535)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024913304783569510)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024929644492569535)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024913542354569510)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024930051135569536)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024913719719569510)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024914070737569510)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133024913985394569510)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133024914144390569510)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133024931783311569538)
,p_event_id=>wwv_flow_imp.id(133024914144390569510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133024913169878569510)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133024932297114569538)
,p_event_id=>wwv_flow_imp.id(133024914144390569510)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133024913542354569510)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133024932777669569539)
,p_event_id=>wwv_flow_imp.id(133024914144390569510)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133024913304783569510)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133024933292247569539)
,p_event_id=>wwv_flow_imp.id(133024914144390569510)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133024913719719569510)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133024933787065569540)
,p_event_id=>wwv_flow_imp.id(133024914144390569510)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133024913800803569510)
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_required_patch=>wwv_flow_imp.id(133024418948889564281)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024967031921569586)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'REPORT'
,p_prn_page_header=>'Top Users'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(133024968130050569586)
,p_name=>'Top Users'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ABHISHEK.ABHA77@GMAIL.COM'
,p_internal_uid=>133024968130050569586
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024968879574569590)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024969169660569591)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024969519573569592)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024969977880569593)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024970364708569593)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024970771508569594)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IR Search'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024971106393569595)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024971538796569596)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(133024974836531569608)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1330249749'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024967167838569586)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024967389822569586)
,p_plug_name=>'Top Users Chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(133024967448376569586)
,p_region_id=>wwv_flow_imp.id(133024967389822569586)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(133024978495841569613)
,p_chart_id=>wwv_flow_imp.id(133024967448376569586)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024975725135569609)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133024967031921569586)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024967527085569586)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133024967167838569586)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_imp.id(133024978995948569614)||'.'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024967721561569586)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133024967167838569586)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133024967204761569586)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133024977095448569612)
,p_event_id=>wwv_flow_imp.id(133024967204761569586)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133024967031921569586)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133024980447447569615)
,p_event_id=>wwv_flow_imp.id(133024967204761569586)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133024967031921569586)
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_imp_page.create_page(
 p_id=>10032
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_required_patch=>wwv_flow_imp.id(133024418948889564281)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024959829276569574)
,p_plug_name=>'Application Error Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Application Error Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(133024960436446569574)
,p_name=>'Application Error Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ABHISHEK.ABHA77@GMAIL.COM'
,p_internal_uid=>133024960436446569574
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024961235806569579)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024961630117569580)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024962090896569580)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024962491664569581)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024962826598569581)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024963284789569581)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(133024965872758569585)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1330249659'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024966764882569586)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133024959829276569574)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_imp_page.create_page(
 p_id=>10033
,p_name=>'Page Performance'
,p_alias=>'PAGE-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_required_patch=>wwv_flow_imp.id(133024418948889564281)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024945679552569555)
,p_plug_name=>'Page Performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10033_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10033_TIMEFRAME'
,p_prn_page_header=>'Page Performance'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(133024946218404569555)
,p_name=>'Page Performance'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ABHISHEK.ABHA77@GMAIL.COM'
,p_internal_uid=>133024946218404569555
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024946926417569557)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024947392682569558)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024947756309569558)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024948158490569559)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024948528285569559)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024948901385569559)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024949389483569560)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024949702558569560)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024950295498569561)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024950613652569561)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024951086623569562)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024951487811569562)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024951899055569563)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024952281308569563)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(133024957193659569570)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1330249572'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024945736346569555)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024958000115569571)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133024945679552569555)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024945560044569555)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133024945736346569555)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133024945825736569555)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133024959378429569573)
,p_event_id=>wwv_flow_imp.id(133024945825736569555)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133024945679552569555)
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_imp_page.create_page(
 p_id=>10034
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_required_patch=>wwv_flow_imp.id(133024418948889564281)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024934200908569540)
,p_plug_name=>'Page Views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10034_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10034_TIMEFRAME'
,p_prn_page_header=>'Page Views'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(133024934820817569540)
,p_name=>'Page Views'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ABHISHEK.ABHA77@GMAIL.COM'
,p_internal_uid=>133024934820817569540
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024935627137569542)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024936037781569542)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024936431170569543)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024936868496569543)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024937225182569544)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024937648313569544)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024938063644569545)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024938461602569545)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024938814121569546)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024939287897569546)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(133024942970564569551)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1330249430'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024934347227569540)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024943851186569552)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133024934200908569540)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024934124861569540)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133024934347227569540)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133024934440842569540)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133024945108605569554)
,p_event_id=>wwv_flow_imp.id(133024934440842569540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133024934200908569540)
);
end;
/
prompt --application/pages/page_10035
begin
wwv_flow_imp_page.create_page(
 p_id=>10035
,p_name=>'Automations Log'
,p_alias=>'AUTOMATIONS-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Automations Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_required_patch=>wwv_flow_imp.id(133024418948889564281)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024980956040569615)
,p_plug_name=>'Automations Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Automations Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(133024981508347569616)
,p_name=>'Automations Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ABHISHEK.ABHA77@GMAIL.COM'
,p_internal_uid=>133024981508347569616
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024982282023569618)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024982683486569619)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024983002382569619)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024983434460569619)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024983876257569620)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024984212243569620)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024984628406569621)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10036:&APP_SESSION.::&DEBUG.:RP,10036:P10036_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024985050522569621)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133024985461205569621)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(133024988960803569626)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1330249890'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024989893089569626)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133024980956040569615)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10036
begin
wwv_flow_imp_page.create_page(
 p_id=>10036
,p_name=>'Log Messages'
,p_alias=>'LOG-MESSAGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Log Messages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_required_patch=>wwv_flow_imp.id(133024418948889564281)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024990407426569627)
,p_plug_name=>'Automation Execution'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(133024992852841569630)
,p_name=>'Messages'
,p_template=>2100526641005906379
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10036_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>50
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(133024993291251569632)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(133024993628103569633)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(133024994050369569633)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(133024994424365569634)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024990810601569628)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133024990407426569627)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024991295728569628)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133024990407426569627)
,p_prompt=>'Automation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024991645836569628)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133024990407426569627)
,p_prompt=>'Started'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133024992097855569629)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133024990407426569627)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133024992464190569629)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10036_AUTOMATION_NAME,',
'       :P10036_START_TIMESTAMP,',
'       :P10036_STATUS',
'  from apex_automation_log',
' where id = :P10036_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>133024992464190569629
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_imp_page.create_page(
 p_id=>10040
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_required_patch=>wwv_flow_imp.id(133024418811550564281)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024996654517569638)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133024996739238569638)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024997916645569639)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133024996739238569638)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133024998272562569639)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133024996739238569638)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(133024999719754569640)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025000071432569641)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133024996654517569638)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133024998319296569639)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133024998272562569639)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133024999108053569640)
,p_event_id=>wwv_flow_imp.id(133024998319296569639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133025000474179569641)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>133025000474179569641
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_imp_page.create_page(
 p_id=>10041
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_required_patch=>wwv_flow_imp.id(133024418811550564281)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025000809503569641)
,p_plug_name=>'Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage User Access'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(133025001662543569642)
,p_name=>'Manage User Access'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP:P10042_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ABHISHEK.ABHA77@GMAIL.COM'
,p_internal_uid=>133025001662543569642
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133025002373972569644)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133025002701444569645)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133025003134947569645)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(133025004746831569647)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1330250048'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025005658298569648)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133025000809503569641)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025006084931569648)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(133025000809503569641)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&APP_SESSION.::&DEBUG.:10043::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025006497129569648)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(133025000809503569641)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:10042::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133025000901098569641)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(133025000809503569641)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133025007041910569649)
,p_event_id=>wwv_flow_imp.id(133025000901098569641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133025000809503569641)
);
end;
/
prompt --application/pages/page_10042
begin
wwv_flow_imp_page.create_page(
 p_id=>10042
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_required_patch=>wwv_flow_imp.id(133024418811550564281)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025007553687569649)
,p_plug_name=>'Form on Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025007621042569649)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025010490564569652)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(133025007621042569649)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025010829650569652)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(133025007621042569649)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025008613123569651)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133025007621042569649)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025010062633569652)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133025007621042569649)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025011110903569653)
,p_name=>'P10042_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133025007553687569649)
,p_item_source_plug_id=>wwv_flow_imp.id(133025007553687569649)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025011526417569653)
,p_name=>'P10042_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133025007553687569649)
,p_item_source_plug_id=>wwv_flow_imp.id(133025007553687569649)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025011979692569653)
,p_name=>'P10042_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133025007553687569649)
,p_item_source_plug_id=>wwv_flow_imp.id(133025007553687569649)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025012361704569654)
,p_name=>'P10042_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133025007553687569649)
,p_item_source_plug_id=>wwv_flow_imp.id(133025007553687569649)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(133025013696655569656)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10042_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10042_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133025008709610569651)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133025008613123569651)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133025009486706569651)
,p_event_id=>wwv_flow_imp.id(133025008709610569651)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133025013974485569657)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(133025007553687569649)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>133025013974485569657
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133025014324656569657)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(133025007553687569649)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>133025014324656569657
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133025014734106569657)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>133025014734106569657
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_imp_page.create_page(
 p_id=>10043
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_required_patch=>wwv_flow_imp.id(133024418811550564281)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025015206609569658)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025015373843569658)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025015474484569658)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133025015206609569658)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025017471006569659)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133025015206609569658)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(133025018750295569660)
,p_branch_action=>'f?p=&APP_ID.:10044:&APP_SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(133025015474484569658)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025019104450569661)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133025015373843569658)
,p_prompt=>'Roles'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025019589553569661)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133025015373843569658)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025019989387569662)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133025015373843569658)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(133025020030201569662)||'.'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133025017540881569659)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133025017471006569659)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133025018282622569660)
,p_event_id=>wwv_flow_imp.id(133025017540881569659)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133025021002415569662)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10043_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10043_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10043_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(133025015474484569658)
,p_internal_uid=>133025021002415569662
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_imp_page.create_page(
 p_id=>10044
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_required_patch=>wwv_flow_imp.id(133024418811550564281)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025015571766569658)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025015692136569658)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(133025015846765569658)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(133025015692136569658)
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(133025022918669569667)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(133025023358520569667)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025015937415569658)
,p_plug_name=>'&P10044_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_imp.id(133025015692136569658)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025016054816569658)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025026417115569671)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10044_VALID_COUNT),',
'           apex_escape.html(:P10044_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025027195496569672)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025016144970569658)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133025015571766569658)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025027850915569673)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133025015571766569658)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025028292260569673)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133025015571766569658)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025029541435569674)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133025016054816569658)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10043_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025029909671569675)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133025016054816569658)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025030323072569675)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133025016054816569658)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133025028322542569673)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133025028292260569673)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133025029006140569674)
,p_event_id=>wwv_flow_imp.id(133025028322542569673)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133025030756559569675)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(133025016144970569658)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>133025030756559569675
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133025031110347569676)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>133025031110347569676
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_imp_page.create_page(
 p_id=>10050
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(133024419045629564281)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025031585752569676)
,p_plug_name=>'Form on Feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025031683028569676)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025031768747569676)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133025031683028569676)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025034738797569678)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133025031683028569676)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(133025042453227569684)
,p_branch_action=>'f?p=&APP_ID.:10051:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025036008369569679)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133025031585752569676)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025036400069569679)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133025031585752569676)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025036870472569679)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133025031585752569676)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025037287081569680)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(133025031585752569676)
,p_prompt=>'Experience'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_imp.id(133025037385957569680)||'.'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025039136489569681)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133025031585752569676)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(133025042055877569684)
,p_validation_name=>'At least One Feedback Required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133025034868014569678)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133025034738797569678)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133025035591869569678)
,p_event_id=>wwv_flow_imp.id(133025034868014569678)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133025039534955569682)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'SUBMIT_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(133025031768747569676)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>133025039534955569682
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(133025040025559569682)
,p_page_process_id=>wwv_flow_imp.id(133025039534955569682)
,p_page_id=>10050
,p_name=>'p_comment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10050_FEEDBACK'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(133025040524876569683)
,p_page_process_id=>wwv_flow_imp.id(133025039534955569682)
,p_page_id=>10050
,p_name=>'p_application_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'APP_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(133025041016736569683)
,p_page_process_id=>wwv_flow_imp.id(133025039534955569682)
,p_page_id=>10050
,p_name=>'p_page_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10050_PAGE_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(133025041506445569683)
,p_page_process_id=>wwv_flow_imp.id(133025039534955569682)
,p_page_id=>10050
,p_name=>'p_rating'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>4
,p_value_type=>'ITEM'
,p_value=>'P10050_RATING'
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_imp_page.create_page(
 p_id=>10051
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Submitted'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(133024419045629564281)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025032173843569676)
,p_plug_name=>'Feedback Submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025032082605569676)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133025032173843569676)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_css_classes=>'w40p'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133025032254877569676)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133025032082605569676)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133025044085409569686)
,p_event_id=>wwv_flow_imp.id(133025032254877569676)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_imp_page.create_page(
 p_id=>10053
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_required_patch=>wwv_flow_imp.id(133024419045629564281)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025033498351569676)
,p_plug_name=>'Manage Feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage Feedback'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(133025056840721569698)
,p_name=>'Manage Feedback'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::&DEBUG.:RP:P10054_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ABHISHEK.ABHA77@GMAIL.COM'
,p_internal_uid=>133025056840721569698
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133025057684328569700)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133025058094839569701)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133025058458224569701)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133025058839533569701)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133025059206897569702)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133025059635423569702)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(133025037385957569680)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133025060031701569703)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133025060561936569703)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(133025049665725569691)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133025060986659569704)
,p_db_column_name=>'RESPONSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133025061312356569704)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133025061790231569704)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133025062149317569705)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133025062536785569705)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(133025067101367569710)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1330250672'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025068005966569711)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133025033498351569676)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133025033347696569676)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(133025033498351569676)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133025068798380569712)
,p_event_id=>wwv_flow_imp.id(133025033347696569676)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133025033498351569676)
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_imp_page.create_page(
 p_id=>10054
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(133024421546356564284)
,p_required_patch=>wwv_flow_imp.id(133024419045629564281)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025032752784569676)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025032826191569676)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025032923625569676)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133025032826191569676)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025045656353569687)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133025032826191569676)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025033165185569676)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133025032826191569676)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025047233864569688)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133025032752784569676)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025047672622569689)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133025032752784569676)
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025048037788569689)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133025032752784569676)
,p_prompt=>'Filed'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025048493304569690)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133025032752784569676)
,p_prompt=>'Rating'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025048815503569690)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(133025032752784569676)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025049223345569691)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(133025032752784569676)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025049540310569691)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(133025032752784569676)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(133025049665725569691)||'.'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025051864683569693)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(133025032752784569676)
,p_prompt=>'User Agent'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133025045791002569687)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133025045656353569687)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133025046411815569688)
,p_event_id=>wwv_flow_imp.id(133025045791002569687)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133025052338149569693)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_feedback in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10054_ID )',
'loop',
'   :P10054_PAGE_ID         := l_feedback.page_id||''. ''||l_feedback.page_name;',
'   :P10054_FILED           := l_feedback.filed;',
'   :P10054_RATING_ICON     := l_feedback.rating_icon;',
'   :P10054_FEEDBACK        := l_feedback.feedback;',
'   :P10054_RESPONSE        := l_feedback.public_response;',
'   :P10054_FEEDBACK_STATUS := l_feedback.feedback_status;',
'   :P10054_USER_AGENT      := l_feedback.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>133025052338149569693
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133025052647898569693)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'REPLY_TO_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(133025032923625569676)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>133025052647898569693
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(133025053144030569694)
,p_page_process_id=>wwv_flow_imp.id(133025052647898569693)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(133025053609945569694)
,p_page_process_id=>wwv_flow_imp.id(133025052647898569693)
,p_page_id=>10054
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10054_FEEDBACK_STATUS'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(133025054103390569694)
,p_page_process_id=>wwv_flow_imp.id(133025052647898569693)
,p_page_id=>10054
,p_name=>'p_public_response'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10054_RESPONSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133025054568820569695)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'DELETE_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(133025033165185569676)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>133025054568820569695
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(133025055091737569695)
,p_page_process_id=>wwv_flow_imp.id(133025054568820569695)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133025055586190569695)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(133025033165185569676)
,p_internal_uid=>133025055586190569695
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133025055944904569696)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>133025055944904569696
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_imp_page.create_page(
 p_id=>10060
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133024423278258564287)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(133024419562055564281)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025069656859569716)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_imp_page.create_page(
 p_id=>10061
,p_name=>'Help'
,p_alias=>'HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(133024419562055564281)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025070363840569717)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_page in ( select page_title,',
'                       help_text',
'                  from apex_application_pages',
'                 where application_id = :APP_ID',
'                   and page_id = :P10061_PAGE_ID )',
'loop',
'    if l_page.help_text is null then',
'        return ''No help is available for this page.'';',
'    else',
'        return case when substr(l_page.help_text, 1, 3) != ''<p>'' then ''<p>'' end ||',
'               apex_application.do_substitutions(l_page.help_text) ||',
'               case when substr(trim(l_page.help_text), -4) != ''</p>'' then ''</p>'' end;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025070754185569717)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133025070363840569717)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133025095549972569755)
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(133025096059644569755)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025100652247569761)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025101031397569761)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(133025101512567569762)
,p_region_id=>wwv_flow_imp.id(133025101031397569761)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025102063602569763)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(133025099683901569760)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(133025095549972569755)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(133025095773438569755)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025097054031569756)
,p_plug_name=>'Push Notifications Not Supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_region_attributes=>'#APEX_CSP_DISPLAY_NONE#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133025097480850569756)
,p_plug_name=>'Push Notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133025096766413569756)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133025097906384569757)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133025097480850569756)
,p_prompt=>'Enable push notifications on this device'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133025098210525569758)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133025098784540569758)
,p_event_id=>wwv_flow_imp.id(133025098210525569758)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133025099280496569758)
,p_event_id=>wwv_flow_imp.id(133025098210525569758)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.unsubscribePushNotifications();'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
