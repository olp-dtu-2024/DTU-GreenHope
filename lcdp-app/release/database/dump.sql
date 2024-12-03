--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-03 20:03:49 UTC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP INDEX IF EXISTS public.workflows_key_current;
DROP INDEX IF EXISTS public.verifications_provider_id;
DROP INDEX IF EXISTS public.users_jobs_workflow_id;
DROP INDEX IF EXISTS public.users_jobs_user_id;
DROP INDEX IF EXISTS public.users_jobs_node_id;
DROP INDEX IF EXISTS public.users_jobs_job_id;
DROP INDEX IF EXISTS public.users_jobs_execution_id;
DROP INDEX IF EXISTS public.users_created_by_id;
DROP INDEX IF EXISTS public.users_authenticators_user_id;
DROP INDEX IF EXISTS public.users_authenticators_updated_by_id;
DROP INDEX IF EXISTS public.users_authenticators_created_by_id;
DROP INDEX IF EXISTS public.ui_schema_tree_path_descendant;
DROP INDEX IF EXISTS public.ui_schema_templates_uid;
DROP INDEX IF EXISTS public.ui_schema_server_hooks_uid;
DROP INDEX IF EXISTS public.token_blacklist_token;
DROP INDEX IF EXISTS public.system_settings_logo_id;
DROP INDEX IF EXISTS public.roles_users_user_id;
DROP INDEX IF EXISTS public.roles_uischemas_ui_schema_x_uid;
DROP INDEX IF EXISTS public.roles_resources_role_name_name;
DROP INDEX IF EXISTS public.roles_resources_actions_scope_id;
DROP INDEX IF EXISTS public.roles_resources_actions_roles_resource_id;
DROP INDEX IF EXISTS public.jobs_upstream_id;
DROP INDEX IF EXISTS public.jobs_node_id;
DROP INDEX IF EXISTS public.jobs_execution_id;
DROP INDEX IF EXISTS public.iframe_html_created_by_id;
DROP INDEX IF EXISTS public.flow_nodes_workflow_id;
DROP INDEX IF EXISTS public.flow_nodes_upstream_id;
DROP INDEX IF EXISTS public.flow_nodes_downstream_id;
DROP INDEX IF EXISTS public.fields_reverse_key;
DROP INDEX IF EXISTS public.fields_parent_key;
DROP INDEX IF EXISTS public.fields_collection_name_name;
DROP INDEX IF EXISTS public.executions_workflow_id;
DROP INDEX IF EXISTS public.data_sources_roles_role_name;
DROP INDEX IF EXISTS public.data_sources_roles_resources_scopes_data_source_key;
DROP INDEX IF EXISTS public.data_sources_roles_resources_role_name;
DROP INDEX IF EXISTS public.data_sources_roles_resources_data_source_key;
DROP INDEX IF EXISTS public.data_sources_roles_resources_actions_scope_id;
DROP INDEX IF EXISTS public.data_sources_roles_resources_actions_roles_resource_id;
DROP INDEX IF EXISTS public.data_sources_roles_data_source_key;
DROP INDEX IF EXISTS public.data_sources_fields_name_collection_name_data_source_key;
DROP INDEX IF EXISTS public.data_sources_fields_data_source_key;
DROP INDEX IF EXISTS public.data_sources_fields_collection_key;
DROP INDEX IF EXISTS public.data_sources_collections_name_data_source_key;
DROP INDEX IF EXISTS public.data_sources_collections_data_source_key;
DROP INDEX IF EXISTS public.custom_requests_roles_role_name;
DROP INDEX IF EXISTS public.collection_category_category_id;
DROP INDEX IF EXISTS public.authenticators_created_by_id;
DROP INDEX IF EXISTS public.attachments_storage_id;
DROP INDEX IF EXISTS public.attachments_created_by_id;
ALTER TABLE IF EXISTS ONLY public.workflows DROP CONSTRAINT IF EXISTS workflows_pkey;
ALTER TABLE IF EXISTS ONLY public.verifications_providers DROP CONSTRAINT IF EXISTS verifications_providers_pkey;
ALTER TABLE IF EXISTS ONLY public.verifications DROP CONSTRAINT IF EXISTS verifications_pkey;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS users_username_key;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS "users_resetToken_key";
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS users_pkey;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS users_phone_key;
ALTER TABLE IF EXISTS ONLY public.users_jobs DROP CONSTRAINT IF EXISTS users_jobs_pkey;
ALTER TABLE IF EXISTS ONLY public.users_jobs DROP CONSTRAINT IF EXISTS "users_jobs_jobId_userId_key";
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS users_email_key;
ALTER TABLE IF EXISTS ONLY public."usersAuthenticators" DROP CONSTRAINT IF EXISTS "usersAuthenticators_pkey";
ALTER TABLE IF EXISTS ONLY public."uiSchemas" DROP CONSTRAINT IF EXISTS "uiSchemas_pkey";
ALTER TABLE IF EXISTS ONLY public."uiSchemaTreePath" DROP CONSTRAINT IF EXISTS "uiSchemaTreePath_pkey";
ALTER TABLE IF EXISTS ONLY public."uiSchemaTemplates" DROP CONSTRAINT IF EXISTS "uiSchemaTemplates_pkey";
ALTER TABLE IF EXISTS ONLY public."uiSchemaServerHooks" DROP CONSTRAINT IF EXISTS "uiSchemaServerHooks_pkey";
ALTER TABLE IF EXISTS ONLY public."tokenBlacklist" DROP CONSTRAINT IF EXISTS "tokenBlacklist_pkey";
ALTER TABLE IF EXISTS ONLY public."systemSettings" DROP CONSTRAINT IF EXISTS "systemSettings_pkey";
ALTER TABLE IF EXISTS ONLY public.storages DROP CONSTRAINT IF EXISTS storages_pkey;
ALTER TABLE IF EXISTS ONLY public.storages DROP CONSTRAINT IF EXISTS storages_name_key;
ALTER TABLE IF EXISTS ONLY public.smart_contracts DROP CONSTRAINT IF EXISTS smart_contracts_pkey;
ALTER TABLE IF EXISTS ONLY public.sequences DROP CONSTRAINT IF EXISTS sequences_pkey;
ALTER TABLE IF EXISTS ONLY public.roles DROP CONSTRAINT IF EXISTS roles_title_key;
ALTER TABLE IF EXISTS ONLY public.roles DROP CONSTRAINT IF EXISTS roles_pkey;
ALTER TABLE IF EXISTS ONLY public."rolesUsers" DROP CONSTRAINT IF EXISTS "rolesUsers_pkey";
ALTER TABLE IF EXISTS ONLY public."rolesUischemas" DROP CONSTRAINT IF EXISTS "rolesUischemas_pkey";
ALTER TABLE IF EXISTS ONLY public."rolesResources" DROP CONSTRAINT IF EXISTS "rolesResources_pkey";
ALTER TABLE IF EXISTS ONLY public."rolesResourcesScopes" DROP CONSTRAINT IF EXISTS "rolesResourcesScopes_pkey";
ALTER TABLE IF EXISTS ONLY public."rolesResourcesActions" DROP CONSTRAINT IF EXISTS "rolesResourcesActions_pkey";
ALTER TABLE IF EXISTS ONLY public.migrations DROP CONSTRAINT IF EXISTS migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.kafka_topics DROP CONSTRAINT IF EXISTS kafka_topics_pkey;
ALTER TABLE IF EXISTS ONLY public.kafka_configs DROP CONSTRAINT IF EXISTS kafka_configs_pkey;
ALTER TABLE IF EXISTS ONLY public.jobs DROP CONSTRAINT IF EXISTS jobs_pkey;
ALTER TABLE IF EXISTS ONLY public."iframeHtml" DROP CONSTRAINT IF EXISTS "iframeHtml_pkey";
ALTER TABLE IF EXISTS ONLY public.flow_nodes DROP CONSTRAINT IF EXISTS flow_nodes_pkey;
ALTER TABLE IF EXISTS ONLY public.fields DROP CONSTRAINT IF EXISTS fields_pkey;
ALTER TABLE IF EXISTS ONLY public.executions DROP CONSTRAINT IF EXISTS executions_pkey;
ALTER TABLE IF EXISTS ONLY public.executions DROP CONSTRAINT IF EXISTS "executions_eventKey_key";
ALTER TABLE IF EXISTS ONLY public."dataSources" DROP CONSTRAINT IF EXISTS "dataSources_pkey";
ALTER TABLE IF EXISTS ONLY public."dataSourcesRoles" DROP CONSTRAINT IF EXISTS "dataSourcesRoles_pkey";
ALTER TABLE IF EXISTS ONLY public."dataSourcesRolesResources" DROP CONSTRAINT IF EXISTS "dataSourcesRolesResources_pkey";
ALTER TABLE IF EXISTS ONLY public."dataSourcesRolesResourcesScopes" DROP CONSTRAINT IF EXISTS "dataSourcesRolesResourcesScopes_pkey";
ALTER TABLE IF EXISTS ONLY public."dataSourcesRolesResourcesActions" DROP CONSTRAINT IF EXISTS "dataSourcesRolesResourcesActions_pkey";
ALTER TABLE IF EXISTS ONLY public."dataSourcesFields" DROP CONSTRAINT IF EXISTS "dataSourcesFields_pkey";
ALTER TABLE IF EXISTS ONLY public."dataSourcesCollections" DROP CONSTRAINT IF EXISTS "dataSourcesCollections_pkey";
ALTER TABLE IF EXISTS ONLY public."customRequests" DROP CONSTRAINT IF EXISTS "customRequests_pkey";
ALTER TABLE IF EXISTS ONLY public."customRequestsRoles" DROP CONSTRAINT IF EXISTS "customRequestsRoles_pkey";
ALTER TABLE IF EXISTS ONLY public.collections DROP CONSTRAINT IF EXISTS collections_pkey;
ALTER TABLE IF EXISTS ONLY public.collections DROP CONSTRAINT IF EXISTS collections_name_key;
ALTER TABLE IF EXISTS ONLY public."collectionCategory" DROP CONSTRAINT IF EXISTS "collectionCategory_pkey";
ALTER TABLE IF EXISTS ONLY public."collectionCategories" DROP CONSTRAINT IF EXISTS "collectionCategories_pkey";
ALTER TABLE IF EXISTS ONLY public.authenticators DROP CONSTRAINT IF EXISTS authenticators_pkey;
ALTER TABLE IF EXISTS ONLY public.authenticators DROP CONSTRAINT IF EXISTS authenticators_name_key;
ALTER TABLE IF EXISTS ONLY public.attachments DROP CONSTRAINT IF EXISTS attachments_pkey;
ALTER TABLE IF EXISTS ONLY public."applicationVersion" DROP CONSTRAINT IF EXISTS "applicationVersion_pkey";
ALTER TABLE IF EXISTS ONLY public."applicationPlugins" DROP CONSTRAINT IF EXISTS "applicationPlugins_pkey";
ALTER TABLE IF EXISTS ONLY public."applicationPlugins" DROP CONSTRAINT IF EXISTS "applicationPlugins_packageName_key";
ALTER TABLE IF EXISTS ONLY public."applicationPlugins" DROP CONSTRAINT IF EXISTS "applicationPlugins_name_key";
ALTER TABLE IF EXISTS public.workflows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.users_jobs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."uiSchemaServerHooks" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."tokenBlacklist" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."systemSettings" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.storages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.sequences ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."rolesResourcesScopes" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."rolesResourcesActions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."rolesResources" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jobs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.flow_nodes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.executions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."dataSourcesRolesResourcesScopes" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."dataSourcesRolesResourcesActions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."dataSourcesRolesResources" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."collectionCategories" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.authenticators ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.attachments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."applicationVersion" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."applicationPlugins" ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.workflows_id_seq;
DROP TABLE IF EXISTS public.workflows;
DROP TABLE IF EXISTS public.verifications_providers;
DROP TABLE IF EXISTS public.verifications;
DROP SEQUENCE IF EXISTS public.users_jobs_id_seq;
DROP TABLE IF EXISTS public.users_jobs;
DROP SEQUENCE IF EXISTS public.users_id_seq;
DROP TABLE IF EXISTS public."usersAuthenticators";
DROP TABLE IF EXISTS public.users;
DROP TABLE IF EXISTS public."uiSchemas";
DROP TABLE IF EXISTS public."uiSchemaTreePath";
DROP TABLE IF EXISTS public."uiSchemaTemplates";
DROP SEQUENCE IF EXISTS public."uiSchemaServerHooks_id_seq";
DROP TABLE IF EXISTS public."uiSchemaServerHooks";
DROP SEQUENCE IF EXISTS public."tokenBlacklist_id_seq";
DROP TABLE IF EXISTS public."tokenBlacklist";
DROP SEQUENCE IF EXISTS public."systemSettings_id_seq";
DROP TABLE IF EXISTS public."systemSettings";
DROP SEQUENCE IF EXISTS public.storages_id_seq;
DROP TABLE IF EXISTS public.storages;
DROP TABLE IF EXISTS public.smart_contracts;
DROP SEQUENCE IF EXISTS public.sequences_id_seq;
DROP TABLE IF EXISTS public.sequences;
DROP TABLE IF EXISTS public."rolesUsers";
DROP TABLE IF EXISTS public."rolesUischemas";
DROP SEQUENCE IF EXISTS public."rolesResources_id_seq";
DROP SEQUENCE IF EXISTS public."rolesResourcesScopes_id_seq";
DROP TABLE IF EXISTS public."rolesResourcesScopes";
DROP SEQUENCE IF EXISTS public."rolesResourcesActions_id_seq";
DROP TABLE IF EXISTS public."rolesResourcesActions";
DROP TABLE IF EXISTS public."rolesResources";
DROP TABLE IF EXISTS public.roles;
DROP TABLE IF EXISTS public.migrations;
DROP TABLE IF EXISTS public.kafka_topics;
DROP TABLE IF EXISTS public.kafka_configs;
DROP SEQUENCE IF EXISTS public.jobs_id_seq;
DROP TABLE IF EXISTS public.jobs;
DROP TABLE IF EXISTS public."iframeHtml";
DROP SEQUENCE IF EXISTS public.flow_nodes_id_seq;
DROP TABLE IF EXISTS public.flow_nodes;
DROP TABLE IF EXISTS public.fields;
DROP SEQUENCE IF EXISTS public.executions_id_seq;
DROP TABLE IF EXISTS public.executions;
DROP SEQUENCE IF EXISTS public."dataSourcesRolesResources_id_seq";
DROP SEQUENCE IF EXISTS public."dataSourcesRolesResourcesScopes_id_seq";
DROP TABLE IF EXISTS public."dataSourcesRolesResourcesScopes";
DROP SEQUENCE IF EXISTS public."dataSourcesRolesResourcesActions_id_seq";
DROP TABLE IF EXISTS public."dataSourcesRolesResourcesActions";
DROP TABLE IF EXISTS public."dataSourcesRolesResources";
DROP TABLE IF EXISTS public."dataSourcesRoles";
DROP TABLE IF EXISTS public."dataSourcesFields";
DROP TABLE IF EXISTS public."dataSourcesCollections";
DROP TABLE IF EXISTS public."dataSources";
DROP TABLE IF EXISTS public."customRequestsRoles";
DROP TABLE IF EXISTS public."customRequests";
DROP TABLE IF EXISTS public.collections;
DROP TABLE IF EXISTS public."collectionCategory";
DROP SEQUENCE IF EXISTS public."collectionCategories_id_seq";
DROP TABLE IF EXISTS public."collectionCategories";
DROP SEQUENCE IF EXISTS public.authenticators_id_seq;
DROP TABLE IF EXISTS public.authenticators;
DROP SEQUENCE IF EXISTS public.attachments_id_seq;
DROP TABLE IF EXISTS public.attachments;
DROP SEQUENCE IF EXISTS public."applicationVersion_id_seq";
DROP TABLE IF EXISTS public."applicationVersion";
DROP SEQUENCE IF EXISTS public."applicationPlugins_id_seq";
DROP TABLE IF EXISTS public."applicationPlugins";
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 16391)
-- Name: applicationPlugins; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."applicationPlugins" (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    name character varying(255),
    "packageName" character varying(255),
    version character varying(255),
    enabled boolean,
    installed boolean,
    "builtIn" boolean,
    options json
);


