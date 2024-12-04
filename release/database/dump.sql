--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2024-12-04 11:20:07 UTC

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
DROP INDEX IF EXISTS public.china_regions_parent_code;
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
ALTER TABLE IF EXISTS ONLY public."chinaRegions" DROP CONSTRAINT IF EXISTS "chinaRegions_pkey";
ALTER TABLE IF EXISTS ONLY public.authenticators DROP CONSTRAINT IF EXISTS authenticators_pkey;
ALTER TABLE IF EXISTS ONLY public.authenticators DROP CONSTRAINT IF EXISTS authenticators_name_key;
ALTER TABLE IF EXISTS ONLY public.attachments DROP CONSTRAINT IF EXISTS attachments_pkey;
ALTER TABLE IF EXISTS ONLY public."applicationVersion" DROP CONSTRAINT IF EXISTS "applicationVersion_pkey";
ALTER TABLE IF EXISTS ONLY public."applicationPlugins" DROP CONSTRAINT IF EXISTS "applicationPlugins_pkey";
ALTER TABLE IF EXISTS ONLY public."applicationPlugins" DROP CONSTRAINT IF EXISTS "applicationPlugins_packageName_key";
ALTER TABLE IF EXISTS ONLY public."applicationPlugins" DROP CONSTRAINT IF EXISTS "applicationPlugins_name_key";
ALTER TABLE IF EXISTS ONLY "KafkaTopic"."kafka-topics" DROP CONSTRAINT IF EXISTS "kafka-topics_pkey";
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
DROP SEQUENCE IF EXISTS public.student_id_seq;
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
DROP TABLE IF EXISTS public."chinaRegions";
DROP SEQUENCE IF EXISTS public.authenticators_id_seq;
DROP TABLE IF EXISTS public.authenticators;
DROP SEQUENCE IF EXISTS public.attachments_id_seq;
DROP TABLE IF EXISTS public.attachments;
DROP SEQUENCE IF EXISTS public."applicationVersion_id_seq";
DROP TABLE IF EXISTS public."applicationVersion";
DROP SEQUENCE IF EXISTS public."applicationPlugins_id_seq";
DROP TABLE IF EXISTS public."applicationPlugins";
DROP TABLE IF EXISTS "KafkaTopic"."kafka-topics";
DROP SCHEMA IF EXISTS "KafkaTopic";
--
-- TOC entry 6 (class 2615 OID 16852)
-- Name: KafkaTopic; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "KafkaTopic";


ALTER SCHEMA "KafkaTopic" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 16853)
-- Name: kafka-topics; Type: TABLE; Schema: KafkaTopic; Owner: postgres
--

CREATE TABLE "KafkaTopic"."kafka-topics" (
    id uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    broker_host character varying(255),
    topic_name character varying(255),
    type character varying(255)
);


ALTER TABLE "KafkaTopic"."kafka-topics" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16858)
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
-- TOC entry 220 (class 1259 OID 16863)
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
-- TOC entry 3855 (class 0 OID 0)
-- Dependencies: 220
-- Name: applicationPlugins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."applicationPlugins_id_seq" OWNED BY public."applicationPlugins".id;


--
-- TOC entry 221 (class 1259 OID 16864)
-- Name: applicationVersion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."applicationVersion" (
    id bigint NOT NULL,
    value character varying(255)
);


ALTER TABLE public."applicationVersion" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16867)
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
-- TOC entry 3856 (class 0 OID 0)
-- Dependencies: 222
-- Name: applicationVersion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."applicationVersion_id_seq" OWNED BY public."applicationVersion".id;


--
-- TOC entry 223 (class 1259 OID 16868)
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
-- TOC entry 3857 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN attachments.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.title IS '用户文件名（不含扩展名）';


--
-- TOC entry 3858 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN attachments.filename; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.filename IS '系统文件名（含扩展名）';


--
-- TOC entry 3859 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN attachments.extname; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.extname IS '扩展名（含“.”）';


--
-- TOC entry 3860 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN attachments.size; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.size IS '文件体积（字节）';


--
-- TOC entry 3861 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN attachments.path; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.path IS '相对路径（含“/”前缀）';


--
-- TOC entry 3862 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN attachments.meta; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.meta IS '其他文件信息（如图片的宽高）';


--
-- TOC entry 3863 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN attachments.url; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.url IS '网络访问地址';


--
-- TOC entry 224 (class 1259 OID 16874)
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
-- TOC entry 3864 (class 0 OID 0)
-- Dependencies: 224
-- Name: attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attachments_id_seq OWNED BY public.attachments.id;


--
-- TOC entry 225 (class 1259 OID 16875)
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
-- TOC entry 226 (class 1259 OID 16883)
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
-- TOC entry 3865 (class 0 OID 0)
-- Dependencies: 226
-- Name: authenticators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authenticators_id_seq OWNED BY public.authenticators.id;


--
-- TOC entry 227 (class 1259 OID 16884)
-- Name: chinaRegions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."chinaRegions" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    code character varying(255) NOT NULL,
    name character varying(255),
    "parentCode" character varying(255),
    level integer
);


ALTER TABLE public."chinaRegions" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16889)
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
-- TOC entry 229 (class 1259 OID 16895)
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
-- TOC entry 3866 (class 0 OID 0)
-- Dependencies: 229
-- Name: collectionCategories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."collectionCategories_id_seq" OWNED BY public."collectionCategories".id;


--
-- TOC entry 230 (class 1259 OID 16896)
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
-- TOC entry 231 (class 1259 OID 16899)
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
-- TOC entry 232 (class 1259 OID 16907)
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
-- TOC entry 233 (class 1259 OID 16912)
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
-- TOC entry 234 (class 1259 OID 16917)
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
-- TOC entry 235 (class 1259 OID 16924)
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
-- TOC entry 236 (class 1259 OID 16929)
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
-- TOC entry 237 (class 1259 OID 16935)
-- Name: dataSourcesRoles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."dataSourcesRoles" (
    id character varying(255) NOT NULL,
    strategy json,
    "dataSourceKey" character varying(255),
    "roleName" character varying(255)
);


ALTER TABLE public."dataSourcesRoles" OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16940)
-- Name: dataSourcesRolesResources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."dataSourcesRolesResources" (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "dataSourceKey" character varying(255) DEFAULT 'main'::character varying,
    name character varying(255),
    "usingActionsConfig" boolean,
    "roleName" character varying(255)
);


ALTER TABLE public."dataSourcesRolesResources" OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16946)
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
-- TOC entry 240 (class 1259 OID 16952)
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
-- TOC entry 3867 (class 0 OID 0)
-- Dependencies: 240
-- Name: dataSourcesRolesResourcesActions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."dataSourcesRolesResourcesActions_id_seq" OWNED BY public."dataSourcesRolesResourcesActions".id;


--
-- TOC entry 241 (class 1259 OID 16953)
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
-- TOC entry 242 (class 1259 OID 16959)
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
-- TOC entry 3868 (class 0 OID 0)
-- Dependencies: 242
-- Name: dataSourcesRolesResourcesScopes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."dataSourcesRolesResourcesScopes_id_seq" OWNED BY public."dataSourcesRolesResourcesScopes".id;


--
-- TOC entry 243 (class 1259 OID 16960)
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
-- TOC entry 3869 (class 0 OID 0)
-- Dependencies: 243
-- Name: dataSourcesRolesResources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."dataSourcesRolesResources_id_seq" OWNED BY public."dataSourcesRolesResources".id;


--
-- TOC entry 244 (class 1259 OID 16961)
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
-- TOC entry 245 (class 1259 OID 16966)
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
-- TOC entry 3870 (class 0 OID 0)
-- Dependencies: 245
-- Name: executions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.executions_id_seq OWNED BY public.executions.id;


--
-- TOC entry 246 (class 1259 OID 16967)
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
-- TOC entry 247 (class 1259 OID 16973)
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
-- TOC entry 248 (class 1259 OID 16979)
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
-- TOC entry 3871 (class 0 OID 0)
-- Dependencies: 248
-- Name: flow_nodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.flow_nodes_id_seq OWNED BY public.flow_nodes.id;


--
-- TOC entry 249 (class 1259 OID 16980)
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
-- TOC entry 250 (class 1259 OID 16985)
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
-- TOC entry 251 (class 1259 OID 16990)
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
-- TOC entry 3872 (class 0 OID 0)
-- Dependencies: 251
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- TOC entry 252 (class 1259 OID 16991)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    name character varying(255) NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 16994)
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
-- TOC entry 254 (class 1259 OID 17002)
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
-- TOC entry 255 (class 1259 OID 17007)
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
-- TOC entry 256 (class 1259 OID 17013)
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
-- TOC entry 3873 (class 0 OID 0)
-- Dependencies: 256
-- Name: rolesResourcesActions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."rolesResourcesActions_id_seq" OWNED BY public."rolesResourcesActions".id;


--
-- TOC entry 257 (class 1259 OID 17014)
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
-- TOC entry 258 (class 1259 OID 17019)
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
-- TOC entry 3874 (class 0 OID 0)
-- Dependencies: 258
-- Name: rolesResourcesScopes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."rolesResourcesScopes_id_seq" OWNED BY public."rolesResourcesScopes".id;


--
-- TOC entry 259 (class 1259 OID 17020)
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
-- TOC entry 3875 (class 0 OID 0)
-- Dependencies: 259
-- Name: rolesResources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."rolesResources_id_seq" OWNED BY public."rolesResources".id;


--
-- TOC entry 260 (class 1259 OID 17021)
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
-- TOC entry 261 (class 1259 OID 17026)
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
-- TOC entry 262 (class 1259 OID 17029)
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
-- TOC entry 263 (class 1259 OID 17034)
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
-- TOC entry 3876 (class 0 OID 0)
-- Dependencies: 263
-- Name: sequences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sequences_id_seq OWNED BY public.sequences.id;


--
-- TOC entry 264 (class 1259 OID 17035)
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
-- TOC entry 265 (class 1259 OID 17040)
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
-- TOC entry 3877 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN storages.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.title IS '存储引擎名称';


--
-- TOC entry 3878 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN storages.type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.type IS '类型标识，如 local/ali-oss 等';


--
-- TOC entry 3879 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN storages.options; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.options IS '配置项';


--
-- TOC entry 3880 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN storages.rules; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.rules IS '文件规则';


--
-- TOC entry 3881 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN storages.path; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.path IS '存储相对路径模板';


--
-- TOC entry 3882 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN storages."baseUrl"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages."baseUrl" IS '访问地址前缀';


--
-- TOC entry 3883 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN storages."default"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages."default" IS '默认引擎';


--
-- TOC entry 266 (class 1259 OID 17051)
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
-- TOC entry 3884 (class 0 OID 0)
-- Dependencies: 266
-- Name: storages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.storages_id_seq OWNED BY public.storages.id;


--
-- TOC entry 267 (class 1259 OID 17052)
-- Name: student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.student_id_seq OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 17053)
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
-- TOC entry 269 (class 1259 OID 17062)
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
-- TOC entry 3885 (class 0 OID 0)
-- Dependencies: 269
-- Name: systemSettings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."systemSettings_id_seq" OWNED BY public."systemSettings".id;


--
-- TOC entry 270 (class 1259 OID 17063)
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
-- TOC entry 271 (class 1259 OID 17066)
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
-- TOC entry 3886 (class 0 OID 0)
-- Dependencies: 271
-- Name: tokenBlacklist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tokenBlacklist_id_seq" OWNED BY public."tokenBlacklist".id;


--
-- TOC entry 272 (class 1259 OID 17067)
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
-- TOC entry 273 (class 1259 OID 17072)
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
-- TOC entry 3887 (class 0 OID 0)
-- Dependencies: 273
-- Name: uiSchemaServerHooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."uiSchemaServerHooks_id_seq" OWNED BY public."uiSchemaServerHooks".id;


--
-- TOC entry 274 (class 1259 OID 17073)
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
-- TOC entry 275 (class 1259 OID 17078)
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
-- TOC entry 3888 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN "uiSchemaTreePath".type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."uiSchemaTreePath".type IS 'type of node';


--
-- TOC entry 3889 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN "uiSchemaTreePath".sort; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."uiSchemaTreePath".sort IS 'sort of node in adjacency';


--
-- TOC entry 276 (class 1259 OID 17083)
-- Name: uiSchemas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."uiSchemas" (
    "x-uid" character varying(255) NOT NULL,
    name character varying(255),
    schema json DEFAULT '{}'::json
);


ALTER TABLE public."uiSchemas" OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 17089)
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
-- TOC entry 278 (class 1259 OID 17095)
-- Name: usersAuthenticators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."usersAuthenticators" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    authenticator character varying(255) NOT NULL,
    "userId" bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    nickname character varying(255) DEFAULT ''::character varying NOT NULL,
    avatar character varying(255) DEFAULT ''::character varying NOT NULL,
    meta json DEFAULT '{}'::json,
    "createdById" bigint,
    "updatedById" bigint
);


ALTER TABLE public."usersAuthenticators" OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 17103)
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
-- TOC entry 3890 (class 0 OID 0)
-- Dependencies: 279
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 280 (class 1259 OID 17104)
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
-- TOC entry 281 (class 1259 OID 17109)
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
-- TOC entry 3891 (class 0 OID 0)
-- Dependencies: 281
-- Name: users_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_jobs_id_seq OWNED BY public.users_jobs.id;


--
-- TOC entry 282 (class 1259 OID 17110)
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
-- TOC entry 283 (class 1259 OID 17116)
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
-- TOC entry 284 (class 1259 OID 17121)
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
-- TOC entry 285 (class 1259 OID 17133)
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
-- TOC entry 3892 (class 0 OID 0)
-- Dependencies: 285
-- Name: workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.workflows_id_seq OWNED BY public.workflows.id;


--
-- TOC entry 3409 (class 2604 OID 17134)
-- Name: applicationPlugins id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationPlugins" ALTER COLUMN id SET DEFAULT nextval('public."applicationPlugins_id_seq"'::regclass);


--
-- TOC entry 3410 (class 2604 OID 17135)
-- Name: applicationVersion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationVersion" ALTER COLUMN id SET DEFAULT nextval('public."applicationVersion_id_seq"'::regclass);


--
-- TOC entry 3411 (class 2604 OID 17136)
-- Name: attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachments ALTER COLUMN id SET DEFAULT nextval('public.attachments_id_seq'::regclass);


--
-- TOC entry 3413 (class 2604 OID 17137)
-- Name: authenticators id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authenticators ALTER COLUMN id SET DEFAULT nextval('public.authenticators_id_seq'::regclass);


--
-- TOC entry 3417 (class 2604 OID 17138)
-- Name: collectionCategories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."collectionCategories" ALTER COLUMN id SET DEFAULT nextval('public."collectionCategories_id_seq"'::regclass);


--
-- TOC entry 3425 (class 2604 OID 17139)
-- Name: dataSourcesRolesResources id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResources" ALTER COLUMN id SET DEFAULT nextval('public."dataSourcesRolesResources_id_seq"'::regclass);


--
-- TOC entry 3427 (class 2604 OID 17140)
-- Name: dataSourcesRolesResourcesActions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResourcesActions" ALTER COLUMN id SET DEFAULT nextval('public."dataSourcesRolesResourcesActions_id_seq"'::regclass);


--
-- TOC entry 3429 (class 2604 OID 17141)
-- Name: dataSourcesRolesResourcesScopes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResourcesScopes" ALTER COLUMN id SET DEFAULT nextval('public."dataSourcesRolesResourcesScopes_id_seq"'::regclass);


--
-- TOC entry 3431 (class 2604 OID 17142)
-- Name: executions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.executions ALTER COLUMN id SET DEFAULT nextval('public.executions_id_seq'::regclass);


--
-- TOC entry 3433 (class 2604 OID 17143)
-- Name: flow_nodes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flow_nodes ALTER COLUMN id SET DEFAULT nextval('public.flow_nodes_id_seq'::regclass);


--
-- TOC entry 3435 (class 2604 OID 17144)
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- TOC entry 3439 (class 2604 OID 17145)
-- Name: rolesResources id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResources" ALTER COLUMN id SET DEFAULT nextval('public."rolesResources_id_seq"'::regclass);


--
-- TOC entry 3440 (class 2604 OID 17146)
-- Name: rolesResourcesActions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResourcesActions" ALTER COLUMN id SET DEFAULT nextval('public."rolesResourcesActions_id_seq"'::regclass);


--
-- TOC entry 3442 (class 2604 OID 17147)
-- Name: rolesResourcesScopes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResourcesScopes" ALTER COLUMN id SET DEFAULT nextval('public."rolesResourcesScopes_id_seq"'::regclass);


--
-- TOC entry 3443 (class 2604 OID 17148)
-- Name: sequences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sequences ALTER COLUMN id SET DEFAULT nextval('public.sequences_id_seq'::regclass);


--
-- TOC entry 3444 (class 2604 OID 17149)
-- Name: storages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storages ALTER COLUMN id SET DEFAULT nextval('public.storages_id_seq'::regclass);


--
-- TOC entry 3451 (class 2604 OID 17150)
-- Name: systemSettings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."systemSettings" ALTER COLUMN id SET DEFAULT nextval('public."systemSettings_id_seq"'::regclass);


--
-- TOC entry 3456 (class 2604 OID 17151)
-- Name: tokenBlacklist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tokenBlacklist" ALTER COLUMN id SET DEFAULT nextval('public."tokenBlacklist_id_seq"'::regclass);


--
-- TOC entry 3457 (class 2604 OID 17152)
-- Name: uiSchemaServerHooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemaServerHooks" ALTER COLUMN id SET DEFAULT nextval('public."uiSchemaServerHooks_id_seq"'::regclass);


--
-- TOC entry 3459 (class 2604 OID 17153)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3464 (class 2604 OID 17154)
-- Name: users_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_jobs ALTER COLUMN id SET DEFAULT nextval('public.users_jobs_id_seq'::regclass);


--
-- TOC entry 3466 (class 2604 OID 17155)
-- Name: workflows id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workflows ALTER COLUMN id SET DEFAULT nextval('public.workflows_id_seq'::regclass);


--
-- TOC entry 3782 (class 0 OID 16853)
-- Dependencies: 218
-- Data for Name: kafka-topics; Type: TABLE DATA; Schema: KafkaTopic; Owner: postgres
--

COPY "KafkaTopic"."kafka-topics" (id, "createdAt", "updatedAt", broker_host, topic_name, type) FROM stdin;
\.


