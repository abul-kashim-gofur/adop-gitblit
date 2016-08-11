#!/bin/bash
set -e

#Customize gitblit.properties

echo -n > /opt/gitblit-data/gitblit.properties
 
[ -z "${SERVER_HTTP_PORT}" ] || echo "server.httpPort=${SERVER_HTTP_PORT}" >> /opt/gitblit-data/gitblit.properties
[ -z "${SERVER_HTTPS_PORT}" ] || echo "server.httpsPort=${SERVER_HTTPS_PORT}" >> /opt/gitblit-data/gitblit.properties
[ -z "${SERVER_REDIRECT_TO_HTTPS_PORT}" ] || echo "server.redirectToHttpsPort=${SERVER_REDIRECT_TO_HTTPS_PORT}" >> /opt/gitblit-data/gitblit.properties
[ -z "${WEB_ENABLE_RPC_MANAGEMENT}" ] || echo "web.enableRpcManagement=${WEB_ENABLE_RPC_MANAGEMENT}" >> /opt/gitblit-data/gitblit.properties
[ -z "${WEB_ENABLE_RPC_ADMINISTRATION}" ] || echo "web.enableRpcAdministration=${WEB_ENABLE_RPC_ADMINISTRATION}" >> /opt/gitblit-data/gitblit.properties
[ -z "${SERVER_STORE_PASSWORD}" ] || echo "server.storePassword=${SERVER_STORE_PASSWORD}" >> /opt/gitblit-data/gitblit.properties


[ -z "${GIT_REPOSITORIES_FOLDER}" ] || echo "git.repositoriesFolder=${GIT_REPOSITORIES_FOLDER}" >> /opt/gitblit-data/gitblit.properties
[ -z "${GIT_DAEMON_BIND_INTERFACE}" ] || echo "git.daemonBindInterface=${GIT_DAEMON_BIND_INTERFACE}" >> /opt/gitblit-data/gitblit.properties
[ -z "${GIT_DAEMON_PORT}" ] || echo "git.daemonPort=${GIT_DAEMON_PORT}" >> /opt/gitblit-data/gitblit.properties
[ -z "${GIT_ENABLE_GIT_SERVLET}" ] || echo "git.enableGitServlet=${GIT_ENABLE_GIT_SERVLET}" >> /opt/gitblit-data/gitblit.properties
[ -z "${GIT_DEFAULT_ACCESS_RESTRICTION}" ] || echo "git.defaultAccessRestriction=${GIT_DEFAULT_ACCESS_RESTRICTION}" >> /opt/gitblit-data/gitblit.properties
[ -z "${GIT_DEFAULT_AUTHORIZATION_CONTROL}" ] || echo "git.defaultAuthorizationControl=${GIT_DEFAULT_AUTHORIZATION_CONTROL}" >> /opt/gitblit-data/gitblit.properties
[ -z "${GIT_DEFAULT_INCREMENTAL_PUSH_TAG_PREFIX}" ] || echo "git.defaultIncrementalPushTagPrefix=${GIT_DEFAULT_INCREMENTAL_PUSH_TAG_PREFIX}" >> /opt/gitblit-data/gitblit.properties
[ -z "${GIT_STREAM_FILE_THRESHOLD}" ] || echo "git.streamFileThreshold=${GIT_STREAM_FILE_THRESHOLD}" >> /opt/gitblit-data/gitblit.properties


[ -z "${WEB_AUTHENTICATE_VIEW_PAGES}" ] || echo "web.authenticateViewPages=${WEB_AUTHENTICATE_VIEW_PAGES}" >> /opt/gitblit-data/gitblit.properties
[ -z "${WEB_ALLOW_ADMINISTRATION}" ] || echo "web.allowAdministration=${WEB_ALLOW_ADMINISTRATION}" >> /opt/gitblit-data/gitblit.properties
[ -z "${WEB_ENABLE_RPC_SERVLET}" ] || echo "web.enableRpcServlet=${WEB_ENABLE_RPC_SERVLET}" >> /opt/gitblit-data/gitblit.properties