ALTER TABLE public."applicationPlugins" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16390)
-- Name: applicationPlugins_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."applicationPlugins_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."applicationPlugins_id_seq" OWNER TO postgres;

--
-- TOC entry 3852 (class 0 OID 0)
-- Dependencies: 218
-- Name: applicationPlugins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."applicationPlugins_id_seq" OWNED BY public."applicationPlugins".id;


--
-- TOC entry 221 (class 1259 OID 16404)
-- Name: applicationVersion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."applicationVersion" (
    id bigint NOT NULL,
    value character varying(255)
);


ALTER TABLE public."applicationVersion" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16403)
-- Name: applicationVersion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."applicationVersion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."applicationVersion_id_seq" OWNER TO postgres;

--
-- TOC entry 3853 (class 0 OID 0)
-- Dependencies: 220
-- Name: applicationVersion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."applicationVersion_id_seq" OWNED BY public."applicationVersion".id;


--
-- TOC entry 228 (class 1259 OID 16450)
-- Name: attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attachments (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    title character varying(255),
    filename character varying(255),
    extname character varying(255),
    size integer,
    mimetype character varying(255),
    "storageId" bigint,
    path character varying(255),
    meta jsonb DEFAULT '{}'::jsonb,
    url character varying(255),
    "createdById" bigint,
    "updatedById" bigint
);


ALTER TABLE public.attachments OWNER TO postgres;

--
-- TOC entry 3854 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN attachments.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.title IS '用户文件名（不含扩展名）';


--
-- TOC entry 3855 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN attachments.filename; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.filename IS '系统文件名（含扩展名）';


--
-- TOC entry 3856 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN attachments.extname; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.extname IS '扩展名（含“.”）';


--
-- TOC entry 3857 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN attachments.size; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.size IS '文件体积（字节）';


--
-- TOC entry 3858 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN attachments.path; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.path IS '相对路径（含“/”前缀）';


--
-- TOC entry 3859 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN attachments.meta; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.meta IS '其他文件信息（如图片的宽高）';


--
-- TOC entry 3860 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN attachments.url; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.url IS '网络访问地址';


--
-- TOC entry 227 (class 1259 OID 16449)
-- Name: attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.attachments_id_seq OWNER TO postgres;

--
-- TOC entry 3861 (class 0 OID 0)
-- Dependencies: 227
-- Name: attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attachments_id_seq OWNED BY public.attachments.id;


--
-- TOC entry 257 (class 1259 OID 16652)
-- Name: authenticators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authenticators (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    "authType" character varying(255) NOT NULL,
    title character varying(255),
    description character varying(255) DEFAULT ''::character varying NOT NULL,
    options json DEFAULT '{}'::json NOT NULL,
    enabled boolean DEFAULT false,
    sort bigint,
    "createdById" bigint,
    "updatedById" bigint
);


ALTER TABLE public.authenticators OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 16651)
-- Name: authenticators_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authenticators_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.authenticators_id_seq OWNER TO postgres;

--
-- TOC entry 3862 (class 0 OID 0)
-- Dependencies: 256
-- Name: authenticators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authenticators_id_seq OWNED BY public.authenticators.id;


--
-- TOC entry 223 (class 1259 OID 16411)
-- Name: collectionCategories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."collectionCategories" (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    name character varying(255),
    color character varying(255) DEFAULT 'default'::character varying,
    sort bigint
);


ALTER TABLE public."collectionCategories" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16410)
-- Name: collectionCategories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."collectionCategories_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."collectionCategories_id_seq" OWNER TO postgres;

--
-- TOC entry 3863 (class 0 OID 0)
-- Dependencies: 222
-- Name: collectionCategories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."collectionCategories_id_seq" OWNED BY public."collectionCategories".id;


--
-- TOC entry 225 (class 1259 OID 16432)
-- Name: collectionCategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."collectionCategory" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "collectionName" character varying(255) NOT NULL,
    "categoryId" bigint NOT NULL
);


ALTER TABLE public."collectionCategory" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16420)
-- Name: collections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.collections (
    key character varying(255) NOT NULL,
    name character varying(255),
    title character varying(255),
    inherit boolean DEFAULT false,
    hidden boolean DEFAULT false,
    options json DEFAULT '{}'::json,
    description character varying(255),
    sort bigint
);


ALTER TABLE public.collections OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 16818)
-- Name: customRequests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."customRequests" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    key character varying(255) NOT NULL,
    options json
);


ALTER TABLE public."customRequests" OWNER TO postgres;

--
-- TOC entry 280 (class 1259 OID 16825)
-- Name: customRequestsRoles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."customRequestsRoles" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "customRequestKey" character varying(255) NOT NULL,
    "roleName" character varying(255) NOT NULL
);


ALTER TABLE public."customRequestsRoles" OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 16634)
-- Name: dataSources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."dataSources" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    key character varying(255) NOT NULL,
    "displayName" character varying(255),
    type character varying(255),
    options json,
    enabled boolean DEFAULT true,
    fixed boolean DEFAULT false
);


ALTER TABLE public."dataSources" OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 16569)
-- Name: dataSourcesCollections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."dataSourcesCollections" (
    key character varying(255) NOT NULL,
    name character varying(255),
    options json,
    "dataSourceKey" character varying(255)
);


ALTER TABLE public."dataSourcesCollections" OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 16578)
-- Name: dataSourcesFields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."dataSourcesFields" (
    key character varying(255) NOT NULL,
    name character varying(255),
    "collectionName" character varying(255),
    interface character varying(255),
    description character varying(255),
    "uiSchema" json,
    "collectionKey" character varying(255),
    options json DEFAULT '{}'::json,
    "dataSourceKey" character varying(255)
);


ALTER TABLE public."dataSourcesFields" OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 16625)
-- Name: dataSourcesRoles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."dataSourcesRoles" (
    id character varying(255) NOT NULL,
    "roleName" character varying(255),
    strategy json,
    "dataSourceKey" character varying(255)
);


ALTER TABLE public."dataSourcesRoles" OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 16614)
-- Name: dataSourcesRolesResources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."dataSourcesRolesResources" (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "dataSourceKey" character varying(255) DEFAULT 'main'::character varying,
    "roleName" character varying(255),
    name character varying(255),
    "usingActionsConfig" boolean
);


ALTER TABLE public."dataSourcesRolesResources" OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 16590)
-- Name: dataSourcesRolesResourcesActions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."dataSourcesRolesResourcesActions" (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    name character varying(255),
    fields jsonb DEFAULT '[]'::jsonb,
    "scopeId" bigint,
    "rolesResourceId" bigint
);


ALTER TABLE public."dataSourcesRolesResourcesActions" OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 16589)
-- Name: dataSourcesRolesResourcesActions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."dataSourcesRolesResourcesActions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."dataSourcesRolesResourcesActions_id_seq" OWNER TO postgres;

--
-- TOC entry 3864 (class 0 OID 0)
-- Dependencies: 247
-- Name: dataSourcesRolesResourcesActions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."dataSourcesRolesResourcesActions_id_seq" OWNED BY public."dataSourcesRolesResourcesActions".id;


--
-- TOC entry 250 (class 1259 OID 16603)
-- Name: dataSourcesRolesResourcesScopes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."dataSourcesRolesResourcesScopes" (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    key character varying(255),
    "dataSourceKey" character varying(255) DEFAULT 'main'::character varying,
    name character varying(255),
    "resourceName" character varying(255),
    scope json
);


ALTER TABLE public."dataSourcesRolesResourcesScopes" OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 16602)
-- Name: dataSourcesRolesResourcesScopes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."dataSourcesRolesResourcesScopes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."dataSourcesRolesResourcesScopes_id_seq" OWNER TO postgres;

--
-- TOC entry 3865 (class 0 OID 0)
-- Dependencies: 249
-- Name: dataSourcesRolesResourcesScopes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."dataSourcesRolesResourcesScopes_id_seq" OWNED BY public."dataSourcesRolesResourcesScopes".id;


--
-- TOC entry 251 (class 1259 OID 16613)
-- Name: dataSourcesRolesResources_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."dataSourcesRolesResources_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."dataSourcesRolesResources_id_seq" OWNER TO postgres;

--
-- TOC entry 3866 (class 0 OID 0)
-- Dependencies: 251
-- Name: dataSourcesRolesResources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."dataSourcesRolesResources_id_seq" OWNED BY public."dataSourcesRolesResources".id;


--
-- TOC entry 270 (class 1259 OID 16749)
-- Name: executions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.executions (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    key character varying(255),
    "eventKey" character varying(255),
    context json,
    status integer,
    "workflowId" bigint
);


ALTER TABLE public.executions OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 16748)
-- Name: executions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.executions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.executions_id_seq OWNER TO postgres;

--
-- TOC entry 3867 (class 0 OID 0)
-- Dependencies: 269
-- Name: executions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.executions_id_seq OWNED BY public.executions.id;


--
-- TOC entry 226 (class 1259 OID 16438)
-- Name: fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fields (
    key character varying(255) NOT NULL,
    name character varying(255),
    type character varying(255),
    interface character varying(255),
    description character varying(255),
    "collectionName" character varying(255),
    "parentKey" character varying(255),
    "reverseKey" character varying(255),
    options json DEFAULT '{}'::json,
    sort bigint
);


ALTER TABLE public.fields OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 16761)
-- Name: flow_nodes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flow_nodes (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    key character varying(255),
    title character varying(255),
    "upstreamId" bigint,
    "branchIndex" integer,
    "downstreamId" bigint,
    type character varying(255),
    config json DEFAULT '{}'::json,
    "workflowId" bigint
);


ALTER TABLE public.flow_nodes OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 16760)
-- Name: flow_nodes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.flow_nodes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.flow_nodes_id_seq OWNER TO postgres;

--
-- TOC entry 3868 (class 0 OID 0)
-- Dependencies: 271
-- Name: flow_nodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.flow_nodes_id_seq OWNED BY public.flow_nodes.id;


--
-- TOC entry 255 (class 1259 OID 16643)
-- Name: iframeHtml; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."iframeHtml" (
    id character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    html text,
    "createdById" bigint,
    "updatedById" bigint
);


ALTER TABLE public."iframeHtml" OWNER TO postgres;