--
-- TOC entry 3783 (class 0 OID 16858)
-- Dependencies: 219
-- Data for Name: applicationPlugins; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."applicationPlugins" (id, "createdAt", "updatedAt", name, "packageName", version, enabled, installed, "builtIn", options) FROM stdin;
41	2024-12-04 09:18:58.823+00	2024-12-04 09:18:58.823+00	multi-app-manager	@nocobase/plugin-multi-app-manager	1.3.51	\N	\N	\N	\N
42	2024-12-04 09:18:58.824+00	2024-12-04 09:18:58.824+00	map	@nocobase/plugin-map	1.3.51	\N	\N	\N	\N
43	2024-12-04 09:18:58.825+00	2024-12-04 09:18:58.825+00	graph-collection-manager	@nocobase/plugin-graph-collection-manager	1.3.51	\N	\N	\N	\N
44	2024-12-04 09:18:58.826+00	2024-12-04 09:18:58.826+00	mobile	@nocobase/plugin-mobile	1.3.51	\N	\N	\N	\N
45	2024-12-04 09:18:58.827+00	2024-12-04 09:18:58.827+00	api-keys	@nocobase/plugin-api-keys	1.3.51	\N	\N	\N	\N
46	2024-12-04 09:18:58.827+00	2024-12-04 09:18:58.827+00	localization	@nocobase/plugin-localization	1.3.51	\N	\N	\N	\N
47	2024-12-04 09:18:58.828+00	2024-12-04 09:18:58.828+00	theme-editor	@nocobase/plugin-theme-editor	1.3.51	\N	\N	\N	\N
48	2024-12-04 09:18:58.829+00	2024-12-04 09:18:58.829+00	api-doc	@nocobase/plugin-api-doc	1.3.51	\N	\N	\N	\N
49	2024-12-04 09:18:58.83+00	2024-12-04 09:18:58.83+00	auth-sms	@nocobase/plugin-auth-sms	1.3.51	\N	\N	\N	\N
50	2024-12-04 09:18:58.83+00	2024-12-04 09:18:58.83+00	field-markdown-vditor	@nocobase/plugin-field-markdown-vditor	1.3.51	\N	\N	\N	\N
51	2024-12-04 09:18:58.831+00	2024-12-04 09:18:58.831+00	workflow-mailer	@nocobase/plugin-workflow-mailer	1.3.51	\N	\N	\N	\N
52	2024-12-04 09:18:58.832+00	2024-12-04 09:18:58.832+00	field-m2m-array	@nocobase/plugin-field-m2m-array	1.3.51	\N	\N	\N	\N
53	2024-12-04 09:18:58.832+00	2024-12-04 09:18:58.832+00	backup-restore	@nocobase/plugin-backup-restore	1.3.51	\N	\N	\N	\N
1	2024-12-04 09:18:58.78+00	2024-12-04 09:19:00.147+00	data-source-manager	@nocobase/plugin-data-source-manager	1.3.51	t	t	t	\N
2	2024-12-04 09:18:58.785+00	2024-12-04 09:19:00.148+00	error-handler	@nocobase/plugin-error-handler	1.3.51	t	t	t	\N
3	2024-12-04 09:18:58.787+00	2024-12-04 09:19:00.149+00	data-source-main	@nocobase/plugin-data-source-main	1.3.51	t	t	t	\N
4	2024-12-04 09:18:58.789+00	2024-12-04 09:19:00.149+00	ui-schema-storage	@nocobase/plugin-ui-schema-storage	1.3.51	t	t	t	\N
5	2024-12-04 09:18:58.79+00	2024-12-04 09:19:00.15+00	file-manager	@nocobase/plugin-file-manager	1.3.51	t	t	t	\N
6	2024-12-04 09:18:58.791+00	2024-12-04 09:19:00.151+00	system-settings	@nocobase/plugin-system-settings	1.3.51	t	t	t	\N
7	2024-12-04 09:18:58.792+00	2024-12-04 09:19:00.151+00	field-sequence	@nocobase/plugin-field-sequence	1.3.51	t	t	t	\N
8	2024-12-04 09:18:58.793+00	2024-12-04 09:19:00.152+00	verification	@nocobase/plugin-verification	1.3.51	t	t	t	\N
9	2024-12-04 09:18:58.795+00	2024-12-04 09:19:00.152+00	users	@nocobase/plugin-users	1.3.51	t	t	t	\N
10	2024-12-04 09:18:58.796+00	2024-12-04 09:19:00.153+00	acl	@nocobase/plugin-acl	1.3.51	t	t	t	\N
11	2024-12-04 09:18:58.797+00	2024-12-04 09:19:00.153+00	field-china-region	@nocobase/plugin-field-china-region	1.3.51	t	t	t	\N
12	2024-12-04 09:18:58.798+00	2024-12-04 09:19:00.154+00	workflow	@nocobase/plugin-workflow	1.3.51	t	t	t	\N
13	2024-12-04 09:18:58.799+00	2024-12-04 09:19:00.154+00	workflow-action-trigger	@nocobase/plugin-workflow-action-trigger	1.3.51	t	t	t	\N
14	2024-12-04 09:18:58.8+00	2024-12-04 09:19:00.155+00	workflow-aggregate	@nocobase/plugin-workflow-aggregate	1.3.51	t	t	t	\N
15	2024-12-04 09:18:58.8+00	2024-12-04 09:19:00.155+00	workflow-delay	@nocobase/plugin-workflow-delay	1.3.51	t	t	t	\N
16	2024-12-04 09:18:58.801+00	2024-12-04 09:19:00.156+00	workflow-dynamic-calculation	@nocobase/plugin-workflow-dynamic-calculation	1.3.51	t	t	t	\N
17	2024-12-04 09:18:58.802+00	2024-12-04 09:19:00.156+00	workflow-loop	@nocobase/plugin-workflow-loop	1.3.51	t	t	t	\N
18	2024-12-04 09:18:58.803+00	2024-12-04 09:19:00.157+00	workflow-manual	@nocobase/plugin-workflow-manual	1.3.51	t	t	t	\N
19	2024-12-04 09:18:58.804+00	2024-12-04 09:19:00.157+00	workflow-parallel	@nocobase/plugin-workflow-parallel	1.3.51	t	t	t	\N
20	2024-12-04 09:18:58.805+00	2024-12-04 09:19:00.158+00	workflow-request	@nocobase/plugin-workflow-request	1.3.51	t	t	t	\N
21	2024-12-04 09:18:58.805+00	2024-12-04 09:19:00.159+00	workflow-sql	@nocobase/plugin-workflow-sql	1.3.51	t	t	t	\N
22	2024-12-04 09:18:58.806+00	2024-12-04 09:19:00.159+00	client	@nocobase/plugin-client	1.3.51	t	t	t	\N
23	2024-12-04 09:18:58.807+00	2024-12-04 09:19:00.16+00	action-import	@nocobase/plugin-action-import	1.3.51	t	t	t	\N
24	2024-12-04 09:18:58.808+00	2024-12-04 09:19:00.16+00	action-export	@nocobase/plugin-action-export	1.3.51	t	t	t	\N
25	2024-12-04 09:18:58.809+00	2024-12-04 09:19:00.161+00	block-iframe	@nocobase/plugin-block-iframe	1.3.51	t	t	t	\N
26	2024-12-04 09:18:58.81+00	2024-12-04 09:19:00.161+00	block-workbench	@nocobase/plugin-block-workbench	1.3.51	t	t	t	\N
27	2024-12-04 09:18:58.813+00	2024-12-04 09:19:00.162+00	field-formula	@nocobase/plugin-field-formula	1.3.51	t	t	t	\N
28	2024-12-04 09:18:58.814+00	2024-12-04 09:19:00.163+00	data-visualization	@nocobase/plugin-data-visualization	1.3.51	t	t	t	\N
29	2024-12-04 09:18:58.815+00	2024-12-04 09:19:00.163+00	auth	@nocobase/plugin-auth	1.3.51	t	t	t	\N
30	2024-12-04 09:18:58.816+00	2024-12-04 09:19:00.164+00	logger	@nocobase/plugin-logger	1.3.51	t	t	t	\N
31	2024-12-04 09:18:58.816+00	2024-12-04 09:19:00.164+00	action-custom-request	@nocobase/plugin-action-custom-request	1.3.51	t	t	t	\N
32	2024-12-04 09:18:58.817+00	2024-12-04 09:19:00.165+00	calendar	@nocobase/plugin-calendar	1.3.51	t	t	t	\N
33	2024-12-04 09:18:58.818+00	2024-12-04 09:19:00.165+00	action-bulk-update	@nocobase/plugin-action-bulk-update	1.3.51	t	t	t	\N
34	2024-12-04 09:18:58.818+00	2024-12-04 09:19:00.166+00	action-bulk-edit	@nocobase/plugin-action-bulk-edit	1.3.51	t	t	t	\N
35	2024-12-04 09:18:58.819+00	2024-12-04 09:19:00.166+00	gantt	@nocobase/plugin-gantt	1.3.51	t	t	t	\N
36	2024-12-04 09:18:58.82+00	2024-12-04 09:19:00.167+00	kanban	@nocobase/plugin-kanban	1.3.51	t	t	t	\N
37	2024-12-04 09:18:58.82+00	2024-12-04 09:19:00.167+00	action-duplicate	@nocobase/plugin-action-duplicate	1.3.51	t	t	t	\N
38	2024-12-04 09:18:58.821+00	2024-12-04 09:19:00.168+00	action-print	@nocobase/plugin-action-print	1.3.51	t	t	t	\N
39	2024-12-04 09:18:58.822+00	2024-12-04 09:19:00.168+00	collection-sql	@nocobase/plugin-collection-sql	1.3.51	t	t	t	\N
40	2024-12-04 09:18:58.823+00	2024-12-04 09:19:00.169+00	collection-tree	@nocobase/plugin-collection-tree	1.3.51	t	t	t	\N
55	2024-12-04 09:21:02.35+00	2024-12-04 09:21:02.35+00	@dtu-olp-2024/kafka-nocobase	@dtu-olp-2024/kafka-nocobase	1.1.8	\N	\N	\N	\N
54	2024-12-04 09:20:53.146+00	2024-12-04 09:21:45.004+00	@dtu-olp-2024/carousel-nocobase	@dtu-olp-2024/carousel-nocobase	1.0.1	t	t	\N	\N
59	2024-12-04 09:21:27.967+00	2024-12-04 09:21:59.65+00	@dtu-olp-2024/landing-page	@dtu-olp-2024/landing-page	1.0.0	t	t	\N	\N
58	2024-12-04 09:21:21.956+00	2024-12-04 09:22:05.568+00	@dtu-olp-2024/vietqr-nocobase	@dtu-olp-2024/vietqr-nocobase	1.0.1	t	t	\N	\N
60	2024-12-04 09:22:14.436+00	2024-12-04 09:22:20.366+00	@dtu-olp-2024/solidity-editor-nocobase	@dtu-olp-2024/solidity-editor-nocobase	1.0.0	t	t	\N	\N
56	2024-12-04 09:21:08.28+00	2024-12-04 09:22:28.387+00	@dtu-olp-2024/progress-nocobase	@dtu-olp-2024/progress-nocobase	1.0.1	t	t	\N	\N
57	2024-12-04 09:21:14.631+00	2024-12-04 09:22:34.281+00	@dtu-olp-2024/rich-block-nocobase	@dtu-olp-2024/rich-block-nocobase	1.0.1	t	t	\N	\N
\.


--
-- TOC entry 3785 (class 0 OID 16864)
-- Dependencies: 221
-- Data for Name: applicationVersion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."applicationVersion" (id, value) FROM stdin;
3	1.3.51
\.


--
-- TOC entry 3787 (class 0 OID 16868)
-- Dependencies: 223
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attachments (id, "createdAt", "updatedAt", title, filename, extname, size, mimetype, "storageId", path, meta, url, "createdById", "updatedById") FROM stdin;
1	2024-12-04 09:18:59.821+00	2024-12-04 09:18:59.821+00	nocobase-logo	ac7443fdfbb5b291a7d3f88a38281841.png	.png	11186	image/png	1		{}	/storage/uploads/ac7443fdfbb5b291a7d3f88a38281841.png	\N	\N
\.


--
-- TOC entry 3789 (class 0 OID 16875)
-- Dependencies: 225
-- Data for Name: authenticators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authenticators (id, "createdAt", "updatedAt", name, "authType", title, description, options, enabled, sort, "createdById", "updatedById") FROM stdin;
1	2024-12-04 09:19:00.141+00	2024-12-04 09:19:00.141+00	basic	Email/Password	\N	Sign in with username/email.	{"public":{"allowSignUp":true}}	t	1	\N	\N
\.