[ -z "${REALM_USER_SERVICE}" ] || echo "realm.userService=${REALM_USER_SERVICE}" >> /opt/gitblit-data/gitblit.properties
[ -z "${REALM_LDAP_SERVER}" ] || echo "realm.ldap.server=${REALM_LDAP_SERVER}" >> /opt/gitblit-data/gitblit.properties
[ -z "${REALM_LDAP_USERNAME}" ] || echo "realm.ldap.username=${REALM_LDAP_USERNAME}" >> /opt/gitblit-data/gitblit.properties
[ -z "${REALM_LDAP_PASSWORD}" ] || echo "realm.ldap.password=${REALM_LDAP_PASSWORD}" >> /opt/gitblit-data/gitblit.properties
[ -z "${REALM_LDAP_MAINTAIN_TEAMS}" ] || echo "realm.ldap.maintainTeams=${REALM_LDAP_MAINTAIN_TEAMS}" >> /opt/gitblit-data/gitblit.properties
[ -z "${REALM_LDAP_ACCOUNT_BASE}" ] || echo "realm.ldap.accountBase=${REALM_LDAP_ACCOUNT_BASE}" >> /opt/gitblit-data/gitblit.properties
[ -z "${REALM_LDAP_ACCOUNT_PATTERN}" ] || echo "realm.ldap.accountPattern=${REALM_LDAP_ACCOUNT_PATTERN}" >> /opt/gitblit-data/gitblit.properties
[ -z "${REALM_LDAP_GROUP_BASE}" ] || echo "realm.ldap.groupBase=${REALM_LDAP_GROUP_BASE}" >> /opt/gitblit-data/gitblit.properties
[ -z "${REALM_LDAP_GROUP_MEMBER_PATTERN}" ] || echo "realm.ldap.groupMemberPattern=${REALM_LDAP_GROUP_MEMBER_PATTERN}" >> /opt/gitblit-data/gitblit.properties
[ -z "${REALM_LDAP_ADMINS}" ] || echo "realm.ldap.admins=${REALM_LDAP_ADMINS}" >> /opt/gitblit-data/gitblit.properties
[ -z "${REALM_LDAP_CACHE_PERIOD}" ] || echo "realm.ldap.ldapCachePeriod=${REALM_LDAP_CACHE_PERIOD}" >> /opt/gitblit-data/gitblit.properties
[ -z "${REALM_LDAP_SYNCHRONIZE_USERS_ENABLE}" ] || echo "realm.ldap.synchronizeUsers.enable=${REALM_LDAP_SYNCHRONIZE_USERS_ENABLE}" >> /opt/gitblit-data/gitblit.properties
[ -z "${REALM_LDAP_SYNCHRONIZE_USERS_REMOVE_DELETED}" ] || echo "realm.ldap.synchronizeUsers.removeDeleted=${REALM_LDAP_SYNCHRONIZE_USERS_REMOVE_DELETED}" >> /opt/gitblit-data/gitblit.properties


[ -z "${SERVER_USE_NIO}" ] || echo "server.useNio=${SERVER_USE_NIO}" >> /opt/gitblit-data/gitblit.properties
[ -z "${SERVER_THREAD_POOL_SIZE}" ] || echo "server.threadPoolSize=${SERVER_THREAD_POOL_SIZE}" >> /opt/gitblit-data/gitblit.properties
[ -z "${SERVER_CONTEXT_PATH}" ] || echo "server.contextPath=${SERVER_CONTEXT_PATH}" >> /opt/gitblit-data/gitblit.properties
[ -z "${SERVER_AJP_PORT}" ] || echo "server.ajpPort=${SERVER_AJP_PORT}" >> /opt/gitblit-data/gitblit.properties
[ -z "${SERVER_HTTP_BIND_INTERFACE}" ] || echo "server.httpBindInterface=${SERVER_HTTP_BIND_INTERFACE}" >> /opt/gitblit-data/gitblit.properties
[ -z "${SERVER_HTTPS_BIND_INTERFACE}" ] || echo "server.httpsBindInterface=${SERVER_HTTPS_BIND_INTERFACE}" >> /opt/gitblit-data/gitblit.properties
[ -z "${SERVER_AJP_BIND_INTERFACE}" ] || echo "server.ajpBindInterface=${SERVER_AJP_BIND_INTERFACE}" >> /opt/gitblit-data/gitblit.properties
[ -z "${SERVER_CERTIFICATE_ALIAS}" ] || echo "server.certificateAlias=${SERVER_CERTIFICATE_ALIAS}" >> /opt/gitblit-data/gitblit.properties
[ -z "${SERVER_REQUIRE_CLIENT_CERTIFICATES}" ] || echo "server.requireClientCertificates=${SERVER_REQUIRE_CLIENT_CERTIFICATES}" >> /opt/gitblit-data/gitblit.properties
[ -z "${SERVER_SHUTDOWN_PORT}" ] || echo "server.shutdownPort=${SERVER_SHUTDOWN_PORT}" >> /opt/gitblit-data/gitblit.properties


[ -z "${REALM_AUTHENTICATION_PROVIDERS}" ] || echo "realm.authenticationProviders=${REALM_AUTHENTICATION_PROVIDERS}" >> /opt/gitblit-data/gitblit.properties
[ -z "${WEB_ALLOW_FORKING}" ] || echo "web.allowForking=${WEB_ALLOW_FORKING}" >> /opt/gitblit-data/gitblit.properties
[ -z "${FORWARD_SLASH_CHARACTER}" ] || echo "web.forwardSlashCharacter=${FORWARD_SLASH_CHARACTER}" >> /opt/gitblit-data/gitblit.properties
[ -z "${WEB_SHOW_HTTP_SERVLET_URLS}" ] || echo "web.showHttpServletUrls=${WEB_SHOW_HTTP_SERVLET_URLS}" >> /opt/gitblit-data/gitblit.properties
[ -z "${WEB_SHOW_GIT_DAEMON_URLS}" ] || echo "web.showGitDaemonUrls=${WEB_SHOW_GIT_DAEMON_URLS}" >> /opt/gitblit-data/gitblit.properties

exec "$@"