--
-- TOC entry 274 (class 1259 OID 16774)
-- Name: jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "executionId" bigint,
    "nodeId" bigint,
    "nodeKey" character varying(255),
    "upstreamId" bigint,
    status integer,
    result json
);


ALTER TABLE public.jobs OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 16773)
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_id_seq OWNER TO postgres;

--
-- TOC entry 3869 (class 0 OID 0)
-- Dependencies: 273
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- TOC entry 282 (class 1259 OID 16851)
-- Name: kafka_configs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kafka_configs (
    id uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    group_id character varying(255),
    client_id character varying(255)
);


ALTER TABLE public.kafka_configs OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 16840)
-- Name: kafka_topics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kafka_topics (
    id uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    broker_host character varying(255),
    topic_name character varying(255),
    type character varying(255)
);


ALTER TABLE public.kafka_topics OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16385)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    name character varying(255) NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16524)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    title character varying(255),
    description character varying(255),
    strategy json,
    "default" boolean DEFAULT false,
    hidden boolean DEFAULT false,
    "allowConfigure" boolean,
    "allowNewMenu" boolean,
    snippets jsonb DEFAULT '["!ui.*", "!pm", "!pm.*"]'::jsonb,
    sort bigint
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16538)
-- Name: rolesResources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."rolesResources" (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "roleName" character varying(255),
    name character varying(255),
    "usingActionsConfig" boolean
);


ALTER TABLE public."rolesResources" OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 16548)
-- Name: rolesResourcesActions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."rolesResourcesActions" (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "rolesResourceId" bigint,
    name character varying(255),
    fields jsonb DEFAULT '[]'::jsonb,
    "scopeId" bigint
);


ALTER TABLE public."rolesResourcesActions" OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 16547)
-- Name: rolesResourcesActions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."rolesResourcesActions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."rolesResourcesActions_id_seq" OWNER TO postgres;

--
-- TOC entry 3870 (class 0 OID 0)
-- Dependencies: 241
-- Name: rolesResourcesActions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."rolesResourcesActions_id_seq" OWNED BY public."rolesResourcesActions".id;


--
-- TOC entry 244 (class 1259 OID 16561)
-- Name: rolesResourcesScopes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."rolesResourcesScopes" (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    key character varying(255),
    name character varying(255),
    "resourceName" character varying(255),
    scope json
);


ALTER TABLE public."rolesResourcesScopes" OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 16560)
-- Name: rolesResourcesScopes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."rolesResourcesScopes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."rolesResourcesScopes_id_seq" OWNER TO postgres;

--
-- TOC entry 3871 (class 0 OID 0)
-- Dependencies: 243
-- Name: rolesResourcesScopes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."rolesResourcesScopes_id_seq" OWNED BY public."rolesResourcesScopes".id;


--
-- TOC entry 239 (class 1259 OID 16537)
-- Name: rolesResources_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."rolesResources_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."rolesResources_id_seq" OWNER TO postgres;

--
-- TOC entry 3872 (class 0 OID 0)
-- Dependencies: 239
-- Name: rolesResources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."rolesResources_id_seq" OWNED BY public."rolesResources".id;


--
-- TOC entry 268 (class 1259 OID 16740)
-- Name: rolesUischemas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."rolesUischemas" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "roleName" character varying(255) NOT NULL,
    "uiSchemaXUid" character varying(255) NOT NULL
);


ALTER TABLE public."rolesUischemas" OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16518)
-- Name: rolesUsers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."rolesUsers" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "default" boolean,
    "roleName" character varying(255) NOT NULL,
    "userId" bigint NOT NULL
);


ALTER TABLE public."rolesUsers" OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16494)
-- Name: sequences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sequences (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    collection character varying(255),
    field character varying(255),
    key integer,
    current bigint,
    "lastGeneratedAt" timestamp with time zone
);


ALTER TABLE public.sequences OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16493)
-- Name: sequences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sequences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sequences_id_seq OWNER TO postgres;

--
-- TOC entry 3873 (class 0 OID 0)
-- Dependencies: 233
-- Name: sequences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sequences_id_seq OWNED BY public.sequences.id;


--
-- TOC entry 283 (class 1259 OID 17356)
-- Name: smart_contracts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.smart_contracts (
    id uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    script text
);


ALTER TABLE public.smart_contracts OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16462)
-- Name: storages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.storages (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    title character varying(255),
    name character varying(255),
    type character varying(255),
    options jsonb DEFAULT '{}'::jsonb,
    rules jsonb DEFAULT '{}'::jsonb,
    path character varying(255) DEFAULT ''::character varying,
    "baseUrl" character varying(255) DEFAULT ''::character varying,
    "default" boolean DEFAULT false,
    paranoid boolean DEFAULT false
);


ALTER TABLE public.storages OWNER TO postgres;

--
-- TOC entry 3874 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN storages.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.title IS '存储引擎名称';


--
-- TOC entry 3875 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN storages.type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.type IS '类型标识，如 local/ali-oss 等';


--
-- TOC entry 3876 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN storages.options; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.options IS '配置项';


--
-- TOC entry 3877 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN storages.rules; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.rules IS '文件规则';


--
-- TOC entry 3878 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN storages.path; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.path IS '存储相对路径模板';


--
-- TOC entry 3879 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN storages."baseUrl"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages."baseUrl" IS '访问地址前缀';


--
-- TOC entry 3880 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN storages."default"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages."default" IS '默认引擎';


--
-- TOC entry 229 (class 1259 OID 16461)
-- Name: storages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.storages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.storages_id_seq OWNER TO postgres;

--
-- TOC entry 3881 (class 0 OID 0)
-- Dependencies: 229
-- Name: storages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.storages_id_seq OWNED BY public.storages.id;


--
-- TOC entry 232 (class 1259 OID 16479)
-- Name: systemSettings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."systemSettings" (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    title character varying(255),
    "showLogoOnly" boolean,
    "allowSignUp" boolean DEFAULT true,
    "smsAuthEnabled" boolean DEFAULT false,
    "logoId" bigint,
    "enabledLanguages" json DEFAULT '[]'::json,
    "appLang" character varying(255),
    options json DEFAULT '{}'::json
);


ALTER TABLE public."systemSettings" OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16478)
-- Name: systemSettings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."systemSettings_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."systemSettings_id_seq" OWNER TO postgres;

--
-- TOC entry 3882 (class 0 OID 0)
-- Dependencies: 231
-- Name: systemSettings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."systemSettings_id_seq" OWNED BY public."systemSettings".id;


--
-- TOC entry 259 (class 1259 OID 16667)
-- Name: tokenBlacklist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tokenBlacklist" (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    token character varying(255),
    expiration timestamp with time zone
);


ALTER TABLE public."tokenBlacklist" OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 16666)
-- Name: tokenBlacklist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tokenBlacklist_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."tokenBlacklist_id_seq" OWNER TO postgres;

--
-- TOC entry 3883 (class 0 OID 0)
-- Dependencies: 258
-- Name: tokenBlacklist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tokenBlacklist_id_seq" OWNED BY public."tokenBlacklist".id;


--
-- TOC entry 264 (class 1259 OID 16707)
-- Name: uiSchemaServerHooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."uiSchemaServerHooks" (
    id bigint NOT NULL,
    type character varying(255),
    collection character varying(255),
    field character varying(255),
    method character varying(255),
    params json,
    uid character varying(255)
);


ALTER TABLE public."uiSchemaServerHooks" OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 16706)
-- Name: uiSchemaServerHooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."uiSchemaServerHooks_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."uiSchemaServerHooks_id_seq" OWNER TO postgres;

--
-- TOC entry 3884 (class 0 OID 0)
-- Dependencies: 263
-- Name: uiSchemaServerHooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."uiSchemaServerHooks_id_seq" OWNED BY public."uiSchemaServerHooks".id;


--
-- TOC entry 265 (class 1259 OID 16716)
-- Name: uiSchemaTemplates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."uiSchemaTemplates" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    key character varying(255) NOT NULL,
    name character varying(255),
    "componentName" character varying(255),
    "associationName" character varying(255),
    "resourceName" character varying(255),
    "collectionName" character varying(255),
    "dataSourceKey" character varying(255),
    uid character varying(255)
);


ALTER TABLE public."uiSchemaTemplates" OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 16724)
-- Name: uiSchemaTreePath; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."uiSchemaTreePath" (
    ancestor character varying(255) NOT NULL,
    descendant character varying(255) NOT NULL,
    depth integer,
    async boolean,
    type character varying(255),
    sort integer
);


ALTER TABLE public."uiSchemaTreePath" OWNER TO postgres;

--
-- TOC entry 3885 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN "uiSchemaTreePath".type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."uiSchemaTreePath".type IS 'type of node';


--
-- TOC entry 3886 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN "uiSchemaTreePath".sort; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."uiSchemaTreePath".sort IS 'sort of node in adjacency';


--
-- TOC entry 267 (class 1259 OID 16732)
-- Name: uiSchemas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."uiSchemas" (
    "x-uid" character varying(255) NOT NULL,
    name character varying(255),
    schema json DEFAULT '{}'::json
);


ALTER TABLE public."uiSchemas" OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 16688)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    nickname character varying(255),
    username character varying(255),
    email character varying(255),
    phone character varying(255),
    password character varying(255),
    "appLang" character varying(255),
    "resetToken" character varying(255),
    "systemSettings" json DEFAULT '{}'::json,
    sort bigint,
    "createdById" bigint,
    "updatedById" bigint
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 16674)
-- Name: usersAuthenticators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."usersAuthenticators" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    uuid character varying(255) NOT NULL,
    nickname character varying(255) DEFAULT ''::character varying NOT NULL,
    avatar character varying(255) DEFAULT ''::character varying NOT NULL,
    meta json DEFAULT '{}'::json,
    "createdById" bigint,
    "updatedById" bigint,
    authenticator character varying(255) NOT NULL,
    "userId" bigint NOT NULL
);


ALTER TABLE public."usersAuthenticators" OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 16687)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3887 (class 0 OID 0)
-- Dependencies: 261
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 278 (class 1259 OID 16803)
-- Name: users_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_jobs (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "jobId" bigint,
    "userId" bigint,
    "executionId" bigint,
    "nodeId" bigint,
    "workflowId" bigint,
    status integer,
    result jsonb
);


ALTER TABLE public.users_jobs OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 16802)
-- Name: users_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_jobs_id_seq OWNER TO postgres;

--
-- TOC entry 3888 (class 0 OID 0)
-- Dependencies: 277
-- Name: users_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_jobs_id_seq OWNED BY public.users_jobs.id;


--
-- TOC entry 235 (class 1259 OID 16502)
-- Name: verifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.verifications (
    id uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    type character varying(255),
    receiver character varying(255),
    status integer DEFAULT 0,
    "expiresAt" timestamp with time zone,
    content character varying(255),
    "providerId" character varying(255)
);


ALTER TABLE public.verifications OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16511)
-- Name: verifications_providers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.verifications_providers (
    id character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    title character varying(255),
    type character varying(255),
    options jsonb,
    "default" boolean
);


ALTER TABLE public.verifications_providers OWNER TO postgres;

--
-- TOC entry 276 (class 1259 OID 16786)
-- Name: workflows; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.workflows (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    key character varying(255),
    title character varying(255),
    enabled boolean DEFAULT false,
    description text,
    type character varying(255),
    "triggerTitle" character varying(255),
    config jsonb DEFAULT '{}'::jsonb,
    executed integer DEFAULT 0,
    "allExecuted" integer DEFAULT 0,
    current boolean DEFAULT false,
    sync boolean DEFAULT false,
    options jsonb DEFAULT '{}'::jsonb
);


ALTER TABLE public.workflows OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 16785)
-- Name: workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.workflows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.workflows_id_seq OWNER TO postgres;

--
-- TOC entry 3889 (class 0 OID 0)
-- Dependencies: 275
-- Name: workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.workflows_id_seq OWNED BY public.workflows.id;


--
-- TOC entry 3407 (class 2604 OID 16394)
-- Name: applicationPlugins id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationPlugins" ALTER COLUMN id SET DEFAULT nextval('public."applicationPlugins_id_seq"'::regclass);


--
-- TOC entry 3408 (class 2604 OID 16407)
-- Name: applicationVersion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationVersion" ALTER COLUMN id SET DEFAULT nextval('public."applicationVersion_id_seq"'::regclass);


--
-- TOC entry 3415 (class 2604 OID 16453)
-- Name: attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachments ALTER COLUMN id SET DEFAULT nextval('public.attachments_id_seq'::regclass);


--
-- TOC entry 3447 (class 2604 OID 16655)
-- Name: authenticators id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authenticators ALTER COLUMN id SET DEFAULT nextval('public.authenticators_id_seq'::regclass);


--
-- TOC entry 3409 (class 2604 OID 16414)
-- Name: collectionCategories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."collectionCategories" ALTER COLUMN id SET DEFAULT nextval('public."collectionCategories_id_seq"'::regclass);


--
-- TOC entry 3443 (class 2604 OID 16617)
-- Name: dataSourcesRolesResources id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResources" ALTER COLUMN id SET DEFAULT nextval('public."dataSourcesRolesResources_id_seq"'::regclass);