--
-- TOC entry 3791 (class 0 OID 16884)
-- Dependencies: 227
-- Data for Name: chinaRegions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."chinaRegions" ("createdAt", "updatedAt", code, name, "parentCode", level) FROM stdin;
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	11	北京市	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	12	天津市	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	13	河北省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	14	山西省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	15	内蒙古自治区	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	21	辽宁省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	22	吉林省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	23	黑龙江省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	31	上海市	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	32	江苏省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	33	浙江省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	34	安徽省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	35	福建省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	36	江西省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	37	山东省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	41	河南省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	42	湖北省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	43	湖南省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	44	广东省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	45	广西壮族自治区	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	46	海南省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	50	重庆市	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	51	四川省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	52	贵州省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	53	云南省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	54	西藏自治区	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	61	陕西省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	62	甘肃省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	63	青海省	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	64	宁夏回族自治区	\N	1
2024-12-04 09:19:00.005+00	2024-12-04 09:19:00.005+00	65	新疆维吾尔自治区	\N	1
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1101	市辖区	11	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1201	市辖区	12	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1301	石家庄市	13	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1302	唐山市	13	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1303	秦皇岛市	13	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1304	邯郸市	13	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1305	邢台市	13	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1306	保定市	13	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1307	张家口市	13	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1308	承德市	13	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1309	沧州市	13	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1310	廊坊市	13	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1311	衡水市	13	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1401	太原市	14	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1402	大同市	14	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1403	阳泉市	14	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1404	长治市	14	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1405	晋城市	14	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1406	朔州市	14	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1407	晋中市	14	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1408	运城市	14	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1409	忻州市	14	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1410	临汾市	14	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1411	吕梁市	14	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1501	呼和浩特市	15	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1502	包头市	15	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1503	乌海市	15	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1504	赤峰市	15	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1505	通辽市	15	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1506	鄂尔多斯市	15	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1507	呼伦贝尔市	15	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1508	巴彦淖尔市	15	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1509	乌兰察布市	15	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1522	兴安盟	15	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1525	锡林郭勒盟	15	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	1529	阿拉善盟	15	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2101	沈阳市	21	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2102	大连市	21	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2103	鞍山市	21	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2104	抚顺市	21	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2105	本溪市	21	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2106	丹东市	21	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2107	锦州市	21	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2108	营口市	21	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2109	阜新市	21	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2110	辽阳市	21	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2111	盘锦市	21	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2112	铁岭市	21	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2113	朝阳市	21	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2114	葫芦岛市	21	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2201	长春市	22	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2202	吉林市	22	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2203	四平市	22	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2204	辽源市	22	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2205	通化市	22	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2206	白山市	22	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2207	松原市	22	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2208	白城市	22	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2224	延边朝鲜族自治州	22	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2301	哈尔滨市	23	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2302	齐齐哈尔市	23	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2303	鸡西市	23	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2304	鹤岗市	23	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2305	双鸭山市	23	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2306	大庆市	23	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2307	伊春市	23	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2308	佳木斯市	23	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2309	七台河市	23	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2310	牡丹江市	23	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2311	黑河市	23	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2312	绥化市	23	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	2327	大兴安岭地区	23	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3101	市辖区	31	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3201	南京市	32	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3202	无锡市	32	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3203	徐州市	32	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3204	常州市	32	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3205	苏州市	32	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3206	南通市	32	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3207	连云港市	32	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3208	淮安市	32	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3209	盐城市	32	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3210	扬州市	32	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3211	镇江市	32	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3212	泰州市	32	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3213	宿迁市	32	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3301	杭州市	33	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3302	宁波市	33	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3303	温州市	33	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3304	嘉兴市	33	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3305	湖州市	33	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3306	绍兴市	33	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3307	金华市	33	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3308	衢州市	33	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3309	舟山市	33	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3310	台州市	33	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3311	丽水市	33	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3401	合肥市	34	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3402	芜湖市	34	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3403	蚌埠市	34	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3404	淮南市	34	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3405	马鞍山市	34	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3406	淮北市	34	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3407	铜陵市	34	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3408	安庆市	34	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3410	黄山市	34	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3411	滁州市	34	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3412	阜阳市	34	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3413	宿州市	34	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3415	六安市	34	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3416	亳州市	34	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3417	池州市	34	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3418	宣城市	34	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3501	福州市	35	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3502	厦门市	35	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3503	莆田市	35	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3504	三明市	35	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3505	泉州市	35	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3506	漳州市	35	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3507	南平市	35	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3508	龙岩市	35	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3509	宁德市	35	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3601	南昌市	36	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3602	景德镇市	36	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3603	萍乡市	36	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3604	九江市	36	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3605	新余市	36	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3606	鹰潭市	36	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3607	赣州市	36	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3608	吉安市	36	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3609	宜春市	36	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3610	抚州市	36	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3611	上饶市	36	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3701	济南市	37	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3702	青岛市	37	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3703	淄博市	37	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3704	枣庄市	37	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3705	东营市	37	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3706	烟台市	37	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3707	潍坊市	37	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3708	济宁市	37	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3709	泰安市	37	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3710	威海市	37	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3711	日照市	37	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3713	临沂市	37	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3714	德州市	37	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3715	聊城市	37	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3716	滨州市	37	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	3717	菏泽市	37	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4101	郑州市	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4102	开封市	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4103	洛阳市	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4104	平顶山市	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4105	安阳市	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4106	鹤壁市	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4107	新乡市	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4108	焦作市	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4109	濮阳市	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4110	许昌市	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4111	漯河市	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4112	三门峡市	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4113	南阳市	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4114	商丘市	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4115	信阳市	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4116	周口市	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4117	驻马店市	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4190	省直辖县级行政区划	41	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4201	武汉市	42	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4202	黄石市	42	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4203	十堰市	42	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4205	宜昌市	42	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4206	襄阳市	42	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4207	鄂州市	42	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4208	荆门市	42	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4209	孝感市	42	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4210	荆州市	42	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4211	黄冈市	42	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4212	咸宁市	42	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4213	随州市	42	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4228	恩施土家族苗族自治州	42	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4290	省直辖县级行政区划	42	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4301	长沙市	43	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4302	株洲市	43	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4303	湘潭市	43	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4304	衡阳市	43	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4305	邵阳市	43	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4306	岳阳市	43	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4307	常德市	43	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4308	张家界市	43	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4309	益阳市	43	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4310	郴州市	43	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4311	永州市	43	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4312	怀化市	43	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4313	娄底市	43	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4331	湘西土家族苗族自治州	43	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4401	广州市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4402	韶关市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4403	深圳市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4404	珠海市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4405	汕头市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4406	佛山市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4407	江门市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4408	湛江市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4409	茂名市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4412	肇庆市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4413	惠州市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4414	梅州市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4415	汕尾市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4416	河源市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4417	阳江市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4418	清远市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4419	东莞市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4420	中山市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4451	潮州市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4452	揭阳市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4453	云浮市	44	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4501	南宁市	45	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4502	柳州市	45	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4503	桂林市	45	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4504	梧州市	45	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4505	北海市	45	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4506	防城港市	45	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4507	钦州市	45	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4508	贵港市	45	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4509	玉林市	45	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4510	百色市	45	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4511	贺州市	45	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4512	河池市	45	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4513	来宾市	45	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4514	崇左市	45	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4601	海口市	46	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4602	三亚市	46	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4603	三沙市	46	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4604	儋州市	46	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	4690	省直辖县级行政区划	46	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5001	市辖区	50	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5002	县	50	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5101	成都市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5103	自贡市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5104	攀枝花市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5105	泸州市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5106	德阳市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5107	绵阳市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5108	广元市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5109	遂宁市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5110	内江市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5111	乐山市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5113	南充市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5114	眉山市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5115	宜宾市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5116	广安市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5117	达州市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5118	雅安市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5119	巴中市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5120	资阳市	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5132	阿坝藏族羌族自治州	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5133	甘孜藏族自治州	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5134	凉山彝族自治州	51	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5201	贵阳市	52	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5202	六盘水市	52	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5203	遵义市	52	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5204	安顺市	52	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5205	毕节市	52	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5206	铜仁市	52	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5223	黔西南布依族苗族自治州	52	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5226	黔东南苗族侗族自治州	52	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5227	黔南布依族苗族自治州	52	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5301	昆明市	53	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5303	曲靖市	53	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5304	玉溪市	53	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5305	保山市	53	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5306	昭通市	53	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5307	丽江市	53	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5308	普洱市	53	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5309	临沧市	53	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5323	楚雄彝族自治州	53	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5325	红河哈尼族彝族自治州	53	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5326	文山壮族苗族自治州	53	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5328	西双版纳傣族自治州	53	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5329	大理白族自治州	53	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5331	德宏傣族景颇族自治州	53	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5333	怒江傈僳族自治州	53	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5334	迪庆藏族自治州	53	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5401	拉萨市	54	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5402	日喀则市	54	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5403	昌都市	54	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5404	林芝市	54	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5405	山南市	54	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5406	那曲市	54	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	5425	阿里地区	54	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6101	西安市	61	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6102	铜川市	61	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6103	宝鸡市	61	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6104	咸阳市	61	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6105	渭南市	61	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6106	延安市	61	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6107	汉中市	61	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6108	榆林市	61	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6109	安康市	61	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6110	商洛市	61	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6201	兰州市	62	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6202	嘉峪关市	62	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6203	金昌市	62	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6204	白银市	62	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6205	天水市	62	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6206	武威市	62	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6207	张掖市	62	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6208	平凉市	62	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6209	酒泉市	62	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6210	庆阳市	62	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6211	定西市	62	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6212	陇南市	62	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6229	临夏回族自治州	62	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6230	甘南藏族自治州	62	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6301	西宁市	63	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6302	海东市	63	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6322	海北藏族自治州	63	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6323	黄南藏族自治州	63	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6325	海南藏族自治州	63	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6326	果洛藏族自治州	63	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6327	玉树藏族自治州	63	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6328	海西蒙古族藏族自治州	63	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6401	银川市	64	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6402	石嘴山市	64	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6403	吴忠市	64	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6404	固原市	64	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6405	中卫市	64	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6501	乌鲁木齐市	65	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6502	克拉玛依市	65	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6504	吐鲁番市	65	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6505	哈密市	65	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6523	昌吉回族自治州	65	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6527	博尔塔拉蒙古自治州	65	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6528	巴音郭楞蒙古自治州	65	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6529	阿克苏地区	65	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6530	克孜勒苏柯尔克孜自治州	65	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6531	喀什地区	65	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6532	和田地区	65	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6540	伊犁哈萨克自治州	65	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6542	塔城地区	65	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6543	阿勒泰地区	65	2
2024-12-04 09:19:00.009+00	2024-12-04 09:19:00.009+00	6590	自治区直辖县级行政区划	65	2
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	110101	东城区	1101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	110102	西城区	1101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	110105	朝阳区	1101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	110106	丰台区	1101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	110107	石景山区	1101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	110108	海淀区	1101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	110109	门头沟区	1101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	110111	房山区	1101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	110112	通州区	1101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	110113	顺义区	1101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	110114	昌平区	1101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	110115	大兴区	1101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	110116	怀柔区	1101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	110117	平谷区	1101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	110118	密云区	1101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	110119	延庆区	1101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	120101	和平区	1201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	120102	河东区	1201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	120103	河西区	1201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	120104	南开区	1201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	120105	河北区	1201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	120106	红桥区	1201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	120110	东丽区	1201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	120111	西青区	1201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	120112	津南区	1201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	120113	北辰区	1201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	120114	武清区	1201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	120115	宝坻区	1201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	120116	滨海新区	1201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	120117	宁河区	1201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	120118	静海区	1201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	120119	蓟州区	1201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130102	长安区	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130104	桥西区	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130105	新华区	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130107	井陉矿区	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130108	裕华区	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130109	藁城区	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130110	鹿泉区	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130111	栾城区	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130121	井陉县	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130123	正定县	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130125	行唐县	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130126	灵寿县	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130127	高邑县	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130128	深泽县	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130129	赞皇县	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130130	无极县	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130131	平山县	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130132	元氏县	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130133	赵县	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130171	石家庄高新技术产业开发区	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130172	石家庄循环化工园区	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130181	辛集市	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130183	晋州市	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130184	新乐市	1301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130202	路南区	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130203	路北区	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130204	古冶区	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130205	开平区	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130207	丰南区	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130208	丰润区	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130209	曹妃甸区	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130224	滦南县	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130225	乐亭县	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130227	迁西县	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130229	玉田县	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130271	河北唐山芦台经济开发区	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130272	唐山市汉沽管理区	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130273	唐山高新技术产业开发区	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130274	河北唐山海港经济开发区	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130281	遵化市	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130283	迁安市	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130284	滦州市	1302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130302	海港区	1303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130303	山海关区	1303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130304	北戴河区	1303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130306	抚宁区	1303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130321	青龙满族自治县	1303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130322	昌黎县	1303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130324	卢龙县	1303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130371	秦皇岛市经济技术开发区	1303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130372	北戴河新区	1303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130402	邯山区	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130403	丛台区	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130404	复兴区	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130406	峰峰矿区	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130407	肥乡区	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130408	永年区	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130423	临漳县	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130424	成安县	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130425	大名县	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130426	涉县	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130427	磁县	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130430	邱县	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130431	鸡泽县	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130432	广平县	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130433	馆陶县	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130434	魏县	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130435	曲周县	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130471	邯郸经济技术开发区	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130473	邯郸冀南新区	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130481	武安市	1304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130502	襄都区	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130503	信都区	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130505	任泽区	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130506	南和区	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130522	临城县	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130523	内丘县	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130524	柏乡县	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130525	隆尧县	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130528	宁晋县	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130529	巨鹿县	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130530	新河县	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130531	广宗县	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130532	平乡县	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130533	威县	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130534	清河县	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130535	临西县	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130571	河北邢台经济开发区	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130581	南宫市	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130582	沙河市	1305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130602	竞秀区	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130606	莲池区	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130607	满城区	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130608	清苑区	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130609	徐水区	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130623	涞水县	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130624	阜平县	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130626	定兴县	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130627	唐县	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130628	高阳县	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130629	容城县	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130630	涞源县	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130631	望都县	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130632	安新县	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130633	易县	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130634	曲阳县	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130635	蠡县	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130636	顺平县	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130637	博野县	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130638	雄县	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130671	保定高新技术产业开发区	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130672	保定白沟新城	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130681	涿州市	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130682	定州市	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130683	安国市	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130684	高碑店市	1306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130702	桥东区	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130703	桥西区	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130705	宣化区	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130706	下花园区	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130708	万全区	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130709	崇礼区	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130722	张北县	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130723	康保县	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130724	沽源县	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130725	尚义县	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130726	蔚县	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130727	阳原县	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130728	怀安县	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130730	怀来县	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130731	涿鹿县	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130732	赤城县	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130771	张家口经济开发区	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130772	张家口市察北管理区	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130773	张家口市塞北管理区	1307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130802	双桥区	1308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130803	双滦区	1308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130804	鹰手营子矿区	1308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130821	承德县	1308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130822	兴隆县	1308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130824	滦平县	1308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130825	隆化县	1308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130826	丰宁满族自治县	1308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130827	宽城满族自治县	1308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130828	围场满族蒙古族自治县	1308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130871	承德高新技术产业开发区	1308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130881	平泉市	1308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130902	新华区	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130903	运河区	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130921	沧县	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130922	青县	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130923	东光县	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130924	海兴县	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130925	盐山县	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130926	肃宁县	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130927	南皮县	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130928	吴桥县	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130929	献县	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130930	孟村回族自治县	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130971	河北沧州经济开发区	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130972	沧州高新技术产业开发区	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130973	沧州渤海新区	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130981	泊头市	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130982	任丘市	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130983	黄骅市	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	130984	河间市	1309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131002	安次区	1310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131003	广阳区	1310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131022	固安县	1310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131023	永清县	1310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131024	香河县	1310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131025	大城县	1310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131026	文安县	1310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131028	大厂回族自治县	1310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131071	廊坊经济技术开发区	1310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131081	霸州市	1310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131082	三河市	1310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131102	桃城区	1311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131103	冀州区	1311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131121	枣强县	1311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131122	武邑县	1311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131123	武强县	1311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131124	饶阳县	1311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131125	安平县	1311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131126	故城县	1311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131127	景县	1311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131128	阜城县	1311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131171	河北衡水高新技术产业开发区	1311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131172	衡水滨湖新区	1311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	131182	深州市	1311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140105	小店区	1401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140106	迎泽区	1401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140107	杏花岭区	1401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140108	尖草坪区	1401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140109	万柏林区	1401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140110	晋源区	1401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140121	清徐县	1401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140122	阳曲县	1401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140123	娄烦县	1401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140171	山西转型综合改革示范区	1401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140181	古交市	1401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140212	新荣区	1402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140213	平城区	1402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140214	云冈区	1402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140215	云州区	1402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140221	阳高县	1402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140222	天镇县	1402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140223	广灵县	1402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140224	灵丘县	1402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140225	浑源县	1402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140226	左云县	1402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140271	山西大同经济开发区	1402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140302	城区	1403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140303	矿区	1403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140311	郊区	1403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140321	平定县	1403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140322	盂县	1403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140403	潞州区	1404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140404	上党区	1404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140405	屯留区	1404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140406	潞城区	1404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140423	襄垣县	1404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140425	平顺县	1404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140426	黎城县	1404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140427	壶关县	1404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140428	长子县	1404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140429	武乡县	1404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140430	沁县	1404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140431	沁源县	1404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140502	城区	1405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140521	沁水县	1405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140522	阳城县	1405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140524	陵川县	1405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140525	泽州县	1405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140581	高平市	1405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140602	朔城区	1406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140603	平鲁区	1406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140621	山阴县	1406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140622	应县	1406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140623	右玉县	1406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140671	山西朔州经济开发区	1406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140681	怀仁市	1406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140702	榆次区	1407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140703	太谷区	1407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140721	榆社县	1407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140722	左权县	1407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140723	和顺县	1407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140724	昔阳县	1407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140725	寿阳县	1407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140727	祁县	1407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140728	平遥县	1407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140729	灵石县	1407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140781	介休市	1407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140802	盐湖区	1408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140821	临猗县	1408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140822	万荣县	1408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140823	闻喜县	1408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140824	稷山县	1408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140825	新绛县	1408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140826	绛县	1408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140827	垣曲县	1408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140828	夏县	1408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140829	平陆县	1408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140830	芮城县	1408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140881	永济市	1408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140882	河津市	1408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140902	忻府区	1409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140921	定襄县	1409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140922	五台县	1409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140923	代县	1409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140924	繁峙县	1409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140925	宁武县	1409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140926	静乐县	1409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140927	神池县	1409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140928	五寨县	1409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140929	岢岚县	1409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140930	河曲县	1409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140931	保德县	1409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140932	偏关县	1409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140971	五台山风景名胜区	1409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	140981	原平市	1409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141002	尧都区	1410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141021	曲沃县	1410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141022	翼城县	1410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141023	襄汾县	1410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141024	洪洞县	1410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141025	古县	1410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141026	安泽县	1410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141027	浮山县	1410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141028	吉县	1410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141029	乡宁县	1410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141030	大宁县	1410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141031	隰县	1410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141032	永和县	1410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141033	蒲县	1410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141034	汾西县	1410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141081	侯马市	1410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141082	霍州市	1410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141102	离石区	1411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141121	文水县	1411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141122	交城县	1411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141123	兴县	1411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141124	临县	1411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141125	柳林县	1411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141126	石楼县	1411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141127	岚县	1411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141128	方山县	1411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141129	中阳县	1411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141130	交口县	1411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141181	孝义市	1411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	141182	汾阳市	1411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150102	新城区	1501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150103	回民区	1501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150104	玉泉区	1501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150105	赛罕区	1501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150121	土默特左旗	1501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150122	托克托县	1501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150123	和林格尔县	1501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150124	清水河县	1501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150125	武川县	1501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150172	呼和浩特经济技术开发区	1501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150202	东河区	1502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150203	昆都仑区	1502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150204	青山区	1502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150205	石拐区	1502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150206	白云鄂博矿区	1502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150207	九原区	1502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150221	土默特右旗	1502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150222	固阳县	1502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150223	达尔罕茂明安联合旗	1502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150271	包头稀土高新技术产业开发区	1502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150302	海勃湾区	1503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150303	海南区	1503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150304	乌达区	1503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150402	红山区	1504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150403	元宝山区	1504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150404	松山区	1504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150421	阿鲁科尔沁旗	1504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150422	巴林左旗	1504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150423	巴林右旗	1504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150424	林西县	1504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150425	克什克腾旗	1504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150426	翁牛特旗	1504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150428	喀喇沁旗	1504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150429	宁城县	1504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150430	敖汉旗	1504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150502	科尔沁区	1505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150521	科尔沁左翼中旗	1505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150522	科尔沁左翼后旗	1505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150523	开鲁县	1505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150524	库伦旗	1505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150525	奈曼旗	1505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150526	扎鲁特旗	1505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150571	通辽经济技术开发区	1505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150581	霍林郭勒市	1505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150602	东胜区	1506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150603	康巴什区	1506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150621	达拉特旗	1506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150622	准格尔旗	1506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150623	鄂托克前旗	1506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150624	鄂托克旗	1506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150625	杭锦旗	1506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150626	乌审旗	1506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150627	伊金霍洛旗	1506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150702	海拉尔区	1507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150703	扎赉诺尔区	1507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150721	阿荣旗	1507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150722	莫力达瓦达斡尔族自治旗	1507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150723	鄂伦春自治旗	1507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150724	鄂温克族自治旗	1507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150725	陈巴尔虎旗	1507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150726	新巴尔虎左旗	1507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150727	新巴尔虎右旗	1507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150781	满洲里市	1507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150782	牙克石市	1507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150783	扎兰屯市	1507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150784	额尔古纳市	1507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150785	根河市	1507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150802	临河区	1508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150821	五原县	1508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150822	磴口县	1508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150823	乌拉特前旗	1508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150824	乌拉特中旗	1508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150825	乌拉特后旗	1508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150826	杭锦后旗	1508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150902	集宁区	1509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150921	卓资县	1509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150922	化德县	1509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150923	商都县	1509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150924	兴和县	1509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150925	凉城县	1509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150926	察哈尔右翼前旗	1509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150927	察哈尔右翼中旗	1509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150928	察哈尔右翼后旗	1509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150929	四子王旗	1509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	150981	丰镇市	1509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152201	乌兰浩特市	1522	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152202	阿尔山市	1522	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152221	科尔沁右翼前旗	1522	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152222	科尔沁右翼中旗	1522	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152223	扎赉特旗	1522	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152224	突泉县	1522	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152501	二连浩特市	1525	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152502	锡林浩特市	1525	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152522	阿巴嘎旗	1525	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152523	苏尼特左旗	1525	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152524	苏尼特右旗	1525	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152525	东乌珠穆沁旗	1525	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152526	西乌珠穆沁旗	1525	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152527	太仆寺旗	1525	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152528	镶黄旗	1525	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152529	正镶白旗	1525	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152530	正蓝旗	1525	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152531	多伦县	1525	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152571	乌拉盖管理区管委会	1525	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152921	阿拉善左旗	1529	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152922	阿拉善右旗	1529	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152923	额济纳旗	1529	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	152971	内蒙古阿拉善高新技术产业开发区	1529	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210102	和平区	2101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210103	沈河区	2101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210104	大东区	2101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210105	皇姑区	2101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210106	铁西区	2101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210111	苏家屯区	2101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210112	浑南区	2101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210113	沈北新区	2101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210114	于洪区	2101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210115	辽中区	2101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210123	康平县	2101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210124	法库县	2101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210181	新民市	2101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210202	中山区	2102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210203	西岗区	2102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210204	沙河口区	2102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210211	甘井子区	2102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210212	旅顺口区	2102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210213	金州区	2102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210214	普兰店区	2102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210224	长海县	2102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210281	瓦房店市	2102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210283	庄河市	2102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210302	铁东区	2103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210303	铁西区	2103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210304	立山区	2103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210311	千山区	2103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210321	台安县	2103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210323	岫岩满族自治县	2103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210381	海城市	2103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210402	新抚区	2104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210403	东洲区	2104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210404	望花区	2104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210411	顺城区	2104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210421	抚顺县	2104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210422	新宾满族自治县	2104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210423	清原满族自治县	2104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210502	平山区	2105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210503	溪湖区	2105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210504	明山区	2105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210505	南芬区	2105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210521	本溪满族自治县	2105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210522	桓仁满族自治县	2105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210602	元宝区	2106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210603	振兴区	2106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210604	振安区	2106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210624	宽甸满族自治县	2106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210681	东港市	2106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210682	凤城市	2106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210702	古塔区	2107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210703	凌河区	2107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210711	太和区	2107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210726	黑山县	2107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210727	义县	2107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210781	凌海市	2107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210782	北镇市	2107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210802	站前区	2108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210803	西市区	2108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210804	鲅鱼圈区	2108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210811	老边区	2108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210881	盖州市	2108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210882	大石桥市	2108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210902	海州区	2109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210903	新邱区	2109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210904	太平区	2109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210905	清河门区	2109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210911	细河区	2109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210921	阜新蒙古族自治县	2109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	210922	彰武县	2109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211002	白塔区	2110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211003	文圣区	2110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211004	宏伟区	2110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211005	弓长岭区	2110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211011	太子河区	2110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211021	辽阳县	2110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211081	灯塔市	2110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211102	双台子区	2111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211103	兴隆台区	2111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211104	大洼区	2111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211122	盘山县	2111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211202	银州区	2112	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211204	清河区	2112	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211221	铁岭县	2112	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211223	西丰县	2112	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211224	昌图县	2112	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211281	调兵山市	2112	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211282	开原市	2112	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211302	双塔区	2113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211303	龙城区	2113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211321	朝阳县	2113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211322	建平县	2113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211324	喀喇沁左翼蒙古族自治县	2113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211381	北票市	2113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211382	凌源市	2113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211402	连山区	2114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211403	龙港区	2114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211404	南票区	2114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211421	绥中县	2114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211422	建昌县	2114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	211481	兴城市	2114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220102	南关区	2201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220103	宽城区	2201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220104	朝阳区	2201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220105	二道区	2201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220106	绿园区	2201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220112	双阳区	2201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220113	九台区	2201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220122	农安县	2201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220171	长春经济技术开发区	2201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220172	长春净月高新技术产业开发区	2201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220173	长春高新技术产业开发区	2201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220174	长春汽车经济技术开发区	2201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220182	榆树市	2201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220183	德惠市	2201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220184	公主岭市	2201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220202	昌邑区	2202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220203	龙潭区	2202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220204	船营区	2202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220211	丰满区	2202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220221	永吉县	2202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220271	吉林经济开发区	2202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220272	吉林高新技术产业开发区	2202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220273	吉林中国新加坡食品区	2202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220281	蛟河市	2202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220282	桦甸市	2202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220283	舒兰市	2202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220284	磐石市	2202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220302	铁西区	2203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220303	铁东区	2203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220322	梨树县	2203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220323	伊通满族自治县	2203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220382	双辽市	2203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220402	龙山区	2204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220403	西安区	2204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220421	东丰县	2204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220422	东辽县	2204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220502	东昌区	2205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220503	二道江区	2205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220521	通化县	2205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220523	辉南县	2205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220524	柳河县	2205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220581	梅河口市	2205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220582	集安市	2205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220602	浑江区	2206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220605	江源区	2206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220621	抚松县	2206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220622	靖宇县	2206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220623	长白朝鲜族自治县	2206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220681	临江市	2206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220702	宁江区	2207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220721	前郭尔罗斯蒙古族自治县	2207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220722	长岭县	2207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220723	乾安县	2207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220771	吉林松原经济开发区	2207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220781	扶余市	2207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220802	洮北区	2208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220821	镇赉县	2208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220822	通榆县	2208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220871	吉林白城经济开发区	2208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220881	洮南市	2208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	220882	大安市	2208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	222401	延吉市	2224	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	222402	图们市	2224	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	222403	敦化市	2224	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	222404	珲春市	2224	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	222405	龙井市	2224	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	222406	和龙市	2224	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	222424	汪清县	2224	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	222426	安图县	2224	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230102	道里区	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230103	南岗区	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230104	道外区	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230108	平房区	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230109	松北区	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230110	香坊区	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230111	呼兰区	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230112	阿城区	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230113	双城区	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230123	依兰县	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230124	方正县	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230125	宾县	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230126	巴彦县	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230127	木兰县	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230128	通河县	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230129	延寿县	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230183	尚志市	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230184	五常市	2301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230202	龙沙区	2302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230203	建华区	2302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230204	铁锋区	2302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230205	昂昂溪区	2302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230206	富拉尔基区	2302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230207	碾子山区	2302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230208	梅里斯达斡尔族区	2302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230221	龙江县	2302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230223	依安县	2302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230224	泰来县	2302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230225	甘南县	2302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230227	富裕县	2302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230229	克山县	2302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230230	克东县	2302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230231	拜泉县	2302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230281	讷河市	2302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230302	鸡冠区	2303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230303	恒山区	2303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230304	滴道区	2303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230305	梨树区	2303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230306	城子河区	2303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230307	麻山区	2303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230321	鸡东县	2303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230381	虎林市	2303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230382	密山市	2303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230402	向阳区	2304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230403	工农区	2304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230404	南山区	2304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230405	兴安区	2304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230406	东山区	2304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230407	兴山区	2304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230421	萝北县	2304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230422	绥滨县	2304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230502	尖山区	2305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230503	岭东区	2305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230505	四方台区	2305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230506	宝山区	2305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230521	集贤县	2305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230522	友谊县	2305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230523	宝清县	2305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230524	饶河县	2305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230602	萨尔图区	2306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230603	龙凤区	2306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230604	让胡路区	2306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230605	红岗区	2306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230606	大同区	2306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230621	肇州县	2306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230622	肇源县	2306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230623	林甸县	2306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230624	杜尔伯特蒙古族自治县	2306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230671	大庆高新技术产业开发区	2306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230717	伊美区	2307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230718	乌翠区	2307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230719	友好区	2307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230722	嘉荫县	2307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230723	汤旺县	2307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230724	丰林县	2307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230725	大箐山县	2307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230726	南岔县	2307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230751	金林区	2307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230781	铁力市	2307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230803	向阳区	2308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230804	前进区	2308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230805	东风区	2308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230811	郊区	2308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230822	桦南县	2308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230826	桦川县	2308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230828	汤原县	2308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230881	同江市	2308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230882	富锦市	2308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230883	抚远市	2308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230902	新兴区	2309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230903	桃山区	2309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230904	茄子河区	2309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	230921	勃利县	2309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231002	东安区	2310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231003	阳明区	2310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231004	爱民区	2310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231005	西安区	2310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231025	林口县	2310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231081	绥芬河市	2310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231083	海林市	2310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231084	宁安市	2310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231085	穆棱市	2310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231086	东宁市	2310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231102	爱辉区	2311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231123	逊克县	2311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231124	孙吴县	2311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231181	北安市	2311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231182	五大连池市	2311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231183	嫩江市	2311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231202	北林区	2312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231221	望奎县	2312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231222	兰西县	2312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231223	青冈县	2312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231224	庆安县	2312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231225	明水县	2312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231226	绥棱县	2312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231281	安达市	2312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231282	肇东市	2312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	231283	海伦市	2312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	232701	漠河市	2327	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	232721	呼玛县	2327	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	232722	塔河县	2327	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	232761	加格达奇区	2327	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	232762	松岭区	2327	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	232763	新林区	2327	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	232764	呼中区	2327	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	310101	黄浦区	3101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	310104	徐汇区	3101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	310105	长宁区	3101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	310106	静安区	3101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	310107	普陀区	3101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	310109	虹口区	3101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	310110	杨浦区	3101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	310112	闵行区	3101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	310113	宝山区	3101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	310114	嘉定区	3101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	310115	浦东新区	3101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	310116	金山区	3101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	310117	松江区	3101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	310118	青浦区	3101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	310120	奉贤区	3101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	310151	崇明区	3101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320102	玄武区	3201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320104	秦淮区	3201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320105	建邺区	3201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320106	鼓楼区	3201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320111	浦口区	3201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320113	栖霞区	3201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320114	雨花台区	3201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320115	江宁区	3201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320116	六合区	3201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320117	溧水区	3201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320118	高淳区	3201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320205	锡山区	3202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320206	惠山区	3202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320211	滨湖区	3202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320213	梁溪区	3202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320214	新吴区	3202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320281	江阴市	3202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320282	宜兴市	3202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320302	鼓楼区	3203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320303	云龙区	3203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320305	贾汪区	3203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320311	泉山区	3203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320312	铜山区	3203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320321	丰县	3203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320322	沛县	3203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320324	睢宁县	3203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320371	徐州经济技术开发区	3203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320381	新沂市	3203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320382	邳州市	3203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320402	天宁区	3204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320404	钟楼区	3204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320411	新北区	3204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320412	武进区	3204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320413	金坛区	3204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320481	溧阳市	3204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320505	虎丘区	3205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320506	吴中区	3205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320507	相城区	3205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320508	姑苏区	3205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320509	吴江区	3205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320576	苏州工业园区	3205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320581	常熟市	3205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320582	张家港市	3205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320583	昆山市	3205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320585	太仓市	3205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320612	通州区	3206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320613	崇川区	3206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320614	海门区	3206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320623	如东县	3206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320671	南通经济技术开发区	3206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320681	启东市	3206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320682	如皋市	3206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320685	海安市	3206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320703	连云区	3207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320706	海州区	3207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320707	赣榆区	3207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320722	东海县	3207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320723	灌云县	3207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320724	灌南县	3207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320771	连云港经济技术开发区	3207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320803	淮安区	3208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320804	淮阴区	3208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320812	清江浦区	3208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320813	洪泽区	3208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320826	涟水县	3208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320830	盱眙县	3208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320831	金湖县	3208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320871	淮安经济技术开发区	3208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320902	亭湖区	3209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320903	盐都区	3209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320904	大丰区	3209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320921	响水县	3209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320922	滨海县	3209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320923	阜宁县	3209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320924	射阳县	3209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320925	建湖县	3209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320971	盐城经济技术开发区	3209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	320981	东台市	3209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321002	广陵区	3210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321003	邗江区	3210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321012	江都区	3210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321023	宝应县	3210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321071	扬州经济技术开发区	3210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321081	仪征市	3210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321084	高邮市	3210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321102	京口区	3211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321111	润州区	3211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321112	丹徒区	3211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321171	镇江新区	3211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321181	丹阳市	3211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321182	扬中市	3211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321183	句容市	3211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321202	海陵区	3212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321203	高港区	3212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321204	姜堰区	3212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321281	兴化市	3212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321282	靖江市	3212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321283	泰兴市	3212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321302	宿城区	3213	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321311	宿豫区	3213	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321322	沭阳县	3213	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321323	泗阳县	3213	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321324	泗洪县	3213	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	321371	宿迁经济技术开发区	3213	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330102	上城区	3301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330105	拱墅区	3301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330106	西湖区	3301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330108	滨江区	3301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330109	萧山区	3301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330110	余杭区	3301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330111	富阳区	3301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330112	临安区	3301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330113	临平区	3301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330114	钱塘区	3301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330122	桐庐县	3301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330127	淳安县	3301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330182	建德市	3301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330203	海曙区	3302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330205	江北区	3302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330206	北仑区	3302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330211	镇海区	3302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330212	鄞州区	3302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330213	奉化区	3302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330225	象山县	3302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330226	宁海县	3302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330281	余姚市	3302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330282	慈溪市	3302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330302	鹿城区	3303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330303	龙湾区	3303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330304	瓯海区	3303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330305	洞头区	3303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330324	永嘉县	3303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330326	平阳县	3303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330327	苍南县	3303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330328	文成县	3303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330329	泰顺县	3303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330381	瑞安市	3303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330382	乐清市	3303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330383	龙港市	3303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330402	南湖区	3304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330411	秀洲区	3304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330421	嘉善县	3304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330424	海盐县	3304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330481	海宁市	3304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330482	平湖市	3304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330483	桐乡市	3304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330502	吴兴区	3305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330503	南浔区	3305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330521	德清县	3305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330522	长兴县	3305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330523	安吉县	3305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330602	越城区	3306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330603	柯桥区	3306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330604	上虞区	3306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330624	新昌县	3306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330681	诸暨市	3306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330683	嵊州市	3306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330702	婺城区	3307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330703	金东区	3307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330723	武义县	3307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330726	浦江县	3307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330727	磐安县	3307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330781	兰溪市	3307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330782	义乌市	3307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330783	东阳市	3307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330784	永康市	3307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330802	柯城区	3308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330803	衢江区	3308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330822	常山县	3308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330824	开化县	3308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330825	龙游县	3308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330881	江山市	3308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330902	定海区	3309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330903	普陀区	3309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330921	岱山县	3309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	330922	嵊泗县	3309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331002	椒江区	3310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331003	黄岩区	3310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331004	路桥区	3310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331022	三门县	3310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331023	天台县	3310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331024	仙居县	3310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331081	温岭市	3310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331082	临海市	3310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331083	玉环市	3310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331102	莲都区	3311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331121	青田县	3311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331122	缙云县	3311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331123	遂昌县	3311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331124	松阳县	3311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331125	云和县	3311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331126	庆元县	3311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331127	景宁畲族自治县	3311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	331181	龙泉市	3311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340102	瑶海区	3401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340103	庐阳区	3401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340104	蜀山区	3401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340111	包河区	3401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340121	长丰县	3401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340122	肥东县	3401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340123	肥西县	3401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340124	庐江县	3401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340176	合肥高新技术产业开发区	3401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340177	合肥经济技术开发区	3401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340178	合肥新站高新技术产业开发区	3401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340181	巢湖市	3401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340202	镜湖区	3402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340207	鸠江区	3402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340209	弋江区	3402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340210	湾沚区	3402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340212	繁昌区	3402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340223	南陵县	3402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340271	芜湖经济技术开发区	3402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340272	安徽芜湖三山经济开发区	3402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340281	无为市	3402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340302	龙子湖区	3403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340303	蚌山区	3403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340304	禹会区	3403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340311	淮上区	3403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340321	怀远县	3403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340322	五河县	3403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340323	固镇县	3403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340371	蚌埠市高新技术开发区	3403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340372	蚌埠市经济开发区	3403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340402	大通区	3404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340403	田家庵区	3404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340404	谢家集区	3404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340405	八公山区	3404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340406	潘集区	3404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340421	凤台县	3404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340422	寿县	3404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340503	花山区	3405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340504	雨山区	3405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340506	博望区	3405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340521	当涂县	3405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340522	含山县	3405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340523	和县	3405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340602	杜集区	3406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340603	相山区	3406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340604	烈山区	3406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340621	濉溪县	3406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340705	铜官区	3407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340706	义安区	3407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340711	郊区	3407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340722	枞阳县	3407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340802	迎江区	3408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340803	大观区	3408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340811	宜秀区	3408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340822	怀宁县	3408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340825	太湖县	3408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340826	宿松县	3408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340827	望江县	3408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340828	岳西县	3408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340871	安徽安庆经济开发区	3408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340881	桐城市	3408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	340882	潜山市	3408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341002	屯溪区	3410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341003	黄山区	3410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341004	徽州区	3410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341021	歙县	3410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341022	休宁县	3410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341023	黟县	3410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341024	祁门县	3410	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341102	琅琊区	3411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341103	南谯区	3411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341122	来安县	3411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341124	全椒县	3411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341125	定远县	3411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341126	凤阳县	3411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341171	中新苏滁高新技术产业开发区	3411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341172	滁州经济技术开发区	3411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341181	天长市	3411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341182	明光市	3411	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341202	颍州区	3412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341203	颍东区	3412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341204	颍泉区	3412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341221	临泉县	3412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341222	太和县	3412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341225	阜南县	3412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341226	颍上县	3412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341271	阜阳合肥现代产业园区	3412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341272	阜阳经济技术开发区	3412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341282	界首市	3412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341302	埇桥区	3413	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341321	砀山县	3413	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341322	萧县	3413	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341323	灵璧县	3413	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341324	泗县	3413	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341371	宿州马鞍山现代产业园区	3413	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341372	宿州经济技术开发区	3413	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341502	金安区	3415	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341503	裕安区	3415	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341504	叶集区	3415	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341522	霍邱县	3415	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341523	舒城县	3415	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341524	金寨县	3415	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341525	霍山县	3415	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341602	谯城区	3416	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341621	涡阳县	3416	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341622	蒙城县	3416	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341623	利辛县	3416	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341702	贵池区	3417	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341721	东至县	3417	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341722	石台县	3417	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341723	青阳县	3417	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341802	宣州区	3418	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341821	郎溪县	3418	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341823	泾县	3418	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341824	绩溪县	3418	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341825	旌德县	3418	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341871	宣城市经济开发区	3418	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341881	宁国市	3418	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	341882	广德市	3418	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350102	鼓楼区	3501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350103	台江区	3501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350104	仓山区	3501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350105	马尾区	3501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350111	晋安区	3501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350112	长乐区	3501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350121	闽侯县	3501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350122	连江县	3501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350123	罗源县	3501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350124	闽清县	3501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350125	永泰县	3501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350128	平潭县	3501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350181	福清市	3501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350203	思明区	3502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350205	海沧区	3502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350206	湖里区	3502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350211	集美区	3502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350212	同安区	3502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350213	翔安区	3502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350302	城厢区	3503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350303	涵江区	3503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350304	荔城区	3503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350305	秀屿区	3503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350322	仙游县	3503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350404	三元区	3504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350405	沙县区	3504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350421	明溪县	3504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350423	清流县	3504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350424	宁化县	3504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350425	大田县	3504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350426	尤溪县	3504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350428	将乐县	3504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350429	泰宁县	3504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350430	建宁县	3504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350481	永安市	3504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350502	鲤城区	3505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350503	丰泽区	3505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350504	洛江区	3505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350505	泉港区	3505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350521	惠安县	3505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350524	安溪县	3505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350525	永春县	3505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350526	德化县	3505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350527	金门县	3505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350581	石狮市	3505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350582	晋江市	3505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350583	南安市	3505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350602	芗城区	3506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350603	龙文区	3506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350604	龙海区	3506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350605	长泰区	3506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350622	云霄县	3506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350623	漳浦县	3506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350624	诏安县	3506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350626	东山县	3506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350627	南靖县	3506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350628	平和县	3506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350629	华安县	3506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350702	延平区	3507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350703	建阳区	3507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350721	顺昌县	3507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350722	浦城县	3507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350723	光泽县	3507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350724	松溪县	3507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350725	政和县	3507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350781	邵武市	3507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350782	武夷山市	3507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350783	建瓯市	3507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350802	新罗区	3508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350803	永定区	3508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350821	长汀县	3508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350823	上杭县	3508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350824	武平县	3508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350825	连城县	3508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350881	漳平市	3508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350902	蕉城区	3509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350921	霞浦县	3509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350922	古田县	3509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350923	屏南县	3509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350924	寿宁县	3509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350925	周宁县	3509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350926	柘荣县	3509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350981	福安市	3509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	350982	福鼎市	3509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360102	东湖区	3601	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360103	西湖区	3601	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360104	青云谱区	3601	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360111	青山湖区	3601	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360112	新建区	3601	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360113	红谷滩区	3601	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360121	南昌县	3601	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360123	安义县	3601	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360124	进贤县	3601	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360202	昌江区	3602	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360203	珠山区	3602	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360222	浮梁县	3602	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360281	乐平市	3602	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360302	安源区	3603	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360313	湘东区	3603	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360321	莲花县	3603	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360322	上栗县	3603	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360323	芦溪县	3603	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360402	濂溪区	3604	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360403	浔阳区	3604	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360404	柴桑区	3604	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360423	武宁县	3604	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360424	修水县	3604	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360425	永修县	3604	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360426	德安县	3604	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360428	都昌县	3604	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360429	湖口县	3604	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360430	彭泽县	3604	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360481	瑞昌市	3604	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360482	共青城市	3604	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360483	庐山市	3604	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360502	渝水区	3605	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360521	分宜县	3605	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360602	月湖区	3606	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360603	余江区	3606	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360681	贵溪市	3606	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360702	章贡区	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360703	南康区	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360704	赣县区	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360722	信丰县	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360723	大余县	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360724	上犹县	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360725	崇义县	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360726	安远县	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360728	定南县	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360729	全南县	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360730	宁都县	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360731	于都县	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360732	兴国县	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360733	会昌县	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360734	寻乌县	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360735	石城县	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360781	瑞金市	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360783	龙南市	3607	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360802	吉州区	3608	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360803	青原区	3608	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360821	吉安县	3608	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360822	吉水县	3608	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360823	峡江县	3608	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360824	新干县	3608	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360825	永丰县	3608	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360826	泰和县	3608	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360827	遂川县	3608	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360828	万安县	3608	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360829	安福县	3608	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360830	永新县	3608	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360881	井冈山市	3608	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360902	袁州区	3609	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360921	奉新县	3609	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360922	万载县	3609	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360923	上高县	3609	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360924	宜丰县	3609	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360925	靖安县	3609	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360926	铜鼓县	3609	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360981	丰城市	3609	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360982	樟树市	3609	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	360983	高安市	3609	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361002	临川区	3610	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361003	东乡区	3610	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361021	南城县	3610	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361022	黎川县	3610	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361023	南丰县	3610	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361024	崇仁县	3610	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361025	乐安县	3610	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361026	宜黄县	3610	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361027	金溪县	3610	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361028	资溪县	3610	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361030	广昌县	3610	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361102	信州区	3611	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361103	广丰区	3611	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361104	广信区	3611	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361123	玉山县	3611	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361124	铅山县	3611	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361125	横峰县	3611	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361126	弋阳县	3611	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361127	余干县	3611	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361128	鄱阳县	3611	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361129	万年县	3611	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361130	婺源县	3611	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	361181	德兴市	3611	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370102	历下区	3701	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370103	市中区	3701	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370104	槐荫区	3701	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370105	天桥区	3701	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370112	历城区	3701	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370113	长清区	3701	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370114	章丘区	3701	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370115	济阳区	3701	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370116	莱芜区	3701	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370117	钢城区	3701	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370124	平阴县	3701	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370126	商河县	3701	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370176	济南高新技术产业开发区	3701	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370202	市南区	3702	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370203	市北区	3702	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370211	黄岛区	3702	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370212	崂山区	3702	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370213	李沧区	3702	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370214	城阳区	3702	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370215	即墨区	3702	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370281	胶州市	3702	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370283	平度市	3702	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370285	莱西市	3702	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370302	淄川区	3703	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370303	张店区	3703	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370304	博山区	3703	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370305	临淄区	3703	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370306	周村区	3703	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370321	桓台县	3703	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370322	高青县	3703	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370323	沂源县	3703	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370402	市中区	3704	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370403	薛城区	3704	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370404	峄城区	3704	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370405	台儿庄区	3704	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370406	山亭区	3704	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370481	滕州市	3704	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370502	东营区	3705	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370503	河口区	3705	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370505	垦利区	3705	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370522	利津县	3705	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370523	广饶县	3705	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370571	东营经济技术开发区	3705	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370572	东营港经济开发区	3705	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370602	芝罘区	3706	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370611	福山区	3706	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370612	牟平区	3706	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370613	莱山区	3706	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370614	蓬莱区	3706	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370671	烟台高新技术产业开发区	3706	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370676	烟台经济技术开发区	3706	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370681	龙口市	3706	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370682	莱阳市	3706	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370683	莱州市	3706	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370685	招远市	3706	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370686	栖霞市	3706	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370687	海阳市	3706	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370702	潍城区	3707	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370703	寒亭区	3707	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370704	坊子区	3707	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370705	奎文区	3707	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370724	临朐县	3707	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370725	昌乐县	3707	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370772	潍坊滨海经济技术开发区	3707	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370781	青州市	3707	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370782	诸城市	3707	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370783	寿光市	3707	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370784	安丘市	3707	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370785	高密市	3707	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370786	昌邑市	3707	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370811	任城区	3708	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370812	兖州区	3708	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370826	微山县	3708	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370827	鱼台县	3708	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370828	金乡县	3708	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370829	嘉祥县	3708	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370830	汶上县	3708	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370831	泗水县	3708	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370832	梁山县	3708	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370871	济宁高新技术产业开发区	3708	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370881	曲阜市	3708	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370883	邹城市	3708	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370902	泰山区	3709	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370911	岱岳区	3709	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370921	宁阳县	3709	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370923	东平县	3709	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370982	新泰市	3709	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	370983	肥城市	3709	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371002	环翠区	3710	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371003	文登区	3710	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371071	威海火炬高技术产业开发区	3710	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371072	威海经济技术开发区	3710	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371073	威海临港经济技术开发区	3710	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371082	荣成市	3710	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371083	乳山市	3710	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371102	东港区	3711	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371103	岚山区	3711	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371121	五莲县	3711	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371122	莒县	3711	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371171	日照经济技术开发区	3711	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371302	兰山区	3713	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371311	罗庄区	3713	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371312	河东区	3713	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371321	沂南县	3713	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371322	郯城县	3713	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371323	沂水县	3713	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371324	兰陵县	3713	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371325	费县	3713	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371326	平邑县	3713	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371327	莒南县	3713	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371328	蒙阴县	3713	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371329	临沭县	3713	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371371	临沂高新技术产业开发区	3713	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371402	德城区	3714	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371403	陵城区	3714	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371422	宁津县	3714	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371423	庆云县	3714	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371424	临邑县	3714	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371425	齐河县	3714	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371426	平原县	3714	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371427	夏津县	3714	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371428	武城县	3714	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371471	德州天衢新区	3714	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371481	乐陵市	3714	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371482	禹城市	3714	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371502	东昌府区	3715	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371503	茌平区	3715	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371521	阳谷县	3715	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371522	莘县	3715	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371524	东阿县	3715	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371525	冠县	3715	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371526	高唐县	3715	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371581	临清市	3715	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371602	滨城区	3716	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371603	沾化区	3716	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371621	惠民县	3716	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371622	阳信县	3716	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371623	无棣县	3716	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371625	博兴县	3716	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371681	邹平市	3716	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371702	牡丹区	3717	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371703	定陶区	3717	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371721	曹县	3717	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371722	单县	3717	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371723	成武县	3717	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371724	巨野县	3717	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371725	郓城县	3717	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371726	鄄城县	3717	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371728	东明县	3717	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371771	菏泽经济技术开发区	3717	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	371772	菏泽高新技术开发区	3717	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410102	中原区	4101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410103	二七区	4101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410104	管城回族区	4101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410105	金水区	4101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410106	上街区	4101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410108	惠济区	4101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410122	中牟县	4101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410171	郑州经济技术开发区	4101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410172	郑州高新技术产业开发区	4101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410173	郑州航空港经济综合实验区	4101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410181	巩义市	4101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410182	荥阳市	4101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410183	新密市	4101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410184	新郑市	4101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410185	登封市	4101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410202	龙亭区	4102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410203	顺河回族区	4102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410204	鼓楼区	4102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410205	禹王台区	4102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410212	祥符区	4102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410221	杞县	4102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410222	通许县	4102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410223	尉氏县	4102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410225	兰考县	4102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410302	老城区	4103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410303	西工区	4103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410304	瀍河回族区	4103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410305	涧西区	4103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410307	偃师区	4103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410308	孟津区	4103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410311	洛龙区	4103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410323	新安县	4103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410324	栾川县	4103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410325	嵩县	4103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410326	汝阳县	4103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410327	宜阳县	4103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410328	洛宁县	4103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410329	伊川县	4103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410371	洛阳高新技术产业开发区	4103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410402	新华区	4104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410403	卫东区	4104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410404	石龙区	4104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410411	湛河区	4104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410421	宝丰县	4104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410422	叶县	4104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410423	鲁山县	4104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410425	郏县	4104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410471	平顶山高新技术产业开发区	4104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410472	平顶山市城乡一体化示范区	4104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410481	舞钢市	4104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410482	汝州市	4104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410502	文峰区	4105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410503	北关区	4105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410505	殷都区	4105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410506	龙安区	4105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410522	安阳县	4105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410523	汤阴县	4105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410526	滑县	4105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410527	内黄县	4105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410571	安阳高新技术产业开发区	4105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410581	林州市	4105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410602	鹤山区	4106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410603	山城区	4106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410611	淇滨区	4106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410621	浚县	4106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410622	淇县	4106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410671	鹤壁经济技术开发区	4106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410702	红旗区	4107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410703	卫滨区	4107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410704	凤泉区	4107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410711	牧野区	4107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410721	新乡县	4107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410724	获嘉县	4107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410725	原阳县	4107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410726	延津县	4107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410727	封丘县	4107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410771	新乡高新技术产业开发区	4107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410772	新乡经济技术开发区	4107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410773	新乡市平原城乡一体化示范区	4107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410781	卫辉市	4107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410782	辉县市	4107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410783	长垣市	4107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410802	解放区	4108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410803	中站区	4108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410804	马村区	4108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410811	山阳区	4108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410821	修武县	4108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410822	博爱县	4108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410823	武陟县	4108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410825	温县	4108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410871	焦作城乡一体化示范区	4108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410882	沁阳市	4108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410883	孟州市	4108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410902	华龙区	4109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410922	清丰县	4109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410923	南乐县	4109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410926	范县	4109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410927	台前县	4109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410928	濮阳县	4109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410971	河南濮阳工业园区	4109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	410972	濮阳经济技术开发区	4109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411002	魏都区	4110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411003	建安区	4110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411024	鄢陵县	4110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411025	襄城县	4110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411071	许昌经济技术开发区	4110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411081	禹州市	4110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411082	长葛市	4110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411102	源汇区	4111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411103	郾城区	4111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411104	召陵区	4111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411121	舞阳县	4111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411122	临颍县	4111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411171	漯河经济技术开发区	4111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411202	湖滨区	4112	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411203	陕州区	4112	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411221	渑池县	4112	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411224	卢氏县	4112	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411271	河南三门峡经济开发区	4112	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411281	义马市	4112	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411282	灵宝市	4112	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411302	宛城区	4113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411303	卧龙区	4113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411321	南召县	4113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411322	方城县	4113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411323	西峡县	4113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411324	镇平县	4113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411325	内乡县	4113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411326	淅川县	4113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411327	社旗县	4113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411328	唐河县	4113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411329	新野县	4113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411330	桐柏县	4113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411371	南阳高新技术产业开发区	4113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411372	南阳市城乡一体化示范区	4113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411381	邓州市	4113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411402	梁园区	4114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411403	睢阳区	4114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411421	民权县	4114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411422	睢县	4114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411423	宁陵县	4114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411424	柘城县	4114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411425	虞城县	4114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411426	夏邑县	4114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411471	豫东综合物流产业聚集区	4114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411472	河南商丘经济开发区	4114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411481	永城市	4114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411502	浉河区	4115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411503	平桥区	4115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411521	罗山县	4115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411522	光山县	4115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411523	新县	4115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411524	商城县	4115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411525	固始县	4115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411526	潢川县	4115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411527	淮滨县	4115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411528	息县	4115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411571	信阳高新技术产业开发区	4115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411602	川汇区	4116	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411603	淮阳区	4116	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411621	扶沟县	4116	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411622	西华县	4116	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411623	商水县	4116	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411624	沈丘县	4116	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411625	郸城县	4116	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411627	太康县	4116	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411628	鹿邑县	4116	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411671	周口临港开发区	4116	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411681	项城市	4116	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411702	驿城区	4117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411721	西平县	4117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411722	上蔡县	4117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411723	平舆县	4117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411724	正阳县	4117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411725	确山县	4117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411726	泌阳县	4117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411727	汝南县	4117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411728	遂平县	4117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411729	新蔡县	4117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	411771	河南驻马店经济开发区	4117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	419001	济源市	4190	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420102	江岸区	4201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420103	江汉区	4201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420104	硚口区	4201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420105	汉阳区	4201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420106	武昌区	4201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420107	青山区	4201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420111	洪山区	4201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420112	东西湖区	4201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420113	汉南区	4201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420114	蔡甸区	4201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420115	江夏区	4201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420116	黄陂区	4201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420117	新洲区	4201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420202	黄石港区	4202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420203	西塞山区	4202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420204	下陆区	4202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420205	铁山区	4202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420222	阳新县	4202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420281	大冶市	4202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420302	茅箭区	4203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420303	张湾区	4203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420304	郧阳区	4203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420322	郧西县	4203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420323	竹山县	4203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420324	竹溪县	4203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420325	房县	4203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420381	丹江口市	4203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420502	西陵区	4205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420503	伍家岗区	4205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420504	点军区	4205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420505	猇亭区	4205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420506	夷陵区	4205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420525	远安县	4205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420526	兴山县	4205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420527	秭归县	4205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420528	长阳土家族自治县	4205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420529	五峰土家族自治县	4205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420581	宜都市	4205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420582	当阳市	4205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420583	枝江市	4205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420602	襄城区	4206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420606	樊城区	4206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420607	襄州区	4206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420624	南漳县	4206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420625	谷城县	4206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420626	保康县	4206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420682	老河口市	4206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420683	枣阳市	4206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420684	宜城市	4206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420702	梁子湖区	4207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420703	华容区	4207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420704	鄂城区	4207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420802	东宝区	4208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420804	掇刀区	4208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420822	沙洋县	4208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420881	钟祥市	4208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420882	京山市	4208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420902	孝南区	4209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420921	孝昌县	4209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420922	大悟县	4209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420923	云梦县	4209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420981	应城市	4209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420982	安陆市	4209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	420984	汉川市	4209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421002	沙市区	4210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421003	荆州区	4210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421022	公安县	4210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421024	江陵县	4210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421071	荆州经济技术开发区	4210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421081	石首市	4210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421083	洪湖市	4210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421087	松滋市	4210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421088	监利市	4210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421102	黄州区	4211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421121	团风县	4211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421122	红安县	4211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421123	罗田县	4211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421124	英山县	4211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421125	浠水县	4211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421126	蕲春县	4211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421127	黄梅县	4211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421171	龙感湖管理区	4211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421181	麻城市	4211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421182	武穴市	4211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421202	咸安区	4212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421221	嘉鱼县	4212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421222	通城县	4212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421223	崇阳县	4212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421224	通山县	4212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421281	赤壁市	4212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421303	曾都区	4213	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421321	随县	4213	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	421381	广水市	4213	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	422801	恩施市	4228	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	422802	利川市	4228	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	422822	建始县	4228	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	422823	巴东县	4228	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	422825	宣恩县	4228	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	422826	咸丰县	4228	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	422827	来凤县	4228	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	422828	鹤峰县	4228	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	429004	仙桃市	4290	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	429005	潜江市	4290	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	429006	天门市	4290	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	429021	神农架林区	4290	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430102	芙蓉区	4301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430103	天心区	4301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430104	岳麓区	4301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430105	开福区	4301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430111	雨花区	4301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430112	望城区	4301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430121	长沙县	4301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430181	浏阳市	4301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430182	宁乡市	4301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430202	荷塘区	4302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430203	芦淞区	4302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430204	石峰区	4302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430211	天元区	4302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430212	渌口区	4302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430223	攸县	4302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430224	茶陵县	4302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430225	炎陵县	4302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430281	醴陵市	4302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430302	雨湖区	4303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430304	岳塘区	4303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430321	湘潭县	4303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430371	湖南湘潭高新技术产业园区	4303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430372	湘潭昭山示范区	4303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430373	湘潭九华示范区	4303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430381	湘乡市	4303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430382	韶山市	4303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430405	珠晖区	4304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430406	雁峰区	4304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430407	石鼓区	4304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430408	蒸湘区	4304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430412	南岳区	4304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430421	衡阳县	4304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430422	衡南县	4304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430423	衡山县	4304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430424	衡东县	4304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430426	祁东县	4304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430473	湖南衡阳松木经济开发区	4304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430476	湖南衡阳高新技术产业园区	4304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430481	耒阳市	4304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430482	常宁市	4304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430502	双清区	4305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430503	大祥区	4305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430511	北塔区	4305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430522	新邵县	4305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430523	邵阳县	4305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430524	隆回县	4305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430525	洞口县	4305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430527	绥宁县	4305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430528	新宁县	4305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430529	城步苗族自治县	4305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430581	武冈市	4305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430582	邵东市	4305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430602	岳阳楼区	4306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430603	云溪区	4306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430611	君山区	4306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430621	岳阳县	4306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430623	华容县	4306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430624	湘阴县	4306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430626	平江县	4306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430671	岳阳市屈原管理区	4306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430681	汨罗市	4306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430682	临湘市	4306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430702	武陵区	4307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430703	鼎城区	4307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430721	安乡县	4307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430722	汉寿县	4307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430723	澧县	4307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430724	临澧县	4307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430725	桃源县	4307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430726	石门县	4307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430771	常德市西洞庭管理区	4307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430781	津市市	4307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430802	永定区	4308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430811	武陵源区	4308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430821	慈利县	4308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430822	桑植县	4308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430902	资阳区	4309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430903	赫山区	4309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430921	南县	4309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430922	桃江县	4309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430923	安化县	4309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430971	益阳市大通湖管理区	4309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430972	湖南益阳高新技术产业园区	4309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	430981	沅江市	4309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431002	北湖区	4310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431003	苏仙区	4310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431021	桂阳县	4310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431022	宜章县	4310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431023	永兴县	4310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431024	嘉禾县	4310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431025	临武县	4310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431026	汝城县	4310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431027	桂东县	4310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431028	安仁县	4310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431081	资兴市	4310	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431102	零陵区	4311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431103	冷水滩区	4311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431122	东安县	4311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431123	双牌县	4311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431124	道县	4311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431125	江永县	4311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431126	宁远县	4311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431127	蓝山县	4311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431128	新田县	4311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431129	江华瑶族自治县	4311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431171	永州经济技术开发区	4311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431173	永州市回龙圩管理区	4311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431181	祁阳市	4311	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431202	鹤城区	4312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431221	中方县	4312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431222	沅陵县	4312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431223	辰溪县	4312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431224	溆浦县	4312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431225	会同县	4312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431226	麻阳苗族自治县	4312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431227	新晃侗族自治县	4312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431228	芷江侗族自治县	4312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431229	靖州苗族侗族自治县	4312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431230	通道侗族自治县	4312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431271	怀化市洪江管理区	4312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431281	洪江市	4312	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431302	娄星区	4313	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431321	双峰县	4313	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431322	新化县	4313	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431381	冷水江市	4313	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	431382	涟源市	4313	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	433101	吉首市	4331	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	433122	泸溪县	4331	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	433123	凤凰县	4331	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	433124	花垣县	4331	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	433125	保靖县	4331	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	433126	古丈县	4331	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	433127	永顺县	4331	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	433130	龙山县	4331	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440103	荔湾区	4401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440104	越秀区	4401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440105	海珠区	4401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440106	天河区	4401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440111	白云区	4401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440112	黄埔区	4401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440113	番禺区	4401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440114	花都区	4401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440115	南沙区	4401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440117	从化区	4401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440118	增城区	4401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440203	武江区	4402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440204	浈江区	4402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440205	曲江区	4402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440222	始兴县	4402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440224	仁化县	4402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440229	翁源县	4402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440232	乳源瑶族自治县	4402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440233	新丰县	4402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440281	乐昌市	4402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440282	南雄市	4402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440303	罗湖区	4403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440304	福田区	4403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440305	南山区	4403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440306	宝安区	4403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440307	龙岗区	4403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440308	盐田区	4403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440309	龙华区	4403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440310	坪山区	4403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440311	光明区	4403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440402	香洲区	4404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440403	斗门区	4404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440404	金湾区	4404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440507	龙湖区	4405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440511	金平区	4405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440512	濠江区	4405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440513	潮阳区	4405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440514	潮南区	4405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440515	澄海区	4405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440523	南澳县	4405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440604	禅城区	4406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440605	南海区	4406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440606	顺德区	4406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440607	三水区	4406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440608	高明区	4406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440703	蓬江区	4407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440704	江海区	4407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440705	新会区	4407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440781	台山市	4407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440783	开平市	4407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440784	鹤山市	4407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440785	恩平市	4407	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440802	赤坎区	4408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440803	霞山区	4408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440804	坡头区	4408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440811	麻章区	4408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440823	遂溪县	4408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440825	徐闻县	4408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440881	廉江市	4408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440882	雷州市	4408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440883	吴川市	4408	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440902	茂南区	4409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440904	电白区	4409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440981	高州市	4409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440982	化州市	4409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	440983	信宜市	4409	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441202	端州区	4412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441203	鼎湖区	4412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441204	高要区	4412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441223	广宁县	4412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441224	怀集县	4412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441225	封开县	4412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441226	德庆县	4412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441284	四会市	4412	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441302	惠城区	4413	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441303	惠阳区	4413	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441322	博罗县	4413	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441323	惠东县	4413	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441324	龙门县	4413	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441402	梅江区	4414	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441403	梅县区	4414	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441422	大埔县	4414	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441423	丰顺县	4414	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441424	五华县	4414	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441426	平远县	4414	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441427	蕉岭县	4414	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441481	兴宁市	4414	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441502	城区	4415	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441521	海丰县	4415	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441523	陆河县	4415	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441581	陆丰市	4415	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441602	源城区	4416	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441621	紫金县	4416	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441622	龙川县	4416	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441623	连平县	4416	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441624	和平县	4416	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441625	东源县	4416	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441702	江城区	4417	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441704	阳东区	4417	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441721	阳西县	4417	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441781	阳春市	4417	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441802	清城区	4418	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441803	清新区	4418	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441821	佛冈县	4418	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441823	阳山县	4418	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441825	连山壮族瑶族自治县	4418	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441826	连南瑶族自治县	4418	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441881	英德市	4418	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441882	连州市	4418	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	441900	东莞市	4419	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	442000	中山市	4420	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	445102	湘桥区	4451	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	445103	潮安区	4451	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	445122	饶平县	4451	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	445202	榕城区	4452	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	445203	揭东区	4452	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	445222	揭西县	4452	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	445224	惠来县	4452	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	445281	普宁市	4452	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	445302	云城区	4453	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	445303	云安区	4453	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	445321	新兴县	4453	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	445322	郁南县	4453	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	445381	罗定市	4453	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450102	兴宁区	4501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450103	青秀区	4501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450105	江南区	4501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450107	西乡塘区	4501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450108	良庆区	4501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450109	邕宁区	4501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450110	武鸣区	4501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450123	隆安县	4501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450124	马山县	4501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450125	上林县	4501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450126	宾阳县	4501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450181	横州市	4501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450202	城中区	4502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450203	鱼峰区	4502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450204	柳南区	4502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450205	柳北区	4502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450206	柳江区	4502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450222	柳城县	4502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450223	鹿寨县	4502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450224	融安县	4502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450225	融水苗族自治县	4502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450226	三江侗族自治县	4502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450302	秀峰区	4503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450303	叠彩区	4503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450304	象山区	4503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450305	七星区	4503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450311	雁山区	4503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450312	临桂区	4503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450321	阳朔县	4503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450323	灵川县	4503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450324	全州县	4503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450325	兴安县	4503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450326	永福县	4503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450327	灌阳县	4503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450328	龙胜各族自治县	4503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450329	资源县	4503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450330	平乐县	4503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450332	恭城瑶族自治县	4503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450381	荔浦市	4503	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450403	万秀区	4504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450405	长洲区	4504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450406	龙圩区	4504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450421	苍梧县	4504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450422	藤县	4504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450423	蒙山县	4504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450481	岑溪市	4504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450502	海城区	4505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450503	银海区	4505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450512	铁山港区	4505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450521	合浦县	4505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450602	港口区	4506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450603	防城区	4506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450621	上思县	4506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450681	东兴市	4506	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450702	钦南区	4507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450703	钦北区	4507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450721	灵山县	4507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450722	浦北县	4507	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450802	港北区	4508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450803	港南区	4508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450804	覃塘区	4508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450821	平南县	4508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450881	桂平市	4508	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450902	玉州区	4509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450903	福绵区	4509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450921	容县	4509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450922	陆川县	4509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450923	博白县	4509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450924	兴业县	4509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	450981	北流市	4509	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451002	右江区	4510	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451003	田阳区	4510	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451022	田东县	4510	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451024	德保县	4510	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451026	那坡县	4510	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451027	凌云县	4510	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451028	乐业县	4510	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451029	田林县	4510	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451030	西林县	4510	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451031	隆林各族自治县	4510	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451081	靖西市	4510	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451082	平果市	4510	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451102	八步区	4511	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451103	平桂区	4511	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451121	昭平县	4511	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451122	钟山县	4511	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451123	富川瑶族自治县	4511	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451202	金城江区	4512	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451203	宜州区	4512	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451221	南丹县	4512	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451222	天峨县	4512	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451223	凤山县	4512	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451224	东兰县	4512	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451225	罗城仫佬族自治县	4512	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451226	环江毛南族自治县	4512	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451227	巴马瑶族自治县	4512	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451228	都安瑶族自治县	4512	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451229	大化瑶族自治县	4512	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451302	兴宾区	4513	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451321	忻城县	4513	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451322	象州县	4513	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451323	武宣县	4513	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451324	金秀瑶族自治县	4513	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451381	合山市	4513	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451402	江州区	4514	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451421	扶绥县	4514	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451422	宁明县	4514	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451423	龙州县	4514	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451424	大新县	4514	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451425	天等县	4514	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	451481	凭祥市	4514	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	460105	秀英区	4601	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	460106	龙华区	4601	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	460107	琼山区	4601	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	460108	美兰区	4601	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	460202	海棠区	4602	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	460203	吉阳区	4602	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	460204	天涯区	4602	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	460205	崖州区	4602	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	460321	西沙群岛	4603	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	460322	南沙群岛	4603	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	460323	中沙群岛的岛礁及其海域	4603	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	460400	儋州市	4604	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	469001	五指山市	4690	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	469002	琼海市	4690	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	469005	文昌市	4690	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	469006	万宁市	4690	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	469007	东方市	4690	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	469021	定安县	4690	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	469022	屯昌县	4690	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	469023	澄迈县	4690	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	469024	临高县	4690	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	469025	白沙黎族自治县	4690	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	469026	昌江黎族自治县	4690	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	469027	乐东黎族自治县	4690	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	469028	陵水黎族自治县	4690	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	469029	保亭黎族苗族自治县	4690	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	469030	琼中黎族苗族自治县	4690	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500101	万州区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500102	涪陵区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500103	渝中区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500104	大渡口区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500105	江北区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500106	沙坪坝区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500107	九龙坡区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500108	南岸区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500109	北碚区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500110	綦江区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500111	大足区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500112	渝北区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500113	巴南区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500114	黔江区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500115	长寿区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500116	江津区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500117	合川区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500118	永川区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500119	南川区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500120	璧山区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500151	铜梁区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500152	潼南区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500153	荣昌区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500154	开州区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500155	梁平区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500156	武隆区	5001	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500229	城口县	5002	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500230	丰都县	5002	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500231	垫江县	5002	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500233	忠县	5002	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500235	云阳县	5002	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500236	奉节县	5002	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500237	巫山县	5002	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500238	巫溪县	5002	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500240	石柱土家族自治县	5002	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500241	秀山土家族苗族自治县	5002	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500242	酉阳土家族苗族自治县	5002	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	500243	彭水苗族土家族自治县	5002	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510104	锦江区	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510105	青羊区	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510106	金牛区	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510107	武侯区	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510108	成华区	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510112	龙泉驿区	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510113	青白江区	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510114	新都区	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510115	温江区	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510116	双流区	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510117	郫都区	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510118	新津区	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510121	金堂县	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510129	大邑县	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510131	蒲江县	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510181	都江堰市	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510182	彭州市	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510183	邛崃市	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510184	崇州市	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510185	简阳市	5101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510302	自流井区	5103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510303	贡井区	5103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510304	大安区	5103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510311	沿滩区	5103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510321	荣县	5103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510322	富顺县	5103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510402	东区	5104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510403	西区	5104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510411	仁和区	5104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510421	米易县	5104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510422	盐边县	5104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510502	江阳区	5105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510503	纳溪区	5105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510504	龙马潭区	5105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510521	泸县	5105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510522	合江县	5105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510524	叙永县	5105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510525	古蔺县	5105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510603	旌阳区	5106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510604	罗江区	5106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510623	中江县	5106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510681	广汉市	5106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510682	什邡市	5106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510683	绵竹市	5106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510703	涪城区	5107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510704	游仙区	5107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510705	安州区	5107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510722	三台县	5107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510723	盐亭县	5107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510725	梓潼县	5107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510726	北川羌族自治县	5107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510727	平武县	5107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510781	江油市	5107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510802	利州区	5108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510811	昭化区	5108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510812	朝天区	5108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510821	旺苍县	5108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510822	青川县	5108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510823	剑阁县	5108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510824	苍溪县	5108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510903	船山区	5109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510904	安居区	5109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510921	蓬溪县	5109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510923	大英县	5109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	510981	射洪市	5109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511002	市中区	5110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511011	东兴区	5110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511024	威远县	5110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511025	资中县	5110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511083	隆昌市	5110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511102	市中区	5111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511111	沙湾区	5111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511112	五通桥区	5111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511113	金口河区	5111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511123	犍为县	5111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511124	井研县	5111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511126	夹江县	5111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511129	沐川县	5111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511132	峨边彝族自治县	5111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511133	马边彝族自治县	5111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511181	峨眉山市	5111	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511302	顺庆区	5113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511303	高坪区	5113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511304	嘉陵区	5113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511321	南部县	5113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511322	营山县	5113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511323	蓬安县	5113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511324	仪陇县	5113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511325	西充县	5113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511381	阆中市	5113	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511402	东坡区	5114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511403	彭山区	5114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511421	仁寿县	5114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511423	洪雅县	5114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511424	丹棱县	5114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511425	青神县	5114	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511502	翠屏区	5115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511503	南溪区	5115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511504	叙州区	5115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511523	江安县	5115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511524	长宁县	5115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511525	高县	5115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511526	珙县	5115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511527	筠连县	5115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511528	兴文县	5115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511529	屏山县	5115	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511602	广安区	5116	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511603	前锋区	5116	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511621	岳池县	5116	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511622	武胜县	5116	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511623	邻水县	5116	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511681	华蓥市	5116	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511702	通川区	5117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511703	达川区	5117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511722	宣汉县	5117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511723	开江县	5117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511724	大竹县	5117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511725	渠县	5117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511781	万源市	5117	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511802	雨城区	5118	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511803	名山区	5118	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511822	荥经县	5118	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511823	汉源县	5118	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511824	石棉县	5118	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511825	天全县	5118	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511826	芦山县	5118	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511827	宝兴县	5118	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511902	巴州区	5119	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511903	恩阳区	5119	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511921	通江县	5119	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511922	南江县	5119	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	511923	平昌县	5119	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	512002	雁江区	5120	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	512021	安岳县	5120	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	512022	乐至县	5120	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513201	马尔康市	5132	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513221	汶川县	5132	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513222	理县	5132	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513223	茂县	5132	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513224	松潘县	5132	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513225	九寨沟县	5132	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513226	金川县	5132	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513227	小金县	5132	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513228	黑水县	5132	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513230	壤塘县	5132	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513231	阿坝县	5132	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513232	若尔盖县	5132	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513233	红原县	5132	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513301	康定市	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513322	泸定县	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513323	丹巴县	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513324	九龙县	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513325	雅江县	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513326	道孚县	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513327	炉霍县	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513328	甘孜县	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513329	新龙县	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513330	德格县	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513331	白玉县	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513332	石渠县	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513333	色达县	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513334	理塘县	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513335	巴塘县	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513336	乡城县	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513337	稻城县	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513338	得荣县	5133	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513401	西昌市	5134	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513402	会理市	5134	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513422	木里藏族自治县	5134	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513423	盐源县	5134	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513424	德昌县	5134	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513426	会东县	5134	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513427	宁南县	5134	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513428	普格县	5134	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513429	布拖县	5134	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513430	金阳县	5134	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513431	昭觉县	5134	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513432	喜德县	5134	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513433	冕宁县	5134	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513434	越西县	5134	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513435	甘洛县	5134	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513436	美姑县	5134	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	513437	雷波县	5134	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520102	南明区	5201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520103	云岩区	5201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520111	花溪区	5201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520112	乌当区	5201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520113	白云区	5201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520115	观山湖区	5201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520121	开阳县	5201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520122	息烽县	5201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520123	修文县	5201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520181	清镇市	5201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520201	钟山区	5202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520203	六枝特区	5202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520204	水城区	5202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520281	盘州市	5202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520302	红花岗区	5203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520303	汇川区	5203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520304	播州区	5203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520322	桐梓县	5203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520323	绥阳县	5203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520324	正安县	5203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520325	道真仡佬族苗族自治县	5203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520326	务川仡佬族苗族自治县	5203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520327	凤冈县	5203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520328	湄潭县	5203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520329	余庆县	5203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520330	习水县	5203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520381	赤水市	5203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520382	仁怀市	5203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520402	西秀区	5204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520403	平坝区	5204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520422	普定县	5204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520423	镇宁布依族苗族自治县	5204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520424	关岭布依族苗族自治县	5204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520425	紫云苗族布依族自治县	5204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520502	七星关区	5205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520521	大方县	5205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520523	金沙县	5205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520524	织金县	5205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520525	纳雍县	5205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520526	威宁彝族回族苗族自治县	5205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520527	赫章县	5205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520581	黔西市	5205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520602	碧江区	5206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520603	万山区	5206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520621	江口县	5206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520622	玉屏侗族自治县	5206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520623	石阡县	5206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520624	思南县	5206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520625	印江土家族苗族自治县	5206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520626	德江县	5206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520627	沿河土家族自治县	5206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	520628	松桃苗族自治县	5206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522301	兴义市	5223	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522302	兴仁市	5223	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522323	普安县	5223	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522324	晴隆县	5223	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522325	贞丰县	5223	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522326	望谟县	5223	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522327	册亨县	5223	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522328	安龙县	5223	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522601	凯里市	5226	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522622	黄平县	5226	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522623	施秉县	5226	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522624	三穗县	5226	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522625	镇远县	5226	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522626	岑巩县	5226	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522627	天柱县	5226	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522628	锦屏县	5226	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522629	剑河县	5226	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522630	台江县	5226	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522631	黎平县	5226	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522632	榕江县	5226	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522633	从江县	5226	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522634	雷山县	5226	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522635	麻江县	5226	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522636	丹寨县	5226	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522701	都匀市	5227	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522702	福泉市	5227	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522722	荔波县	5227	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522723	贵定县	5227	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522725	瓮安县	5227	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522726	独山县	5227	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522727	平塘县	5227	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522728	罗甸县	5227	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522729	长顺县	5227	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522730	龙里县	5227	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522731	惠水县	5227	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	522732	三都水族自治县	5227	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530102	五华区	5301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530103	盘龙区	5301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530111	官渡区	5301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530112	西山区	5301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530113	东川区	5301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530114	呈贡区	5301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530115	晋宁区	5301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530124	富民县	5301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530125	宜良县	5301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530126	石林彝族自治县	5301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530127	嵩明县	5301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530128	禄劝彝族苗族自治县	5301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530129	寻甸回族彝族自治县	5301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530181	安宁市	5301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530302	麒麟区	5303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530303	沾益区	5303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530304	马龙区	5303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530322	陆良县	5303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530323	师宗县	5303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530324	罗平县	5303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530325	富源县	5303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530326	会泽县	5303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530381	宣威市	5303	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530402	红塔区	5304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530403	江川区	5304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530423	通海县	5304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530424	华宁县	5304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530425	易门县	5304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530426	峨山彝族自治县	5304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530427	新平彝族傣族自治县	5304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530428	元江哈尼族彝族傣族自治县	5304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530481	澄江市	5304	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530502	隆阳区	5305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530521	施甸县	5305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530523	龙陵县	5305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530524	昌宁县	5305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530581	腾冲市	5305	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530602	昭阳区	5306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530621	鲁甸县	5306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530622	巧家县	5306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530623	盐津县	5306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530624	大关县	5306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530625	永善县	5306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530626	绥江县	5306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530627	镇雄县	5306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530628	彝良县	5306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530629	威信县	5306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530681	水富市	5306	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530702	古城区	5307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530721	玉龙纳西族自治县	5307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530722	永胜县	5307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530723	华坪县	5307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530724	宁蒗彝族自治县	5307	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530802	思茅区	5308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530821	宁洱哈尼族彝族自治县	5308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530822	墨江哈尼族自治县	5308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530823	景东彝族自治县	5308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530824	景谷傣族彝族自治县	5308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530825	镇沅彝族哈尼族拉祜族自治县	5308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530826	江城哈尼族彝族自治县	5308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530827	孟连傣族拉祜族佤族自治县	5308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530828	澜沧拉祜族自治县	5308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530829	西盟佤族自治县	5308	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530902	临翔区	5309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530921	凤庆县	5309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530922	云县	5309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530923	永德县	5309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530924	镇康县	5309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530925	双江拉祜族佤族布朗族傣族自治县	5309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530926	耿马傣族佤族自治县	5309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	530927	沧源佤族自治县	5309	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532301	楚雄市	5323	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532302	禄丰市	5323	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532322	双柏县	5323	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532323	牟定县	5323	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532324	南华县	5323	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532325	姚安县	5323	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532326	大姚县	5323	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532327	永仁县	5323	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532328	元谋县	5323	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532329	武定县	5323	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532501	个旧市	5325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532502	开远市	5325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532503	蒙自市	5325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532504	弥勒市	5325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532523	屏边苗族自治县	5325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532524	建水县	5325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532525	石屏县	5325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532527	泸西县	5325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532528	元阳县	5325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532529	红河县	5325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532530	金平苗族瑶族傣族自治县	5325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532531	绿春县	5325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532532	河口瑶族自治县	5325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532601	文山市	5326	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532622	砚山县	5326	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532623	西畴县	5326	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532624	麻栗坡县	5326	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532625	马关县	5326	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532626	丘北县	5326	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532627	广南县	5326	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532628	富宁县	5326	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532801	景洪市	5328	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532822	勐海县	5328	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532823	勐腊县	5328	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532901	大理市	5329	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532922	漾濞彝族自治县	5329	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532923	祥云县	5329	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532924	宾川县	5329	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532925	弥渡县	5329	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532926	南涧彝族自治县	5329	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532927	巍山彝族回族自治县	5329	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532928	永平县	5329	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532929	云龙县	5329	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532930	洱源县	5329	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532931	剑川县	5329	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	532932	鹤庆县	5329	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	533102	瑞丽市	5331	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	533103	芒市	5331	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	533122	梁河县	5331	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	533123	盈江县	5331	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	533124	陇川县	5331	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	533301	泸水市	5333	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	533323	福贡县	5333	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	533324	贡山独龙族怒族自治县	5333	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	533325	兰坪白族普米族自治县	5333	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	533401	香格里拉市	5334	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	533422	德钦县	5334	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	533423	维西傈僳族自治县	5334	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540102	城关区	5401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540103	堆龙德庆区	5401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540104	达孜区	5401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540121	林周县	5401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540122	当雄县	5401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540123	尼木县	5401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540124	曲水县	5401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540127	墨竹工卡县	5401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540171	格尔木藏青工业园区	5401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540172	拉萨经济技术开发区	5401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540173	西藏文化旅游创意园区	5401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540174	达孜工业园区	5401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540202	桑珠孜区	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540221	南木林县	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540222	江孜县	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540223	定日县	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540224	萨迦县	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540225	拉孜县	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540226	昂仁县	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540227	谢通门县	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540228	白朗县	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540229	仁布县	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540230	康马县	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540231	定结县	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540232	仲巴县	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540233	亚东县	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540234	吉隆县	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540235	聂拉木县	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540236	萨嘎县	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540237	岗巴县	5402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540302	卡若区	5403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540321	江达县	5403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540322	贡觉县	5403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540323	类乌齐县	5403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540324	丁青县	5403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540325	察雅县	5403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540326	八宿县	5403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540327	左贡县	5403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540328	芒康县	5403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540329	洛隆县	5403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540330	边坝县	5403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540402	巴宜区	5404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540421	工布江达县	5404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540423	墨脱县	5404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540424	波密县	5404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540425	察隅县	5404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540426	朗县	5404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540481	米林市	5404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540502	乃东区	5405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540521	扎囊县	5405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540522	贡嘎县	5405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540523	桑日县	5405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540524	琼结县	5405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540525	曲松县	5405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540526	措美县	5405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540527	洛扎县	5405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540528	加查县	5405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540529	隆子县	5405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540531	浪卡子县	5405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540581	错那市	5405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540602	色尼区	5406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540621	嘉黎县	5406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540622	比如县	5406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540623	聂荣县	5406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540624	安多县	5406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540625	申扎县	5406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540626	索县	5406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540627	班戈县	5406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540628	巴青县	5406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540629	尼玛县	5406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	540630	双湖县	5406	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	542521	普兰县	5425	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	542522	札达县	5425	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	542523	噶尔县	5425	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	542524	日土县	5425	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	542525	革吉县	5425	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	542526	改则县	5425	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	542527	措勤县	5425	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610102	新城区	6101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610103	碑林区	6101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610104	莲湖区	6101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610111	灞桥区	6101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610112	未央区	6101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610113	雁塔区	6101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610114	阎良区	6101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610115	临潼区	6101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610116	长安区	6101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610117	高陵区	6101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610118	鄠邑区	6101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610122	蓝田县	6101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610124	周至县	6101	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610202	王益区	6102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610203	印台区	6102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610204	耀州区	6102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610222	宜君县	6102	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610302	渭滨区	6103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610303	金台区	6103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610304	陈仓区	6103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610305	凤翔区	6103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610323	岐山县	6103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610324	扶风县	6103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610326	眉县	6103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610327	陇县	6103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610328	千阳县	6103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610329	麟游县	6103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610330	凤县	6103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610331	太白县	6103	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610402	秦都区	6104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610403	杨陵区	6104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610404	渭城区	6104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610422	三原县	6104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610423	泾阳县	6104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610424	乾县	6104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610425	礼泉县	6104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610426	永寿县	6104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610428	长武县	6104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610429	旬邑县	6104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610430	淳化县	6104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610431	武功县	6104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610481	兴平市	6104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610482	彬州市	6104	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610502	临渭区	6105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610503	华州区	6105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610522	潼关县	6105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610523	大荔县	6105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610524	合阳县	6105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610525	澄城县	6105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610526	蒲城县	6105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610527	白水县	6105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610528	富平县	6105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610581	韩城市	6105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610582	华阴市	6105	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610602	宝塔区	6106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610603	安塞区	6106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610621	延长县	6106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610622	延川县	6106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610625	志丹县	6106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610626	吴起县	6106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610627	甘泉县	6106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610628	富县	6106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610629	洛川县	6106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610630	宜川县	6106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610631	黄龙县	6106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610632	黄陵县	6106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610681	子长市	6106	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610702	汉台区	6107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610703	南郑区	6107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610722	城固县	6107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610723	洋县	6107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610724	西乡县	6107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610725	勉县	6107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610726	宁强县	6107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610727	略阳县	6107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610728	镇巴县	6107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610729	留坝县	6107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610730	佛坪县	6107	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610802	榆阳区	6108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610803	横山区	6108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610822	府谷县	6108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610824	靖边县	6108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610825	定边县	6108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610826	绥德县	6108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610827	米脂县	6108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610828	佳县	6108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610829	吴堡县	6108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610830	清涧县	6108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610831	子洲县	6108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610881	神木市	6108	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610902	汉滨区	6109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610921	汉阴县	6109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610922	石泉县	6109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610923	宁陕县	6109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610924	紫阳县	6109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610925	岚皋县	6109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610926	平利县	6109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610927	镇坪县	6109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610929	白河县	6109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	610981	旬阳市	6109	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	611002	商州区	6110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	611021	洛南县	6110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	611022	丹凤县	6110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	611023	商南县	6110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	611024	山阳县	6110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	611025	镇安县	6110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	611026	柞水县	6110	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620102	城关区	6201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620103	七里河区	6201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620104	西固区	6201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620105	安宁区	6201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620111	红古区	6201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620121	永登县	6201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620122	皋兰县	6201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620123	榆中县	6201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620171	兰州新区	6201	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620201	嘉峪关市	6202	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620302	金川区	6203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620321	永昌县	6203	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620402	白银区	6204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620403	平川区	6204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620421	靖远县	6204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620422	会宁县	6204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620423	景泰县	6204	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620502	秦州区	6205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620503	麦积区	6205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620521	清水县	6205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620522	秦安县	6205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620523	甘谷县	6205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620524	武山县	6205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620525	张家川回族自治县	6205	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620602	凉州区	6206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620621	民勤县	6206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620622	古浪县	6206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620623	天祝藏族自治县	6206	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620702	甘州区	6207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620721	肃南裕固族自治县	6207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620722	民乐县	6207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620723	临泽县	6207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620724	高台县	6207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620725	山丹县	6207	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620802	崆峒区	6208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620821	泾川县	6208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620822	灵台县	6208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620823	崇信县	6208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620825	庄浪县	6208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620826	静宁县	6208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620881	华亭市	6208	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620902	肃州区	6209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620921	金塔县	6209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620922	瓜州县	6209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620923	肃北蒙古族自治县	6209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620924	阿克塞哈萨克族自治县	6209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620981	玉门市	6209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	620982	敦煌市	6209	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621002	西峰区	6210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621021	庆城县	6210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621022	环县	6210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621023	华池县	6210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621024	合水县	6210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621025	正宁县	6210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621026	宁县	6210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621027	镇原县	6210	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621102	安定区	6211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621121	通渭县	6211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621122	陇西县	6211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621123	渭源县	6211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621124	临洮县	6211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621125	漳县	6211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621126	岷县	6211	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621202	武都区	6212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621221	成县	6212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621222	文县	6212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621223	宕昌县	6212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621224	康县	6212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621225	西和县	6212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621226	礼县	6212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621227	徽县	6212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	621228	两当县	6212	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	622901	临夏市	6229	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	622921	临夏县	6229	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	622922	康乐县	6229	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	622923	永靖县	6229	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	622924	广河县	6229	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	622925	和政县	6229	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	622926	东乡族自治县	6229	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	622927	积石山保安族东乡族撒拉族自治县	6229	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	623001	合作市	6230	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	623021	临潭县	6230	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	623022	卓尼县	6230	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	623023	舟曲县	6230	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	623024	迭部县	6230	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	623025	玛曲县	6230	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	623026	碌曲县	6230	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	623027	夏河县	6230	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	630102	城东区	6301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	630103	城中区	6301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	630104	城西区	6301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	630105	城北区	6301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	630106	湟中区	6301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	630121	大通回族土族自治县	6301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	630123	湟源县	6301	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	630202	乐都区	6302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	630203	平安区	6302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	630222	民和回族土族自治县	6302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	630223	互助土族自治县	6302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	630224	化隆回族自治县	6302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	630225	循化撒拉族自治县	6302	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632221	门源回族自治县	6322	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632222	祁连县	6322	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632223	海晏县	6322	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632224	刚察县	6322	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632301	同仁市	6323	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632322	尖扎县	6323	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632323	泽库县	6323	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632324	河南蒙古族自治县	6323	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632521	共和县	6325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632522	同德县	6325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632523	贵德县	6325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632524	兴海县	6325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632525	贵南县	6325	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632621	玛沁县	6326	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632622	班玛县	6326	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632623	甘德县	6326	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632624	达日县	6326	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632625	久治县	6326	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632626	玛多县	6326	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632701	玉树市	6327	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632722	杂多县	6327	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632723	称多县	6327	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632724	治多县	6327	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632725	囊谦县	6327	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632726	曲麻莱县	6327	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632801	格尔木市	6328	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632802	德令哈市	6328	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632803	茫崖市	6328	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632821	乌兰县	6328	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632822	都兰县	6328	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632823	天峻县	6328	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	632857	大柴旦行政委员会	6328	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640104	兴庆区	6401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640105	西夏区	6401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640106	金凤区	6401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640121	永宁县	6401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640122	贺兰县	6401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640181	灵武市	6401	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640202	大武口区	6402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640205	惠农区	6402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640221	平罗县	6402	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640302	利通区	6403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640303	红寺堡区	6403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640323	盐池县	6403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640324	同心县	6403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640381	青铜峡市	6403	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640402	原州区	6404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640422	西吉县	6404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640423	隆德县	6404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640424	泾源县	6404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640425	彭阳县	6404	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640502	沙坡头区	6405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640521	中宁县	6405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	640522	海原县	6405	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650102	天山区	6501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650103	沙依巴克区	6501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650104	新市区	6501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650105	水磨沟区	6501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650106	头屯河区	6501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650107	达坂城区	6501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650109	米东区	6501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650121	乌鲁木齐县	6501	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650202	独山子区	6502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650203	克拉玛依区	6502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650204	白碱滩区	6502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650205	乌尔禾区	6502	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650402	高昌区	6504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650421	鄯善县	6504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650422	托克逊县	6504	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650502	伊州区	6505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650521	巴里坤哈萨克自治县	6505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	650522	伊吾县	6505	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652301	昌吉市	6523	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652302	阜康市	6523	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652323	呼图壁县	6523	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652324	玛纳斯县	6523	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652325	奇台县	6523	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652327	吉木萨尔县	6523	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652328	木垒哈萨克自治县	6523	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652701	博乐市	6527	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652702	阿拉山口市	6527	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652722	精河县	6527	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652723	温泉县	6527	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652801	库尔勒市	6528	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652822	轮台县	6528	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652823	尉犁县	6528	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652824	若羌县	6528	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652825	且末县	6528	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652826	焉耆回族自治县	6528	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652827	和静县	6528	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652828	和硕县	6528	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652829	博湖县	6528	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652901	阿克苏市	6529	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652902	库车市	6529	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652922	温宿县	6529	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652924	沙雅县	6529	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652925	新和县	6529	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652926	拜城县	6529	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652927	乌什县	6529	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652928	阿瓦提县	6529	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	652929	柯坪县	6529	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653001	阿图什市	6530	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653022	阿克陶县	6530	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653023	阿合奇县	6530	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653024	乌恰县	6530	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653101	喀什市	6531	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653121	疏附县	6531	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653122	疏勒县	6531	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653123	英吉沙县	6531	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653124	泽普县	6531	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653125	莎车县	6531	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653126	叶城县	6531	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653127	麦盖提县	6531	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653128	岳普湖县	6531	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653129	伽师县	6531	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653130	巴楚县	6531	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653131	塔什库尔干塔吉克自治县	6531	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653201	和田市	6532	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653221	和田县	6532	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653222	墨玉县	6532	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653223	皮山县	6532	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653224	洛浦县	6532	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653225	策勒县	6532	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653226	于田县	6532	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	653227	民丰县	6532	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654002	伊宁市	6540	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654003	奎屯市	6540	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654004	霍尔果斯市	6540	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654021	伊宁县	6540	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654022	察布查尔锡伯自治县	6540	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654023	霍城县	6540	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654024	巩留县	6540	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654025	新源县	6540	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654026	昭苏县	6540	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654027	特克斯县	6540	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654028	尼勒克县	6540	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654201	塔城市	6542	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654202	乌苏市	6542	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654203	沙湾市	6542	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654221	额敏县	6542	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654224	托里县	6542	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654225	裕民县	6542	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654226	和布克赛尔蒙古自治县	6542	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654301	阿勒泰市	6543	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654321	布尔津县	6543	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654322	富蕴县	6543	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654323	福海县	6543	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654324	哈巴河县	6543	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654325	青河县	6543	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	654326	吉木乃县	6543	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	659001	石河子市	6590	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	659002	阿拉尔市	6590	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	659003	图木舒克市	6590	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	659004	五家渠市	6590	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	659005	北屯市	6590	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	659006	铁门关市	6590	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	659007	双河市	6590	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	659008	可克达拉市	6590	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	659009	昆玉市	6590	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	659010	胡杨河市	6590	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	659011	新星市	6590	3
2024-12-04 09:19:00.024+00	2024-12-04 09:19:00.024+00	659012	白杨市	6590	3
\.