--
-- TOC entry 3439 (class 2604 OID 16593)
-- Name: dataSourcesRolesResourcesActions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResourcesActions" ALTER COLUMN id SET DEFAULT nextval('public."dataSourcesRolesResourcesActions_id_seq"'::regclass);


--
-- TOC entry 3441 (class 2604 OID 16606)
-- Name: dataSourcesRolesResourcesScopes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResourcesScopes" ALTER COLUMN id SET DEFAULT nextval('public."dataSourcesRolesResourcesScopes_id_seq"'::regclass);


--
-- TOC entry 3459 (class 2604 OID 16752)
-- Name: executions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.executions ALTER COLUMN id SET DEFAULT nextval('public.executions_id_seq'::regclass);


--
-- TOC entry 3460 (class 2604 OID 16764)
-- Name: flow_nodes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flow_nodes ALTER COLUMN id SET DEFAULT nextval('public.flow_nodes_id_seq'::regclass);


--
-- TOC entry 3462 (class 2604 OID 16777)
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- TOC entry 3434 (class 2604 OID 16541)
-- Name: rolesResources id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResources" ALTER COLUMN id SET DEFAULT nextval('public."rolesResources_id_seq"'::regclass);


--
-- TOC entry 3435 (class 2604 OID 16551)
-- Name: rolesResourcesActions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResourcesActions" ALTER COLUMN id SET DEFAULT nextval('public."rolesResourcesActions_id_seq"'::regclass);


--
-- TOC entry 3437 (class 2604 OID 16564)
-- Name: rolesResourcesScopes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResourcesScopes" ALTER COLUMN id SET DEFAULT nextval('public."rolesResourcesScopes_id_seq"'::regclass);


--
-- TOC entry 3429 (class 2604 OID 16497)
-- Name: sequences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sequences ALTER COLUMN id SET DEFAULT nextval('public.sequences_id_seq'::regclass);


--
-- TOC entry 3417 (class 2604 OID 16465)
-- Name: storages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storages ALTER COLUMN id SET DEFAULT nextval('public.storages_id_seq'::regclass);


--
-- TOC entry 3424 (class 2604 OID 16482)
-- Name: systemSettings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."systemSettings" ALTER COLUMN id SET DEFAULT nextval('public."systemSettings_id_seq"'::regclass);


--
-- TOC entry 3451 (class 2604 OID 16670)
-- Name: tokenBlacklist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tokenBlacklist" ALTER COLUMN id SET DEFAULT nextval('public."tokenBlacklist_id_seq"'::regclass);


--
-- TOC entry 3457 (class 2604 OID 16710)
-- Name: uiSchemaServerHooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemaServerHooks" ALTER COLUMN id SET DEFAULT nextval('public."uiSchemaServerHooks_id_seq"'::regclass);


--
-- TOC entry 3455 (class 2604 OID 16691)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3471 (class 2604 OID 16806)
-- Name: users_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_jobs ALTER COLUMN id SET DEFAULT nextval('public.users_jobs_id_seq'::regclass);


--
-- TOC entry 3463 (class 2604 OID 16789)
-- Name: workflows id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workflows ALTER COLUMN id SET DEFAULT nextval('public.workflows_id_seq'::regclass);


--
-- TOC entry 3782 (class 0 OID 16391)
-- Dependencies: 219
-- Data for Name: applicationPlugins; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."applicationPlugins" (id, "createdAt", "updatedAt", name, "packageName", version, enabled, installed, "builtIn", options) FROM stdin;
40	2024-12-03 18:50:57.948+00	2024-12-03 18:50:57.948+00	multi-app-manager	@nocobase/plugin-multi-app-manager	1.3.54	\N	\N	\N	\N
41	2024-12-03 18:50:57.949+00	2024-12-03 18:50:57.949+00	map	@nocobase/plugin-map	1.3.54	\N	\N	\N	\N
42	2024-12-03 18:50:57.95+00	2024-12-03 18:50:57.95+00	graph-collection-manager	@nocobase/plugin-graph-collection-manager	1.3.54	\N	\N	\N	\N
43	2024-12-03 18:50:57.951+00	2024-12-03 18:50:57.951+00	mobile	@nocobase/plugin-mobile	1.3.54	\N	\N	\N	\N
44	2024-12-03 18:50:57.952+00	2024-12-03 18:50:57.952+00	api-keys	@nocobase/plugin-api-keys	1.3.54	\N	\N	\N	\N
45	2024-12-03 18:50:57.952+00	2024-12-03 18:50:57.952+00	localization	@nocobase/plugin-localization	1.3.54	\N	\N	\N	\N
46	2024-12-03 18:50:57.953+00	2024-12-03 18:50:57.953+00	theme-editor	@nocobase/plugin-theme-editor	1.3.54	\N	\N	\N	\N
47	2024-12-03 18:50:57.954+00	2024-12-03 18:50:57.954+00	api-doc	@nocobase/plugin-api-doc	1.3.54	\N	\N	\N	\N
48	2024-12-03 18:50:57.955+00	2024-12-03 18:50:57.955+00	auth-sms	@nocobase/plugin-auth-sms	1.3.54	\N	\N	\N	\N
49	2024-12-03 18:50:57.955+00	2024-12-03 18:50:57.955+00	field-markdown-vditor	@nocobase/plugin-field-markdown-vditor	1.3.54	\N	\N	\N	\N
50	2024-12-03 18:50:57.956+00	2024-12-03 18:50:57.956+00	workflow-mailer	@nocobase/plugin-workflow-mailer	1.3.54	\N	\N	\N	\N
51	2024-12-03 18:50:57.957+00	2024-12-03 18:50:57.957+00	field-m2m-array	@nocobase/plugin-field-m2m-array	1.3.54	\N	\N	\N	\N
52	2024-12-03 18:50:57.957+00	2024-12-03 18:50:57.957+00	backup-restore	@nocobase/plugin-backup-restore	1.3.54	\N	\N	\N	\N
53	2024-12-03 18:50:57.958+00	2024-12-03 18:50:57.958+00	field-china-region	@nocobase/plugin-field-china-region	1.3.54	\N	\N	\N	\N
1	2024-12-03 18:50:57.899+00	2024-12-03 18:50:58.977+00	data-source-manager	@nocobase/plugin-data-source-manager	1.3.54	t	t	t	\N
2	2024-12-03 18:50:57.906+00	2024-12-03 18:50:58.978+00	error-handler	@nocobase/plugin-error-handler	1.3.54	t	t	t	\N
3	2024-12-03 18:50:57.909+00	2024-12-03 18:50:58.979+00	data-source-main	@nocobase/plugin-data-source-main	1.3.54	t	t	t	\N
4	2024-12-03 18:50:57.911+00	2024-12-03 18:50:58.979+00	ui-schema-storage	@nocobase/plugin-ui-schema-storage	1.3.54	t	t	t	\N
5	2024-12-03 18:50:57.913+00	2024-12-03 18:50:58.98+00	file-manager	@nocobase/plugin-file-manager	1.3.54	t	t	t	\N
6	2024-12-03 18:50:57.915+00	2024-12-03 18:50:58.981+00	system-settings	@nocobase/plugin-system-settings	1.3.54	t	t	t	\N
7	2024-12-03 18:50:57.917+00	2024-12-03 18:50:58.981+00	field-sequence	@nocobase/plugin-field-sequence	1.3.54	t	t	t	\N
8	2024-12-03 18:50:57.918+00	2024-12-03 18:50:58.982+00	verification	@nocobase/plugin-verification	1.3.54	t	t	t	\N
9	2024-12-03 18:50:57.919+00	2024-12-03 18:50:58.983+00	users	@nocobase/plugin-users	1.3.54	t	t	t	\N
10	2024-12-03 18:50:57.92+00	2024-12-03 18:50:58.983+00	acl	@nocobase/plugin-acl	1.3.54	t	t	t	\N
11	2024-12-03 18:50:57.921+00	2024-12-03 18:50:58.984+00	workflow	@nocobase/plugin-workflow	1.3.54	t	t	t	\N
12	2024-12-03 18:50:57.922+00	2024-12-03 18:50:58.985+00	workflow-action-trigger	@nocobase/plugin-workflow-action-trigger	1.3.54	t	t	t	\N
13	2024-12-03 18:50:57.923+00	2024-12-03 18:50:58.986+00	workflow-aggregate	@nocobase/plugin-workflow-aggregate	1.3.54	t	t	t	\N
14	2024-12-03 18:50:57.924+00	2024-12-03 18:50:58.987+00	workflow-delay	@nocobase/plugin-workflow-delay	1.3.54	t	t	t	\N
15	2024-12-03 18:50:57.925+00	2024-12-03 18:50:58.988+00	workflow-dynamic-calculation	@nocobase/plugin-workflow-dynamic-calculation	1.3.54	t	t	t	\N
16	2024-12-03 18:50:57.926+00	2024-12-03 18:50:58.988+00	workflow-loop	@nocobase/plugin-workflow-loop	1.3.54	t	t	t	\N
17	2024-12-03 18:50:57.926+00	2024-12-03 18:50:58.989+00	workflow-manual	@nocobase/plugin-workflow-manual	1.3.54	t	t	t	\N
18	2024-12-03 18:50:57.927+00	2024-12-03 18:50:58.99+00	workflow-parallel	@nocobase/plugin-workflow-parallel	1.3.54	t	t	t	\N
19	2024-12-03 18:50:57.928+00	2024-12-03 18:50:58.991+00	workflow-request	@nocobase/plugin-workflow-request	1.3.54	t	t	t	\N
20	2024-12-03 18:50:57.929+00	2024-12-03 18:50:58.991+00	workflow-sql	@nocobase/plugin-workflow-sql	1.3.54	t	t	t	\N
21	2024-12-03 18:50:57.929+00	2024-12-03 18:50:58.992+00	client	@nocobase/plugin-client	1.3.54	t	t	t	\N
22	2024-12-03 18:50:57.93+00	2024-12-03 18:50:58.992+00	action-import	@nocobase/plugin-action-import	1.3.54	t	t	t	\N
23	2024-12-03 18:50:57.931+00	2024-12-03 18:50:58.993+00	action-export	@nocobase/plugin-action-export	1.3.54	t	t	t	\N
24	2024-12-03 18:50:57.933+00	2024-12-03 18:50:58.993+00	block-iframe	@nocobase/plugin-block-iframe	1.3.54	t	t	t	\N
25	2024-12-03 18:50:57.934+00	2024-12-03 18:50:58.994+00	block-workbench	@nocobase/plugin-block-workbench	1.3.54	t	t	t	\N
26	2024-12-03 18:50:57.934+00	2024-12-03 18:50:58.994+00	field-formula	@nocobase/plugin-field-formula	1.3.54	t	t	t	\N
27	2024-12-03 18:50:57.939+00	2024-12-03 18:50:58.995+00	data-visualization	@nocobase/plugin-data-visualization	1.3.54	t	t	t	\N
28	2024-12-03 18:50:57.94+00	2024-12-03 18:50:58.996+00	auth	@nocobase/plugin-auth	1.3.54	t	t	t	\N
29	2024-12-03 18:50:57.941+00	2024-12-03 18:50:58.996+00	logger	@nocobase/plugin-logger	1.3.54	t	t	t	\N
30	2024-12-03 18:50:57.941+00	2024-12-03 18:50:58.997+00	action-custom-request	@nocobase/plugin-action-custom-request	1.3.54	t	t	t	\N
31	2024-12-03 18:50:57.942+00	2024-12-03 18:50:58.997+00	calendar	@nocobase/plugin-calendar	1.3.54	t	t	t	\N
32	2024-12-03 18:50:57.943+00	2024-12-03 18:50:58.998+00	action-bulk-update	@nocobase/plugin-action-bulk-update	1.3.54	t	t	t	\N
33	2024-12-03 18:50:57.944+00	2024-12-03 18:50:58.999+00	action-bulk-edit	@nocobase/plugin-action-bulk-edit	1.3.54	t	t	t	\N
34	2024-12-03 18:50:57.944+00	2024-12-03 18:50:59+00	gantt	@nocobase/plugin-gantt	1.3.54	t	t	t	\N
35	2024-12-03 18:50:57.945+00	2024-12-03 18:50:59+00	kanban	@nocobase/plugin-kanban	1.3.54	t	t	t	\N
36	2024-12-03 18:50:57.946+00	2024-12-03 18:50:59.001+00	action-duplicate	@nocobase/plugin-action-duplicate	1.3.54	t	t	t	\N
37	2024-12-03 18:50:57.946+00	2024-12-03 18:50:59.002+00	action-print	@nocobase/plugin-action-print	1.3.54	t	t	t	\N
38	2024-12-03 18:50:57.947+00	2024-12-03 18:50:59.003+00	collection-sql	@nocobase/plugin-collection-sql	1.3.54	t	t	t	\N
39	2024-12-03 18:50:57.948+00	2024-12-03 18:50:59.003+00	collection-tree	@nocobase/plugin-collection-tree	1.3.54	t	t	t	\N
55	2024-12-03 19:05:01.031+00	2024-12-03 19:05:12.917+00	@dtu-olp-2024/carousel-nocobase	@dtu-olp-2024/carousel-nocobase	1.0.1	t	t	\N	\N
54	2024-12-03 18:51:19.537+00	2024-12-03 19:05:52.713+00	@dtu-olp-2024/kafka-nocobase	@dtu-olp-2024/kafka-nocobase	1.1.8	f	f	\N	\N
56	2024-12-03 19:09:24.496+00	2024-12-03 19:09:31.963+00	@dtu-olp-2024/progress-nocobase	@dtu-olp-2024/progress-nocobase	1.0.1	t	t	\N	\N
57	2024-12-03 19:13:06.808+00	2024-12-03 19:13:14.19+00	@dtu-olp-2024/rich-block-nocobase	@dtu-olp-2024/rich-block-nocobase	1.0.1	t	t	\N	\N
58	2024-12-03 19:16:57.445+00	2024-12-03 19:17:08.775+00	@dtu-olp-2024/vietqr-nocobase	@dtu-olp-2024/vietqr-nocobase	1.0.1	t	t	\N	\N
59	2024-12-03 19:20:21.372+00	2024-12-03 19:20:28.044+00	@dtu-olp-2024/landing-page	@dtu-olp-2024/landing-page	1.0.0	t	t	\N	\N
61	2024-12-03 19:56:52.386+00	2024-12-03 20:03:35.512+00	@dtu-olp-2024/solidity-editor-nocobase	@dtu-olp-2024/solidity-editor-nocobase	1.0.0	t	t	\N	\N
\.


--
-- TOC entry 3784 (class 0 OID 16404)
-- Dependencies: 221
-- Data for Name: applicationVersion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."applicationVersion" (id, value) FROM stdin;
1	1.3.54
\.


--
-- TOC entry 3791 (class 0 OID 16450)
-- Dependencies: 228
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attachments (id, "createdAt", "updatedAt", title, filename, extname, size, mimetype, "storageId", path, meta, url, "createdById", "updatedById") FROM stdin;
1	2024-12-03 18:50:58.762+00	2024-12-03 18:50:58.762+00	nocobase-logo	7c2b9bd2d656c14e4b9ad11c3c7d51e1.png	.png	11186	image/png	1		{}	/storage/uploads/7c2b9bd2d656c14e4b9ad11c3c7d51e1.png	\N	\N
\.


--
-- TOC entry 3820 (class 0 OID 16652)
-- Dependencies: 257
-- Data for Name: authenticators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authenticators (id, "createdAt", "updatedAt", name, "authType", title, description, options, enabled, sort, "createdById", "updatedById") FROM stdin;
1	2024-12-03 18:50:58.822+00	2024-12-03 18:50:58.822+00	basic	Email/Password	\N	Sign in with username/email.	{"public":{"allowSignUp":true}}	t	1	\N	\N
\.


--
-- TOC entry 3786 (class 0 OID 16411)
-- Dependencies: 223
-- Data for Name: collectionCategories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."collectionCategories" (id, "createdAt", "updatedAt", name, color, sort) FROM stdin;
\.


--
-- TOC entry 3788 (class 0 OID 16432)
-- Dependencies: 225
-- Data for Name: collectionCategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."collectionCategory" ("createdAt", "updatedAt", "collectionName", "categoryId") FROM stdin;
\.


--
-- TOC entry 3787 (class 0 OID 16420)
-- Dependencies: 224
-- Data for Name: collections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.collections (key, name, title, inherit, hidden, options, description, sort) FROM stdin;
sxscppwsudz	roles	{{t("Roles")}}	f	f	{"origin":"@nocobase/plugin-acl","dumpRules":"required","autoGenId":false,"model":"RoleModel","filterTargetKey":"name","sortable":true,"from":"db2cm"}	\N	1
zff4nkcs1wi	users	{{t("Users")}}	f	f	{"origin":"@nocobase/plugin-users","dumpRules":{"group":"user"},"sortable":"sort","model":"UserModel","createdBy":true,"updatedBy":true,"logging":true,"shared":true,"from":"db2cm"}	\N	2
9qtbx3vkdwt	kafka_topics	Kafka Topics	f	f	{"actions":[{"name":"create","type":"create","title":"Create Kafka Topic","viewName":"form"},{"name":"view","type":"view","title":"View","viewName":"form"},{"name":"edit","type":"edit","title":"Edit","viewName":"form"},{"name":"destroy","type":"destroy","title":"Delete"}],"schema":"public"}	\N	3
nxsyi0kzqu4	kafka_configs	Kafka Configs	f	f	{"actions":[{"name":"create","type":"create","title":"Create Kafka Config","viewName":"form"},{"name":"view","type":"view","title":"View","viewName":"form"},{"name":"edit","type":"edit","title":"Edit","viewName":"form"},{"name":"destroy","type":"destroy","title":"Delete"}],"schema":"public"}	\N	4
o4fczxgb4t3	smart_contracts	Smart Contracts	f	f	{"actions":[{"name":"create","type":"create","title":"Create Kafka Topic","viewName":"form"},{"name":"view","type":"view","title":"View","viewName":"form"},{"name":"edit","type":"edit","title":"Edit","viewName":"form"},{"name":"destroy","type":"destroy","title":"Delete"}],"schema":"public"}	\N	5
\.


--
-- TOC entry 3842 (class 0 OID 16818)
-- Dependencies: 279
-- Data for Name: customRequests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."customRequests" ("createdAt", "updatedAt", key, options) FROM stdin;
\.


--
-- TOC entry 3843 (class 0 OID 16825)
-- Dependencies: 280
-- Data for Name: customRequestsRoles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."customRequestsRoles" ("createdAt", "updatedAt", "customRequestKey", "roleName") FROM stdin;
\.


--
-- TOC entry 3817 (class 0 OID 16634)
-- Dependencies: 254
-- Data for Name: dataSources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSources" ("createdAt", "updatedAt", key, "displayName", type, options, enabled, fixed) FROM stdin;
2024-12-03 18:50:58.743+00	2024-12-03 18:50:58.743+00	main	{{t("Main")}}	main	{}	t	t
\.


--
-- TOC entry 3808 (class 0 OID 16569)
-- Dependencies: 245
-- Data for Name: dataSourcesCollections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesCollections" (key, name, options, "dataSourceKey") FROM stdin;
\.


--
-- TOC entry 3809 (class 0 OID 16578)
-- Dependencies: 246
-- Data for Name: dataSourcesFields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesFields" (key, name, "collectionName", interface, description, "uiSchema", "collectionKey", options, "dataSourceKey") FROM stdin;
\.


--
-- TOC entry 3816 (class 0 OID 16625)
-- Dependencies: 253
-- Data for Name: dataSourcesRoles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesRoles" (id, "roleName", strategy, "dataSourceKey") FROM stdin;
7oa2x16zc1r	root	\N	main
neapqxt0yvc	admin	{"actions":["create","view","update","destroy","importXlsx","export"]}	main
kfsh7zees8t	member	{"actions":["view","update:own","destroy:own","create","importXlsx","export"]}	main
\.


--
-- TOC entry 3815 (class 0 OID 16614)
-- Dependencies: 252
-- Data for Name: dataSourcesRolesResources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesRolesResources" (id, "createdAt", "updatedAt", "dataSourceKey", "roleName", name, "usingActionsConfig") FROM stdin;
\.


--
-- TOC entry 3811 (class 0 OID 16590)
-- Dependencies: 248
-- Data for Name: dataSourcesRolesResourcesActions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesRolesResourcesActions" (id, "createdAt", "updatedAt", name, fields, "scopeId", "rolesResourceId") FROM stdin;
\.


--
-- TOC entry 3813 (class 0 OID 16603)
-- Dependencies: 250
-- Data for Name: dataSourcesRolesResourcesScopes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesRolesResourcesScopes" (id, "createdAt", "updatedAt", key, "dataSourceKey", name, "resourceName", scope) FROM stdin;
1	2024-12-03 18:50:58.845+00	2024-12-03 18:50:58.845+00	all	main	{{t("All records")}}	\N	{}
2	2024-12-03 18:50:58.846+00	2024-12-03 18:50:58.846+00	own	main	{{t("Own records")}}	\N	{"createdById":"{{ ctx.state.currentUser.id }}"}
\.


--
-- TOC entry 3833 (class 0 OID 16749)
-- Dependencies: 270
-- Data for Name: executions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.executions (id, "createdAt", "updatedAt", key, "eventKey", context, status, "workflowId") FROM stdin;
\.


--
-- TOC entry 3789 (class 0 OID 16438)
-- Dependencies: 226
-- Data for Name: fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fields (key, name, type, interface, description, "collectionName", "parentKey", "reverseKey", options, sort) FROM stdin;
epulu6nzv55	name	uid	input	\N	roles	\N	\N	{"prefix":"r_","primaryKey":true,"uiSchema":{"type":"string","title":"{{t(\\"Role UID\\")}}","x-component":"Input"}}	1
1kci2fehi99	title	string	input	\N	roles	\N	\N	{"unique":true,"uiSchema":{"type":"string","title":"{{t(\\"Role name\\")}}","x-component":"Input"},"translation":true}	2
2r874w6q3jp	description	string	\N	\N	roles	\N	\N	{}	3
www1tlxjp5j	strategy	json	\N	\N	roles	\N	\N	{}	4
w7dqzvzzieu	default	boolean	\N	\N	roles	\N	\N	{"defaultValue":false}	5
myllxvzm13v	hidden	boolean	\N	\N	roles	\N	\N	{"defaultValue":false}	6
49et8z00p00	allowConfigure	boolean	\N	\N	roles	\N	\N	{}	7
fxe8ozane98	allowNewMenu	boolean	\N	\N	roles	\N	\N	{}	8
qajx8qnj0hp	menuUiSchemas	belongsToMany	\N	\N	roles	\N	\N	{"target":"uiSchemas","targetKey":"x-uid","foreignKey":"roleName","sourceKey":"name","otherKey":"uiSchemaXUid","through":"rolesUischemas"}	9
qj0l8f0o1w7	resources	hasMany	\N	\N	roles	\N	\N	{"target":"dataSourcesRolesResources","sourceKey":"name","foreignKey":"roleName","targetKey":"id"}	10
nlepgmxj8nz	snippets	set	\N	\N	roles	\N	\N	{"defaultValue":["!ui.*","!pm","!pm.*"]}	11
5r4pzr7p5tm	users	belongsToMany	\N	\N	roles	\N	\N	{"target":"users","foreignKey":"roleName","otherKey":"userId","onDelete":"CASCADE","sourceKey":"name","targetKey":"id","through":"rolesUsers"}	12
ztwp80tnftd	sort	sort	\N	\N	roles	\N	\N	{"hidden":true}	13
bni2s41lske	id	bigInt	id	\N	users	\N	\N	{"autoIncrement":true,"primaryKey":true,"allowNull":false,"uiSchema":{"type":"number","title":"{{t(\\"ID\\")}}","x-component":"InputNumber","x-read-pretty":true}}	1
s3135bj3w86	nickname	string	input	\N	users	\N	\N	{"uiSchema":{"type":"string","title":"{{t(\\"Nickname\\")}}","x-component":"Input"}}	2
zh4rkmj337w	username	string	input	\N	users	\N	\N	{"unique":true,"uiSchema":{"type":"string","title":"{{t(\\"Username\\")}}","x-component":"Input","x-validator":{"username":true},"required":true}}	3
0qipnzlu468	email	string	email	\N	users	\N	\N	{"unique":true,"uiSchema":{"type":"string","title":"{{t(\\"Email\\")}}","x-component":"Input","x-validator":"email","required":true}}	4
ab151jjd6qx	phone	string	input	\N	users	\N	\N	{"unique":true,"uiSchema":{"type":"string","title":"{{t(\\"Phone\\")}}","x-component":"Input","required":true}}	5
8o6j4iqlv1y	password	password	password	\N	users	\N	\N	{"hidden":true,"uiSchema":{"type":"string","title":"{{t(\\"Password\\")}}","x-component":"Password"}}	6
m1xzeu63eph	appLang	string	\N	\N	users	\N	\N	{}	7
94hfdu9465d	resetToken	string	\N	\N	users	\N	\N	{"unique":true,"hidden":true}	8
vm4aijle6h0	systemSettings	json	\N	\N	users	\N	\N	{"defaultValue":{}}	9
e6ez9cw2kw0	createdAt	date	createdAt	\N	users	\N	\N	{"uiSchema":{"x-component-props":{"dateFormat":"YYYY-MM-DD"},"type":"datetime","title":"{{t(\\"Created at\\")}}","x-component":"DatePicker","x-read-pretty":true},"field":"createdAt"}	10
3xquqp7ohdp	updatedAt	date	updatedAt	\N	users	\N	\N	{"uiSchema":{"x-component-props":{"dateFormat":"YYYY-MM-DD"},"type":"datetime","title":"{{t(\\"Last updated at\\")}}","x-component":"DatePicker","x-read-pretty":true},"field":"updatedAt"}	11
blhtl14y3k8	sort	sort	\N	\N	users	\N	\N	{"hidden":true}	12
dic1gjvbo5u	roles	belongsToMany	m2m	\N	users	\N	\N	{"target":"roles","foreignKey":"userId","otherKey":"roleName","onDelete":"CASCADE","sourceKey":"id","targetKey":"name","through":"rolesUsers","uiSchema":{"type":"array","title":"{{t(\\"Roles\\")}}","x-component":"AssociationField","x-component-props":{"multiple":true,"fieldNames":{"label":"title","value":"name"}}}}	13
0zmfcexi46w	createdBy	belongsTo	createdBy	\N	users	\N	\N	{"target":"users","foreignKey":"createdById","targetKey":"id","uiSchema":{"type":"object","title":"{{t(\\"Created by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true}}	14
ju3uok989na	createdById	context	\N	\N	users	\N	\N	{"dataType":"bigInt","dataIndex":"state.currentUser.id","createOnly":true,"visible":true,"index":true}	15
c4rhoxbcoag	updatedBy	belongsTo	updatedBy	\N	users	\N	\N	{"target":"users","foreignKey":"updatedById","targetKey":"id","uiSchema":{"type":"object","title":"{{t(\\"Last updated by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true}}	16
xdiah27f4lq	updatedById	context	\N	\N	users	\N	\N	{"dataType":"bigInt","dataIndex":"state.currentUser.id","visible":true,"index":true}	17
sq5ylni58ct	jobs	belongsToMany	\N	\N	users	\N	\N	{"through":"users_jobs","foreignKey":"userId","sourceKey":"id","otherKey":"jobId","targetKey":"id","target":"jobs"}	18
swfs21dzvd1	usersJobs	hasMany	\N	\N	users	\N	\N	{"target":"users_jobs","foreignKey":"userId","sourceKey":"id","targetKey":"id"}	19
xizv8m61vmm	id	uuid	input	\N	kafka_topics	\N	\N	{"primaryKey":true,"autoIncrement":false,"uiSchema":{"type":"string","title":"ID","x-component":"Input","required":true}}	1
ha1r6j2kcqw	broker_host	string	input	\N	kafka_topics	\N	\N	{"uiSchema":{"type":"string","title":"Broker Host","x-component":"Input","required":true}}	2
yjkoy34wppf	topic_name	string	input	\N	kafka_topics	\N	\N	{"uiSchema":{"type":"string","title":"Topic Name","x-component":"Input","required":true}}	3
hhuycpb8oto	type	string	select	\N	kafka_topics	\N	\N	{"uiSchema":{"type":"string","title":"Type","x-component":"Select","x-component-props":{"options":[{"label":"Producer","value":"producer"},{"label":"Consumer","value":"consumer"}]},"required":true}}	4
jxnn7sexels	id	uuid	input	\N	kafka_configs	\N	\N	{"primaryKey":true,"autoIncrement":false,"uiSchema":{"type":"string","title":"ID","x-component":"Input","required":true}}	1
t0vzdsvk85g	group_id	string	input	\N	kafka_configs	\N	\N	{"uiSchema":{"type":"string","title":"Group Id","x-component":"Input","required":true}}	2
lhyiae5ls29	client_id	string	input	\N	kafka_configs	\N	\N	{"uiSchema":{"type":"string","title":"Client Id","x-component":"Input","required":true}}	3
tkwoe8ue9pm	id	uuid	input	\N	smart_contracts	\N	\N	{"primaryKey":true,"autoIncrement":false,"uiSchema":{"type":"string","title":"ID","x-component":"Input","required":true}}	1
ntxy08is1r8	script	string	textarea	\N	smart_contracts	\N	\N	{"uiSchema":{"type":"string","title":"Script","x-component":"Input","required":true}}	2
\.