--
-- TOC entry 3792 (class 0 OID 16889)
-- Dependencies: 228
-- Data for Name: collectionCategories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."collectionCategories" (id, "createdAt", "updatedAt", name, color, sort) FROM stdin;
\.


--
-- TOC entry 3794 (class 0 OID 16896)
-- Dependencies: 230
-- Data for Name: collectionCategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."collectionCategory" ("createdAt", "updatedAt", "collectionName", "categoryId") FROM stdin;
\.


--
-- TOC entry 3795 (class 0 OID 16899)
-- Dependencies: 231
-- Data for Name: collections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.collections (key, name, title, inherit, hidden, options, description, sort) FROM stdin;
j9fi0gjs1d6	users	{{t("Users")}}	f	f	{"origin":"@nocobase/plugin-users","dumpRules":{"group":"user"},"sortable":"sort","model":"UserModel","createdBy":true,"updatedBy":true,"logging":true,"shared":true,"from":"db2cm"}	\N	1
ny237zkkodj	roles	{{t("Roles")}}	f	f	{"origin":"@nocobase/plugin-acl","dumpRules":"required","autoGenId":false,"model":"RoleModel","filterTargetKey":"name","sortable":true,"from":"db2cm"}	\N	2
92x4tb7t01s	smart_contracts	Smart Contracts	f	f	{"actions":[{"name":"create","type":"create","title":"Create Kafka Topic","viewName":"form"},{"name":"view","type":"view","title":"View","viewName":"form"},{"name":"edit","type":"edit","title":"Edit","viewName":"form"},{"name":"destroy","type":"destroy","title":"Delete"}],"schema":"public"}	\N	3
\.