--
-- TOC entry 3835 (class 0 OID 16761)
-- Dependencies: 272
-- Data for Name: flow_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flow_nodes (id, "createdAt", "updatedAt", key, title, "upstreamId", "branchIndex", "downstreamId", type, config, "workflowId") FROM stdin;
\.


--
-- TOC entry 3818 (class 0 OID 16643)
-- Dependencies: 255
-- Data for Name: iframeHtml; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."iframeHtml" (id, "createdAt", "updatedAt", html, "createdById", "updatedById") FROM stdin;
\.


--
-- TOC entry 3837 (class 0 OID 16774)
-- Dependencies: 274
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jobs (id, "createdAt", "updatedAt", "executionId", "nodeId", "nodeKey", "upstreamId", status, result) FROM stdin;
\.


--
-- TOC entry 3845 (class 0 OID 16851)
-- Dependencies: 282
-- Data for Name: kafka_configs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kafka_configs (id, "createdAt", "updatedAt", group_id, client_id) FROM stdin;
00363a78-d36b-4f75-9b41-d1e8416e9f20	2024-12-03 18:52:03.738+00	2024-12-03 18:52:03.738+00	nocobase-group	nocobase-client
\.


--
-- TOC entry 3844 (class 0 OID 16840)
-- Dependencies: 281
-- Data for Name: kafka_topics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kafka_topics (id, "createdAt", "updatedAt", broker_host, topic_name, type) FROM stdin;
be0e6c0d-ad92-4342-8ed2-0e49aaa2df88	2024-12-03 18:52:03.741+00	2024-12-03 18:52:03.741+00	localhost:9092	nocobase-events	producer
\.


--
-- TOC entry 3780 (class 0 OID 16385)
-- Dependencies: 217
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (name) FROM stdin;
\.


--
-- TOC entry 3801 (class 0 OID 16524)
-- Dependencies: 238
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles ("createdAt", "updatedAt", name, title, description, strategy, "default", hidden, "allowConfigure", "allowNewMenu", snippets, sort) FROM stdin;
2024-12-03 18:50:58.826+00	2024-12-03 18:50:58.826+00	root	{{t("Root")}}	\N	\N	f	t	\N	\N	["pm", "pm.*", "ui.*"]	1
2024-12-03 18:50:58.831+00	2024-12-03 18:50:59.033+00	admin	{{t("Admin")}}	\N	{"actions":["create","view","update","destroy","importXlsx","export"]}	f	f	t	t	["pm", "pm.*", "ui.*"]	2
2024-12-03 18:50:58.836+00	2024-12-03 18:50:59.04+00	member	{{t("Member")}}	\N	{"actions":["view","update:own","destroy:own","create","importXlsx","export"]}	t	f	\N	t	["!pm", "!pm.*", "!ui.*"]	3
\.


--
-- TOC entry 3803 (class 0 OID 16538)
-- Dependencies: 240
-- Data for Name: rolesResources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesResources" (id, "createdAt", "updatedAt", "roleName", name, "usingActionsConfig") FROM stdin;
\.


--
-- TOC entry 3805 (class 0 OID 16548)
-- Dependencies: 242
-- Data for Name: rolesResourcesActions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesResourcesActions" (id, "createdAt", "updatedAt", "rolesResourceId", name, fields, "scopeId") FROM stdin;
\.


--
-- TOC entry 3807 (class 0 OID 16561)
-- Dependencies: 244
-- Data for Name: rolesResourcesScopes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesResourcesScopes" (id, "createdAt", "updatedAt", key, name, "resourceName", scope) FROM stdin;
\.


--
-- TOC entry 3831 (class 0 OID 16740)
-- Dependencies: 268
-- Data for Name: rolesUischemas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesUischemas" ("createdAt", "updatedAt", "roleName", "uiSchemaXUid") FROM stdin;
2024-12-03 19:06:08.764+00	2024-12-03 19:06:08.764+00	admin	0gpop0mgnfj
2024-12-03 19:06:08.772+00	2024-12-03 19:06:08.772+00	member	0gpop0mgnfj
\.


--
-- TOC entry 3800 (class 0 OID 16518)
-- Dependencies: 237
-- Data for Name: rolesUsers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesUsers" ("createdAt", "updatedAt", "default", "roleName", "userId") FROM stdin;
2024-12-03 18:50:58.885+00	2024-12-03 18:50:58.885+00	\N	member	1
2024-12-03 18:50:58.961+00	2024-12-03 18:50:58.961+00	\N	admin	1
2024-12-03 18:50:58.961+00	2024-12-03 18:50:58.967+00	t	root	1
\.


--
-- TOC entry 3797 (class 0 OID 16494)
-- Dependencies: 234
-- Data for Name: sequences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sequences (id, "createdAt", "updatedAt", collection, field, key, current, "lastGeneratedAt") FROM stdin;
\.


--
-- TOC entry 3846 (class 0 OID 17356)
-- Dependencies: 283
-- Data for Name: smart_contracts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.smart_contracts (id, "createdAt", "updatedAt", script) FROM stdin;
\.


--
-- TOC entry 3793 (class 0 OID 16462)
-- Dependencies: 230
-- Data for Name: storages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.storages (id, "createdAt", "updatedAt", title, name, type, options, rules, path, "baseUrl", "default", paranoid) FROM stdin;
1	2024-12-03 18:50:58.747+00	2024-12-03 18:50:58.747+00	Local storage	local	local	{"documentRoot": "storage/uploads"}	{"size": 20971520}		/storage/uploads	t	f
\.


--
-- TOC entry 3795 (class 0 OID 16479)
-- Dependencies: 232
-- Data for Name: systemSettings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."systemSettings" (id, "createdAt", "updatedAt", title, "showLogoOnly", "allowSignUp", "smsAuthEnabled", "logoId", "enabledLanguages", "appLang", options) FROM stdin;
1	2024-12-03 18:50:58.765+00	2024-12-03 18:50:58.765+00	NocoBase	\N	t	f	1	["en-US"]	en-US	{}
\.


--
-- TOC entry 3822 (class 0 OID 16667)
-- Dependencies: 259
-- Data for Name: tokenBlacklist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tokenBlacklist" (id, "createdAt", "updatedAt", token, expiration) FROM stdin;
\.


--
-- TOC entry 3827 (class 0 OID 16707)
-- Dependencies: 264
-- Data for Name: uiSchemaServerHooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."uiSchemaServerHooks" (id, type, collection, field, method, params, uid) FROM stdin;
\.


--
-- TOC entry 3828 (class 0 OID 16716)
-- Dependencies: 265
-- Data for Name: uiSchemaTemplates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."uiSchemaTemplates" ("createdAt", "updatedAt", key, name, "componentName", "associationName", "resourceName", "collectionName", "dataSourceKey", uid) FROM stdin;
\.


--
-- TOC entry 3829 (class 0 OID 16724)
-- Dependencies: 266
-- Data for Name: uiSchemaTreePath; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."uiSchemaTreePath" (ancestor, descendant, depth, async, type, sort) FROM stdin;
nocobase-admin-menu	nocobase-admin-menu	0	f	\N	\N
s7tgki3dz28	s7tgki3dz28	0	t	properties	\N
0gpop0mgnfj	s7tgki3dz28	1	\N	\N	1
3jvl1g8cbpu	3jvl1g8cbpu	0	f	properties	\N
s7tgki3dz28	3jvl1g8cbpu	1	\N	\N	1
0gpop0mgnfj	3jvl1g8cbpu	2	\N	\N	1
nocobase-admin-menu	3jvl1g8cbpu	3	\N	\N	\N
nocobase-admin-menu	s7tgki3dz28	2	\N	\N	\N
0gpop0mgnfj	0gpop0mgnfj	0	f	properties	\N
nocobase-admin-menu	0gpop0mgnfj	1	\N	\N	1
drpeb1qtu1b	drpeb1qtu1b	0	f	properties	\N
sfyxjhoh4l4	drpeb1qtu1b	1	\N	\N	1
rderfo1skrs	rderfo1skrs	0	f	properties	\N
drpeb1qtu1b	rderfo1skrs	1	\N	\N	1
sfyxjhoh4l4	rderfo1skrs	2	\N	\N	1
g3s7eiqltms	g3s7eiqltms	0	f	properties	\N
rderfo1skrs	g3s7eiqltms	1	\N	\N	1
drpeb1qtu1b	g3s7eiqltms	2	\N	\N	1
sfyxjhoh4l4	g3s7eiqltms	3	\N	\N	1
3jvl1g8cbpu	drpeb1qtu1b	2	\N	\N	\N
3jvl1g8cbpu	rderfo1skrs	3	\N	\N	\N
3jvl1g8cbpu	g3s7eiqltms	4	\N	\N	\N
s7tgki3dz28	sfyxjhoh4l4	2	\N	\N	\N
s7tgki3dz28	drpeb1qtu1b	3	\N	\N	\N
s7tgki3dz28	rderfo1skrs	4	\N	\N	\N
s7tgki3dz28	g3s7eiqltms	5	\N	\N	\N
0gpop0mgnfj	sfyxjhoh4l4	3	\N	\N	\N
0gpop0mgnfj	drpeb1qtu1b	4	\N	\N	\N
0gpop0mgnfj	rderfo1skrs	5	\N	\N	\N
0gpop0mgnfj	g3s7eiqltms	6	\N	\N	\N
nocobase-admin-menu	sfyxjhoh4l4	4	\N	\N	\N
nocobase-admin-menu	drpeb1qtu1b	5	\N	\N	\N
nocobase-admin-menu	rderfo1skrs	6	\N	\N	\N
nocobase-admin-menu	g3s7eiqltms	7	\N	\N	\N
sfyxjhoh4l4	sfyxjhoh4l4	0	f	properties	\N
3jvl1g8cbpu	sfyxjhoh4l4	1	\N	\N	1
\.