--
-- TOC entry 3796 (class 0 OID 16907)
-- Dependencies: 232
-- Data for Name: customRequests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."customRequests" ("createdAt", "updatedAt", key, options) FROM stdin;
\.


--
-- TOC entry 3797 (class 0 OID 16912)
-- Dependencies: 233
-- Data for Name: customRequestsRoles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."customRequestsRoles" ("createdAt", "updatedAt", "customRequestKey", "roleName") FROM stdin;
\.


--
-- TOC entry 3798 (class 0 OID 16917)
-- Dependencies: 234
-- Data for Name: dataSources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSources" ("createdAt", "updatedAt", key, "displayName", type, options, enabled, fixed) FROM stdin;
2024-12-04 09:18:59.802+00	2024-12-04 09:18:59.802+00	main	{{t("Main")}}	main	{}	t	t
\.


--
-- TOC entry 3799 (class 0 OID 16924)
-- Dependencies: 235
-- Data for Name: dataSourcesCollections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesCollections" (key, name, options, "dataSourceKey") FROM stdin;
\.


--
-- TOC entry 3800 (class 0 OID 16929)
-- Dependencies: 236
-- Data for Name: dataSourcesFields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesFields" (key, name, "collectionName", interface, description, "uiSchema", "collectionKey", options, "dataSourceKey") FROM stdin;
\.


--
-- TOC entry 3801 (class 0 OID 16935)
-- Dependencies: 237
-- Data for Name: dataSourcesRoles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesRoles" (id, strategy, "dataSourceKey", "roleName") FROM stdin;
fsau3tgp2t4	\N	main	root
ap1kmwgavd3	{"actions":["create","view","update","destroy","importXlsx","export"]}	main	admin
m32ubqbcgwc	{"actions":["view","update:own","destroy:own","create","importXlsx","export"]}	main	member
\.


--
-- TOC entry 3802 (class 0 OID 16940)
-- Dependencies: 238
-- Data for Name: dataSourcesRolesResources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesRolesResources" (id, "createdAt", "updatedAt", "dataSourceKey", name, "usingActionsConfig", "roleName") FROM stdin;
\.


--
-- TOC entry 3803 (class 0 OID 16946)
-- Dependencies: 239
-- Data for Name: dataSourcesRolesResourcesActions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesRolesResourcesActions" (id, "createdAt", "updatedAt", name, fields, "scopeId", "rolesResourceId") FROM stdin;
\.


--
-- TOC entry 3805 (class 0 OID 16953)
-- Dependencies: 241
-- Data for Name: dataSourcesRolesResourcesScopes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesRolesResourcesScopes" (id, "createdAt", "updatedAt", key, "dataSourceKey", name, "resourceName", scope) FROM stdin;
1	2024-12-04 09:18:59.851+00	2024-12-04 09:18:59.851+00	all	main	{{t("All records")}}	\N	{}
2	2024-12-04 09:18:59.852+00	2024-12-04 09:18:59.852+00	own	main	{{t("Own records")}}	\N	{"createdById":"{{ ctx.state.currentUser.id }}"}
\.


--
-- TOC entry 3808 (class 0 OID 16961)
-- Dependencies: 244
-- Data for Name: executions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.executions (id, "createdAt", "updatedAt", key, "eventKey", context, status, "workflowId") FROM stdin;
\.


--
-- TOC entry 3810 (class 0 OID 16967)
-- Dependencies: 246
-- Data for Name: fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fields (key, name, type, interface, description, "collectionName", "parentKey", "reverseKey", options, sort) FROM stdin;
pucappbh12i	id	bigInt	id	\N	users	\N	\N	{"autoIncrement":true,"primaryKey":true,"allowNull":false,"uiSchema":{"type":"number","title":"{{t(\\"ID\\")}}","x-component":"InputNumber","x-read-pretty":true}}	1
0iy6zd9x5a4	nickname	string	input	\N	users	\N	\N	{"uiSchema":{"type":"string","title":"{{t(\\"Nickname\\")}}","x-component":"Input"}}	2
3ev1ibyq5sr	username	string	input	\N	users	\N	\N	{"unique":true,"uiSchema":{"type":"string","title":"{{t(\\"Username\\")}}","x-component":"Input","x-validator":{"username":true},"required":true}}	3
koph5olwtgs	email	string	email	\N	users	\N	\N	{"unique":true,"uiSchema":{"type":"string","title":"{{t(\\"Email\\")}}","x-component":"Input","x-validator":"email","required":true}}	4
inlzghv9axx	phone	string	input	\N	users	\N	\N	{"unique":true,"uiSchema":{"type":"string","title":"{{t(\\"Phone\\")}}","x-component":"Input","required":true}}	5
7nhd240ko4t	password	password	password	\N	users	\N	\N	{"hidden":true,"uiSchema":{"type":"string","title":"{{t(\\"Password\\")}}","x-component":"Password"}}	6
oqfyovzdfak	appLang	string	\N	\N	users	\N	\N	{}	7
thtony4o7by	resetToken	string	\N	\N	users	\N	\N	{"unique":true,"hidden":true}	8
l7a6f2qucrd	systemSettings	json	\N	\N	users	\N	\N	{"defaultValue":{}}	9
uxu760p2o3k	createdAt	date	createdAt	\N	users	\N	\N	{"uiSchema":{"x-component-props":{"dateFormat":"YYYY-MM-DD"},"type":"datetime","title":"{{t(\\"Created at\\")}}","x-component":"DatePicker","x-read-pretty":true},"field":"createdAt"}	10
0ufycfqiyg4	updatedAt	date	updatedAt	\N	users	\N	\N	{"uiSchema":{"x-component-props":{"dateFormat":"YYYY-MM-DD"},"type":"datetime","title":"{{t(\\"Last updated at\\")}}","x-component":"DatePicker","x-read-pretty":true},"field":"updatedAt"}	11
87r352m9l08	sort	sort	\N	\N	users	\N	\N	{"hidden":true}	12
rw30a6tigt7	createdBy	belongsTo	createdBy	\N	users	\N	\N	{"target":"users","foreignKey":"createdById","targetKey":"id","uiSchema":{"type":"object","title":"{{t(\\"Created by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true}}	13
u8vitfk0nl1	createdById	context	\N	\N	users	\N	\N	{"dataType":"bigInt","dataIndex":"state.currentUser.id","createOnly":true,"visible":true,"index":true}	14
25k94689mkc	updatedBy	belongsTo	updatedBy	\N	users	\N	\N	{"target":"users","foreignKey":"updatedById","targetKey":"id","uiSchema":{"type":"object","title":"{{t(\\"Last updated by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true}}	15
2n2m30uejx2	updatedById	context	\N	\N	users	\N	\N	{"dataType":"bigInt","dataIndex":"state.currentUser.id","visible":true,"index":true}	16
f9aam63744v	roles	belongsToMany	m2m	\N	users	\N	\N	{"target":"roles","foreignKey":"userId","otherKey":"roleName","onDelete":"CASCADE","sourceKey":"id","targetKey":"name","through":"rolesUsers","uiSchema":{"type":"array","title":"{{t(\\"Roles\\")}}","x-component":"AssociationField","x-component-props":{"multiple":true,"fieldNames":{"label":"title","value":"name"}}}}	17
d5boonlgmxs	jobs	belongsToMany	\N	\N	users	\N	\N	{"through":"users_jobs","foreignKey":"userId","sourceKey":"id","otherKey":"jobId","targetKey":"id","target":"jobs"}	18
tls1i9vvvb4	usersJobs	hasMany	\N	\N	users	\N	\N	{"target":"users_jobs","foreignKey":"userId","sourceKey":"id","targetKey":"id"}	19
23uxdlri634	name	uid	input	\N	roles	\N	\N	{"prefix":"r_","primaryKey":true,"uiSchema":{"type":"string","title":"{{t(\\"Role UID\\")}}","x-component":"Input"}}	1
4i67bv4vm30	title	string	input	\N	roles	\N	\N	{"unique":true,"uiSchema":{"type":"string","title":"{{t(\\"Role name\\")}}","x-component":"Input"},"translation":true}	2
8r0t06n2rj8	description	string	\N	\N	roles	\N	\N	{}	3
hx2jh1ki9pu	strategy	json	\N	\N	roles	\N	\N	{}	4
35buuix2fcb	default	boolean	\N	\N	roles	\N	\N	{"defaultValue":false}	5
ctqsncasy2h	hidden	boolean	\N	\N	roles	\N	\N	{"defaultValue":false}	6
neb28c09qvq	allowConfigure	boolean	\N	\N	roles	\N	\N	{}	7
z4b00oam6q8	allowNewMenu	boolean	\N	\N	roles	\N	\N	{}	8
e7ouw6y7ah9	menuUiSchemas	belongsToMany	\N	\N	roles	\N	\N	{"target":"uiSchemas","targetKey":"x-uid","foreignKey":"roleName","sourceKey":"name","otherKey":"uiSchemaXUid","through":"rolesUischemas"}	9
jgfkh5k5hg0	resources	hasMany	\N	\N	roles	\N	\N	{"target":"dataSourcesRolesResources","sourceKey":"name","foreignKey":"roleName","targetKey":"id"}	10
5gy5amao2a3	snippets	set	\N	\N	roles	\N	\N	{"defaultValue":["!ui.*","!pm","!pm.*"]}	11
jp43s7owiu5	users	belongsToMany	\N	\N	roles	\N	\N	{"target":"users","foreignKey":"roleName","otherKey":"userId","onDelete":"CASCADE","sourceKey":"name","targetKey":"id","through":"rolesUsers"}	12
yeu3ln41vgj	sort	sort	\N	\N	roles	\N	\N	{"hidden":true}	13
6tonbrpayw8	id	uuid	input	\N	smart_contracts	\N	\N	{"primaryKey":true,"autoIncrement":false,"uiSchema":{"type":"string","title":"ID","x-component":"Input","required":true}}	1
22waqc7g1ze	script	string	textarea	\N	smart_contracts	\N	\N	{"uiSchema":{"type":"string","title":"Script","x-component":"Input","required":true}}	2
\.