--
-- TOC entry 3830 (class 0 OID 16732)
-- Dependencies: 267
-- Data for Name: uiSchemas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."uiSchemas" ("x-uid", name, schema) FROM stdin;
nocobase-admin-menu	mn1yrh99zh7	{"type":"void","x-component":"Menu","x-designer":"Menu.Designer","x-initializer":"MenuItemInitializers","x-component-props":{"mode":"mix","theme":"dark","onSelect":"{{ onSelect }}","sideMenuRefScopeKey":"sideMenuRef"}}
0gpop0mgnfj	er7fu764ju1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"csc","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}],"x-app-version":"1.3.54"}
s7tgki3dz28	page	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page","x-app-version":"1.3.54"}
3jvl1g8cbpu	d4d1y4u9mrl	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock","x-app-version":"1.3.54"}
sfyxjhoh4l4	e8ghn4ehh0v	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.54"}
drpeb1qtu1b	a9oq02e0c0z	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.54"}
rderfo1skrs	70ll2dm5702	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"CardItem","x-decorator":"DataBlockProvider","x-decorator-props":{"solidityeditor":{},"dataSource":"main","collection":"smart_contracts","action":"list"},"x-settings":"blockSettings:solidityeditor","x-toolbar":"BlockSchemaToolbar","x-app-version":"1.3.54"}
g3s7eiqltms	solidityeditor	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"SolidityEditor","x-use-component-props":"useCodeBlockProps","x-app-version":"1.3.54"}
\.


--
-- TOC entry 3825 (class 0 OID 16688)
-- Dependencies: 262
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, "createdAt", "updatedAt", nickname, username, email, phone, password, "appLang", "resetToken", "systemSettings", sort, "createdById", "updatedById") FROM stdin;
1	2024-12-03 18:50:58.849+00	2024-12-03 18:50:58.849+00	Super Admin	nocobase	admin@nocobase.com	\N	4b62e64f2182979802883775f8346ffe200e48e6fe04e39d760263505aaa24a6	\N	\N	{}	1	\N	\N
\.


--
-- TOC entry 3823 (class 0 OID 16674)
-- Dependencies: 260
-- Data for Name: usersAuthenticators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."usersAuthenticators" ("createdAt", "updatedAt", uuid, nickname, avatar, meta, "createdById", "updatedById", authenticator, "userId") FROM stdin;
\.


--
-- TOC entry 3841 (class 0 OID 16803)
-- Dependencies: 278
-- Data for Name: users_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_jobs (id, "createdAt", "updatedAt", "jobId", "userId", "executionId", "nodeId", "workflowId", status, result) FROM stdin;
\.


--
-- TOC entry 3798 (class 0 OID 16502)
-- Dependencies: 235
-- Data for Name: verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.verifications (id, "createdAt", "updatedAt", type, receiver, status, "expiresAt", content, "providerId") FROM stdin;
\.


--
-- TOC entry 3799 (class 0 OID 16511)
-- Dependencies: 236
-- Data for Name: verifications_providers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.verifications_providers (id, "createdAt", "updatedAt", title, type, options, "default") FROM stdin;
\.


--
-- TOC entry 3839 (class 0 OID 16786)
-- Dependencies: 276
-- Data for Name: workflows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.workflows (id, "createdAt", "updatedAt", key, title, enabled, description, type, "triggerTitle", config, executed, "allExecuted", current, sync, options) FROM stdin;
\.


--
-- TOC entry 3890 (class 0 OID 0)
-- Dependencies: 218
-- Name: applicationPlugins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."applicationPlugins_id_seq"', 61, true);


--
-- TOC entry 3891 (class 0 OID 0)
-- Dependencies: 220
-- Name: applicationVersion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."applicationVersion_id_seq"', 1, true);


--
-- TOC entry 3892 (class 0 OID 0)
-- Dependencies: 227
-- Name: attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attachments_id_seq', 1, true);


--
-- TOC entry 3893 (class 0 OID 0)
-- Dependencies: 256
-- Name: authenticators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authenticators_id_seq', 1, true);


--
-- TOC entry 3894 (class 0 OID 0)
-- Dependencies: 222
-- Name: collectionCategories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."collectionCategories_id_seq"', 1, false);


--
-- TOC entry 3895 (class 0 OID 0)
-- Dependencies: 247
-- Name: dataSourcesRolesResourcesActions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."dataSourcesRolesResourcesActions_id_seq"', 1, false);


--
-- TOC entry 3896 (class 0 OID 0)
-- Dependencies: 249
-- Name: dataSourcesRolesResourcesScopes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."dataSourcesRolesResourcesScopes_id_seq"', 2, true);


--
-- TOC entry 3897 (class 0 OID 0)
-- Dependencies: 251
-- Name: dataSourcesRolesResources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."dataSourcesRolesResources_id_seq"', 1, false);


--
-- TOC entry 3898 (class 0 OID 0)
-- Dependencies: 269
-- Name: executions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.executions_id_seq', 1, false);


--
-- TOC entry 3899 (class 0 OID 0)
-- Dependencies: 271
-- Name: flow_nodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.flow_nodes_id_seq', 1, false);


--
-- TOC entry 3900 (class 0 OID 0)
-- Dependencies: 273
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- TOC entry 3901 (class 0 OID 0)
-- Dependencies: 241
-- Name: rolesResourcesActions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."rolesResourcesActions_id_seq"', 1, false);


--
-- TOC entry 3902 (class 0 OID 0)
-- Dependencies: 243
-- Name: rolesResourcesScopes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."rolesResourcesScopes_id_seq"', 1, false);


--
-- TOC entry 3903 (class 0 OID 0)
-- Dependencies: 239
-- Name: rolesResources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."rolesResources_id_seq"', 1, false);


--
-- TOC entry 3904 (class 0 OID 0)
-- Dependencies: 233
-- Name: sequences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sequences_id_seq', 1, false);


--
-- TOC entry 3905 (class 0 OID 0)
-- Dependencies: 229
-- Name: storages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.storages_id_seq', 1, true);


--
-- TOC entry 3906 (class 0 OID 0)
-- Dependencies: 231
-- Name: systemSettings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."systemSettings_id_seq"', 1, true);


--
-- TOC entry 3907 (class 0 OID 0)
-- Dependencies: 258
-- Name: tokenBlacklist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tokenBlacklist_id_seq"', 1, false);


--
-- TOC entry 3908 (class 0 OID 0)
-- Dependencies: 263
-- Name: uiSchemaServerHooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."uiSchemaServerHooks_id_seq"', 1, false);


--
-- TOC entry 3909 (class 0 OID 0)
-- Dependencies: 261
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- TOC entry 3910 (class 0 OID 0)
-- Dependencies: 277
-- Name: users_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_jobs_id_seq', 1, false);


--
-- TOC entry 3911 (class 0 OID 0)
-- Dependencies: 275
-- Name: workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.workflows_id_seq', 1, false);


--
-- TOC entry 3475 (class 2606 OID 16400)
-- Name: applicationPlugins applicationPlugins_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationPlugins"
    ADD CONSTRAINT "applicationPlugins_name_key" UNIQUE (name);


--
-- TOC entry 3477 (class 2606 OID 16402)
-- Name: applicationPlugins applicationPlugins_packageName_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationPlugins"
    ADD CONSTRAINT "applicationPlugins_packageName_key" UNIQUE ("packageName");


--
-- TOC entry 3479 (class 2606 OID 16398)
-- Name: applicationPlugins applicationPlugins_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationPlugins"
    ADD CONSTRAINT "applicationPlugins_pkey" PRIMARY KEY (id);


--
-- TOC entry 3481 (class 2606 OID 16409)
-- Name: applicationVersion applicationVersion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationVersion"
    ADD CONSTRAINT "applicationVersion_pkey" PRIMARY KEY (id);


--
-- TOC entry 3498 (class 2606 OID 16458)
-- Name: attachments attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachments
    ADD CONSTRAINT attachments_pkey PRIMARY KEY (id);


--
-- TOC entry 3561 (class 2606 OID 16664)
-- Name: authenticators authenticators_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authenticators
    ADD CONSTRAINT authenticators_name_key UNIQUE (name);


--
-- TOC entry 3563 (class 2606 OID 16662)
-- Name: authenticators authenticators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authenticators
    ADD CONSTRAINT authenticators_pkey PRIMARY KEY (id);


--
-- TOC entry 3483 (class 2606 OID 16419)
-- Name: collectionCategories collectionCategories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."collectionCategories"
    ADD CONSTRAINT "collectionCategories_pkey" PRIMARY KEY (id);


--
-- TOC entry 3489 (class 2606 OID 16436)
-- Name: collectionCategory collectionCategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."collectionCategory"
    ADD CONSTRAINT "collectionCategory_pkey" PRIMARY KEY ("collectionName", "categoryId");


--
-- TOC entry 3485 (class 2606 OID 16431)
-- Name: collections collections_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_name_key UNIQUE (name);


--
-- TOC entry 3487 (class 2606 OID 16429)
-- Name: collections collections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_pkey PRIMARY KEY (key);


--
-- TOC entry 3627 (class 2606 OID 16831)
-- Name: customRequestsRoles customRequestsRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."customRequestsRoles"
    ADD CONSTRAINT "customRequestsRoles_pkey" PRIMARY KEY ("customRequestKey", "roleName");


--
-- TOC entry 3625 (class 2606 OID 16824)
-- Name: customRequests customRequests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."customRequests"
    ADD CONSTRAINT "customRequests_pkey" PRIMARY KEY (key);


--
-- TOC entry 3531 (class 2606 OID 16575)
-- Name: dataSourcesCollections dataSourcesCollections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesCollections"
    ADD CONSTRAINT "dataSourcesCollections_pkey" PRIMARY KEY (key);


--
-- TOC entry 3535 (class 2606 OID 16585)
-- Name: dataSourcesFields dataSourcesFields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesFields"
    ADD CONSTRAINT "dataSourcesFields_pkey" PRIMARY KEY (key);


--
-- TOC entry 3540 (class 2606 OID 16598)
-- Name: dataSourcesRolesResourcesActions dataSourcesRolesResourcesActions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResourcesActions"
    ADD CONSTRAINT "dataSourcesRolesResourcesActions_pkey" PRIMARY KEY (id);


--
-- TOC entry 3544 (class 2606 OID 16611)
-- Name: dataSourcesRolesResourcesScopes dataSourcesRolesResourcesScopes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResourcesScopes"
    ADD CONSTRAINT "dataSourcesRolesResourcesScopes_pkey" PRIMARY KEY (id);


--
-- TOC entry 3547 (class 2606 OID 16622)
-- Name: dataSourcesRolesResources dataSourcesRolesResources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResources"
    ADD CONSTRAINT "dataSourcesRolesResources_pkey" PRIMARY KEY (id);


--
-- TOC entry 3551 (class 2606 OID 16631)
-- Name: dataSourcesRoles dataSourcesRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRoles"
    ADD CONSTRAINT "dataSourcesRoles_pkey" PRIMARY KEY (id);


--
-- TOC entry 3555 (class 2606 OID 16642)
-- Name: dataSources dataSources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSources"
    ADD CONSTRAINT "dataSources_pkey" PRIMARY KEY (key);


--
-- TOC entry 3598 (class 2606 OID 16758)
-- Name: executions executions_eventKey_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.executions
    ADD CONSTRAINT "executions_eventKey_key" UNIQUE ("eventKey");


--
-- TOC entry 3600 (class 2606 OID 16756)
-- Name: executions executions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.executions
    ADD CONSTRAINT executions_pkey PRIMARY KEY (id);


--
-- TOC entry 3494 (class 2606 OID 16445)
-- Name: fields fields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fields
    ADD CONSTRAINT fields_pkey PRIMARY KEY (key);


--
-- TOC entry 3604 (class 2606 OID 16769)
-- Name: flow_nodes flow_nodes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flow_nodes
    ADD CONSTRAINT flow_nodes_pkey PRIMARY KEY (id);


--
-- TOC entry 3557 (class 2606 OID 16649)
-- Name: iframeHtml iframeHtml_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."iframeHtml"
    ADD CONSTRAINT "iframeHtml_pkey" PRIMARY KEY (id);


--
-- TOC entry 3610 (class 2606 OID 16781)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3632 (class 2606 OID 16857)
-- Name: kafka_configs kafka_configs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kafka_configs
    ADD CONSTRAINT kafka_configs_pkey PRIMARY KEY (id);


--
-- TOC entry 3630 (class 2606 OID 16846)
-- Name: kafka_topics kafka_topics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kafka_topics
    ADD CONSTRAINT kafka_topics_pkey PRIMARY KEY (id);


--
-- TOC entry 3473 (class 2606 OID 16389)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (name);


--
-- TOC entry 3525 (class 2606 OID 16556)
-- Name: rolesResourcesActions rolesResourcesActions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResourcesActions"
    ADD CONSTRAINT "rolesResourcesActions_pkey" PRIMARY KEY (id);


--
-- TOC entry 3529 (class 2606 OID 16568)
-- Name: rolesResourcesScopes rolesResourcesScopes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResourcesScopes"
    ADD CONSTRAINT "rolesResourcesScopes_pkey" PRIMARY KEY (id);


--
-- TOC entry 3522 (class 2606 OID 16545)
-- Name: rolesResources rolesResources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResources"
    ADD CONSTRAINT "rolesResources_pkey" PRIMARY KEY (id);


--
-- TOC entry 3595 (class 2606 OID 16746)
-- Name: rolesUischemas rolesUischemas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesUischemas"
    ADD CONSTRAINT "rolesUischemas_pkey" PRIMARY KEY ("roleName", "uiSchemaXUid");