--
-- TOC entry 3811 (class 0 OID 16973)
-- Dependencies: 247
-- Data for Name: flow_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flow_nodes (id, "createdAt", "updatedAt", key, title, "upstreamId", "branchIndex", "downstreamId", type, config, "workflowId") FROM stdin;
\.


--
-- TOC entry 3813 (class 0 OID 16980)
-- Dependencies: 249
-- Data for Name: iframeHtml; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."iframeHtml" (id, "createdAt", "updatedAt", html, "createdById", "updatedById") FROM stdin;
\.


--
-- TOC entry 3814 (class 0 OID 16985)
-- Dependencies: 250
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jobs (id, "createdAt", "updatedAt", "executionId", "nodeId", "nodeKey", "upstreamId", status, result) FROM stdin;
\.


--
-- TOC entry 3816 (class 0 OID 16991)
-- Dependencies: 252
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (name) FROM stdin;
20240613222612-fix-assign-field-config/@nocobase/plugin-workflow
20240613110121-fix-schema-in-field/@nocobase/plugin-file-manager
\.


--
-- TOC entry 3817 (class 0 OID 16994)
-- Dependencies: 253
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles ("createdAt", "updatedAt", name, title, description, strategy, "default", hidden, "allowConfigure", "allowNewMenu", snippets, sort) FROM stdin;
2024-12-04 09:18:59.829+00	2024-12-04 09:18:59.829+00	root	{{t("Root")}}	\N	\N	f	t	\N	\N	["pm", "pm.*", "ui.*"]	1
2024-12-04 09:18:59.837+00	2024-12-04 09:19:00.194+00	admin	{{t("Admin")}}	\N	{"actions":["create","view","update","destroy","importXlsx","export"]}	f	f	t	t	["pm", "pm.*", "ui.*"]	2
2024-12-04 09:18:59.843+00	2024-12-04 09:19:00.199+00	member	{{t("Member")}}	\N	{"actions":["view","update:own","destroy:own","create","importXlsx","export"]}	t	f	\N	t	["!pm", "!pm.*", "!ui.*"]	3
\.


--
-- TOC entry 3818 (class 0 OID 17002)
-- Dependencies: 254
-- Data for Name: rolesResources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesResources" (id, "createdAt", "updatedAt", "roleName", name, "usingActionsConfig") FROM stdin;
\.


--
-- TOC entry 3819 (class 0 OID 17007)
-- Dependencies: 255
-- Data for Name: rolesResourcesActions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesResourcesActions" (id, "createdAt", "updatedAt", "rolesResourceId", name, fields, "scopeId") FROM stdin;
\.


--
-- TOC entry 3821 (class 0 OID 17014)
-- Dependencies: 257
-- Data for Name: rolesResourcesScopes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesResourcesScopes" (id, "createdAt", "updatedAt", key, name, "resourceName", scope) FROM stdin;
\.


--
-- TOC entry 3824 (class 0 OID 17021)
-- Dependencies: 260
-- Data for Name: rolesUischemas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesUischemas" ("createdAt", "updatedAt", "roleName", "uiSchemaXUid") FROM stdin;
2024-12-04 09:22:51.069+00	2024-12-04 09:22:51.069+00	admin	yzl9cxcodyh
2024-12-04 09:22:51.071+00	2024-12-04 09:22:51.071+00	member	yzl9cxcodyh
2024-12-04 09:23:01.212+00	2024-12-04 09:23:01.212+00	admin	073buw1m70l
2024-12-04 09:23:01.214+00	2024-12-04 09:23:01.214+00	member	073buw1m70l
2024-12-04 11:17:42.886+00	2024-12-04 11:17:42.886+00	admin	jw33aql9up0
2024-12-04 11:17:42.902+00	2024-12-04 11:17:42.902+00	member	jw33aql9up0
2024-12-04 11:19:27.459+00	2024-12-04 11:19:27.459+00	admin	har0uexrdoo
2024-12-04 11:19:27.463+00	2024-12-04 11:19:27.463+00	member	har0uexrdoo
\.


--
-- TOC entry 3825 (class 0 OID 17026)
-- Dependencies: 261
-- Data for Name: rolesUsers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesUsers" ("createdAt", "updatedAt", "default", "roleName", "userId") FROM stdin;
2024-12-04 09:18:59.892+00	2024-12-04 09:18:59.892+00	\N	member	1
2024-12-04 09:18:59.963+00	2024-12-04 09:18:59.963+00	\N	admin	1
2024-12-04 09:18:59.963+00	2024-12-04 09:18:59.967+00	t	root	1
\.


--
-- TOC entry 3826 (class 0 OID 17029)
-- Dependencies: 262
-- Data for Name: sequences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sequences (id, "createdAt", "updatedAt", collection, field, key, current, "lastGeneratedAt") FROM stdin;
\.


--
-- TOC entry 3828 (class 0 OID 17035)
-- Dependencies: 264
-- Data for Name: smart_contracts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.smart_contracts (id, "createdAt", "updatedAt", script) FROM stdin;
\.


--
-- TOC entry 3829 (class 0 OID 17040)
-- Dependencies: 265
-- Data for Name: storages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.storages (id, "createdAt", "updatedAt", title, name, type, options, rules, path, "baseUrl", "default", paranoid) FROM stdin;
1	2024-12-04 09:18:59.806+00	2024-12-04 09:18:59.806+00	Local storage	local	local	{"documentRoot": "storage/uploads"}	{"size": 20971520}		/storage/uploads	t	f
\.


--
-- TOC entry 3832 (class 0 OID 17053)
-- Dependencies: 268
-- Data for Name: systemSettings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."systemSettings" (id, "createdAt", "updatedAt", title, "showLogoOnly", "allowSignUp", "smsAuthEnabled", "logoId", "enabledLanguages", "appLang", options) FROM stdin;
1	2024-12-04 09:18:59.825+00	2024-12-04 09:18:59.825+00	NocoBase	\N	t	f	1	["en-US"]	en-US	{}
\.


--
-- TOC entry 3834 (class 0 OID 17063)
-- Dependencies: 270
-- Data for Name: tokenBlacklist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tokenBlacklist" (id, "createdAt", "updatedAt", token, expiration) FROM stdin;
\.


--
-- TOC entry 3836 (class 0 OID 17067)
-- Dependencies: 272
-- Data for Name: uiSchemaServerHooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."uiSchemaServerHooks" (id, type, collection, field, method, params, uid) FROM stdin;
\.


--
-- TOC entry 3838 (class 0 OID 17073)
-- Dependencies: 274
-- Data for Name: uiSchemaTemplates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."uiSchemaTemplates" ("createdAt", "updatedAt", key, name, "componentName", "associationName", "resourceName", "collectionName", "dataSourceKey", uid) FROM stdin;
\.


--
-- TOC entry 3839 (class 0 OID 17078)
-- Dependencies: 275
-- Data for Name: uiSchemaTreePath; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."uiSchemaTreePath" (ancestor, descendant, depth, async, type, sort) FROM stdin;
nocobase-admin-menu	nocobase-admin-menu	0	f	\N	\N
ywqwjeo6qry	ywqwjeo6qry	0	t	properties	\N
yzl9cxcodyh	ywqwjeo6qry	1	\N	\N	1
7506cogk9zp	7506cogk9zp	0	f	properties	\N
ywqwjeo6qry	7506cogk9zp	1	\N	\N	1
yzl9cxcodyh	7506cogk9zp	2	\N	\N	1
nocobase-admin-menu	7506cogk9zp	3	\N	\N	\N
nocobase-admin-menu	ywqwjeo6qry	2	\N	\N	\N
yzl9cxcodyh	yzl9cxcodyh	0	f	properties	\N
nocobase-admin-menu	yzl9cxcodyh	1	\N	\N	1
073buw1m70l	073buw1m70l	0	f	properties	\N
nocobase-admin-menu	073buw1m70l	1	\N	\N	2
60gtfob2j2w	60gtfob2j2w	0	f	properties	\N
t39dtlxijbw	60gtfob2j2w	1	\N	\N	1
am0kdukacbw	am0kdukacbw	0	f	properties	\N
60gtfob2j2w	am0kdukacbw	1	\N	\N	1
t39dtlxijbw	am0kdukacbw	2	\N	\N	1
4ngvtisf6xj	4ngvtisf6xj	0	f	properties	\N
am0kdukacbw	4ngvtisf6xj	1	\N	\N	1
60gtfob2j2w	4ngvtisf6xj	2	\N	\N	1
t39dtlxijbw	4ngvtisf6xj	3	\N	\N	1
7506cogk9zp	4ngvtisf6xj	4	\N	\N	\N
7506cogk9zp	60gtfob2j2w	2	\N	\N	\N
7506cogk9zp	am0kdukacbw	3	\N	\N	\N
ywqwjeo6qry	4ngvtisf6xj	5	\N	\N	\N
ywqwjeo6qry	60gtfob2j2w	3	\N	\N	\N
ywqwjeo6qry	am0kdukacbw	4	\N	\N	\N
ywqwjeo6qry	t39dtlxijbw	2	\N	\N	\N
yzl9cxcodyh	4ngvtisf6xj	6	\N	\N	\N
yzl9cxcodyh	60gtfob2j2w	4	\N	\N	\N
yzl9cxcodyh	am0kdukacbw	5	\N	\N	\N
yzl9cxcodyh	t39dtlxijbw	3	\N	\N	\N
nocobase-admin-menu	4ngvtisf6xj	7	\N	\N	\N
nocobase-admin-menu	60gtfob2j2w	5	\N	\N	\N
nocobase-admin-menu	am0kdukacbw	6	\N	\N	\N
nocobase-admin-menu	t39dtlxijbw	4	\N	\N	\N
t39dtlxijbw	t39dtlxijbw	0	f	properties	\N
7506cogk9zp	t39dtlxijbw	1	\N	\N	1
fqszjhpm5on	fqszjhpm5on	0	t	properties	\N
jw33aql9up0	fqszjhpm5on	1	\N	\N	1
573tcw3woyj	573tcw3woyj	0	f	properties	\N
fqszjhpm5on	573tcw3woyj	1	\N	\N	1
jw33aql9up0	573tcw3woyj	2	\N	\N	1
nocobase-admin-menu	fqszjhpm5on	2	\N	\N	\N
nocobase-admin-menu	573tcw3woyj	3	\N	\N	\N
jw33aql9up0	jw33aql9up0	0	f	properties	\N
nocobase-admin-menu	jw33aql9up0	1	\N	\N	3
434zs6mb1dw	434zs6mb1dw	0	t	properties	\N
har0uexrdoo	434zs6mb1dw	1	\N	\N	1
mx304c2rwqf	mx304c2rwqf	0	f	properties	\N
434zs6mb1dw	mx304c2rwqf	1	\N	\N	1
har0uexrdoo	mx304c2rwqf	2	\N	\N	1
nocobase-admin-menu	434zs6mb1dw	2	\N	\N	\N
nocobase-admin-menu	mx304c2rwqf	3	\N	\N	\N
har0uexrdoo	har0uexrdoo	0	f	properties	\N
nocobase-admin-menu	har0uexrdoo	1	\N	\N	4
r5un1uyozh9	r5un1uyozh9	0	f	properties	\N
lzkse4lyz9n	r5un1uyozh9	1	\N	\N	1
nd45b9xthsl	nd45b9xthsl	0	f	properties	\N
r5un1uyozh9	nd45b9xthsl	1	\N	\N	1
lzkse4lyz9n	nd45b9xthsl	2	\N	\N	1
smrh2vbi640	smrh2vbi640	0	f	properties	\N
nd45b9xthsl	smrh2vbi640	1	\N	\N	1
r5un1uyozh9	smrh2vbi640	2	\N	\N	1
lzkse4lyz9n	smrh2vbi640	3	\N	\N	1
8165x6k8v0x	8165x6k8v0x	0	f	properties	\N
smrh2vbi640	8165x6k8v0x	1	\N	\N	1
nd45b9xthsl	8165x6k8v0x	2	\N	\N	1
r5un1uyozh9	8165x6k8v0x	3	\N	\N	1
lzkse4lyz9n	8165x6k8v0x	4	\N	\N	1
mx304c2rwqf	r5un1uyozh9	2	\N	\N	\N
mx304c2rwqf	nd45b9xthsl	3	\N	\N	\N
mx304c2rwqf	smrh2vbi640	4	\N	\N	\N
mx304c2rwqf	8165x6k8v0x	5	\N	\N	\N
434zs6mb1dw	lzkse4lyz9n	2	\N	\N	\N
434zs6mb1dw	r5un1uyozh9	3	\N	\N	\N
434zs6mb1dw	nd45b9xthsl	4	\N	\N	\N
434zs6mb1dw	smrh2vbi640	5	\N	\N	\N
434zs6mb1dw	8165x6k8v0x	6	\N	\N	\N
har0uexrdoo	lzkse4lyz9n	3	\N	\N	\N
har0uexrdoo	r5un1uyozh9	4	\N	\N	\N
har0uexrdoo	nd45b9xthsl	5	\N	\N	\N
har0uexrdoo	smrh2vbi640	6	\N	\N	\N
har0uexrdoo	8165x6k8v0x	7	\N	\N	\N
nocobase-admin-menu	lzkse4lyz9n	4	\N	\N	\N
nocobase-admin-menu	r5un1uyozh9	5	\N	\N	\N
nocobase-admin-menu	nd45b9xthsl	6	\N	\N	\N
nocobase-admin-menu	smrh2vbi640	7	\N	\N	\N
nocobase-admin-menu	8165x6k8v0x	8	\N	\N	\N
lzkse4lyz9n	lzkse4lyz9n	0	f	properties	\N
mx304c2rwqf	lzkse4lyz9n	1	\N	\N	1
\.


--
-- TOC entry 3840 (class 0 OID 17083)
-- Dependencies: 276
-- Data for Name: uiSchemas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."uiSchemas" ("x-uid", name, schema) FROM stdin;
nocobase-admin-menu	qsqc2fc7gzt	{"type":"void","x-component":"Menu","x-designer":"Menu.Designer","x-initializer":"MenuItemInitializers","x-component-props":{"mode":"mix","theme":"dark","onSelect":"{{ onSelect }}","sideMenuRefScopeKey":"sideMenuRef"}}
yzl9cxcodyh	galm02xw5z7	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Trang Chủ","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{"icon":"bankoutlined"},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}],"x-app-version":"1.3.51"}
7506cogk9zp	ab1texauiim	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock","x-app-version":"1.3.51"}
073buw1m70l	lms2yhoaqv4	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Dashboard","x-component":"Menu.SubMenu","x-decorator":"ACLMenuItemProvider","x-component-props":{"icon":"buildoutlined"},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}],"x-app-version":"1.3.51"}
t39dtlxijbw	sy9khkhgab6	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
60gtfob2j2w	wxcq1d3v1f8	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
am0kdukacbw	r1d2rtcp1t9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"CardItem","x-settings":"blockSettings:landing","x-app-version":"1.3.51"}
4ngvtisf6xj	landing	{"_isJSONSchemaObject":true,"version":"2.0","x-component":"Landing","x-app-version":"1.3.51"}
ywqwjeo6qry	page	{"x-uid":"ywqwjeo6qry","name":"page","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page","x-app-version":"1.3.51","x-component-props":{"disablePageHeader":true}}
jw33aql9up0	odrl2wc0pdm	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"cscssc","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{"icon":"alipaycircleoutlined"},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}],"x-app-version":"1.3.51"}
fqszjhpm5on	page	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page","x-app-version":"1.3.51"}
573tcw3woyj	yyvoanf2z7o	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock","x-app-version":"1.3.51"}
har0uexrdoo	g71f2z0s5ql	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"cccccc","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}],"x-app-version":"1.3.51"}
434zs6mb1dw	page	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page","x-app-version":"1.3.51"}
mx304c2rwqf	3nfkchzbk69	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock","x-app-version":"1.3.51"}
lzkse4lyz9n	e0p7xkkfb0e	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
r5un1uyozh9	5kd0r0so9nv	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
nd45b9xthsl	nz56xes5vtt	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"DataBlockProvider","x-decorator-props":{"myHeaderPicker":{},"dataSource":"main","collection":"users","action":"list"},"x-component":"CardItem","x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:header picker","x-designer":"FormV2.Designer","x-component-props":{"useConfigureFields":true},"x-use-decorator-props":"useBlockScopeDecoratorProps","x-app-version":"1.3.51"}
smrh2vbi640	header picker	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"HeaderPickerBlock","x-app-version":"1.3.51"}
8165x6k8v0x	fields	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"info:configureFields","x-app-version":"1.3.51"}
\.


--
-- TOC entry 3841 (class 0 OID 17089)
-- Dependencies: 277
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, "createdAt", "updatedAt", nickname, username, email, phone, password, "appLang", "resetToken", "systemSettings", sort, "createdById", "updatedById") FROM stdin;
1	2024-12-04 09:18:59.855+00	2024-12-04 09:18:59.855+00	Super Admin	nocobase	admin@nocobase.com	\N	0825501766129c55ad8995f0dcae9519a915a77023debaae2f147951dc0164b4	\N	\N	{}	1	\N	\N
\.


--
-- TOC entry 3842 (class 0 OID 17095)
-- Dependencies: 278
-- Data for Name: usersAuthenticators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."usersAuthenticators" ("createdAt", "updatedAt", authenticator, "userId", uuid, nickname, avatar, meta, "createdById", "updatedById") FROM stdin;
\.


--
-- TOC entry 3844 (class 0 OID 17104)
-- Dependencies: 280
-- Data for Name: users_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_jobs (id, "createdAt", "updatedAt", "jobId", "userId", "executionId", "nodeId", "workflowId", status, result) FROM stdin;
\.


--
-- TOC entry 3846 (class 0 OID 17110)
-- Dependencies: 282
-- Data for Name: verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.verifications (id, "createdAt", "updatedAt", type, receiver, status, "expiresAt", content, "providerId") FROM stdin;
\.


--
-- TOC entry 3847 (class 0 OID 17116)
-- Dependencies: 283
-- Data for Name: verifications_providers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.verifications_providers (id, "createdAt", "updatedAt", title, type, options, "default") FROM stdin;
\.


--
-- TOC entry 3848 (class 0 OID 17121)
-- Dependencies: 284
-- Data for Name: workflows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.workflows (id, "createdAt", "updatedAt", key, title, enabled, description, type, "triggerTitle", config, executed, "allExecuted", current, sync, options) FROM stdin;
\.


--
-- TOC entry 3893 (class 0 OID 0)
-- Dependencies: 220
-- Name: applicationPlugins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."applicationPlugins_id_seq"', 60, true);


--
-- TOC entry 3894 (class 0 OID 0)
-- Dependencies: 222
-- Name: applicationVersion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."applicationVersion_id_seq"', 3, true);


--
-- TOC entry 3895 (class 0 OID 0)
-- Dependencies: 224
-- Name: attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attachments_id_seq', 1, true);


--
-- TOC entry 3896 (class 0 OID 0)
-- Dependencies: 226
-- Name: authenticators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authenticators_id_seq', 1, true);


--
-- TOC entry 3897 (class 0 OID 0)
-- Dependencies: 229
-- Name: collectionCategories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."collectionCategories_id_seq"', 1, false);


--
-- TOC entry 3898 (class 0 OID 0)
-- Dependencies: 240
-- Name: dataSourcesRolesResourcesActions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."dataSourcesRolesResourcesActions_id_seq"', 1, false);