--
-- TOC entry 3515 (class 2606 OID 16522)
-- Name: rolesUsers rolesUsers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesUsers"
    ADD CONSTRAINT "rolesUsers_pkey" PRIMARY KEY ("roleName", "userId");


--
-- TOC entry 3518 (class 2606 OID 16533)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (name);


--
-- TOC entry 3520 (class 2606 OID 16535)
-- Name: roles roles_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_title_key UNIQUE (title);


--
-- TOC entry 3508 (class 2606 OID 16501)
-- Name: sequences sequences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sequences
    ADD CONSTRAINT sequences_pkey PRIMARY KEY (id);


--
-- TOC entry 3634 (class 2606 OID 17362)
-- Name: smart_contracts smart_contracts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.smart_contracts
    ADD CONSTRAINT smart_contracts_pkey PRIMARY KEY (id);


--
-- TOC entry 3501 (class 2606 OID 16477)
-- Name: storages storages_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storages
    ADD CONSTRAINT storages_name_key UNIQUE (name);


--
-- TOC entry 3503 (class 2606 OID 16475)
-- Name: storages storages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storages
    ADD CONSTRAINT storages_pkey PRIMARY KEY (id);


--
-- TOC entry 3505 (class 2606 OID 16490)
-- Name: systemSettings systemSettings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."systemSettings"
    ADD CONSTRAINT "systemSettings_pkey" PRIMARY KEY (id);


--
-- TOC entry 3565 (class 2606 OID 16672)
-- Name: tokenBlacklist tokenBlacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tokenBlacklist"
    ADD CONSTRAINT "tokenBlacklist_pkey" PRIMARY KEY (id);


--
-- TOC entry 3584 (class 2606 OID 16714)
-- Name: uiSchemaServerHooks uiSchemaServerHooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemaServerHooks"
    ADD CONSTRAINT "uiSchemaServerHooks_pkey" PRIMARY KEY (id);


--
-- TOC entry 3587 (class 2606 OID 16722)
-- Name: uiSchemaTemplates uiSchemaTemplates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemaTemplates"
    ADD CONSTRAINT "uiSchemaTemplates_pkey" PRIMARY KEY (key);


--
-- TOC entry 3590 (class 2606 OID 16730)
-- Name: uiSchemaTreePath uiSchemaTreePath_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemaTreePath"
    ADD CONSTRAINT "uiSchemaTreePath_pkey" PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 3593 (class 2606 OID 16739)
-- Name: uiSchemas uiSchemas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemas"
    ADD CONSTRAINT "uiSchemas_pkey" PRIMARY KEY ("x-uid");


--
-- TOC entry 3568 (class 2606 OID 16683)
-- Name: usersAuthenticators usersAuthenticators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."usersAuthenticators"
    ADD CONSTRAINT "usersAuthenticators_pkey" PRIMARY KEY (authenticator, "userId");


--
-- TOC entry 3574 (class 2606 OID 16700)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 3617 (class 2606 OID 16812)
-- Name: users_jobs users_jobs_jobId_userId_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_jobs
    ADD CONSTRAINT "users_jobs_jobId_userId_key" UNIQUE ("jobId", "userId");


--
-- TOC entry 3621 (class 2606 OID 16810)
-- Name: users_jobs users_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_jobs
    ADD CONSTRAINT users_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3576 (class 2606 OID 16702)
-- Name: users users_phone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);


--
-- TOC entry 3578 (class 2606 OID 16696)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3580 (class 2606 OID 16704)
-- Name: users users_resetToken_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_resetToken_key" UNIQUE ("resetToken");


--
-- TOC entry 3582 (class 2606 OID 16698)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 3510 (class 2606 OID 16509)
-- Name: verifications verifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verifications
    ADD CONSTRAINT verifications_pkey PRIMARY KEY (id);


--
-- TOC entry 3513 (class 2606 OID 16517)
-- Name: verifications_providers verifications_providers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verifications_providers
    ADD CONSTRAINT verifications_providers_pkey PRIMARY KEY (id);


--
-- TOC entry 3614 (class 2606 OID 16800)
-- Name: workflows workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workflows
    ADD CONSTRAINT workflows_pkey PRIMARY KEY (id);


--
-- TOC entry 3496 (class 1259 OID 16460)
-- Name: attachments_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX attachments_created_by_id ON public.attachments USING btree ("createdById");


--
-- TOC entry 3499 (class 1259 OID 16459)
-- Name: attachments_storage_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX attachments_storage_id ON public.attachments USING btree ("storageId");


--
-- TOC entry 3559 (class 1259 OID 16665)
-- Name: authenticators_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authenticators_created_by_id ON public.authenticators USING btree ("createdById");


--
-- TOC entry 3490 (class 1259 OID 16437)
-- Name: collection_category_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX collection_category_category_id ON public."collectionCategory" USING btree ("categoryId");


--
-- TOC entry 3628 (class 1259 OID 16832)
-- Name: custom_requests_roles_role_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX custom_requests_roles_role_name ON public."customRequestsRoles" USING btree ("roleName");


--
-- TOC entry 3532 (class 1259 OID 16577)
-- Name: data_sources_collections_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_collections_data_source_key ON public."dataSourcesCollections" USING btree ("dataSourceKey");


--
-- TOC entry 3533 (class 1259 OID 16576)
-- Name: data_sources_collections_name_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX data_sources_collections_name_data_source_key ON public."dataSourcesCollections" USING btree (name, "dataSourceKey");


--
-- TOC entry 3536 (class 1259 OID 16587)
-- Name: data_sources_fields_collection_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_fields_collection_key ON public."dataSourcesFields" USING btree ("collectionKey");


--
-- TOC entry 3537 (class 1259 OID 16588)
-- Name: data_sources_fields_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_fields_data_source_key ON public."dataSourcesFields" USING btree ("dataSourceKey");


--
-- TOC entry 3538 (class 1259 OID 16586)
-- Name: data_sources_fields_name_collection_name_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX data_sources_fields_name_collection_name_data_source_key ON public."dataSourcesFields" USING btree (name, "collectionName", "dataSourceKey");


--
-- TOC entry 3552 (class 1259 OID 16633)
-- Name: data_sources_roles_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_data_source_key ON public."dataSourcesRoles" USING btree ("dataSourceKey");


--
-- TOC entry 3541 (class 1259 OID 16600)
-- Name: data_sources_roles_resources_actions_roles_resource_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_actions_roles_resource_id ON public."dataSourcesRolesResourcesActions" USING btree ("rolesResourceId");


--
-- TOC entry 3542 (class 1259 OID 16599)
-- Name: data_sources_roles_resources_actions_scope_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_actions_scope_id ON public."dataSourcesRolesResourcesActions" USING btree ("scopeId");


--
-- TOC entry 3548 (class 1259 OID 16624)
-- Name: data_sources_roles_resources_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_data_source_key ON public."dataSourcesRolesResources" USING btree ("dataSourceKey");


--
-- TOC entry 3549 (class 1259 OID 16623)
-- Name: data_sources_roles_resources_role_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_role_name ON public."dataSourcesRolesResources" USING btree ("roleName");


--
-- TOC entry 3545 (class 1259 OID 16612)
-- Name: data_sources_roles_resources_scopes_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_scopes_data_source_key ON public."dataSourcesRolesResourcesScopes" USING btree ("dataSourceKey");


--
-- TOC entry 3553 (class 1259 OID 16632)
-- Name: data_sources_roles_role_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_role_name ON public."dataSourcesRoles" USING btree ("roleName");


--
-- TOC entry 3601 (class 1259 OID 16759)
-- Name: executions_workflow_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX executions_workflow_id ON public.executions USING btree ("workflowId");


--
-- TOC entry 3491 (class 1259 OID 16446)
-- Name: fields_collection_name_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX fields_collection_name_name ON public.fields USING btree ("collectionName", name);


--
-- TOC entry 3492 (class 1259 OID 16447)
-- Name: fields_parent_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fields_parent_key ON public.fields USING btree ("parentKey");


--
-- TOC entry 3495 (class 1259 OID 16448)
-- Name: fields_reverse_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fields_reverse_key ON public.fields USING btree ("reverseKey");


--
-- TOC entry 3602 (class 1259 OID 16771)
-- Name: flow_nodes_downstream_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX flow_nodes_downstream_id ON public.flow_nodes USING btree ("downstreamId");


--
-- TOC entry 3605 (class 1259 OID 16770)
-- Name: flow_nodes_upstream_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX flow_nodes_upstream_id ON public.flow_nodes USING btree ("upstreamId");


--
-- TOC entry 3606 (class 1259 OID 16772)
-- Name: flow_nodes_workflow_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX flow_nodes_workflow_id ON public.flow_nodes USING btree ("workflowId");


--
-- TOC entry 3558 (class 1259 OID 16650)
-- Name: iframe_html_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX iframe_html_created_by_id ON public."iframeHtml" USING btree ("createdById");


--
-- TOC entry 3607 (class 1259 OID 16782)
-- Name: jobs_execution_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_execution_id ON public.jobs USING btree ("executionId");


--
-- TOC entry 3608 (class 1259 OID 16783)
-- Name: jobs_node_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_node_id ON public.jobs USING btree ("nodeId");


--
-- TOC entry 3611 (class 1259 OID 16784)
-- Name: jobs_upstream_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_upstream_id ON public.jobs USING btree ("upstreamId");


--
-- TOC entry 3526 (class 1259 OID 16557)
-- Name: roles_resources_actions_roles_resource_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX roles_resources_actions_roles_resource_id ON public."rolesResourcesActions" USING btree ("rolesResourceId");


--
-- TOC entry 3527 (class 1259 OID 16558)
-- Name: roles_resources_actions_scope_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX roles_resources_actions_scope_id ON public."rolesResourcesActions" USING btree ("scopeId");


--
-- TOC entry 3523 (class 1259 OID 16546)
-- Name: roles_resources_role_name_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX roles_resources_role_name_name ON public."rolesResources" USING btree ("roleName", name);


--
-- TOC entry 3596 (class 1259 OID 16747)
-- Name: roles_uischemas_ui_schema_x_uid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX roles_uischemas_ui_schema_x_uid ON public."rolesUischemas" USING btree ("uiSchemaXUid");


--
-- TOC entry 3516 (class 1259 OID 16523)
-- Name: roles_users_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX roles_users_user_id ON public."rolesUsers" USING btree ("userId");


--
-- TOC entry 3506 (class 1259 OID 16491)
-- Name: system_settings_logo_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX system_settings_logo_id ON public."systemSettings" USING btree ("logoId");


--
-- TOC entry 3566 (class 1259 OID 16673)
-- Name: token_blacklist_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX token_blacklist_token ON public."tokenBlacklist" USING btree (token);


--
-- TOC entry 3585 (class 1259 OID 16715)
-- Name: ui_schema_server_hooks_uid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ui_schema_server_hooks_uid ON public."uiSchemaServerHooks" USING btree (uid);


--
-- TOC entry 3588 (class 1259 OID 16723)
-- Name: ui_schema_templates_uid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ui_schema_templates_uid ON public."uiSchemaTemplates" USING btree (uid);


--
-- TOC entry 3591 (class 1259 OID 16731)
-- Name: ui_schema_tree_path_descendant; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ui_schema_tree_path_descendant ON public."uiSchemaTreePath" USING btree (descendant);


--
-- TOC entry 3569 (class 1259 OID 16684)
-- Name: users_authenticators_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_authenticators_created_by_id ON public."usersAuthenticators" USING btree ("createdById");


--
-- TOC entry 3570 (class 1259 OID 16685)
-- Name: users_authenticators_updated_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_authenticators_updated_by_id ON public."usersAuthenticators" USING btree ("updatedById");


--
-- TOC entry 3571 (class 1259 OID 16686)
-- Name: users_authenticators_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_authenticators_user_id ON public."usersAuthenticators" USING btree ("userId");


--
-- TOC entry 3572 (class 1259 OID 16705)
-- Name: users_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_created_by_id ON public.users USING btree ("createdById");


--
-- TOC entry 3615 (class 1259 OID 16815)
-- Name: users_jobs_execution_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_execution_id ON public.users_jobs USING btree ("executionId");


--
-- TOC entry 3618 (class 1259 OID 16813)
-- Name: users_jobs_job_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_job_id ON public.users_jobs USING btree ("jobId");


--
-- TOC entry 3619 (class 1259 OID 16816)
-- Name: users_jobs_node_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_node_id ON public.users_jobs USING btree ("nodeId");


--
-- TOC entry 3622 (class 1259 OID 16814)
-- Name: users_jobs_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_user_id ON public.users_jobs USING btree ("userId");


--
-- TOC entry 3623 (class 1259 OID 16817)
-- Name: users_jobs_workflow_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_workflow_id ON public.users_jobs USING btree ("workflowId");


--
-- TOC entry 3511 (class 1259 OID 16510)
-- Name: verifications_provider_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX verifications_provider_id ON public.verifications USING btree ("providerId");


--
-- TOC entry 3612 (class 1259 OID 16801)
-- Name: workflows_key_current; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX workflows_key_current ON public.workflows USING btree (key, current);


-- Completed on 2024-12-03 20:03:49 UTC

--
-- PostgreSQL database dump complete
--