--
-- TOC entry 3899 (class 0 OID 0)
-- Dependencies: 242
-- Name: dataSourcesRolesResourcesScopes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."dataSourcesRolesResourcesScopes_id_seq"', 2, true);


--
-- TOC entry 3900 (class 0 OID 0)
-- Dependencies: 243
-- Name: dataSourcesRolesResources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."dataSourcesRolesResources_id_seq"', 1, false);


--
-- TOC entry 3901 (class 0 OID 0)
-- Dependencies: 245
-- Name: executions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.executions_id_seq', 1, false);


--
-- TOC entry 3902 (class 0 OID 0)
-- Dependencies: 248
-- Name: flow_nodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.flow_nodes_id_seq', 1, false);


--
-- TOC entry 3903 (class 0 OID 0)
-- Dependencies: 251
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- TOC entry 3904 (class 0 OID 0)
-- Dependencies: 256
-- Name: rolesResourcesActions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."rolesResourcesActions_id_seq"', 1, false);


--
-- TOC entry 3905 (class 0 OID 0)
-- Dependencies: 258
-- Name: rolesResourcesScopes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."rolesResourcesScopes_id_seq"', 1, false);


--
-- TOC entry 3906 (class 0 OID 0)
-- Dependencies: 259
-- Name: rolesResources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."rolesResources_id_seq"', 1, false);


--
-- TOC entry 3907 (class 0 OID 0)
-- Dependencies: 263
-- Name: sequences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sequences_id_seq', 1, false);


--
-- TOC entry 3908 (class 0 OID 0)
-- Dependencies: 266
-- Name: storages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.storages_id_seq', 1, true);


--
-- TOC entry 3909 (class 0 OID 0)
-- Dependencies: 267
-- Name: student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_id_seq', 1, false);


--
-- TOC entry 3910 (class 0 OID 0)
-- Dependencies: 269
-- Name: systemSettings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."systemSettings_id_seq"', 1, true);


--
-- TOC entry 3911 (class 0 OID 0)
-- Dependencies: 271
-- Name: tokenBlacklist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tokenBlacklist_id_seq"', 1, false);


--
-- TOC entry 3912 (class 0 OID 0)
-- Dependencies: 273
-- Name: uiSchemaServerHooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."uiSchemaServerHooks_id_seq"', 1, false);


--
-- TOC entry 3913 (class 0 OID 0)
-- Dependencies: 279
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- TOC entry 3914 (class 0 OID 0)
-- Dependencies: 281
-- Name: users_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_jobs_id_seq', 1, false);


--
-- TOC entry 3915 (class 0 OID 0)
-- Dependencies: 285
-- Name: workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.workflows_id_seq', 1, false);


--
-- TOC entry 3475 (class 2606 OID 17157)
-- Name: kafka-topics kafka-topics_pkey; Type: CONSTRAINT; Schema: KafkaTopic; Owner: postgres
--

ALTER TABLE ONLY "KafkaTopic"."kafka-topics"
    ADD CONSTRAINT "kafka-topics_pkey" PRIMARY KEY (id);


--
-- TOC entry 3477 (class 2606 OID 17159)
-- Name: applicationPlugins applicationPlugins_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationPlugins"
    ADD CONSTRAINT "applicationPlugins_name_key" UNIQUE (name);


--
-- TOC entry 3479 (class 2606 OID 17161)
-- Name: applicationPlugins applicationPlugins_packageName_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationPlugins"
    ADD CONSTRAINT "applicationPlugins_packageName_key" UNIQUE ("packageName");


--
-- TOC entry 3481 (class 2606 OID 17163)
-- Name: applicationPlugins applicationPlugins_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationPlugins"
    ADD CONSTRAINT "applicationPlugins_pkey" PRIMARY KEY (id);


--
-- TOC entry 3483 (class 2606 OID 17165)
-- Name: applicationVersion applicationVersion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationVersion"
    ADD CONSTRAINT "applicationVersion_pkey" PRIMARY KEY (id);


--
-- TOC entry 3486 (class 2606 OID 17167)
-- Name: attachments attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachments
    ADD CONSTRAINT attachments_pkey PRIMARY KEY (id);


--
-- TOC entry 3490 (class 2606 OID 17169)
-- Name: authenticators authenticators_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authenticators
    ADD CONSTRAINT authenticators_name_key UNIQUE (name);


--
-- TOC entry 3492 (class 2606 OID 17171)
-- Name: authenticators authenticators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authenticators
    ADD CONSTRAINT authenticators_pkey PRIMARY KEY (id);


--
-- TOC entry 3494 (class 2606 OID 17173)
-- Name: chinaRegions chinaRegions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."chinaRegions"
    ADD CONSTRAINT "chinaRegions_pkey" PRIMARY KEY (code);


--
-- TOC entry 3497 (class 2606 OID 17175)
-- Name: collectionCategories collectionCategories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."collectionCategories"
    ADD CONSTRAINT "collectionCategories_pkey" PRIMARY KEY (id);


--
-- TOC entry 3499 (class 2606 OID 17177)
-- Name: collectionCategory collectionCategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."collectionCategory"
    ADD CONSTRAINT "collectionCategory_pkey" PRIMARY KEY ("collectionName", "categoryId");


--
-- TOC entry 3502 (class 2606 OID 17179)
-- Name: collections collections_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_name_key UNIQUE (name);


--
-- TOC entry 3504 (class 2606 OID 17181)
-- Name: collections collections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_pkey PRIMARY KEY (key);


--
-- TOC entry 3508 (class 2606 OID 17183)
-- Name: customRequestsRoles customRequestsRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."customRequestsRoles"
    ADD CONSTRAINT "customRequestsRoles_pkey" PRIMARY KEY ("customRequestKey", "roleName");


--
-- TOC entry 3506 (class 2606 OID 17185)
-- Name: customRequests customRequests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."customRequests"
    ADD CONSTRAINT "customRequests_pkey" PRIMARY KEY (key);


--
-- TOC entry 3513 (class 2606 OID 17187)
-- Name: dataSourcesCollections dataSourcesCollections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesCollections"
    ADD CONSTRAINT "dataSourcesCollections_pkey" PRIMARY KEY (key);


--
-- TOC entry 3517 (class 2606 OID 17189)
-- Name: dataSourcesFields dataSourcesFields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesFields"
    ADD CONSTRAINT "dataSourcesFields_pkey" PRIMARY KEY (key);


--
-- TOC entry 3530 (class 2606 OID 17191)
-- Name: dataSourcesRolesResourcesActions dataSourcesRolesResourcesActions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResourcesActions"
    ADD CONSTRAINT "dataSourcesRolesResourcesActions_pkey" PRIMARY KEY (id);


--
-- TOC entry 3534 (class 2606 OID 17193)
-- Name: dataSourcesRolesResourcesScopes dataSourcesRolesResourcesScopes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResourcesScopes"
    ADD CONSTRAINT "dataSourcesRolesResourcesScopes_pkey" PRIMARY KEY (id);


--
-- TOC entry 3526 (class 2606 OID 17195)
-- Name: dataSourcesRolesResources dataSourcesRolesResources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResources"
    ADD CONSTRAINT "dataSourcesRolesResources_pkey" PRIMARY KEY (id);


--
-- TOC entry 3522 (class 2606 OID 17197)
-- Name: dataSourcesRoles dataSourcesRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRoles"
    ADD CONSTRAINT "dataSourcesRoles_pkey" PRIMARY KEY (id);


--
-- TOC entry 3511 (class 2606 OID 17199)
-- Name: dataSources dataSources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSources"
    ADD CONSTRAINT "dataSources_pkey" PRIMARY KEY (key);


--
-- TOC entry 3537 (class 2606 OID 17201)
-- Name: executions executions_eventKey_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.executions
    ADD CONSTRAINT "executions_eventKey_key" UNIQUE ("eventKey");


--
-- TOC entry 3539 (class 2606 OID 17203)
-- Name: executions executions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.executions
    ADD CONSTRAINT executions_pkey PRIMARY KEY (id);


--
-- TOC entry 3544 (class 2606 OID 17205)
-- Name: fields fields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fields
    ADD CONSTRAINT fields_pkey PRIMARY KEY (key);


--
-- TOC entry 3548 (class 2606 OID 17207)
-- Name: flow_nodes flow_nodes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flow_nodes
    ADD CONSTRAINT flow_nodes_pkey PRIMARY KEY (id);


--
-- TOC entry 3552 (class 2606 OID 17209)
-- Name: iframeHtml iframeHtml_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."iframeHtml"
    ADD CONSTRAINT "iframeHtml_pkey" PRIMARY KEY (id);


--
-- TOC entry 3557 (class 2606 OID 17211)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3560 (class 2606 OID 17213)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (name);


--
-- TOC entry 3569 (class 2606 OID 17215)
-- Name: rolesResourcesActions rolesResourcesActions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResourcesActions"
    ADD CONSTRAINT "rolesResourcesActions_pkey" PRIMARY KEY (id);


--
-- TOC entry 3573 (class 2606 OID 17217)
-- Name: rolesResourcesScopes rolesResourcesScopes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResourcesScopes"
    ADD CONSTRAINT "rolesResourcesScopes_pkey" PRIMARY KEY (id);


--
-- TOC entry 3566 (class 2606 OID 17219)
-- Name: rolesResources rolesResources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResources"
    ADD CONSTRAINT "rolesResources_pkey" PRIMARY KEY (id);


--
-- TOC entry 3575 (class 2606 OID 17221)
-- Name: rolesUischemas rolesUischemas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesUischemas"
    ADD CONSTRAINT "rolesUischemas_pkey" PRIMARY KEY ("roleName", "uiSchemaXUid");


--
-- TOC entry 3578 (class 2606 OID 17223)
-- Name: rolesUsers rolesUsers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesUsers"
    ADD CONSTRAINT "rolesUsers_pkey" PRIMARY KEY ("roleName", "userId");


--
-- TOC entry 3562 (class 2606 OID 17225)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (name);


--
-- TOC entry 3564 (class 2606 OID 17227)
-- Name: roles roles_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_title_key UNIQUE (title);


--
-- TOC entry 3581 (class 2606 OID 17229)
-- Name: sequences sequences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sequences
    ADD CONSTRAINT sequences_pkey PRIMARY KEY (id);


--
-- TOC entry 3583 (class 2606 OID 17231)
-- Name: smart_contracts smart_contracts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.smart_contracts
    ADD CONSTRAINT smart_contracts_pkey PRIMARY KEY (id);


--
-- TOC entry 3585 (class 2606 OID 17233)
-- Name: storages storages_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storages
    ADD CONSTRAINT storages_name_key UNIQUE (name);


--
-- TOC entry 3587 (class 2606 OID 17235)
-- Name: storages storages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storages
    ADD CONSTRAINT storages_pkey PRIMARY KEY (id);


--
-- TOC entry 3589 (class 2606 OID 17237)
-- Name: systemSettings systemSettings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."systemSettings"
    ADD CONSTRAINT "systemSettings_pkey" PRIMARY KEY (id);


--
-- TOC entry 3592 (class 2606 OID 17239)
-- Name: tokenBlacklist tokenBlacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tokenBlacklist"
    ADD CONSTRAINT "tokenBlacklist_pkey" PRIMARY KEY (id);


--
-- TOC entry 3595 (class 2606 OID 17241)
-- Name: uiSchemaServerHooks uiSchemaServerHooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemaServerHooks"
    ADD CONSTRAINT "uiSchemaServerHooks_pkey" PRIMARY KEY (id);


--
-- TOC entry 3598 (class 2606 OID 17243)
-- Name: uiSchemaTemplates uiSchemaTemplates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemaTemplates"
    ADD CONSTRAINT "uiSchemaTemplates_pkey" PRIMARY KEY (key);


--
-- TOC entry 3601 (class 2606 OID 17245)
-- Name: uiSchemaTreePath uiSchemaTreePath_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemaTreePath"
    ADD CONSTRAINT "uiSchemaTreePath_pkey" PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 3604 (class 2606 OID 17247)
-- Name: uiSchemas uiSchemas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemas"
    ADD CONSTRAINT "uiSchemas_pkey" PRIMARY KEY ("x-uid");


--
-- TOC entry 3617 (class 2606 OID 17249)
-- Name: usersAuthenticators usersAuthenticators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."usersAuthenticators"
    ADD CONSTRAINT "usersAuthenticators_pkey" PRIMARY KEY (authenticator, "userId");


--
-- TOC entry 3607 (class 2606 OID 17251)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 3622 (class 2606 OID 17253)
-- Name: users_jobs users_jobs_jobId_userId_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_jobs
    ADD CONSTRAINT "users_jobs_jobId_userId_key" UNIQUE ("jobId", "userId");


--
-- TOC entry 3626 (class 2606 OID 17255)
-- Name: users_jobs users_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_jobs
    ADD CONSTRAINT users_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3609 (class 2606 OID 17257)
-- Name: users users_phone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);


--
-- TOC entry 3611 (class 2606 OID 17259)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3613 (class 2606 OID 17261)
-- Name: users users_resetToken_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_resetToken_key" UNIQUE ("resetToken");


--
-- TOC entry 3615 (class 2606 OID 17263)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 3630 (class 2606 OID 17265)
-- Name: verifications verifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verifications
    ADD CONSTRAINT verifications_pkey PRIMARY KEY (id);


--
-- TOC entry 3633 (class 2606 OID 17267)
-- Name: verifications_providers verifications_providers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verifications_providers
    ADD CONSTRAINT verifications_providers_pkey PRIMARY KEY (id);


--
-- TOC entry 3636 (class 2606 OID 17269)
-- Name: workflows workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workflows
    ADD CONSTRAINT workflows_pkey PRIMARY KEY (id);


--
-- TOC entry 3484 (class 1259 OID 17270)
-- Name: attachments_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX attachments_created_by_id ON public.attachments USING btree ("createdById");


--
-- TOC entry 3487 (class 1259 OID 17271)
-- Name: attachments_storage_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX attachments_storage_id ON public.attachments USING btree ("storageId");


--
-- TOC entry 3488 (class 1259 OID 17272)
-- Name: authenticators_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authenticators_created_by_id ON public.authenticators USING btree ("createdById");


--
-- TOC entry 3495 (class 1259 OID 17273)
-- Name: china_regions_parent_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX china_regions_parent_code ON public."chinaRegions" USING btree ("parentCode");


--
-- TOC entry 3500 (class 1259 OID 17274)
-- Name: collection_category_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX collection_category_category_id ON public."collectionCategory" USING btree ("categoryId");


--
-- TOC entry 3509 (class 1259 OID 17275)
-- Name: custom_requests_roles_role_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX custom_requests_roles_role_name ON public."customRequestsRoles" USING btree ("roleName");


--
-- TOC entry 3514 (class 1259 OID 17276)
-- Name: data_sources_collections_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_collections_data_source_key ON public."dataSourcesCollections" USING btree ("dataSourceKey");


--
-- TOC entry 3515 (class 1259 OID 17277)
-- Name: data_sources_collections_name_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX data_sources_collections_name_data_source_key ON public."dataSourcesCollections" USING btree (name, "dataSourceKey");


--
-- TOC entry 3518 (class 1259 OID 17278)
-- Name: data_sources_fields_collection_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_fields_collection_key ON public."dataSourcesFields" USING btree ("collectionKey");


--
-- TOC entry 3519 (class 1259 OID 17279)
-- Name: data_sources_fields_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_fields_data_source_key ON public."dataSourcesFields" USING btree ("dataSourceKey");


--
-- TOC entry 3520 (class 1259 OID 17280)
-- Name: data_sources_fields_name_collection_name_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX data_sources_fields_name_collection_name_data_source_key ON public."dataSourcesFields" USING btree (name, "collectionName", "dataSourceKey");


--
-- TOC entry 3523 (class 1259 OID 17281)
-- Name: data_sources_roles_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_data_source_key ON public."dataSourcesRoles" USING btree ("dataSourceKey");


--
-- TOC entry 3531 (class 1259 OID 17282)
-- Name: data_sources_roles_resources_actions_roles_resource_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_actions_roles_resource_id ON public."dataSourcesRolesResourcesActions" USING btree ("rolesResourceId");


--
-- TOC entry 3532 (class 1259 OID 17283)
-- Name: data_sources_roles_resources_actions_scope_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_actions_scope_id ON public."dataSourcesRolesResourcesActions" USING btree ("scopeId");


--
-- TOC entry 3527 (class 1259 OID 17284)
-- Name: data_sources_roles_resources_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_data_source_key ON public."dataSourcesRolesResources" USING btree ("dataSourceKey");


--
-- TOC entry 3528 (class 1259 OID 17285)
-- Name: data_sources_roles_resources_role_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_role_name ON public."dataSourcesRolesResources" USING btree ("roleName");


--
-- TOC entry 3535 (class 1259 OID 17286)
-- Name: data_sources_roles_resources_scopes_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_scopes_data_source_key ON public."dataSourcesRolesResourcesScopes" USING btree ("dataSourceKey");


--
-- TOC entry 3524 (class 1259 OID 17287)
-- Name: data_sources_roles_role_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_role_name ON public."dataSourcesRoles" USING btree ("roleName");


--
-- TOC entry 3540 (class 1259 OID 17288)
-- Name: executions_workflow_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX executions_workflow_id ON public.executions USING btree ("workflowId");


--
-- TOC entry 3541 (class 1259 OID 17289)
-- Name: fields_collection_name_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX fields_collection_name_name ON public.fields USING btree ("collectionName", name);


--
-- TOC entry 3542 (class 1259 OID 17290)
-- Name: fields_parent_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fields_parent_key ON public.fields USING btree ("parentKey");


--
-- TOC entry 3545 (class 1259 OID 17291)
-- Name: fields_reverse_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fields_reverse_key ON public.fields USING btree ("reverseKey");


--
-- TOC entry 3546 (class 1259 OID 17292)
-- Name: flow_nodes_downstream_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX flow_nodes_downstream_id ON public.flow_nodes USING btree ("downstreamId");


--
-- TOC entry 3549 (class 1259 OID 17293)
-- Name: flow_nodes_upstream_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX flow_nodes_upstream_id ON public.flow_nodes USING btree ("upstreamId");


--
-- TOC entry 3550 (class 1259 OID 17294)
-- Name: flow_nodes_workflow_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX flow_nodes_workflow_id ON public.flow_nodes USING btree ("workflowId");


--
-- TOC entry 3553 (class 1259 OID 17295)
-- Name: iframe_html_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX iframe_html_created_by_id ON public."iframeHtml" USING btree ("createdById");


--
-- TOC entry 3554 (class 1259 OID 17296)
-- Name: jobs_execution_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_execution_id ON public.jobs USING btree ("executionId");


--
-- TOC entry 3555 (class 1259 OID 17297)
-- Name: jobs_node_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_node_id ON public.jobs USING btree ("nodeId");


--
-- TOC entry 3558 (class 1259 OID 17298)
-- Name: jobs_upstream_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_upstream_id ON public.jobs USING btree ("upstreamId");


--
-- TOC entry 3570 (class 1259 OID 17299)
-- Name: roles_resources_actions_roles_resource_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX roles_resources_actions_roles_resource_id ON public."rolesResourcesActions" USING btree ("rolesResourceId");


--
-- TOC entry 3571 (class 1259 OID 17300)
-- Name: roles_resources_actions_scope_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX roles_resources_actions_scope_id ON public."rolesResourcesActions" USING btree ("scopeId");


--
-- TOC entry 3567 (class 1259 OID 17301)
-- Name: roles_resources_role_name_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX roles_resources_role_name_name ON public."rolesResources" USING btree ("roleName", name);


--
-- TOC entry 3576 (class 1259 OID 17302)
-- Name: roles_uischemas_ui_schema_x_uid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX roles_uischemas_ui_schema_x_uid ON public."rolesUischemas" USING btree ("uiSchemaXUid");


--
-- TOC entry 3579 (class 1259 OID 17303)
-- Name: roles_users_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX roles_users_user_id ON public."rolesUsers" USING btree ("userId");


--
-- TOC entry 3590 (class 1259 OID 17304)
-- Name: system_settings_logo_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX system_settings_logo_id ON public."systemSettings" USING btree ("logoId");


--
-- TOC entry 3593 (class 1259 OID 17305)
-- Name: token_blacklist_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX token_blacklist_token ON public."tokenBlacklist" USING btree (token);


--
-- TOC entry 3596 (class 1259 OID 17306)
-- Name: ui_schema_server_hooks_uid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ui_schema_server_hooks_uid ON public."uiSchemaServerHooks" USING btree (uid);


--
-- TOC entry 3599 (class 1259 OID 17307)
-- Name: ui_schema_templates_uid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ui_schema_templates_uid ON public."uiSchemaTemplates" USING btree (uid);


--
-- TOC entry 3602 (class 1259 OID 17308)
-- Name: ui_schema_tree_path_descendant; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ui_schema_tree_path_descendant ON public."uiSchemaTreePath" USING btree (descendant);


--
-- TOC entry 3618 (class 1259 OID 17309)
-- Name: users_authenticators_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_authenticators_created_by_id ON public."usersAuthenticators" USING btree ("createdById");


--
-- TOC entry 3619 (class 1259 OID 17310)
-- Name: users_authenticators_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_authenticators_user_id ON public."usersAuthenticators" USING btree ("userId");


--
-- TOC entry 3605 (class 1259 OID 17311)
-- Name: users_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_created_by_id ON public.users USING btree ("createdById");


--
-- TOC entry 3620 (class 1259 OID 17312)
-- Name: users_jobs_execution_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_execution_id ON public.users_jobs USING btree ("executionId");


--
-- TOC entry 3623 (class 1259 OID 17313)
-- Name: users_jobs_job_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_job_id ON public.users_jobs USING btree ("jobId");


--
-- TOC entry 3624 (class 1259 OID 17314)
-- Name: users_jobs_node_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_node_id ON public.users_jobs USING btree ("nodeId");


--
-- TOC entry 3627 (class 1259 OID 17315)
-- Name: users_jobs_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_user_id ON public.users_jobs USING btree ("userId");


--
-- TOC entry 3628 (class 1259 OID 17316)
-- Name: users_jobs_workflow_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_workflow_id ON public.users_jobs USING btree ("workflowId");


--
-- TOC entry 3631 (class 1259 OID 17317)
-- Name: verifications_provider_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX verifications_provider_id ON public.verifications USING btree ("providerId");


--
-- TOC entry 3634 (class 1259 OID 17318)
-- Name: workflows_key_current; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX workflows_key_current ON public.workflows USING btree (key, current);


-- Completed on 2024-12-04 11:20:07 UTC

--
-- PostgreSQL database dump complete
--

