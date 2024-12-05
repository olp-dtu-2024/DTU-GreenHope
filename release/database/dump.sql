--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-12-04 22:00:30 UTC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
DROP INDEX IF EXISTS public.transactions_updated_by_id;
DROP INDEX IF EXISTS public.transactions_fund_id;
DROP INDEX IF EXISTS public.transactions_created_by_id;
DROP INDEX IF EXISTS public.token_blacklist_token;
DROP INDEX IF EXISTS public.t_54opx8rhenu_f_ra5knzz1x22;
DROP INDEX IF EXISTS public.t_1vx9kyb7k1h_f_zvvclxyl9dz;
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
DROP INDEX IF EXISTS public.funds_updated_by_id;
DROP INDEX IF EXISTS public.funds_project_id;
DROP INDEX IF EXISTS public.funds_created_by_id;
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
ALTER TABLE IF EXISTS ONLY public.transactions DROP CONSTRAINT IF EXISTS transactions_pkey;
ALTER TABLE IF EXISTS ONLY public."tokenBlacklist" DROP CONSTRAINT IF EXISTS "tokenBlacklist_pkey";
ALTER TABLE IF EXISTS ONLY public.t_54opx8rhenu DROP CONSTRAINT IF EXISTS t_54opx8rhenu_pkey;
ALTER TABLE IF EXISTS ONLY public.t_1vx9kyb7k1h DROP CONSTRAINT IF EXISTS t_1vx9kyb7k1h_pkey;
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
ALTER TABLE IF EXISTS ONLY public.proposes DROP CONSTRAINT IF EXISTS proposes_pkey;
ALTER TABLE IF EXISTS ONLY public.projects DROP CONSTRAINT IF EXISTS projects_pkey;
ALTER TABLE IF EXISTS ONLY public.migrations DROP CONSTRAINT IF EXISTS migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.kafka_topics DROP CONSTRAINT IF EXISTS kafka_topics_pkey;
ALTER TABLE IF EXISTS ONLY public.kafka_configs DROP CONSTRAINT IF EXISTS kafka_configs_pkey;
ALTER TABLE IF EXISTS ONLY public.jobs DROP CONSTRAINT IF EXISTS jobs_pkey;
ALTER TABLE IF EXISTS ONLY public."iframeHtml" DROP CONSTRAINT IF EXISTS "iframeHtml_pkey";
ALTER TABLE IF EXISTS ONLY public.funds DROP CONSTRAINT IF EXISTS funds_pkey;
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
ALTER TABLE IF EXISTS public.transactions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."tokenBlacklist" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."systemSettings" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.storages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.sequences ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."rolesResourcesScopes" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."rolesResourcesActions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."rolesResources" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.proposes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.projects ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jobs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.funds ALTER COLUMN id DROP DEFAULT;
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
DROP SEQUENCE IF EXISTS public.transactions_id_seq;
DROP TABLE IF EXISTS public.transactions;
DROP SEQUENCE IF EXISTS public."tokenBlacklist_id_seq";
DROP TABLE IF EXISTS public."tokenBlacklist";
DROP TABLE IF EXISTS public.t_54opx8rhenu;
DROP TABLE IF EXISTS public.t_1vx9kyb7k1h;
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
DROP SEQUENCE IF EXISTS public.proposes_id_seq;
DROP TABLE IF EXISTS public.proposes;
DROP SEQUENCE IF EXISTS public.projects_id_seq;
DROP TABLE IF EXISTS public.projects;
DROP TABLE IF EXISTS public.migrations;
DROP TABLE IF EXISTS public.kafka_topics;
DROP TABLE IF EXISTS public.kafka_configs;
DROP SEQUENCE IF EXISTS public.jobs_id_seq;
DROP TABLE IF EXISTS public.jobs;
DROP TABLE IF EXISTS public."iframeHtml";
DROP SEQUENCE IF EXISTS public.funds_id_seq;
DROP TABLE IF EXISTS public.funds;
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
-- TOC entry 6 (class 2615 OID 30535)
-- Name: KafkaTopic; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "KafkaTopic";


ALTER SCHEMA "KafkaTopic" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 30536)
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
-- TOC entry 217 (class 1259 OID 30541)
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
-- TOC entry 218 (class 1259 OID 30546)
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
-- TOC entry 3926 (class 0 OID 0)
-- Dependencies: 218
-- Name: applicationPlugins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."applicationPlugins_id_seq" OWNED BY public."applicationPlugins".id;


--
-- TOC entry 219 (class 1259 OID 30547)
-- Name: applicationVersion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."applicationVersion" (
    id bigint NOT NULL,
    value character varying(255)
);


ALTER TABLE public."applicationVersion" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 30550)
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
-- TOC entry 3927 (class 0 OID 0)
-- Dependencies: 220
-- Name: applicationVersion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."applicationVersion_id_seq" OWNED BY public."applicationVersion".id;


--
-- TOC entry 221 (class 1259 OID 30551)
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
-- TOC entry 3928 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN attachments.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.title IS '用户文件名（不含扩展名）';


--
-- TOC entry 3929 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN attachments.filename; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.filename IS '系统文件名（含扩展名）';


--
-- TOC entry 3930 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN attachments.extname; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.extname IS '扩展名（含“.”）';


--
-- TOC entry 3931 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN attachments.size; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.size IS '文件体积（字节）';


--
-- TOC entry 3932 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN attachments.path; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.path IS '相对路径（含“/”前缀）';


--
-- TOC entry 3933 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN attachments.meta; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.meta IS '其他文件信息（如图片的宽高）';


--
-- TOC entry 3934 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN attachments.url; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.url IS '网络访问地址';


--
-- TOC entry 222 (class 1259 OID 30557)
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
-- TOC entry 3935 (class 0 OID 0)
-- Dependencies: 222
-- Name: attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attachments_id_seq OWNED BY public.attachments.id;


--
-- TOC entry 223 (class 1259 OID 30558)
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
-- TOC entry 224 (class 1259 OID 30566)
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
-- TOC entry 3936 (class 0 OID 0)
-- Dependencies: 224
-- Name: authenticators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authenticators_id_seq OWNED BY public.authenticators.id;


--
-- TOC entry 225 (class 1259 OID 30567)
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
-- TOC entry 226 (class 1259 OID 30572)
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
-- TOC entry 227 (class 1259 OID 30578)
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
-- TOC entry 3937 (class 0 OID 0)
-- Dependencies: 227
-- Name: collectionCategories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."collectionCategories_id_seq" OWNED BY public."collectionCategories".id;


--
-- TOC entry 228 (class 1259 OID 30579)
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
-- TOC entry 229 (class 1259 OID 30582)
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
-- TOC entry 230 (class 1259 OID 30590)
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
-- TOC entry 231 (class 1259 OID 30595)
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
-- TOC entry 232 (class 1259 OID 30600)
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
-- TOC entry 233 (class 1259 OID 30607)
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
-- TOC entry 234 (class 1259 OID 30612)
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
-- TOC entry 235 (class 1259 OID 30618)
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
-- TOC entry 236 (class 1259 OID 30623)
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
-- TOC entry 237 (class 1259 OID 30629)
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
-- TOC entry 238 (class 1259 OID 30635)
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
-- TOC entry 3938 (class 0 OID 0)
-- Dependencies: 238
-- Name: dataSourcesRolesResourcesActions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."dataSourcesRolesResourcesActions_id_seq" OWNED BY public."dataSourcesRolesResourcesActions".id;


--
-- TOC entry 239 (class 1259 OID 30636)
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
-- TOC entry 240 (class 1259 OID 30642)
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
-- TOC entry 3939 (class 0 OID 0)
-- Dependencies: 240
-- Name: dataSourcesRolesResourcesScopes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."dataSourcesRolesResourcesScopes_id_seq" OWNED BY public."dataSourcesRolesResourcesScopes".id;


--
-- TOC entry 241 (class 1259 OID 30643)
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
-- TOC entry 3940 (class 0 OID 0)
-- Dependencies: 241
-- Name: dataSourcesRolesResources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."dataSourcesRolesResources_id_seq" OWNED BY public."dataSourcesRolesResources".id;


--
-- TOC entry 242 (class 1259 OID 30644)
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
-- TOC entry 243 (class 1259 OID 30649)
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
-- TOC entry 3941 (class 0 OID 0)
-- Dependencies: 243
-- Name: executions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.executions_id_seq OWNED BY public.executions.id;


--
-- TOC entry 244 (class 1259 OID 30650)
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
-- TOC entry 245 (class 1259 OID 30656)
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
-- TOC entry 246 (class 1259 OID 30662)
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
-- TOC entry 3942 (class 0 OID 0)
-- Dependencies: 246
-- Name: flow_nodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.flow_nodes_id_seq OWNED BY public.flow_nodes.id;


--
-- TOC entry 247 (class 1259 OID 30663)
-- Name: funds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funds (
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    id bigint NOT NULL,
    "createdById" bigint,
    "updatedById" bigint,
    name character varying(255),
    target_amount double precision DEFAULT '0'::double precision,
    current_amount double precision DEFAULT '0'::double precision,
    project_id bigint,
    qr_code_url text
);


ALTER TABLE public.funds OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 30670)
-- Name: funds_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.funds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.funds_id_seq OWNER TO postgres;

--
-- TOC entry 3943 (class 0 OID 0)
-- Dependencies: 248
-- Name: funds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.funds_id_seq OWNED BY public.funds.id;


--
-- TOC entry 249 (class 1259 OID 30671)
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
-- TOC entry 250 (class 1259 OID 30676)
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
-- TOC entry 251 (class 1259 OID 30681)
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
-- TOC entry 3944 (class 0 OID 0)
-- Dependencies: 251
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- TOC entry 252 (class 1259 OID 30682)
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
-- TOC entry 253 (class 1259 OID 30687)
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
-- TOC entry 254 (class 1259 OID 30692)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    name character varying(255) NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 30695)
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    id bigint NOT NULL,
    "createdById" bigint,
    "updatedById" bigint,
    name character varying(255),
    sub_title text,
    description text,
    address character varying(255),
    total_amount double precision
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 30700)
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.projects_id_seq OWNER TO postgres;

--
-- TOC entry 3945 (class 0 OID 0)
-- Dependencies: 256
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- TOC entry 257 (class 1259 OID 30701)
-- Name: proposes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proposes (
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    id bigint NOT NULL,
    "createdById" bigint,
    "updatedById" bigint,
    name character varying(255),
    status character varying(255) DEFAULT 'PENDING'::character varying,
    address character varying(255)
);


ALTER TABLE public.proposes OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 30707)
-- Name: proposes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proposes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proposes_id_seq OWNER TO postgres;

--
-- TOC entry 3946 (class 0 OID 0)
-- Dependencies: 258
-- Name: proposes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proposes_id_seq OWNED BY public.proposes.id;


--
-- TOC entry 259 (class 1259 OID 30708)
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
-- TOC entry 260 (class 1259 OID 30716)
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
-- TOC entry 261 (class 1259 OID 30721)
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
-- TOC entry 262 (class 1259 OID 30727)
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
-- TOC entry 3947 (class 0 OID 0)
-- Dependencies: 262
-- Name: rolesResourcesActions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."rolesResourcesActions_id_seq" OWNED BY public."rolesResourcesActions".id;


--
-- TOC entry 263 (class 1259 OID 30728)
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
-- TOC entry 264 (class 1259 OID 30733)
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
-- TOC entry 3948 (class 0 OID 0)
-- Dependencies: 264
-- Name: rolesResourcesScopes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."rolesResourcesScopes_id_seq" OWNED BY public."rolesResourcesScopes".id;


--
-- TOC entry 265 (class 1259 OID 30734)
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
-- TOC entry 3949 (class 0 OID 0)
-- Dependencies: 265
-- Name: rolesResources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."rolesResources_id_seq" OWNED BY public."rolesResources".id;


--
-- TOC entry 266 (class 1259 OID 30735)
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
-- TOC entry 267 (class 1259 OID 30740)
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
-- TOC entry 268 (class 1259 OID 30743)
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
-- TOC entry 269 (class 1259 OID 30748)
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
-- TOC entry 3950 (class 0 OID 0)
-- Dependencies: 269
-- Name: sequences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sequences_id_seq OWNED BY public.sequences.id;


--
-- TOC entry 270 (class 1259 OID 30749)
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
-- TOC entry 271 (class 1259 OID 30754)
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
-- TOC entry 3951 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN storages.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.title IS '存储引擎名称';


--
-- TOC entry 3952 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN storages.type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.type IS '类型标识，如 local/ali-oss 等';


--
-- TOC entry 3953 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN storages.options; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.options IS '配置项';


--
-- TOC entry 3954 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN storages.rules; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.rules IS '文件规则';


--
-- TOC entry 3955 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN storages.path; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.path IS '存储相对路径模板';


--
-- TOC entry 3956 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN storages."baseUrl"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages."baseUrl" IS '访问地址前缀';


--
-- TOC entry 3957 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN storages."default"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages."default" IS '默认引擎';


--
-- TOC entry 272 (class 1259 OID 30765)
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
-- TOC entry 3958 (class 0 OID 0)
-- Dependencies: 272
-- Name: storages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.storages_id_seq OWNED BY public.storages.id;


--
-- TOC entry 273 (class 1259 OID 30766)
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
-- TOC entry 274 (class 1259 OID 30767)
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
-- TOC entry 275 (class 1259 OID 30776)
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
-- TOC entry 3959 (class 0 OID 0)
-- Dependencies: 275
-- Name: systemSettings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."systemSettings_id_seq" OWNED BY public."systemSettings".id;


--
-- TOC entry 276 (class 1259 OID 30777)
-- Name: t_1vx9kyb7k1h; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_1vx9kyb7k1h (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    f_3gyw0m841j1 bigint NOT NULL,
    f_zvvclxyl9dz bigint NOT NULL
);


ALTER TABLE public.t_1vx9kyb7k1h OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 30780)
-- Name: t_54opx8rhenu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_54opx8rhenu (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    f_jr6kifdk7it bigint NOT NULL,
    f_ra5knzz1x22 bigint NOT NULL
);


ALTER TABLE public.t_54opx8rhenu OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 30783)
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
-- TOC entry 279 (class 1259 OID 30786)
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
-- TOC entry 3960 (class 0 OID 0)
-- Dependencies: 279
-- Name: tokenBlacklist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tokenBlacklist_id_seq" OWNED BY public."tokenBlacklist".id;


--
-- TOC entry 280 (class 1259 OID 30787)
-- Name: transactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transactions (
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    id bigint NOT NULL,
    "createdById" bigint,
    "updatedById" bigint,
    transaction_code character varying(255),
    amount double precision,
    direction character varying(255) DEFAULT 'INCOMING'::character varying,
    fund_id bigint,
    from_account_no character varying(255),
    from_account_name character varying(255),
    from_bank_name character varying(255)
);


ALTER TABLE public.transactions OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 30793)
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transactions_id_seq OWNER TO postgres;

--
-- TOC entry 3961 (class 0 OID 0)
-- Dependencies: 281
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;


--
-- TOC entry 282 (class 1259 OID 30794)
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
-- TOC entry 283 (class 1259 OID 30799)
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
-- TOC entry 3962 (class 0 OID 0)
-- Dependencies: 283
-- Name: uiSchemaServerHooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."uiSchemaServerHooks_id_seq" OWNED BY public."uiSchemaServerHooks".id;


--
-- TOC entry 284 (class 1259 OID 30800)
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
-- TOC entry 285 (class 1259 OID 30805)
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
-- TOC entry 3963 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN "uiSchemaTreePath".type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."uiSchemaTreePath".type IS 'type of node';


--
-- TOC entry 3964 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN "uiSchemaTreePath".sort; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."uiSchemaTreePath".sort IS 'sort of node in adjacency';


--
-- TOC entry 286 (class 1259 OID 30810)
-- Name: uiSchemas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."uiSchemas" (
    "x-uid" character varying(255) NOT NULL,
    name character varying(255),
    schema json DEFAULT '{}'::json
);


ALTER TABLE public."uiSchemas" OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 30816)
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
-- TOC entry 288 (class 1259 OID 30822)
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
-- TOC entry 289 (class 1259 OID 30830)
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
-- TOC entry 3965 (class 0 OID 0)
-- Dependencies: 289
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 290 (class 1259 OID 30831)
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
-- TOC entry 291 (class 1259 OID 30836)
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
-- TOC entry 3966 (class 0 OID 0)
-- Dependencies: 291
-- Name: users_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_jobs_id_seq OWNED BY public.users_jobs.id;


--
-- TOC entry 292 (class 1259 OID 30837)
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
-- TOC entry 293 (class 1259 OID 30843)
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
-- TOC entry 294 (class 1259 OID 30848)
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
-- TOC entry 295 (class 1259 OID 30860)
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
-- TOC entry 3967 (class 0 OID 0)
-- Dependencies: 295
-- Name: workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.workflows_id_seq OWNED BY public.workflows.id;


--
-- TOC entry 3438 (class 2604 OID 30861)
-- Name: applicationPlugins id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationPlugins" ALTER COLUMN id SET DEFAULT nextval('public."applicationPlugins_id_seq"'::regclass);


--
-- TOC entry 3439 (class 2604 OID 30862)
-- Name: applicationVersion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationVersion" ALTER COLUMN id SET DEFAULT nextval('public."applicationVersion_id_seq"'::regclass);


--
-- TOC entry 3440 (class 2604 OID 30863)
-- Name: attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachments ALTER COLUMN id SET DEFAULT nextval('public.attachments_id_seq'::regclass);


--
-- TOC entry 3442 (class 2604 OID 30864)
-- Name: authenticators id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authenticators ALTER COLUMN id SET DEFAULT nextval('public.authenticators_id_seq'::regclass);


--
-- TOC entry 3446 (class 2604 OID 30865)
-- Name: collectionCategories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."collectionCategories" ALTER COLUMN id SET DEFAULT nextval('public."collectionCategories_id_seq"'::regclass);


--
-- TOC entry 3454 (class 2604 OID 30866)
-- Name: dataSourcesRolesResources id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResources" ALTER COLUMN id SET DEFAULT nextval('public."dataSourcesRolesResources_id_seq"'::regclass);


--
-- TOC entry 3456 (class 2604 OID 30867)
-- Name: dataSourcesRolesResourcesActions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResourcesActions" ALTER COLUMN id SET DEFAULT nextval('public."dataSourcesRolesResourcesActions_id_seq"'::regclass);


--
-- TOC entry 3458 (class 2604 OID 30868)
-- Name: dataSourcesRolesResourcesScopes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResourcesScopes" ALTER COLUMN id SET DEFAULT nextval('public."dataSourcesRolesResourcesScopes_id_seq"'::regclass);


--
-- TOC entry 3460 (class 2604 OID 30869)
-- Name: executions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.executions ALTER COLUMN id SET DEFAULT nextval('public.executions_id_seq'::regclass);


--
-- TOC entry 3462 (class 2604 OID 30870)
-- Name: flow_nodes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flow_nodes ALTER COLUMN id SET DEFAULT nextval('public.flow_nodes_id_seq'::regclass);


--
-- TOC entry 3464 (class 2604 OID 30871)
-- Name: funds id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funds ALTER COLUMN id SET DEFAULT nextval('public.funds_id_seq'::regclass);


--
-- TOC entry 3467 (class 2604 OID 30872)
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- TOC entry 3468 (class 2604 OID 30873)
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- TOC entry 3469 (class 2604 OID 30874)
-- Name: proposes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proposes ALTER COLUMN id SET DEFAULT nextval('public.proposes_id_seq'::regclass);


--
-- TOC entry 3474 (class 2604 OID 30875)
-- Name: rolesResources id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResources" ALTER COLUMN id SET DEFAULT nextval('public."rolesResources_id_seq"'::regclass);


--
-- TOC entry 3475 (class 2604 OID 30876)
-- Name: rolesResourcesActions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResourcesActions" ALTER COLUMN id SET DEFAULT nextval('public."rolesResourcesActions_id_seq"'::regclass);


--
-- TOC entry 3477 (class 2604 OID 30877)
-- Name: rolesResourcesScopes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResourcesScopes" ALTER COLUMN id SET DEFAULT nextval('public."rolesResourcesScopes_id_seq"'::regclass);


--
-- TOC entry 3478 (class 2604 OID 30878)
-- Name: sequences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sequences ALTER COLUMN id SET DEFAULT nextval('public.sequences_id_seq'::regclass);


--
-- TOC entry 3479 (class 2604 OID 30879)
-- Name: storages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storages ALTER COLUMN id SET DEFAULT nextval('public.storages_id_seq'::regclass);


--
-- TOC entry 3486 (class 2604 OID 30880)
-- Name: systemSettings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."systemSettings" ALTER COLUMN id SET DEFAULT nextval('public."systemSettings_id_seq"'::regclass);


--
-- TOC entry 3491 (class 2604 OID 30881)
-- Name: tokenBlacklist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tokenBlacklist" ALTER COLUMN id SET DEFAULT nextval('public."tokenBlacklist_id_seq"'::regclass);


--
-- TOC entry 3492 (class 2604 OID 30882)
-- Name: transactions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);


--
-- TOC entry 3494 (class 2604 OID 30883)
-- Name: uiSchemaServerHooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemaServerHooks" ALTER COLUMN id SET DEFAULT nextval('public."uiSchemaServerHooks_id_seq"'::regclass);


--
-- TOC entry 3496 (class 2604 OID 30884)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3501 (class 2604 OID 30885)
-- Name: users_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_jobs ALTER COLUMN id SET DEFAULT nextval('public.users_jobs_id_seq'::regclass);


--
-- TOC entry 3503 (class 2604 OID 30886)
-- Name: workflows id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workflows ALTER COLUMN id SET DEFAULT nextval('public.workflows_id_seq'::regclass);


--
-- TOC entry 3841 (class 0 OID 30536)
-- Dependencies: 216
-- Data for Name: kafka-topics; Type: TABLE DATA; Schema: KafkaTopic; Owner: postgres
--

COPY "KafkaTopic"."kafka-topics" (id, "createdAt", "updatedAt", broker_host, topic_name, type) FROM stdin;
\.


--
-- TOC entry 3842 (class 0 OID 30541)
-- Dependencies: 217
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
54	2024-12-04 09:20:53.146+00	2024-12-04 09:21:45.004+00	@dtu-olp-2024/carousel-nocobase	@dtu-olp-2024/carousel-nocobase	1.0.1	t	t	\N	\N
59	2024-12-04 09:21:27.967+00	2024-12-04 09:21:59.65+00	@dtu-olp-2024/landing-page	@dtu-olp-2024/landing-page	1.0.0	t	t	\N	\N
60	2024-12-04 09:22:14.436+00	2024-12-04 09:22:20.366+00	@dtu-olp-2024/solidity-editor-nocobase	@dtu-olp-2024/solidity-editor-nocobase	1.0.0	t	t	\N	\N
56	2024-12-04 09:21:08.28+00	2024-12-04 09:22:28.387+00	@dtu-olp-2024/progress-nocobase	@dtu-olp-2024/progress-nocobase	1.0.1	t	t	\N	\N
57	2024-12-04 09:21:14.631+00	2024-12-04 09:22:34.281+00	@dtu-olp-2024/rich-block-nocobase	@dtu-olp-2024/rich-block-nocobase	1.0.1	t	t	\N	\N
55	2024-12-04 09:21:02.35+00	2024-12-04 14:48:38.069+00	@dtu-olp-2024/kafka-nocobase	@dtu-olp-2024/kafka-nocobase	1.1.9	t	t	\N	\N
\.


--
-- TOC entry 3844 (class 0 OID 30547)
-- Dependencies: 219
-- Data for Name: applicationVersion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."applicationVersion" (id, value) FROM stdin;
7	1.3.51
\.


--
-- TOC entry 3846 (class 0 OID 30551)
-- Dependencies: 221
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attachments (id, "createdAt", "updatedAt", title, filename, extname, size, mimetype, "storageId", path, meta, url, "createdById", "updatedById") FROM stdin;
1	2024-12-04 09:18:59.821+00	2024-12-04 09:18:59.821+00	nocobase-logo	ac7443fdfbb5b291a7d3f88a38281841.png	.png	11186	image/png	1		{}	/storage/uploads/ac7443fdfbb5b291a7d3f88a38281841.png	\N	\N
2	2024-12-04 14:34:43.426+00	2024-12-04 14:34:43.426+00	image00220230718165933-17068901867521153615427	5135fe9df69fe3cf573468a409ab98b0.jpeg	.jpeg	86421	image/jpeg	1		{}	/storage/uploads/5135fe9df69fe3cf573468a409ab98b0.jpeg	1	1
3	2024-12-04 14:34:43.427+00	2024-12-04 14:34:43.427+00	3c9e299f85f74cac38d8c1d823a44483	fae43ee23709e5f6835cd3214366a3a0.jpg	.jpg	82150	image/jpeg	1		{}	/storage/uploads/fae43ee23709e5f6835cd3214366a3a0.jpg	1	1
4	2024-12-04 14:34:43.428+00	2024-12-04 14:34:43.428+00	Cau-1	5547f85b5476ad65c564e5f337034d7b.jpg	.jpg	138088	image/jpeg	1		{}	/storage/uploads/5547f85b5476ad65c564e5f337034d7b.jpg	1	1
5	2024-12-04 14:34:43.444+00	2024-12-04 14:34:43.444+00	8-1695542504420919663153	d802ef57763c5bf4141c1d5e4f99d846.webp	.webp	157666	image/webp	1		{}	/storage/uploads/d802ef57763c5bf4141c1d5e4f99d846.webp	1	1
6	2024-12-04 14:34:43.457+00	2024-12-04 14:34:43.457+00	image.daidoanket.vn-images-upload-linhdh-12152020-_anh-bai-chinh-2	e6ecf183335c4a50784e7d4529b12aee.jpg	.jpg	533191	image/jpeg	1		{}	/storage/uploads/e6ecf183335c4a50784e7d4529b12aee.jpg	1	1
7	2024-12-04 14:34:43.473+00	2024-12-04 14:34:43.473+00	base64-17326997630791889873410	cca5f9d4563aa3036bd5dc4ab866ccef.webp	.webp	1425200	image/webp	1		{}	/storage/uploads/cca5f9d4563aa3036bd5dc4ab866ccef.webp	1	1
8	2024-12-04 14:34:54.034+00	2024-12-04 14:34:54.034+00	3c9e299f85f74cac38d8c1d823a44483	928a0db424838363c52073cb9b692e5e.jpg	.jpg	82150	image/jpeg	1		{}	/storage/uploads/928a0db424838363c52073cb9b692e5e.jpg	1	1
9	2024-12-04 14:34:54.084+00	2024-12-04 14:34:54.084+00	image00220230718165933-17068901867521153615427	104e733d18943601aaf51b7ec1254437.jpeg	.jpeg	86421	image/jpeg	1		{}	/storage/uploads/104e733d18943601aaf51b7ec1254437.jpeg	1	1
10	2024-12-04 14:34:54.097+00	2024-12-04 14:34:54.097+00	image.daidoanket.vn-images-upload-linhdh-12152020-_anh-bai-chinh-2	644420fd37e1a67669c669b0f7f529c8.jpg	.jpg	533191	image/jpeg	1		{}	/storage/uploads/644420fd37e1a67669c669b0f7f529c8.jpg	1	1
11	2024-12-04 14:43:46.051+00	2024-12-04 14:43:46.051+00	image00220230718165933-17068901867521153615427	ac8b790e6c548f94d00e99307a0f0e81.jpeg	.jpeg	86421	image/jpeg	1		{}	/storage/uploads/ac8b790e6c548f94d00e99307a0f0e81.jpeg	1	1
12	2024-12-04 14:43:46.055+00	2024-12-04 14:43:46.055+00	3c9e299f85f74cac38d8c1d823a44483	fc0d1b31e87bc4b487f666fbdf2e7022.jpg	.jpg	82150	image/jpeg	1		{}	/storage/uploads/fc0d1b31e87bc4b487f666fbdf2e7022.jpg	1	1
13	2024-12-04 14:43:46.07+00	2024-12-04 14:43:46.07+00	image.daidoanket.vn-images-upload-linhdh-12152020-_anh-bai-chinh-2	ee05a062728c27de0d6cc9f7e917a13c.jpg	.jpg	533191	image/jpeg	1		{}	/storage/uploads/ee05a062728c27de0d6cc9f7e917a13c.jpg	1	1
\.


--
-- TOC entry 3848 (class 0 OID 30558)
-- Dependencies: 223
-- Data for Name: authenticators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authenticators (id, "createdAt", "updatedAt", name, "authType", title, description, options, enabled, sort, "createdById", "updatedById") FROM stdin;
1	2024-12-04 09:19:00.141+00	2024-12-04 09:19:00.141+00	basic	Email/Password	\N	Sign in with username/email.	{"public":{"allowSignUp":true}}	t	1	\N	\N
\.


--
-- TOC entry 3850 (class 0 OID 30567)
-- Dependencies: 225
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
-- TOC entry 3851 (class 0 OID 30572)
-- Dependencies: 226
-- Data for Name: collectionCategories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."collectionCategories" (id, "createdAt", "updatedAt", name, color, sort) FROM stdin;
\.


--
-- TOC entry 3853 (class 0 OID 30579)
-- Dependencies: 228
-- Data for Name: collectionCategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."collectionCategory" ("createdAt", "updatedAt", "collectionName", "categoryId") FROM stdin;
\.


--
-- TOC entry 3854 (class 0 OID 30582)
-- Dependencies: 229
-- Data for Name: collections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.collections (key, name, title, inherit, hidden, options, description, sort) FROM stdin;
j9fi0gjs1d6	users	{{t("Users")}}	f	f	{"origin":"@nocobase/plugin-users","dumpRules":{"group":"user"},"sortable":"sort","model":"UserModel","createdBy":true,"updatedBy":true,"logging":true,"shared":true,"from":"db2cm"}	\N	1
ny237zkkodj	roles	{{t("Roles")}}	f	f	{"origin":"@nocobase/plugin-acl","dumpRules":"required","autoGenId":false,"model":"RoleModel","filterTargetKey":"name","sortable":true,"from":"db2cm"}	\N	2
92x4tb7t01s	smart_contracts	Smart Contracts	f	f	{"actions":[{"name":"create","type":"create","title":"Create Kafka Topic","viewName":"form"},{"name":"view","type":"view","title":"View","viewName":"form"},{"name":"edit","type":"edit","title":"Edit","viewName":"form"},{"name":"destroy","type":"destroy","title":"Delete"}],"schema":"public"}	\N	3
j8t7s9fuxbp	kafka_topics	Kafka Topics	f	f	{"actions":[{"name":"create","type":"create","title":"Create Kafka Topic","viewName":"form"},{"name":"view","type":"view","title":"View","viewName":"form"},{"name":"edit","type":"edit","title":"Edit","viewName":"form"},{"name":"destroy","type":"destroy","title":"Delete"}],"schema":"public"}	\N	4
nfrv8h0ujdi	kafka_configs	Kafka Configs	f	f	{"actions":[{"name":"create","type":"create","title":"Create Kafka Config","viewName":"form"},{"name":"view","type":"view","title":"View","viewName":"form"},{"name":"edit","type":"edit","title":"Edit","viewName":"form"},{"name":"destroy","type":"destroy","title":"Delete"}],"schema":"public"}	\N	5
v47dqoj2dnb	proposes	Yêu cầu xây dựng	f	f	{"logging":true,"autoGenId":false,"createdAt":true,"createdBy":true,"updatedAt":true,"updatedBy":true,"template":"general","view":false,"simplePaginate":true,"schema":"public"}	\N	6
hq0iwm7ahaf	projects	Dự án	f	f	{"logging":true,"autoGenId":false,"createdAt":true,"createdBy":true,"updatedAt":true,"updatedBy":true,"template":"general","view":false,"simplePaginate":true,"schema":"public"}	\N	7
urxp2sa2a28	funds	Quỹ dự án	f	f	{"logging":true,"autoGenId":false,"createdAt":true,"createdBy":true,"updatedAt":true,"updatedBy":true,"template":"general","view":false,"simplePaginate":true,"schema":"public"}	\N	8
jiijksepvri	transactions	Giao dịch	f	f	{"logging":true,"autoGenId":false,"createdAt":true,"createdBy":true,"updatedAt":true,"updatedBy":true,"template":"general","view":false,"simplePaginate":true,"schema":"public"}	\N	9
\.


--
-- TOC entry 3855 (class 0 OID 30590)
-- Dependencies: 230
-- Data for Name: customRequests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."customRequests" ("createdAt", "updatedAt", key, options) FROM stdin;
\.


--
-- TOC entry 3856 (class 0 OID 30595)
-- Dependencies: 231
-- Data for Name: customRequestsRoles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."customRequestsRoles" ("createdAt", "updatedAt", "customRequestKey", "roleName") FROM stdin;
\.


--
-- TOC entry 3857 (class 0 OID 30600)
-- Dependencies: 232
-- Data for Name: dataSources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSources" ("createdAt", "updatedAt", key, "displayName", type, options, enabled, fixed) FROM stdin;
2024-12-04 09:18:59.802+00	2024-12-04 09:18:59.802+00	main	{{t("Main")}}	main	{}	t	t
\.


--
-- TOC entry 3858 (class 0 OID 30607)
-- Dependencies: 233
-- Data for Name: dataSourcesCollections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesCollections" (key, name, options, "dataSourceKey") FROM stdin;
\.


--
-- TOC entry 3859 (class 0 OID 30612)
-- Dependencies: 234
-- Data for Name: dataSourcesFields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesFields" (key, name, "collectionName", interface, description, "uiSchema", "collectionKey", options, "dataSourceKey") FROM stdin;
\.


--
-- TOC entry 3860 (class 0 OID 30618)
-- Dependencies: 235
-- Data for Name: dataSourcesRoles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesRoles" (id, strategy, "dataSourceKey", "roleName") FROM stdin;
fsau3tgp2t4	\N	main	root
ap1kmwgavd3	{"actions":["create","view","update","destroy","importXlsx","export"]}	main	admin
m32ubqbcgwc	{"actions":["view","update:own","destroy:own","create","importXlsx","export"]}	main	member
\.


--
-- TOC entry 3861 (class 0 OID 30623)
-- Dependencies: 236
-- Data for Name: dataSourcesRolesResources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesRolesResources" (id, "createdAt", "updatedAt", "dataSourceKey", name, "usingActionsConfig", "roleName") FROM stdin;
\.


--
-- TOC entry 3862 (class 0 OID 30629)
-- Dependencies: 237
-- Data for Name: dataSourcesRolesResourcesActions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesRolesResourcesActions" (id, "createdAt", "updatedAt", name, fields, "scopeId", "rolesResourceId") FROM stdin;
\.


--
-- TOC entry 3864 (class 0 OID 30636)
-- Dependencies: 239
-- Data for Name: dataSourcesRolesResourcesScopes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesRolesResourcesScopes" (id, "createdAt", "updatedAt", key, "dataSourceKey", name, "resourceName", scope) FROM stdin;
1	2024-12-04 09:18:59.851+00	2024-12-04 09:18:59.851+00	all	main	{{t("All records")}}	\N	{}
2	2024-12-04 09:18:59.852+00	2024-12-04 09:18:59.852+00	own	main	{{t("Own records")}}	\N	{"createdById":"{{ ctx.state.currentUser.id }}"}
\.


--
-- TOC entry 3867 (class 0 OID 30644)
-- Dependencies: 242
-- Data for Name: executions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.executions (id, "createdAt", "updatedAt", key, "eventKey", context, status, "workflowId") FROM stdin;
3	2024-12-04 13:11:22.359+00	2024-12-04 13:11:22.426+00	htfnmps0m41	95078659-1195-4205-bdf6-01a325dee4ee	{"data":{"createdAt":"2024-12-04T13:11:22.328Z","updatedAt":"2024-12-04T13:11:22.328Z","id":2,"name":"aaaaa","sub_title":null,"description":null,"address":"bbbb","total_amount":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null},"stack":[2]}	1	2
6	2024-12-04 13:16:27.03+00	2024-12-04 13:16:27.094+00	htfnmps0m41	f31c5db7-6f85-4693-b727-01311d4f653b	{"data":{"createdAt":"2024-12-04T13:16:27.009Z","updatedAt":"2024-12-04T13:16:27.009Z","id":3,"name":"dfd","sub_title":null,"description":null,"address":"e3gr","total_amount":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null},"stack":[5]}	1	2
4	2024-12-04 13:11:22.42+00	2024-12-04 13:11:22.484+00	0f9c722cpnx	5c7cca6e-0771-4d64-98c8-43db2f03cf43	{"data":{"createdAt":"2024-12-04T13:11:22.400Z","updatedAt":"2024-12-04T13:11:22.400Z","project_id":2,"id":1,"name":"aaaaa","target_amount":null,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T13:11:22.328Z","updatedAt":"2024-12-04T13:11:22.328Z","id":2,"name":"aaaaa","sub_title":null,"description":null,"address":"bbbb","total_amount":null,"createdById":null,"updatedById":null}},"stack":[2,3]}	1	3
5	2024-12-04 13:16:26.98+00	2024-12-04 13:16:27.046+00	j62ztm6t709	1738ea1f-8a8d-4f60-8788-ffb90ed7425e	{"data":{"createdAt":"2024-12-04T13:16:18.515Z","updatedAt":"2024-12-04T13:16:26.954Z","id":7,"name":"dfd","status":"APPROVED","address":"e3gr","createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"0825501766129c55ad8995f0dcae9519a915a77023debaae2f147951dc0164b4","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-12-04T09:18:59.855Z","updatedAt":"2024-12-04T09:18:59.855Z","sort":1,"createdById":null,"updatedById":null},"updatedBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"0825501766129c55ad8995f0dcae9519a915a77023debaae2f147951dc0164b4","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-12-04T09:18:59.855Z","updatedAt":"2024-12-04T09:18:59.855Z","sort":1,"createdById":null,"updatedById":null}}}	1	6
7	2024-12-04 13:16:27.092+00	2024-12-04 13:16:27.149+00	0f9c722cpnx	f9a5c062-5140-4684-a178-07810d997a35	{"data":{"createdAt":"2024-12-04T13:16:27.064Z","updatedAt":"2024-12-04T13:16:27.064Z","project_id":3,"id":2,"name":"dfd","target_amount":null,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T13:16:27.009Z","updatedAt":"2024-12-04T13:16:27.009Z","id":3,"name":"dfd","sub_title":null,"description":null,"address":"e3gr","total_amount":null,"createdById":null,"updatedById":null}},"stack":[5,6]}	1	3
8	2024-12-04 13:16:27.103+00	2024-12-04 13:16:27.159+00	31trl35v3w1	768f4dee-6f04-45c0-a6c3-4ccb025caf63	{"data":{"createdAt":"2024-12-04T13:16:27.064Z","updatedAt":"2024-12-04T13:16:27.064Z","project_id":3,"id":2,"name":"dfd","target_amount":null,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T13:16:27.009Z","updatedAt":"2024-12-04T13:16:27.009Z","id":3,"name":"dfd","sub_title":null,"description":null,"address":"e3gr","total_amount":null,"createdById":null,"updatedById":null}},"stack":[5,6]}	-1	7
9	2024-12-04 13:58:19.877+00	2024-12-04 13:58:19.937+00	j62ztm6t709	3aaaaaf7-67cb-4148-a6da-ba49238b3138	{"data":{"createdAt":"2024-12-04T13:58:15.636Z","updatedAt":"2024-12-04T13:58:19.859Z","id":8,"name":"fd","status":"APPROVED","address":"hg","createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"0825501766129c55ad8995f0dcae9519a915a77023debaae2f147951dc0164b4","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-12-04T09:18:59.855Z","updatedAt":"2024-12-04T09:18:59.855Z","sort":1,"createdById":null,"updatedById":null},"updatedBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"0825501766129c55ad8995f0dcae9519a915a77023debaae2f147951dc0164b4","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-12-04T09:18:59.855Z","updatedAt":"2024-12-04T09:18:59.855Z","sort":1,"createdById":null,"updatedById":null}}}	1	6
11	2024-12-04 13:58:19.974+00	2024-12-04 13:58:20.033+00	0f9c722cpnx	b44dfa47-e1db-4bfd-a7ad-784815dc6944	{"data":{"createdAt":"2024-12-04T13:58:19.951Z","updatedAt":"2024-12-04T13:58:19.951Z","project_id":4,"id":3,"name":"fd","target_amount":null,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T13:58:19.899Z","updatedAt":"2024-12-04T13:58:19.899Z","id":4,"name":"fd","sub_title":null,"description":null,"address":"hg","total_amount":null,"createdById":null,"updatedById":null}},"stack":[9,10]}	1	3
10	2024-12-04 13:58:19.924+00	2024-12-04 13:58:19.975+00	htfnmps0m41	945d9069-efbe-4bd4-98ad-1dac19906510	{"data":{"createdAt":"2024-12-04T13:58:19.899Z","updatedAt":"2024-12-04T13:58:19.899Z","id":4,"name":"fd","sub_title":null,"description":null,"address":"hg","total_amount":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null},"stack":[9]}	1	2
12	2024-12-04 13:58:19.983+00	2024-12-04 13:58:20.044+00	31trl35v3w1	9d5032e0-5541-4eaf-bcc4-8107abc21a50	{"data":{"createdAt":"2024-12-04T13:58:19.951Z","updatedAt":"2024-12-04T13:58:19.951Z","project_id":4,"id":3,"name":"fd","target_amount":null,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T13:58:19.899Z","updatedAt":"2024-12-04T13:58:19.899Z","id":4,"name":"fd","sub_title":null,"description":null,"address":"hg","total_amount":null,"createdById":null,"updatedById":null}},"stack":[9,10]}	-1	7
13	2024-12-04 13:59:31.961+00	2024-12-04 13:59:32.036+00	j62ztm6t709	acb26617-9358-42bf-8b50-02527e938945	{"data":{"createdAt":"2024-12-04T13:59:28.845Z","updatedAt":"2024-12-04T13:59:31.939Z","id":9,"name":"hhh","status":"APPROVED","address":"df","createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"0825501766129c55ad8995f0dcae9519a915a77023debaae2f147951dc0164b4","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-12-04T09:18:59.855Z","updatedAt":"2024-12-04T09:18:59.855Z","sort":1,"createdById":null,"updatedById":null},"updatedBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"0825501766129c55ad8995f0dcae9519a915a77023debaae2f147951dc0164b4","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-12-04T09:18:59.855Z","updatedAt":"2024-12-04T09:18:59.855Z","sort":1,"createdById":null,"updatedById":null}}}	1	6
14	2024-12-04 13:59:32.027+00	2024-12-04 13:59:32.089+00	htfnmps0m41	efd9c364-768c-45f3-8af7-f4c934e6aa25	{"data":{"createdAt":"2024-12-04T13:59:31.998Z","updatedAt":"2024-12-04T13:59:31.998Z","id":5,"name":"hhh","sub_title":null,"description":null,"address":"df","total_amount":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null},"stack":[13]}	1	2
15	2024-12-04 13:59:32.082+00	2024-12-04 13:59:32.159+00	0f9c722cpnx	9d260564-4afa-45ff-8c87-dda2c2d9f406	{"data":{"createdAt":"2024-12-04T13:59:32.061Z","updatedAt":"2024-12-04T13:59:32.061Z","project_id":5,"id":4,"name":"hhh","target_amount":null,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T13:59:31.998Z","updatedAt":"2024-12-04T13:59:31.998Z","id":5,"name":"hhh","sub_title":null,"description":null,"address":"df","total_amount":null,"createdById":null,"updatedById":null}},"stack":[13,14]}	1	3
16	2024-12-04 13:59:32.097+00	2024-12-04 13:59:32.169+00	31trl35v3w1	eedb0aa4-21ad-4a19-b9e0-a30dde6fdaf6	{"data":{"createdAt":"2024-12-04T13:59:32.061Z","updatedAt":"2024-12-04T13:59:32.061Z","project_id":5,"id":4,"name":"hhh","target_amount":null,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T13:59:31.998Z","updatedAt":"2024-12-04T13:59:31.998Z","id":5,"name":"hhh","sub_title":null,"description":null,"address":"df","total_amount":null,"createdById":null,"updatedById":null}},"stack":[13,14]}	-1	7
17	2024-12-04 14:22:15.468+00	2024-12-04 14:22:15.537+00	htfnmps0m41	9255101a-5493-41d3-a561-f016bfc7d181	{"data":{"createdAt":"2024-12-04T14:22:15.451Z","updatedAt":"2024-12-04T14:22:15.451Z","id":6,"name":"df","sub_title":null,"description":null,"address":null,"total_amount":null,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"0825501766129c55ad8995f0dcae9519a915a77023debaae2f147951dc0164b4","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-12-04T09:18:59.855Z","updatedAt":"2024-12-04T09:18:59.855Z","sort":1,"createdById":null,"updatedById":null},"updatedBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"0825501766129c55ad8995f0dcae9519a915a77023debaae2f147951dc0164b4","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-12-04T09:18:59.855Z","updatedAt":"2024-12-04T09:18:59.855Z","sort":1,"createdById":null,"updatedById":null}}}	1	2
18	2024-12-04 14:22:15.503+00	2024-12-04 14:22:15.599+00	0f9c722cpnx	5ae62cfb-bee7-47ea-8db8-78bfd4830cdf	{"data":{"createdAt":"2024-12-04T14:22:15.483Z","updatedAt":"2024-12-04T14:22:15.483Z","project_id":6,"id":5,"name":"df","target_amount":null,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T14:22:15.451Z","updatedAt":"2024-12-04T14:22:15.451Z","id":6,"name":"df","sub_title":null,"description":null,"address":null,"total_amount":null,"createdById":1,"updatedById":1}},"stack":[17]}	-1	3
19	2024-12-04 14:22:15.522+00	2024-12-04 14:22:15.61+00	31trl35v3w1	a2ad656e-d234-4b64-b748-62b36cbb964f	{"data":{"createdAt":"2024-12-04T14:22:15.483Z","updatedAt":"2024-12-04T14:22:15.483Z","project_id":6,"id":5,"name":"df","target_amount":null,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T14:22:15.451Z","updatedAt":"2024-12-04T14:22:15.451Z","id":6,"name":"df","sub_title":null,"description":null,"address":null,"total_amount":null,"createdById":1,"updatedById":1}},"stack":[17]}	-1	7
21	2024-12-04 14:34:56.243+00	2024-12-04 14:34:56.309+00	0f9c722cpnx	aa53a39d-3521-453e-af0e-fd0629ad2b1e	{"data":{"createdAt":"2024-12-04T14:34:56.225Z","updatedAt":"2024-12-04T14:34:56.225Z","project_id":7,"id":6,"name":"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long","target_amount":20000000000,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T14:34:56.186Z","updatedAt":"2024-12-04T14:34:56.186Z","id":7,"name":"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long","sub_title":"Dự án nhằm khôi phục và cải thiện đời sống của cộng đồng bị ảnh hưởng bởi lũ lụt tại Đồng bằng Sông Cửu Long, thông qua việc xây dựng cơ sở hạ tầng, cung cấp hỗ trợ tài chính và đào tạo nghề.","description":"Dự án này sẽ tập trung vào các hoạt động sau:\\n\\nXây dựng cơ sở hạ tầng: Nâng cấp đường giao thông, cầu cống và hệ thống thoát nước để giảm thiểu thiệt hại do lũ.\\nHỗ trợ tài chính: Cung cấp khoản vay lãi suất thấp cho các hộ gia đình để khôi phục sản xuất nông nghiệp và kinh doanh nhỏ.\\nĐào tạo nghề: Tổ chức các khóa đào tạo về kỹ năng nghề nghiệp cho thanh niên và người lớn tuổi để tạo cơ hội việc làm bền vững.\\nChương trình bảo vệ môi trường: Khuyến khích người dân tham gia vào các hoạt động bảo vệ môi trường và phát triển bền vững.\\nDự án sẽ được triển khai tại các xã bị ảnh hưởng nặng nề nhất, với sự tham gia của chính quyền địa phương và các tổ chức phi chính phủ.","address":"Đồng bằng Sông Cửu Long, Việt Nam (cụ thể có thể là các tỉnh như An Giang, Đồng Tháp, Kiên Giang).","total_amount":20000000000,"createdById":1,"updatedById":1}},"stack":[20]}	-1	3
20	2024-12-04 14:34:56.21+00	2024-12-04 14:34:56.245+00	htfnmps0m41	fc0e70fa-16e2-4a47-9bde-a00bf0f131cf	{"data":{"createdAt":"2024-12-04T14:34:56.186Z","updatedAt":"2024-12-04T14:34:56.186Z","id":7,"name":"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long","sub_title":"Dự án nhằm khôi phục và cải thiện đời sống của cộng đồng bị ảnh hưởng bởi lũ lụt tại Đồng bằng Sông Cửu Long, thông qua việc xây dựng cơ sở hạ tầng, cung cấp hỗ trợ tài chính và đào tạo nghề.","description":"Dự án này sẽ tập trung vào các hoạt động sau:\\n\\nXây dựng cơ sở hạ tầng: Nâng cấp đường giao thông, cầu cống và hệ thống thoát nước để giảm thiểu thiệt hại do lũ.\\nHỗ trợ tài chính: Cung cấp khoản vay lãi suất thấp cho các hộ gia đình để khôi phục sản xuất nông nghiệp và kinh doanh nhỏ.\\nĐào tạo nghề: Tổ chức các khóa đào tạo về kỹ năng nghề nghiệp cho thanh niên và người lớn tuổi để tạo cơ hội việc làm bền vững.\\nChương trình bảo vệ môi trường: Khuyến khích người dân tham gia vào các hoạt động bảo vệ môi trường và phát triển bền vững.\\nDự án sẽ được triển khai tại các xã bị ảnh hưởng nặng nề nhất, với sự tham gia của chính quyền địa phương và các tổ chức phi chính phủ.","address":"Đồng bằng Sông Cửu Long, Việt Nam (cụ thể có thể là các tỉnh như An Giang, Đồng Tháp, Kiên Giang).","total_amount":20000000000,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"0825501766129c55ad8995f0dcae9519a915a77023debaae2f147951dc0164b4","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-12-04T09:18:59.855Z","updatedAt":"2024-12-04T09:18:59.855Z","sort":1,"createdById":null,"updatedById":null},"updatedBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"0825501766129c55ad8995f0dcae9519a915a77023debaae2f147951dc0164b4","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-12-04T09:18:59.855Z","updatedAt":"2024-12-04T09:18:59.855Z","sort":1,"createdById":null,"updatedById":null}}}	1	2
22	2024-12-04 14:34:56.251+00	2024-12-04 14:34:56.327+00	31trl35v3w1	743e368e-ccea-4112-b2b2-56be933e7008	{"data":{"createdAt":"2024-12-04T14:34:56.225Z","updatedAt":"2024-12-04T14:34:56.225Z","project_id":7,"id":6,"name":"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long","target_amount":20000000000,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T14:34:56.186Z","updatedAt":"2024-12-04T14:34:56.186Z","id":7,"name":"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long","sub_title":"Dự án nhằm khôi phục và cải thiện đời sống của cộng đồng bị ảnh hưởng bởi lũ lụt tại Đồng bằng Sông Cửu Long, thông qua việc xây dựng cơ sở hạ tầng, cung cấp hỗ trợ tài chính và đào tạo nghề.","description":"Dự án này sẽ tập trung vào các hoạt động sau:\\n\\nXây dựng cơ sở hạ tầng: Nâng cấp đường giao thông, cầu cống và hệ thống thoát nước để giảm thiểu thiệt hại do lũ.\\nHỗ trợ tài chính: Cung cấp khoản vay lãi suất thấp cho các hộ gia đình để khôi phục sản xuất nông nghiệp và kinh doanh nhỏ.\\nĐào tạo nghề: Tổ chức các khóa đào tạo về kỹ năng nghề nghiệp cho thanh niên và người lớn tuổi để tạo cơ hội việc làm bền vững.\\nChương trình bảo vệ môi trường: Khuyến khích người dân tham gia vào các hoạt động bảo vệ môi trường và phát triển bền vững.\\nDự án sẽ được triển khai tại các xã bị ảnh hưởng nặng nề nhất, với sự tham gia của chính quyền địa phương và các tổ chức phi chính phủ.","address":"Đồng bằng Sông Cửu Long, Việt Nam (cụ thể có thể là các tỉnh như An Giang, Đồng Tháp, Kiên Giang).","total_amount":20000000000,"createdById":1,"updatedById":1}},"stack":[20]}	-1	7
24	2024-12-04 14:43:51.204+00	2024-12-04 14:43:51.273+00	0f9c722cpnx	73bf63c8-990e-4a17-be76-4093ae9daabd	{"data":{"createdAt":"2024-12-04T14:43:51.188Z","updatedAt":"2024-12-04T14:43:51.188Z","project_id":8,"id":7,"name":"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long","target_amount":20000000000,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T14:43:51.156Z","updatedAt":"2024-12-04T14:43:51.156Z","id":8,"name":"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long","sub_title":"Dự án nhằm khôi phục và cải thiện đời sống của cộng đồng bị ảnh hưởng bởi lũ lụt tại Đồng bằng Sông Cửu Long, thông qua việc xây dựng cơ sở hạ tầng, cung cấp hỗ trợ tài chính và đào tạo nghề.","description":"Dự án này sẽ tập trung vào các hoạt động sau:\\n\\nXây dựng cơ sở hạ tầng: Nâng cấp đường giao thông, cầu cống và hệ thống thoát nước để giảm thiểu thiệt hại do lũ.\\nHỗ trợ tài chính: Cung cấp khoản vay lãi suất thấp cho các hộ gia đình để khôi phục sản xuất nông nghiệp và kinh doanh nhỏ.\\nĐào tạo nghề: Tổ chức các khóa đào tạo về kỹ năng nghề nghiệp cho thanh niên và người lớn tuổi để tạo cơ hội việc làm bền vững.\\nChương trình bảo vệ môi trường: Khuyến khích người dân tham gia vào các hoạt động bảo vệ môi trường và phát triển bền vững.\\nDự án sẽ được triển khai tại các xã bị ảnh hưởng nặng nề nhất, với sự tham gia của chính quyền địa phương và các tổ chức phi chính phủ.","address":"Đồng bằng Sông Cửu Long, Việt Nam (cụ thể có thể là các tỉnh như An Giang, Đồng Tháp, Kiên Giang).","total_amount":20000000000,"createdById":1,"updatedById":1}},"stack":[23]}	-1	3
23	2024-12-04 14:43:51.173+00	2024-12-04 14:43:51.211+00	htfnmps0m41	0dafb142-7089-415f-b2f2-94ea96d58948	{"data":{"createdAt":"2024-12-04T14:43:51.156Z","updatedAt":"2024-12-04T14:43:51.156Z","id":8,"name":"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long","sub_title":"Dự án nhằm khôi phục và cải thiện đời sống của cộng đồng bị ảnh hưởng bởi lũ lụt tại Đồng bằng Sông Cửu Long, thông qua việc xây dựng cơ sở hạ tầng, cung cấp hỗ trợ tài chính và đào tạo nghề.","description":"Dự án này sẽ tập trung vào các hoạt động sau:\\n\\nXây dựng cơ sở hạ tầng: Nâng cấp đường giao thông, cầu cống và hệ thống thoát nước để giảm thiểu thiệt hại do lũ.\\nHỗ trợ tài chính: Cung cấp khoản vay lãi suất thấp cho các hộ gia đình để khôi phục sản xuất nông nghiệp và kinh doanh nhỏ.\\nĐào tạo nghề: Tổ chức các khóa đào tạo về kỹ năng nghề nghiệp cho thanh niên và người lớn tuổi để tạo cơ hội việc làm bền vững.\\nChương trình bảo vệ môi trường: Khuyến khích người dân tham gia vào các hoạt động bảo vệ môi trường và phát triển bền vững.\\nDự án sẽ được triển khai tại các xã bị ảnh hưởng nặng nề nhất, với sự tham gia của chính quyền địa phương và các tổ chức phi chính phủ.","address":"Đồng bằng Sông Cửu Long, Việt Nam (cụ thể có thể là các tỉnh như An Giang, Đồng Tháp, Kiên Giang).","total_amount":20000000000,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"0825501766129c55ad8995f0dcae9519a915a77023debaae2f147951dc0164b4","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-12-04T09:18:59.855Z","updatedAt":"2024-12-04T09:18:59.855Z","sort":1,"createdById":null,"updatedById":null},"updatedBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"0825501766129c55ad8995f0dcae9519a915a77023debaae2f147951dc0164b4","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-12-04T09:18:59.855Z","updatedAt":"2024-12-04T09:18:59.855Z","sort":1,"createdById":null,"updatedById":null}}}	1	2
25	2024-12-04 14:43:51.217+00	2024-12-04 14:43:51.281+00	31trl35v3w1	bf759c8f-451b-41e5-871d-1fbd58ce6714	{"data":{"createdAt":"2024-12-04T14:43:51.188Z","updatedAt":"2024-12-04T14:43:51.188Z","project_id":8,"id":7,"name":"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long","target_amount":20000000000,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T14:43:51.156Z","updatedAt":"2024-12-04T14:43:51.156Z","id":8,"name":"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long","sub_title":"Dự án nhằm khôi phục và cải thiện đời sống của cộng đồng bị ảnh hưởng bởi lũ lụt tại Đồng bằng Sông Cửu Long, thông qua việc xây dựng cơ sở hạ tầng, cung cấp hỗ trợ tài chính và đào tạo nghề.","description":"Dự án này sẽ tập trung vào các hoạt động sau:\\n\\nXây dựng cơ sở hạ tầng: Nâng cấp đường giao thông, cầu cống và hệ thống thoát nước để giảm thiểu thiệt hại do lũ.\\nHỗ trợ tài chính: Cung cấp khoản vay lãi suất thấp cho các hộ gia đình để khôi phục sản xuất nông nghiệp và kinh doanh nhỏ.\\nĐào tạo nghề: Tổ chức các khóa đào tạo về kỹ năng nghề nghiệp cho thanh niên và người lớn tuổi để tạo cơ hội việc làm bền vững.\\nChương trình bảo vệ môi trường: Khuyến khích người dân tham gia vào các hoạt động bảo vệ môi trường và phát triển bền vững.\\nDự án sẽ được triển khai tại các xã bị ảnh hưởng nặng nề nhất, với sự tham gia của chính quyền địa phương và các tổ chức phi chính phủ.","address":"Đồng bằng Sông Cửu Long, Việt Nam (cụ thể có thể là các tỉnh như An Giang, Đồng Tháp, Kiên Giang).","total_amount":20000000000,"createdById":1,"updatedById":1}},"stack":[23]}	-1	7
\.


--
-- TOC entry 3869 (class 0 OID 30650)
-- Dependencies: 244
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
m9lfafnu430	id	uuid	input	\N	kafka_topics	\N	\N	{"primaryKey":true,"autoIncrement":false,"uiSchema":{"type":"string","title":"ID","x-component":"Input","required":true}}	1
syigygaafjb	broker_host	string	input	\N	kafka_topics	\N	\N	{"uiSchema":{"type":"string","title":"Broker Host","x-component":"Input","required":true}}	2
z1afgqte0zf	topic_name	string	input	\N	kafka_topics	\N	\N	{"uiSchema":{"type":"string","title":"Topic Name","x-component":"Input","required":true}}	3
8hj3l2a1t3r	type	string	select	\N	kafka_topics	\N	\N	{"uiSchema":{"type":"string","title":"Type","x-component":"Select","x-component-props":{"options":[{"label":"Producer","value":"producer"},{"label":"Consumer","value":"consumer"}]},"required":true}}	4
rwphq66nz96	id	uuid	input	\N	kafka_configs	\N	\N	{"primaryKey":true,"autoIncrement":false,"uiSchema":{"type":"string","title":"ID","x-component":"Input","required":true}}	1
cx5a8vom8ne	group_id	string	input	\N	kafka_configs	\N	\N	{"uiSchema":{"type":"string","title":"Group Id","x-component":"Input","required":true}}	2
9nv7i563chi	client_id	string	input	\N	kafka_configs	\N	\N	{"uiSchema":{"type":"string","title":"Client Id","x-component":"Input","required":true}}	3
q9gr603l641	id	bigInt	integer	\N	proposes	\N	\N	{"autoIncrement":true,"primaryKey":true,"allowNull":false,"uiSchema":{"type":"number","title":"{{t(\\"ID\\")}}","x-component":"InputNumber","x-read-pretty":true}}	1
9qdk1bf1too	createdAt	date	createdAt	\N	proposes	\N	\N	{"field":"createdAt","uiSchema":{"type":"datetime","title":"{{t(\\"Created at\\")}}","x-component":"DatePicker","x-component-props":{},"x-read-pretty":true}}	2
e1rmjw16r0k	createdBy	belongsTo	createdBy	\N	proposes	\N	\N	{"target":"users","foreignKey":"createdById","uiSchema":{"type":"object","title":"{{t(\\"Created by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true},"targetKey":"id"}	3
8wudwtq78xg	updatedAt	date	updatedAt	\N	proposes	\N	\N	{"field":"updatedAt","uiSchema":{"type":"string","title":"{{t(\\"Last updated at\\")}}","x-component":"DatePicker","x-component-props":{},"x-read-pretty":true}}	4
udtg2aj63yt	updatedBy	belongsTo	updatedBy	\N	proposes	\N	\N	{"target":"users","foreignKey":"updatedById","uiSchema":{"type":"object","title":"{{t(\\"Last updated by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true},"targetKey":"id"}	5
5hlmupq5w0o	id	bigInt	integer	\N	projects	\N	\N	{"autoIncrement":true,"primaryKey":true,"allowNull":false,"uiSchema":{"type":"number","title":"{{t(\\"ID\\")}}","x-component":"InputNumber","x-read-pretty":true}}	1
3lqvzldmkib	createdAt	date	createdAt	\N	projects	\N	\N	{"field":"createdAt","uiSchema":{"type":"datetime","title":"{{t(\\"Created at\\")}}","x-component":"DatePicker","x-component-props":{},"x-read-pretty":true}}	2
6gwgbsv8nil	createdBy	belongsTo	createdBy	\N	projects	\N	\N	{"target":"users","foreignKey":"createdById","uiSchema":{"type":"object","title":"{{t(\\"Created by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true},"targetKey":"id"}	3
looxfzp20we	updatedAt	date	updatedAt	\N	projects	\N	\N	{"field":"updatedAt","uiSchema":{"type":"string","title":"{{t(\\"Last updated at\\")}}","x-component":"DatePicker","x-component-props":{},"x-read-pretty":true}}	4
nggd9spdzzz	updatedBy	belongsTo	updatedBy	\N	projects	\N	\N	{"target":"users","foreignKey":"updatedById","uiSchema":{"type":"object","title":"{{t(\\"Last updated by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true},"targetKey":"id"}	5
vm1jm3y0v9n	createdAt	date	createdAt	\N	funds	\N	\N	{"field":"createdAt","uiSchema":{"type":"datetime","title":"{{t(\\"Created at\\")}}","x-component":"DatePicker","x-component-props":{},"x-read-pretty":true}}	2
ztmmuj21iig	createdBy	belongsTo	createdBy	\N	funds	\N	\N	{"target":"users","foreignKey":"createdById","uiSchema":{"type":"object","title":"{{t(\\"Created by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true},"targetKey":"id"}	3
vntfccfilvc	updatedAt	date	updatedAt	\N	funds	\N	\N	{"field":"updatedAt","uiSchema":{"type":"string","title":"{{t(\\"Last updated at\\")}}","x-component":"DatePicker","x-component-props":{},"x-read-pretty":true}}	4
7rehm8vz26e	updatedBy	belongsTo	updatedBy	\N	funds	\N	\N	{"target":"users","foreignKey":"updatedById","uiSchema":{"type":"object","title":"{{t(\\"Last updated by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true},"targetKey":"id"}	5
qni36kure3m	createdAt	date	createdAt	\N	transactions	\N	\N	{"field":"createdAt","uiSchema":{"type":"datetime","title":"{{t(\\"Created at\\")}}","x-component":"DatePicker","x-component-props":{},"x-read-pretty":true}}	2
ubq7ami1yv7	createdBy	belongsTo	createdBy	\N	transactions	\N	\N	{"target":"users","foreignKey":"createdById","uiSchema":{"type":"object","title":"{{t(\\"Created by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true},"targetKey":"id"}	3
w1qe47vqyj6	updatedAt	date	updatedAt	\N	transactions	\N	\N	{"field":"updatedAt","uiSchema":{"type":"string","title":"{{t(\\"Last updated at\\")}}","x-component":"DatePicker","x-component-props":{},"x-read-pretty":true}}	4
u5farc0m7ec	updatedBy	belongsTo	updatedBy	\N	transactions	\N	\N	{"target":"users","foreignKey":"updatedById","uiSchema":{"type":"object","title":"{{t(\\"Last updated by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true},"targetKey":"id"}	5
8pxspix9166	name	string	input	\N	proposes	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"Tên dự án yêu cầu"}}	6
ezohluc9en8	status	string	select	\N	proposes	\N	\N	{"uiSchema":{"enum":[{"value":"PENDING","label":"Chờ xét duyệt","color":"lime"},{"value":"APPROVED","label":"Đã chấp thuận","color":"blue"},{"value":"REJECTED","label":"Không chấp thuận","color":"red"}],"type":"string","x-component":"Select","title":"Trạng thái"},"defaultValue":"PENDING"}	7
ld0brda15qs	address	string	input	\N	proposes	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"Địa điểm xây dựng"}}	8
t36xxu560li	name	string	input	\N	projects	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"Tên dự án"}}	6
wag0h166ptv	sub_title	text	textarea	\N	projects	\N	\N	{"uiSchema":{"type":"string","x-component":"Input.TextArea","title":"Mô tả ngắn"}}	9
vwc3dkst5cw	description	text	textarea	\N	projects	\N	\N	{"uiSchema":{"type":"string","x-component":"Input.TextArea","title":"Mô tả chi tiết"}}	10
mog2k27ecqr	images	belongsToMany	attachment	\N	projects	\N	\N	{"uiSchema":{"x-component-props":{"multiple":true,"accept":"image/*"},"type":"array","x-component":"Upload.Attachment","x-use-component-props":"useAttachmentFieldProps","title":"Hình ảnh"},"target":"attachments","storage":"local","through":"t_1vx9kyb7k1h","foreignKey":"f_3gyw0m841j1","otherKey":"f_zvvclxyl9dz","targetKey":"id","sourceKey":"id"}	11
kuye41qh3tb	id	bigInt	integer	\N	funds	\N	\N	{"autoIncrement":true,"primaryKey":true,"allowNull":false,"uiSchema":{"type":"number","title":"{{t(\\"ID\\")}}","x-component":"InputNumber","x-read-pretty":true}}	0
3lyi00g9u6q	id	bigInt	integer	\N	transactions	\N	\N	{"autoIncrement":true,"primaryKey":true,"allowNull":false,"uiSchema":{"type":"number","title":"{{t(\\"ID\\")}}","x-component":"InputNumber","x-read-pretty":true}}	0
nsh3igmzdj8	progress_images	belongsToMany	attachment	\N	projects	\N	\N	{"uiSchema":{"x-component-props":{"multiple":true,"accept":"image/*"},"type":"array","x-component":"Upload.Attachment","x-use-component-props":"useAttachmentFieldProps","title":"Hình ảnh tiến độ"},"target":"attachments","storage":"local","through":"t_54opx8rhenu","foreignKey":"f_jr6kifdk7it","otherKey":"f_ra5knzz1x22","targetKey":"id","sourceKey":"id"}	12
gytsnxkhpr0	address	string	input	\N	projects	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"Địa điểm xây dựng"}}	13
w4ql8wbgh86	name	string	input	\N	funds	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"Tên quỹ dự án"}}	6
xs2do1lv2wh	total_amount	double	number	\N	projects	\N	\N	{"uiSchema":{"x-component-props":{"step":"1","stringMode":true},"type":"number","x-component":"InputNumber","title":"Tổng tiền"},"defaultValue":null,"unique":false}	14
gzfj1luhprq	target_amount	double	number	\N	funds	\N	\N	{"uiSchema":{"x-component-props":{"step":"1","stringMode":true},"type":"number","x-component":"InputNumber","title":"Mục tiêu đóng góp"},"defaultValue":0}	7
ob3m0y30n10	current_amount	double	number	\N	funds	\N	\N	{"uiSchema":{"x-component-props":{"step":"1","stringMode":true},"type":"number","x-component":"InputNumber","title":"Số tiền hiện tại"},"defaultValue":0}	8
84jr0t04ijm	fund_id	hasOne	oho	\N	projects	\N	xsmb5c0qv2r	{"uiSchema":{"title":"Quỹ dự án","x-component":"AssociationField","x-component-props":{"multiple":false}},"target":"funds","onDelete":"SET NULL","sourceKey":"id","foreignKey":"project_id"}	15
xsmb5c0qv2r	project	belongsTo	obo	\N	funds	\N	84jr0t04ijm	{"foreignKey":"project_id","onDelete":"SET NULL","uiSchema":{"x-component":"AssociationField","x-component-props":{"multiple":false},"title":"Dự án"},"target":"projects","targetKey":"id"}	9
qq7pa0k18gs	project_id	bigInt	integer	\N	funds	\N	\N	{"isForeignKey":true,"uiSchema":{"type":"number","title":"Mã dự án","x-component":"InputNumber","x-read-pretty":true}}	1
ibgyak4uh4l	transaction_code	string	input	\N	transactions	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"Mã giao dịch"}}	6
qe09r4b6ha0	amount	double	number	\N	transactions	\N	\N	{"uiSchema":{"x-component-props":{"step":"1","stringMode":true},"type":"number","x-component":"InputNumber","title":"Số tiền"}}	7
ry3uyrrrfov	direction	string	select	\N	transactions	\N	\N	{"uiSchema":{"enum":[{"value":"INCOMING","label":"Đóng góp","color":"green"},{"value":"OUTCOMING","label":"Trích xuất","color":"red"}],"type":"string","x-component":"Select","title":"Loại giao dịch"},"defaultValue":"INCOMING"}	8
3o9xb13ya4b	fund	belongsTo	m2o	\N	transactions	\N	g5av2audjys	{"uiSchema":{"title":"Quỹ dự án","x-component":"AssociationField","x-component-props":{"multiple":false}},"target":"funds","onDelete":"SET NULL","targetKey":"id","foreignKey":"fund_id","sourceKey":"id"}	9
g5av2audjys	transactions	hasMany	o2m	\N	funds	\N	3o9xb13ya4b	{"sourceKey":"id","foreignKey":"fund_id","onDelete":"SET NULL","uiSchema":{"x-component":"AssociationField","x-component-props":{"multiple":true},"title":"Các giao dịch"},"target":"transactions","targetKey":"id"}	10
x7mvf5k1ye0	qr_code_url	text	url	\N	funds	\N	\N	{"uiSchema":{"type":"string","x-component":"Input.URL","title":"Mã đóng góp"}}	11
8dee59dle7r	from_account_no	string	input	\N	transactions	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"Số tài khoản chuyển đến"}}	10
2xgvvipsjk4	from_account_name	string	input	\N	transactions	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"Tên người chuyển đến"}}	11
hwxaiw38b06	from_bank_name	string	input	\N	transactions	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"Ngân hàng"}}	12
jokivbgdzil	fund_id	bigInt	integer	\N	transactions	\N	\N	{"isForeignKey":true,"uiSchema":{"type":"number","title":"Mã quỹ dự án","x-component":"InputNumber","x-read-pretty":true}}	1
\.


--
-- TOC entry 3870 (class 0 OID 30656)
-- Dependencies: 245
-- Data for Name: flow_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flow_nodes (id, "createdAt", "updatedAt", key, title, "upstreamId", "branchIndex", "downstreamId", type, config, "workflowId") FROM stdin;
2	2024-12-04 12:30:28.276+00	2024-12-04 12:31:23.608+00	gu0yt8nh00x	Thêm mới quỹ dự án	\N	\N	\N	create	{"usingAssignFormSchema":true,"assignFormSchema":{"_isJSONSchemaObject":true,"version":"2.0","name":"cq4v3zntdlb","type":"void","x-component":"Grid","x-initializer":"assignFieldValuesForm:configureFields","properties":{"870p38k1bu4":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","properties":{"u0sgf8jwdic":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","properties":{"name":{"_isJSONSchemaObject":true,"version":"2.0","type":"string","name":"name","title":"Tên quỹ dự án","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"AssignedField","x-decorator":"FormItem","x-collection-field":"funds.name"}},"name":"u0sgf8jwdic"}},"name":"870p38k1bu4"},"mgl09aw8sht":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","properties":{"a5rbxam98bx":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","properties":{"target_amount":{"_isJSONSchemaObject":true,"version":"2.0","type":"string","name":"target_amount","title":"Mục tiêu đóng góp","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"AssignedField","x-decorator":"FormItem","x-collection-field":"funds.target_amount"}},"name":"a5rbxam98bx"}},"name":"mgl09aw8sht"},"i2affgmffag":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","properties":{"hsr10nr7cfj":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","properties":{"project_id":{"_isJSONSchemaObject":true,"version":"2.0","type":"string","name":"project_id","title":"Mã dự án","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"AssignedField","x-decorator":"FormItem","x-collection-field":"funds.project_id"}},"name":"hsr10nr7cfj"}},"name":"i2affgmffag"}}},"params":{"appends":["createdBy","updatedBy","project"],"values":{"name":"{{$context.data.name}}","target_amount":"{{$context.data.total_amount}}","project_id":"{{$context.data.id}}"}},"collection":"funds"}	2
3	2024-12-04 12:31:48.97+00	2024-12-04 12:33:52.393+00	k3uiv7ac1lx	Cập nhật QR đóng góp	\N	\N	\N	request	{"method":"POST","contentType":"application/json","headers":[],"params":[],"data":{"fund_id":"{{$context.data.id}}","fund_name":"{{$context.data.name}}","user_id":""},"url":"http://localhost:13000/api/qr-donate"}	3
7	2024-12-04 13:12:38.849+00	2024-12-04 13:12:38.849+00	jt2v6492ck4	Thêm mới dự án	\N	\N	\N	create	{"usingAssignFormSchema":true,"assignFormSchema":{"_isJSONSchemaObject":true,"version":"2.0","name":"8546b3utchu","type":"void","x-component":"Grid","x-initializer":"assignFieldValuesForm:configureFields","properties":{"daoxc4ur560":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","properties":{"tpeowppevck":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","properties":{"name":{"_isJSONSchemaObject":true,"version":"2.0","type":"string","name":"name","title":"Tên dự án","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"AssignedField","x-decorator":"FormItem","x-collection-field":"projects.name"}},"name":"tpeowppevck"}},"name":"daoxc4ur560"},"ulp2izc9ki3":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","properties":{"i5nuay0jwfv":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","properties":{"address":{"_isJSONSchemaObject":true,"version":"2.0","type":"string","name":"address","title":"Địa điểm xây dựng","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"AssignedField","x-decorator":"FormItem","x-collection-field":"projects.address"}},"name":"i5nuay0jwfv"}},"name":"ulp2izc9ki3"}}},"params":{"values":{"name":"{{$context.data.name}}","address":"{{$context.data.address}}"},"appends":["createdBy","updatedBy"]},"collection":"projects"}	6
8	2024-12-04 13:14:08.985+00	2024-12-04 13:15:55.216+00	k3uiv7ac1lx	Cập nhật QR đóng góp	\N	\N	\N	request	{"method":"POST","contentType":"application/json","headers":[],"params":[],"data":{"fund_id":"{{$context.data.id}}","fund_name":"{{$context.data.name}}","user_id":""},"url":"http://localhost:12000/api/qr-donate"}	7
\.


--
-- TOC entry 3872 (class 0 OID 30663)
-- Dependencies: 247
-- Data for Name: funds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.funds ("createdAt", "updatedAt", id, "createdById", "updatedById", name, target_amount, current_amount, project_id, qr_code_url) FROM stdin;
2024-12-04 14:43:51.188+00	2024-12-04 21:56:19.985+00	7	\N	1	Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long	20000000000	9500000000	8	\N
\.


--
-- TOC entry 3874 (class 0 OID 30671)
-- Dependencies: 249
-- Data for Name: iframeHtml; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."iframeHtml" (id, "createdAt", "updatedAt", html, "createdById", "updatedById") FROM stdin;
y8wo4qdjyby	2024-12-04 14:39:53.438+00	2024-12-04 14:39:53.438+00	<!DOCTYPE html>\n<html lang="en">\n<head>\n    <meta charset="UTF-8">\n    <meta name="viewport" content="width=device-width, initial-scale=1.0">\n    <title>QR Code Simple Card</title>\n    <style>\n        * {\n            margin: 0;\n            padding: 0;\n            box-sizing: border-box;\n        }\n\n        body {\n            min-height: 100vh;\n            display: flex;\n            align-items: center;\n            justify-content: center;\n            background: #f0f2f5;\n            font-family: Arial, sans-serif;\n        }\n\n        .qr-card {\n            background: white;\n            padding: 20px;\n            border-radius: 10px;\n            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1),\n                        0 8px 16px rgba(0, 0, 0, 0.1);\n            width: 280px;\n        }\n\n        .qr-border {\n            border: 2px dashed #e0e0e0;\n            border-radius: 8px;\n            padding: 15px;\n            display: flex;\n            align-items: center;\n            justify-content: center;\n        }\n\n        .qr-image {\n            width: 200px;\n            height: 200px;\n            object-fit: contain;\n        }\n\n        @media (max-width: 320px) {\n            .qr-card {\n                width: 90%;\n            }\n            \n            .qr-image {\n                width: 150px;\n                height: 150px;\n            }\n        }\n    </style>\n</head>\n<body>\n    <div class="qr-card">\n        <div class="qr-border">\n            <!-- Thay thế src bằng đường dẫn ảnh QR code của bạn -->\n            <img src="{{$nPopupRecord.fund_id.qr_code_url}}" alt="QR Code" class="qr-image">\n        </div>\n    </div>\n</body>\n</html>	1	1
\.


--
-- TOC entry 3875 (class 0 OID 30676)
-- Dependencies: 250
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jobs (id, "createdAt", "updatedAt", "executionId", "nodeId", "nodeKey", "upstreamId", status, result) FROM stdin;
3	2024-12-04 13:11:22.423+00	2024-12-04 13:11:22.423+00	3	2	gu0yt8nh00x	\N	1	{"createdAt":"2024-12-04T13:11:22.400Z","updatedAt":"2024-12-04T13:11:22.400Z","project_id":2,"id":1,"name":"aaaaa","target_amount":null,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T13:11:22.328Z","updatedAt":"2024-12-04T13:11:22.328Z","id":2,"name":"aaaaa","sub_title":null,"description":null,"address":"bbbb","total_amount":null,"createdById":null,"updatedById":null}}
4	2024-12-04 13:11:22.442+00	2024-12-04 13:11:22.48+00	4	3	k3uiv7ac1lx	\N	1	{"status":200,"statusText":"OK","headers":{"x-request-id":"68cd7b7f-1bcc-461f-a40a-899459e11a15","content-type":"application/json; charset=utf-8","content-length":"231","date":"Wed, 04 Dec 2024 13:11:22 GMT","connection":"close"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":46},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":1,\\"fund_name\\":\\"aaaaa\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":"https://img.vietqr.io/image/undefined-undefined-undefined.jpg?addInfo=Dong%20gop%20quy%20aaaaa","meta":{"fund_id":1,"fund_name":"aaaaa","user_id":null}}}
5	2024-12-04 13:16:27.042+00	2024-12-04 13:16:27.042+00	5	7	jt2v6492ck4	\N	1	{"createdAt":"2024-12-04T13:16:27.009Z","updatedAt":"2024-12-04T13:16:27.009Z","id":3,"name":"dfd","sub_title":null,"description":null,"address":"e3gr","total_amount":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null}
6	2024-12-04 13:16:27.091+00	2024-12-04 13:16:27.091+00	6	2	gu0yt8nh00x	\N	1	{"createdAt":"2024-12-04T13:16:27.064Z","updatedAt":"2024-12-04T13:16:27.064Z","project_id":3,"id":2,"name":"dfd","target_amount":null,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T13:16:27.009Z","updatedAt":"2024-12-04T13:16:27.009Z","id":3,"name":"dfd","sub_title":null,"description":null,"address":"e3gr","total_amount":null,"createdById":null,"updatedById":null}}
7	2024-12-04 13:16:27.111+00	2024-12-04 13:16:27.146+00	7	3	k3uiv7ac1lx	\N	1	{"status":200,"statusText":"OK","headers":{"x-request-id":"c328a0e7-fca9-4c87-bf31-0916aa2ac66a","content-type":"application/json; charset=utf-8","content-length":"227","date":"Wed, 04 Dec 2024 13:16:27 GMT","connection":"close"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":44},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":2,\\"fund_name\\":\\"dfd\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":"https://img.vietqr.io/image/undefined-undefined-undefined.jpg?addInfo=Dong%20gop%20quy%20dfd","meta":{"fund_id":2,"fund_name":"dfd","user_id":null}}}
8	2024-12-04 13:16:27.128+00	2024-12-04 13:16:27.156+00	8	8	k3uiv7ac1lx	\N	-1	{"message":"connect ECONNREFUSED 127.0.0.1:12000","name":"Error","stack":"Error: connect ECONNREFUSED 127.0.0.1:12000\\n    at TCPConnectWrap.afterConnect [as oncomplete] (node:net:1555:16)","config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":44},"url":"http://localhost:12000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":2,\\"fund_name\\":\\"dfd\\",\\"user_id\\":\\"\\"}"},"code":"ECONNREFUSED","status":null}
9	2024-12-04 13:58:19.931+00	2024-12-04 13:58:19.931+00	9	7	jt2v6492ck4	\N	1	{"createdAt":"2024-12-04T13:58:19.899Z","updatedAt":"2024-12-04T13:58:19.899Z","id":4,"name":"fd","sub_title":null,"description":null,"address":"hg","total_amount":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null}
10	2024-12-04 13:58:19.971+00	2024-12-04 13:58:19.971+00	10	2	gu0yt8nh00x	\N	1	{"createdAt":"2024-12-04T13:58:19.951Z","updatedAt":"2024-12-04T13:58:19.951Z","project_id":4,"id":3,"name":"fd","target_amount":null,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T13:58:19.899Z","updatedAt":"2024-12-04T13:58:19.899Z","id":4,"name":"fd","sub_title":null,"description":null,"address":"hg","total_amount":null,"createdById":null,"updatedById":null}}
11	2024-12-04 13:58:19.992+00	2024-12-04 13:58:20.029+00	11	3	k3uiv7ac1lx	\N	1	{"status":200,"statusText":"OK","headers":{"x-request-id":"e9ce7810-b9d8-4e37-8182-246be41201ba","content-type":"application/json; charset=utf-8","content-length":"225","date":"Wed, 04 Dec 2024 13:58:20 GMT","connection":"close"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":43},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":3,\\"fund_name\\":\\"fd\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":"https://img.vietqr.io/image/undefined-undefined-undefined.jpg?addInfo=Dong%20gop%20quy%20fd","meta":{"fund_id":3,"fund_name":"fd","user_id":null}}}
12	2024-12-04 13:58:20.012+00	2024-12-04 13:58:20.04+00	12	8	k3uiv7ac1lx	\N	-1	{"message":"connect ECONNREFUSED 127.0.0.1:12000","name":"Error","stack":"Error: connect ECONNREFUSED 127.0.0.1:12000\\n    at TCPConnectWrap.afterConnect [as oncomplete] (node:net:1555:16)","config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":43},"url":"http://localhost:12000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":3,\\"fund_name\\":\\"fd\\",\\"user_id\\":\\"\\"}"},"code":"ECONNREFUSED","status":null}
13	2024-12-04 13:59:32.032+00	2024-12-04 13:59:32.032+00	13	7	jt2v6492ck4	\N	1	{"createdAt":"2024-12-04T13:59:31.998Z","updatedAt":"2024-12-04T13:59:31.998Z","id":5,"name":"hhh","sub_title":null,"description":null,"address":"df","total_amount":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null}
14	2024-12-04 13:59:32.084+00	2024-12-04 13:59:32.084+00	14	2	gu0yt8nh00x	\N	1	{"createdAt":"2024-12-04T13:59:32.061Z","updatedAt":"2024-12-04T13:59:32.061Z","project_id":5,"id":4,"name":"hhh","target_amount":null,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T13:59:31.998Z","updatedAt":"2024-12-04T13:59:31.998Z","id":5,"name":"hhh","sub_title":null,"description":null,"address":"df","total_amount":null,"createdById":null,"updatedById":null}}
15	2024-12-04 13:59:32.104+00	2024-12-04 13:59:32.154+00	15	3	k3uiv7ac1lx	\N	1	{"status":200,"statusText":"OK","headers":{"x-request-id":"849639a5-4aaa-49dc-bf59-938f38d30f9a","content-type":"application/json; charset=utf-8","content-length":"223","date":"Wed, 04 Dec 2024 13:59:32 GMT","connection":"close"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":44},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":4,\\"fund_name\\":\\"hhh\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":"https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=Dong%20gop%20quy%20hhh","meta":{"fund_id":4,"fund_name":"hhh","user_id":null}}}
16	2024-12-04 13:59:32.132+00	2024-12-04 13:59:32.166+00	16	8	k3uiv7ac1lx	\N	-1	{"message":"connect ECONNREFUSED 127.0.0.1:12000","name":"Error","stack":"Error: connect ECONNREFUSED 127.0.0.1:12000\\n    at TCPConnectWrap.afterConnect [as oncomplete] (node:net:1555:16)","config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":44},"url":"http://localhost:12000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":4,\\"fund_name\\":\\"hhh\\",\\"user_id\\":\\"\\"}"},"code":"ECONNREFUSED","status":null}
17	2024-12-04 14:22:15.533+00	2024-12-04 14:22:15.533+00	17	2	gu0yt8nh00x	\N	1	{"createdAt":"2024-12-04T14:22:15.483Z","updatedAt":"2024-12-04T14:22:15.483Z","project_id":6,"id":5,"name":"df","target_amount":null,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T14:22:15.451Z","updatedAt":"2024-12-04T14:22:15.451Z","id":6,"name":"df","sub_title":null,"description":null,"address":null,"total_amount":null,"createdById":1,"updatedById":1}}
18	2024-12-04 14:22:15.556+00	2024-12-04 14:22:15.594+00	18	3	k3uiv7ac1lx	\N	-1	{"message":"Request failed with status code 404","stack":"Error: Request failed with status code 404\\n    at createError (/app/nocobase/node_modules/axios/lib/core/createError.js:16:15)\\n    at settle (/app/nocobase/node_modules/axios/lib/core/settle.js:17:12)\\n    at IncomingMessage.handleStreamEnd (/app/nocobase/node_modules/axios/lib/adapters/http.js:322:11)\\n    at IncomingMessage.emit (node:events:529:35)\\n    at IncomingMessage.emit (node:domain:489:12)\\n    at endReadableNT (node:internal/streams/readable:1400:12)\\n    at process.processTicksAndRejections (node:internal/process/task_queues:82:21)","status":404,"statusText":"Not Found","headers":{"x-request-id":"a32c5b65-791d-4fa5-a167-516e87974206","vary":"Origin","content-type":"text/plain; charset=utf-8","content-length":"9","date":"Wed, 04 Dec 2024 14:22:15 GMT","connection":"close"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":43},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":5,\\"fund_name\\":\\"df\\",\\"user_id\\":\\"\\"}"},"data":"Not Found"}
19	2024-12-04 14:22:15.584+00	2024-12-04 14:22:15.607+00	19	8	k3uiv7ac1lx	\N	-1	{"message":"connect ECONNREFUSED 127.0.0.1:12000","name":"Error","stack":"Error: connect ECONNREFUSED 127.0.0.1:12000\\n    at TCPConnectWrap.afterConnect [as oncomplete] (node:net:1555:16)","config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":43},"url":"http://localhost:12000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":5,\\"fund_name\\":\\"df\\",\\"user_id\\":\\"\\"}"},"code":"ECONNREFUSED","status":null}
20	2024-12-04 14:34:56.241+00	2024-12-04 14:34:56.241+00	20	2	gu0yt8nh00x	\N	1	{"createdAt":"2024-12-04T14:34:56.225Z","updatedAt":"2024-12-04T14:34:56.225Z","project_id":7,"id":6,"name":"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long","target_amount":20000000000,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T14:34:56.186Z","updatedAt":"2024-12-04T14:34:56.186Z","id":7,"name":"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long","sub_title":"Dự án nhằm khôi phục và cải thiện đời sống của cộng đồng bị ảnh hưởng bởi lũ lụt tại Đồng bằng Sông Cửu Long, thông qua việc xây dựng cơ sở hạ tầng, cung cấp hỗ trợ tài chính và đào tạo nghề.","description":"Dự án này sẽ tập trung vào các hoạt động sau:\\n\\nXây dựng cơ sở hạ tầng: Nâng cấp đường giao thông, cầu cống và hệ thống thoát nước để giảm thiểu thiệt hại do lũ.\\nHỗ trợ tài chính: Cung cấp khoản vay lãi suất thấp cho các hộ gia đình để khôi phục sản xuất nông nghiệp và kinh doanh nhỏ.\\nĐào tạo nghề: Tổ chức các khóa đào tạo về kỹ năng nghề nghiệp cho thanh niên và người lớn tuổi để tạo cơ hội việc làm bền vững.\\nChương trình bảo vệ môi trường: Khuyến khích người dân tham gia vào các hoạt động bảo vệ môi trường và phát triển bền vững.\\nDự án sẽ được triển khai tại các xã bị ảnh hưởng nặng nề nhất, với sự tham gia của chính quyền địa phương và các tổ chức phi chính phủ.","address":"Đồng bằng Sông Cửu Long, Việt Nam (cụ thể có thể là các tỉnh như An Giang, Đồng Tháp, Kiên Giang).","total_amount":20000000000,"createdById":1,"updatedById":1}}
21	2024-12-04 14:34:56.262+00	2024-12-04 14:34:56.302+00	21	3	k3uiv7ac1lx	\N	-1	{"message":"Request failed with status code 404","stack":"Error: Request failed with status code 404\\n    at createError (/app/nocobase/node_modules/axios/lib/core/createError.js:16:15)\\n    at settle (/app/nocobase/node_modules/axios/lib/core/settle.js:17:12)\\n    at IncomingMessage.handleStreamEnd (/app/nocobase/node_modules/axios/lib/adapters/http.js:322:11)\\n    at IncomingMessage.emit (node:events:529:35)\\n    at IncomingMessage.emit (node:domain:489:12)\\n    at endReadableNT (node:internal/streams/readable:1400:12)\\n    at process.processTicksAndRejections (node:internal/process/task_queues:82:21)","status":404,"statusText":"Not Found","headers":{"x-request-id":"3f184384-f7fd-47be-a11c-c4304175d84b","vary":"Origin","content-type":"text/plain; charset=utf-8","content-length":"9","date":"Wed, 04 Dec 2024 14:34:56 GMT","connection":"close"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":126},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":6,\\"fund_name\\":\\"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long\\",\\"user_id\\":\\"\\"}"},"data":"Not Found"}
22	2024-12-04 14:34:56.291+00	2024-12-04 14:34:56.324+00	22	8	k3uiv7ac1lx	\N	-1	{"message":"connect ECONNREFUSED 127.0.0.1:12000","name":"Error","stack":"Error: connect ECONNREFUSED 127.0.0.1:12000\\n    at TCPConnectWrap.afterConnect [as oncomplete] (node:net:1555:16)","config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":126},"url":"http://localhost:12000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":6,\\"fund_name\\":\\"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long\\",\\"user_id\\":\\"\\"}"},"code":"ECONNREFUSED","status":null}
23	2024-12-04 14:43:51.206+00	2024-12-04 14:43:51.206+00	23	2	gu0yt8nh00x	\N	1	{"createdAt":"2024-12-04T14:43:51.188Z","updatedAt":"2024-12-04T14:43:51.188Z","project_id":8,"id":7,"name":"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long","target_amount":20000000000,"current_amount":0,"qr_code_url":null,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null,"project":{"createdAt":"2024-12-04T14:43:51.156Z","updatedAt":"2024-12-04T14:43:51.156Z","id":8,"name":"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long","sub_title":"Dự án nhằm khôi phục và cải thiện đời sống của cộng đồng bị ảnh hưởng bởi lũ lụt tại Đồng bằng Sông Cửu Long, thông qua việc xây dựng cơ sở hạ tầng, cung cấp hỗ trợ tài chính và đào tạo nghề.","description":"Dự án này sẽ tập trung vào các hoạt động sau:\\n\\nXây dựng cơ sở hạ tầng: Nâng cấp đường giao thông, cầu cống và hệ thống thoát nước để giảm thiểu thiệt hại do lũ.\\nHỗ trợ tài chính: Cung cấp khoản vay lãi suất thấp cho các hộ gia đình để khôi phục sản xuất nông nghiệp và kinh doanh nhỏ.\\nĐào tạo nghề: Tổ chức các khóa đào tạo về kỹ năng nghề nghiệp cho thanh niên và người lớn tuổi để tạo cơ hội việc làm bền vững.\\nChương trình bảo vệ môi trường: Khuyến khích người dân tham gia vào các hoạt động bảo vệ môi trường và phát triển bền vững.\\nDự án sẽ được triển khai tại các xã bị ảnh hưởng nặng nề nhất, với sự tham gia của chính quyền địa phương và các tổ chức phi chính phủ.","address":"Đồng bằng Sông Cửu Long, Việt Nam (cụ thể có thể là các tỉnh như An Giang, Đồng Tháp, Kiên Giang).","total_amount":20000000000,"createdById":1,"updatedById":1}}
24	2024-12-04 14:43:51.224+00	2024-12-04 14:43:51.269+00	24	3	k3uiv7ac1lx	\N	-1	{"message":"Request failed with status code 404","stack":"Error: Request failed with status code 404\\n    at createError (/app/nocobase/node_modules/axios/lib/core/createError.js:16:15)\\n    at settle (/app/nocobase/node_modules/axios/lib/core/settle.js:17:12)\\n    at IncomingMessage.handleStreamEnd (/app/nocobase/node_modules/axios/lib/adapters/http.js:322:11)\\n    at IncomingMessage.emit (node:events:529:35)\\n    at IncomingMessage.emit (node:domain:489:12)\\n    at endReadableNT (node:internal/streams/readable:1400:12)\\n    at process.processTicksAndRejections (node:internal/process/task_queues:82:21)","status":404,"statusText":"Not Found","headers":{"x-request-id":"3d30aef3-eab0-4fb7-81b5-b3db32b4cafb","vary":"Origin","content-type":"text/plain; charset=utf-8","content-length":"9","date":"Wed, 04 Dec 2024 14:43:51 GMT","connection":"close"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":126},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":7,\\"fund_name\\":\\"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long\\",\\"user_id\\":\\"\\"}"},"data":"Not Found"}
25	2024-12-04 14:43:51.253+00	2024-12-04 14:43:51.279+00	25	8	k3uiv7ac1lx	\N	-1	{"message":"connect ECONNREFUSED 127.0.0.1:12000","name":"Error","stack":"Error: connect ECONNREFUSED 127.0.0.1:12000\\n    at TCPConnectWrap.afterConnect [as oncomplete] (node:net:1555:16)","config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":126},"url":"http://localhost:12000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":7,\\"fund_name\\":\\"Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long\\",\\"user_id\\":\\"\\"}"},"code":"ECONNREFUSED","status":null}
\.


--
-- TOC entry 3877 (class 0 OID 30682)
-- Dependencies: 252
-- Data for Name: kafka_configs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kafka_configs (id, "createdAt", "updatedAt", group_id, client_id) FROM stdin;
039a965d-6090-4c91-969f-7422f625a38e	2024-12-04 11:50:18.868+00	2024-12-04 11:50:18.868+00	nocobase-group	nocobase-client
\.


--
-- TOC entry 3878 (class 0 OID 30687)
-- Dependencies: 253
-- Data for Name: kafka_topics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kafka_topics (id, "createdAt", "updatedAt", broker_host, topic_name, type) FROM stdin;
d218894f-da15-4fda-abc3-a2d399df872a	2024-12-04 11:50:18.872+00	2024-12-04 11:50:18.872+00	localhost:9092	nocobase-events	producer
\.


--
-- TOC entry 3879 (class 0 OID 30692)
-- Dependencies: 254
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (name) FROM stdin;
20240613222612-fix-assign-field-config/@nocobase/plugin-workflow
20240613110121-fix-schema-in-field/@nocobase/plugin-file-manager
\.


--
-- TOC entry 3880 (class 0 OID 30695)
-- Dependencies: 255
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects ("createdAt", "updatedAt", id, "createdById", "updatedById", name, sub_title, description, address, total_amount) FROM stdin;
2024-12-04 14:43:51.156+00	2024-12-04 14:43:51.156+00	8	1	1	Dự án Khôi phục Cộng đồng Sau Thảm họa Đồng bằng Sông Cửu Long	Dự án nhằm khôi phục và cải thiện đời sống của cộng đồng bị ảnh hưởng bởi lũ lụt tại Đồng bằng Sông Cửu Long, thông qua việc xây dựng cơ sở hạ tầng, cung cấp hỗ trợ tài chính và đào tạo nghề.	Dự án này sẽ tập trung vào các hoạt động sau:\n\nXây dựng cơ sở hạ tầng: Nâng cấp đường giao thông, cầu cống và hệ thống thoát nước để giảm thiểu thiệt hại do lũ.\nHỗ trợ tài chính: Cung cấp khoản vay lãi suất thấp cho các hộ gia đình để khôi phục sản xuất nông nghiệp và kinh doanh nhỏ.\nĐào tạo nghề: Tổ chức các khóa đào tạo về kỹ năng nghề nghiệp cho thanh niên và người lớn tuổi để tạo cơ hội việc làm bền vững.\nChương trình bảo vệ môi trường: Khuyến khích người dân tham gia vào các hoạt động bảo vệ môi trường và phát triển bền vững.\nDự án sẽ được triển khai tại các xã bị ảnh hưởng nặng nề nhất, với sự tham gia của chính quyền địa phương và các tổ chức phi chính phủ.	Đồng bằng Sông Cửu Long, Việt Nam (cụ thể có thể là các tỉnh như An Giang, Đồng Tháp, Kiên Giang).	20000000000
\.


--
-- TOC entry 3882 (class 0 OID 30701)
-- Dependencies: 257
-- Data for Name: proposes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proposes ("createdAt", "updatedAt", id, "createdById", "updatedById", name, status, address) FROM stdin;
\.


--
-- TOC entry 3884 (class 0 OID 30708)
-- Dependencies: 259
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles ("createdAt", "updatedAt", name, title, description, strategy, "default", hidden, "allowConfigure", "allowNewMenu", snippets, sort) FROM stdin;
2024-12-04 09:18:59.829+00	2024-12-04 09:18:59.829+00	root	{{t("Root")}}	\N	\N	f	t	\N	\N	["pm", "pm.*", "ui.*"]	1
2024-12-04 09:18:59.837+00	2024-12-04 09:19:00.194+00	admin	{{t("Admin")}}	\N	{"actions":["create","view","update","destroy","importXlsx","export"]}	f	f	t	t	["pm", "pm.*", "ui.*"]	2
2024-12-04 09:18:59.843+00	2024-12-04 09:19:00.199+00	member	{{t("Member")}}	\N	{"actions":["view","update:own","destroy:own","create","importXlsx","export"]}	t	f	\N	t	["!pm", "!pm.*", "!ui.*"]	3
\.


--
-- TOC entry 3885 (class 0 OID 30716)
-- Dependencies: 260
-- Data for Name: rolesResources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesResources" (id, "createdAt", "updatedAt", "roleName", name, "usingActionsConfig") FROM stdin;
\.


--
-- TOC entry 3886 (class 0 OID 30721)
-- Dependencies: 261
-- Data for Name: rolesResourcesActions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesResourcesActions" (id, "createdAt", "updatedAt", "rolesResourceId", name, fields, "scopeId") FROM stdin;
\.


--
-- TOC entry 3888 (class 0 OID 30728)
-- Dependencies: 263
-- Data for Name: rolesResourcesScopes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesResourcesScopes" (id, "createdAt", "updatedAt", key, name, "resourceName", scope) FROM stdin;
\.


--
-- TOC entry 3891 (class 0 OID 30735)
-- Dependencies: 266
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
2024-12-04 11:51:18.023+00	2024-12-04 11:51:18.023+00	admin	n3yigbe0k9v
2024-12-04 11:51:18.029+00	2024-12-04 11:51:18.029+00	member	n3yigbe0k9v
2024-12-04 12:16:08.966+00	2024-12-04 12:16:08.966+00	admin	xwts1ggw479
2024-12-04 12:16:08.971+00	2024-12-04 12:16:08.971+00	member	xwts1ggw479
2024-12-04 12:16:41.997+00	2024-12-04 12:16:41.997+00	admin	hchm15rxv74
2024-12-04 12:16:42.001+00	2024-12-04 12:16:42.001+00	member	hchm15rxv74
2024-12-04 12:16:58.738+00	2024-12-04 12:16:58.738+00	admin	p3ls96regvr
2024-12-04 12:16:58.742+00	2024-12-04 12:16:58.742+00	member	p3ls96regvr
2024-12-04 12:17:43.404+00	2024-12-04 12:17:43.404+00	admin	bljegelqea8
2024-12-04 12:17:43.409+00	2024-12-04 12:17:43.409+00	member	bljegelqea8
2024-12-04 14:21:47.747+00	2024-12-04 14:21:47.747+00	admin	w1vttmfcjic
2024-12-04 14:21:47.756+00	2024-12-04 14:21:47.756+00	member	w1vttmfcjic
2024-12-04 14:37:19.123+00	2024-12-04 14:37:19.123+00	admin	obl2auujo32
2024-12-04 14:37:19.127+00	2024-12-04 14:37:19.127+00	member	obl2auujo32
2024-12-04 14:49:12.486+00	2024-12-04 14:49:12.486+00	admin	41zfs8bogys
2024-12-04 14:49:12.491+00	2024-12-04 14:49:12.491+00	member	41zfs8bogys
2024-12-04 14:51:12.761+00	2024-12-04 14:51:12.761+00	admin	5vjhonzhs45
2024-12-04 14:51:12.765+00	2024-12-04 14:51:12.765+00	member	5vjhonzhs45
\.


--
-- TOC entry 3892 (class 0 OID 30740)
-- Dependencies: 267
-- Data for Name: rolesUsers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesUsers" ("createdAt", "updatedAt", "default", "roleName", "userId") FROM stdin;
2024-12-04 09:18:59.892+00	2024-12-04 09:18:59.892+00	\N	member	1
2024-12-04 09:18:59.963+00	2024-12-04 09:18:59.963+00	\N	admin	1
2024-12-04 09:18:59.963+00	2024-12-04 09:18:59.967+00	t	root	1
\.


--
-- TOC entry 3893 (class 0 OID 30743)
-- Dependencies: 268
-- Data for Name: sequences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sequences (id, "createdAt", "updatedAt", collection, field, key, current, "lastGeneratedAt") FROM stdin;
\.


--
-- TOC entry 3895 (class 0 OID 30749)
-- Dependencies: 270
-- Data for Name: smart_contracts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.smart_contracts (id, "createdAt", "updatedAt", script) FROM stdin;
\.


--
-- TOC entry 3896 (class 0 OID 30754)
-- Dependencies: 271
-- Data for Name: storages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.storages (id, "createdAt", "updatedAt", title, name, type, options, rules, path, "baseUrl", "default", paranoid) FROM stdin;
1	2024-12-04 09:18:59.806+00	2024-12-04 09:18:59.806+00	Local storage	local	local	{"documentRoot": "storage/uploads"}	{"size": 20971520}		/storage/uploads	t	f
\.


--
-- TOC entry 3899 (class 0 OID 30767)
-- Dependencies: 274
-- Data for Name: systemSettings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."systemSettings" (id, "createdAt", "updatedAt", title, "showLogoOnly", "allowSignUp", "smsAuthEnabled", "logoId", "enabledLanguages", "appLang", options) FROM stdin;
1	2024-12-04 09:18:59.825+00	2024-12-04 09:18:59.825+00	NocoBase	\N	t	f	1	["en-US"]	en-US	{}
\.


--
-- TOC entry 3901 (class 0 OID 30777)
-- Dependencies: 276
-- Data for Name: t_1vx9kyb7k1h; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_1vx9kyb7k1h ("createdAt", "updatedAt", f_3gyw0m841j1, f_zvvclxyl9dz) FROM stdin;
2024-12-04 14:43:51.159+00	2024-12-04 14:43:51.159+00	8	11
2024-12-04 14:43:51.159+00	2024-12-04 14:43:51.159+00	8	12
2024-12-04 14:43:51.159+00	2024-12-04 14:43:51.159+00	8	13
\.


--
-- TOC entry 3902 (class 0 OID 30780)
-- Dependencies: 277
-- Data for Name: t_54opx8rhenu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_54opx8rhenu ("createdAt", "updatedAt", f_jr6kifdk7it, f_ra5knzz1x22) FROM stdin;
\.


--
-- TOC entry 3903 (class 0 OID 30783)
-- Dependencies: 278
-- Data for Name: tokenBlacklist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tokenBlacklist" (id, "createdAt", "updatedAt", token, expiration) FROM stdin;
\.


--
-- TOC entry 3905 (class 0 OID 30787)
-- Dependencies: 280
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transactions ("createdAt", "updatedAt", id, "createdById", "updatedById", transaction_code, amount, direction, fund_id, from_account_no, from_account_name, from_bank_name) FROM stdin;
2024-12-04 21:55:00.83+00	2024-12-04 21:55:00.839+00	1	1	1	FD3263545345	9500000000	INCOMING	7	160720031806	DUY KHANH	VCB
\.


--
-- TOC entry 3907 (class 0 OID 30794)
-- Dependencies: 282
-- Data for Name: uiSchemaServerHooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."uiSchemaServerHooks" (id, type, collection, field, method, params, uid) FROM stdin;
\.


--
-- TOC entry 3909 (class 0 OID 30800)
-- Dependencies: 284
-- Data for Name: uiSchemaTemplates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."uiSchemaTemplates" ("createdAt", "updatedAt", key, name, "componentName", "associationName", "resourceName", "collectionName", "dataSourceKey", uid) FROM stdin;
\.


--
-- TOC entry 3910 (class 0 OID 30805)
-- Dependencies: 285
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
ajlhev8hgld	ajlhev8hgld	0	f	properties	\N
iiek91fm1lg	ajlhev8hgld	2	\N	\N	\N
9j3mrze0kdh	ajlhev8hgld	3	\N	\N	\N
r5ux2dhnfq1	ajlhev8hgld	4	\N	\N	\N
ulw06kfwwn3	ajlhev8hgld	5	\N	\N	\N
wcib2cpt11z	ajlhev8hgld	6	\N	\N	\N
xwts1ggw479	xwts1ggw479	0	f	properties	\N
9yos6i0cjm3	9yos6i0cjm3	0	t	properties	\N
n3yigbe0k9v	9yos6i0cjm3	1	\N	\N	1
861gmcfwhia	861gmcfwhia	0	f	properties	\N
9yos6i0cjm3	861gmcfwhia	1	\N	\N	1
n3yigbe0k9v	861gmcfwhia	2	\N	\N	1
nocobase-admin-menu	n3yigbe0k9v	2	\N	\N	\N
073buw1m70l	9yos6i0cjm3	2	\N	\N	\N
nocobase-admin-menu	9yos6i0cjm3	3	\N	\N	\N
073buw1m70l	861gmcfwhia	3	\N	\N	\N
nocobase-admin-menu	861gmcfwhia	4	\N	\N	\N
n3yigbe0k9v	n3yigbe0k9v	0	f	properties	\N
wcib2cpt11z	wcib2cpt11z	0	t	properties	\N
xwts1ggw479	wcib2cpt11z	1	\N	\N	1
ulw06kfwwn3	ulw06kfwwn3	0	f	properties	\N
wcib2cpt11z	ulw06kfwwn3	1	\N	\N	1
xwts1ggw479	ulw06kfwwn3	2	\N	\N	1
k6pr2jh3wgd	k6pr2jh3wgd	0	t	properties	\N
hchm15rxv74	k6pr2jh3wgd	1	\N	\N	1
4cx141n1lb4	4cx141n1lb4	0	f	properties	\N
k6pr2jh3wgd	4cx141n1lb4	1	\N	\N	1
hchm15rxv74	4cx141n1lb4	2	\N	\N	1
nocobase-admin-menu	hchm15rxv74	2	\N	\N	\N
073buw1m70l	k6pr2jh3wgd	2	\N	\N	\N
nocobase-admin-menu	k6pr2jh3wgd	3	\N	\N	\N
073buw1m70l	4cx141n1lb4	3	\N	\N	\N
nocobase-admin-menu	4cx141n1lb4	4	\N	\N	\N
hchm15rxv74	hchm15rxv74	0	f	properties	\N
eoxofxze047	eoxofxze047	0	t	properties	\N
p3ls96regvr	eoxofxze047	1	\N	\N	1
iqddf9bwww2	iqddf9bwww2	0	f	properties	\N
eoxofxze047	iqddf9bwww2	1	\N	\N	1
p3ls96regvr	iqddf9bwww2	2	\N	\N	1
nocobase-admin-menu	p3ls96regvr	2	\N	\N	\N
073buw1m70l	eoxofxze047	2	\N	\N	\N
nocobase-admin-menu	eoxofxze047	3	\N	\N	\N
073buw1m70l	iqddf9bwww2	3	\N	\N	\N
nocobase-admin-menu	iqddf9bwww2	4	\N	\N	\N
p3ls96regvr	p3ls96regvr	0	f	properties	\N
rjo62izvmhu	rjo62izvmhu	0	t	properties	\N
bljegelqea8	rjo62izvmhu	1	\N	\N	1
8cbzsnycxqk	8cbzsnycxqk	0	f	properties	\N
rjo62izvmhu	8cbzsnycxqk	1	\N	\N	1
bljegelqea8	8cbzsnycxqk	2	\N	\N	1
nocobase-admin-menu	bljegelqea8	2	\N	\N	\N
073buw1m70l	rjo62izvmhu	2	\N	\N	\N
nocobase-admin-menu	rjo62izvmhu	3	\N	\N	\N
073buw1m70l	8cbzsnycxqk	3	\N	\N	\N
nocobase-admin-menu	8cbzsnycxqk	4	\N	\N	\N
bljegelqea8	bljegelqea8	0	f	properties	\N
9j3mrze0kdh	9j3mrze0kdh	0	f	properties	\N
r5ux2dhnfq1	9j3mrze0kdh	1	\N	\N	1
iiek91fm1lg	iiek91fm1lg	0	f	properties	\N
9j3mrze0kdh	iiek91fm1lg	1	\N	\N	1
r5ux2dhnfq1	iiek91fm1lg	2	\N	\N	1
uz1e0k6wjf1	uz1e0k6wjf1	0	f	properties	\N
iiek91fm1lg	uz1e0k6wjf1	1	\N	\N	1
9j3mrze0kdh	uz1e0k6wjf1	2	\N	\N	1
r5ux2dhnfq1	uz1e0k6wjf1	3	\N	\N	1
dwzj4kwyaia	dwzj4kwyaia	0	f	properties	\N
iiek91fm1lg	dwzj4kwyaia	1	\N	\N	2
9j3mrze0kdh	dwzj4kwyaia	2	\N	\N	2
r5ux2dhnfq1	dwzj4kwyaia	3	\N	\N	2
9udwuhf2o25	9udwuhf2o25	0	f	properties	\N
dwzj4kwyaia	9udwuhf2o25	1	\N	\N	1
iiek91fm1lg	9udwuhf2o25	2	\N	\N	1
9j3mrze0kdh	9udwuhf2o25	3	\N	\N	1
r5ux2dhnfq1	9udwuhf2o25	4	\N	\N	1
r5ux2dhnfq1	r5ux2dhnfq1	0	f	properties	\N
fuvpnwuajhl	fuvpnwuajhl	0	f	properties	\N
9udwuhf2o25	fuvpnwuajhl	1	\N	\N	1
dwzj4kwyaia	fuvpnwuajhl	2	\N	\N	1
iiek91fm1lg	fuvpnwuajhl	3	\N	\N	1
9j3mrze0kdh	fuvpnwuajhl	4	\N	\N	1
r5ux2dhnfq1	fuvpnwuajhl	5	\N	\N	1
ulw06kfwwn3	9j3mrze0kdh	2	\N	\N	\N
ulw06kfwwn3	iiek91fm1lg	3	\N	\N	\N
ulw06kfwwn3	uz1e0k6wjf1	4	\N	\N	\N
ulw06kfwwn3	dwzj4kwyaia	4	\N	\N	\N
ulw06kfwwn3	9udwuhf2o25	5	\N	\N	\N
ulw06kfwwn3	fuvpnwuajhl	6	\N	\N	\N
wcib2cpt11z	r5ux2dhnfq1	2	\N	\N	\N
wcib2cpt11z	9j3mrze0kdh	3	\N	\N	\N
wcib2cpt11z	iiek91fm1lg	4	\N	\N	\N
wcib2cpt11z	uz1e0k6wjf1	5	\N	\N	\N
wcib2cpt11z	dwzj4kwyaia	5	\N	\N	\N
wcib2cpt11z	9udwuhf2o25	6	\N	\N	\N
wcib2cpt11z	fuvpnwuajhl	7	\N	\N	\N
xwts1ggw479	r5ux2dhnfq1	3	\N	\N	\N
xwts1ggw479	9j3mrze0kdh	4	\N	\N	\N
xwts1ggw479	iiek91fm1lg	5	\N	\N	\N
xwts1ggw479	uz1e0k6wjf1	6	\N	\N	\N
xwts1ggw479	dwzj4kwyaia	6	\N	\N	\N
xwts1ggw479	9udwuhf2o25	7	\N	\N	\N
xwts1ggw479	fuvpnwuajhl	8	\N	\N	\N
ulw06kfwwn3	r5ux2dhnfq1	1	\N	\N	1
xwts1ggw479	ajlhev8hgld	7	\N	\N	\N
uz1e0k6wjf1	ajlhev8hgld	1	\N	\N	1
yqj4tsj0tp5	yqj4tsj0tp5	0	f	properties	\N
y90c6xine07	yqj4tsj0tp5	1	\N	\N	1
5i62m584bjk	5i62m584bjk	0	f	properties	\N
yqj4tsj0tp5	5i62m584bjk	1	\N	\N	1
y90c6xine07	5i62m584bjk	2	\N	\N	1
lqc01b4n2xe	lqc01b4n2xe	0	f	properties	\N
5i62m584bjk	lqc01b4n2xe	1	\N	\N	1
yqj4tsj0tp5	lqc01b4n2xe	2	\N	\N	1
y90c6xine07	lqc01b4n2xe	3	\N	\N	1
2dp1sgeoanq	2dp1sgeoanq	0	f	properties	\N
lqc01b4n2xe	2dp1sgeoanq	1	\N	\N	1
5i62m584bjk	2dp1sgeoanq	2	\N	\N	1
yqj4tsj0tp5	2dp1sgeoanq	3	\N	\N	1
y90c6xine07	2dp1sgeoanq	4	\N	\N	1
iiek91fm1lg	y90c6xine07	2	\N	\N	\N
9j3mrze0kdh	y90c6xine07	3	\N	\N	\N
r5ux2dhnfq1	y90c6xine07	4	\N	\N	\N
ulw06kfwwn3	y90c6xine07	5	\N	\N	\N
wcib2cpt11z	y90c6xine07	6	\N	\N	\N
xwts1ggw479	y90c6xine07	7	\N	\N	\N
uz1e0k6wjf1	yqj4tsj0tp5	2	\N	\N	\N
iiek91fm1lg	yqj4tsj0tp5	3	\N	\N	\N
9j3mrze0kdh	yqj4tsj0tp5	4	\N	\N	\N
r5ux2dhnfq1	yqj4tsj0tp5	5	\N	\N	\N
ulw06kfwwn3	yqj4tsj0tp5	6	\N	\N	\N
wcib2cpt11z	yqj4tsj0tp5	7	\N	\N	\N
xwts1ggw479	yqj4tsj0tp5	8	\N	\N	\N
uz1e0k6wjf1	5i62m584bjk	3	\N	\N	\N
iiek91fm1lg	5i62m584bjk	4	\N	\N	\N
9j3mrze0kdh	5i62m584bjk	5	\N	\N	\N
r5ux2dhnfq1	5i62m584bjk	6	\N	\N	\N
ulw06kfwwn3	5i62m584bjk	7	\N	\N	\N
wcib2cpt11z	5i62m584bjk	8	\N	\N	\N
xwts1ggw479	5i62m584bjk	9	\N	\N	\N
uz1e0k6wjf1	lqc01b4n2xe	4	\N	\N	\N
iiek91fm1lg	lqc01b4n2xe	5	\N	\N	\N
9j3mrze0kdh	lqc01b4n2xe	6	\N	\N	\N
r5ux2dhnfq1	lqc01b4n2xe	7	\N	\N	\N
ulw06kfwwn3	lqc01b4n2xe	8	\N	\N	\N
wcib2cpt11z	lqc01b4n2xe	9	\N	\N	\N
xwts1ggw479	lqc01b4n2xe	10	\N	\N	\N
uz1e0k6wjf1	2dp1sgeoanq	5	\N	\N	\N
iiek91fm1lg	2dp1sgeoanq	6	\N	\N	\N
9j3mrze0kdh	2dp1sgeoanq	7	\N	\N	\N
r5ux2dhnfq1	2dp1sgeoanq	8	\N	\N	\N
ulw06kfwwn3	2dp1sgeoanq	9	\N	\N	\N
wcib2cpt11z	2dp1sgeoanq	10	\N	\N	\N
xwts1ggw479	2dp1sgeoanq	11	\N	\N	\N
y90c6xine07	y90c6xine07	0	f	properties	\N
uz1e0k6wjf1	y90c6xine07	1	\N	\N	2
3g77tkiq3m4	3g77tkiq3m4	0	f	properties	\N
iiek91fm1lg	3g77tkiq3m4	2	\N	\N	\N
9j3mrze0kdh	3g77tkiq3m4	3	\N	\N	\N
r5ux2dhnfq1	3g77tkiq3m4	4	\N	\N	\N
ulw06kfwwn3	3g77tkiq3m4	5	\N	\N	\N
wcib2cpt11z	3g77tkiq3m4	6	\N	\N	\N
xwts1ggw479	3g77tkiq3m4	7	\N	\N	\N
uz1e0k6wjf1	3g77tkiq3m4	1	\N	\N	3
qbzhqbkp363	qbzhqbkp363	0	f	properties	\N
iiek91fm1lg	qbzhqbkp363	2	\N	\N	\N
9j3mrze0kdh	qbzhqbkp363	3	\N	\N	\N
r5ux2dhnfq1	qbzhqbkp363	4	\N	\N	\N
ulw06kfwwn3	qbzhqbkp363	5	\N	\N	\N
wcib2cpt11z	qbzhqbkp363	6	\N	\N	\N
xwts1ggw479	qbzhqbkp363	7	\N	\N	\N
uz1e0k6wjf1	qbzhqbkp363	1	\N	\N	4
a7e860jrx5o	a7e860jrx5o	0	f	properties	\N
8qtz3wrc8jb	8qtz3wrc8jb	0	f	properties	\N
a2izctpt2dm	8qtz3wrc8jb	1	\N	\N	1
sge8s8r9kdv	sge8s8r9kdv	0	f	properties	\N
8qtz3wrc8jb	sge8s8r9kdv	1	\N	\N	1
a2izctpt2dm	sge8s8r9kdv	2	\N	\N	1
0pc9xw649k4	0pc9xw649k4	0	f	properties	\N
sge8s8r9kdv	0pc9xw649k4	1	\N	\N	1
8qtz3wrc8jb	0pc9xw649k4	2	\N	\N	1
a2izctpt2dm	0pc9xw649k4	3	\N	\N	1
1vvvk5b0mrj	1vvvk5b0mrj	0	f	properties	\N
0pc9xw649k4	1vvvk5b0mrj	1	\N	\N	1
sge8s8r9kdv	1vvvk5b0mrj	2	\N	\N	1
8qtz3wrc8jb	1vvvk5b0mrj	3	\N	\N	1
a2izctpt2dm	1vvvk5b0mrj	4	\N	\N	1
9udwuhf2o25	a2izctpt2dm	2	\N	\N	\N
dwzj4kwyaia	a2izctpt2dm	3	\N	\N	\N
iiek91fm1lg	a2izctpt2dm	4	\N	\N	\N
9j3mrze0kdh	a2izctpt2dm	5	\N	\N	\N
r5ux2dhnfq1	a2izctpt2dm	6	\N	\N	\N
ulw06kfwwn3	a2izctpt2dm	7	\N	\N	\N
wcib2cpt11z	a2izctpt2dm	8	\N	\N	\N
xwts1ggw479	a2izctpt2dm	9	\N	\N	\N
fuvpnwuajhl	8qtz3wrc8jb	2	\N	\N	\N
9udwuhf2o25	8qtz3wrc8jb	3	\N	\N	\N
dwzj4kwyaia	8qtz3wrc8jb	4	\N	\N	\N
iiek91fm1lg	8qtz3wrc8jb	5	\N	\N	\N
9j3mrze0kdh	8qtz3wrc8jb	6	\N	\N	\N
r5ux2dhnfq1	8qtz3wrc8jb	7	\N	\N	\N
ulw06kfwwn3	8qtz3wrc8jb	8	\N	\N	\N
wcib2cpt11z	8qtz3wrc8jb	9	\N	\N	\N
xwts1ggw479	8qtz3wrc8jb	10	\N	\N	\N
fuvpnwuajhl	sge8s8r9kdv	3	\N	\N	\N
9udwuhf2o25	sge8s8r9kdv	4	\N	\N	\N
dwzj4kwyaia	sge8s8r9kdv	5	\N	\N	\N
iiek91fm1lg	sge8s8r9kdv	6	\N	\N	\N
9j3mrze0kdh	sge8s8r9kdv	7	\N	\N	\N
r5ux2dhnfq1	sge8s8r9kdv	8	\N	\N	\N
ulw06kfwwn3	sge8s8r9kdv	9	\N	\N	\N
wcib2cpt11z	sge8s8r9kdv	10	\N	\N	\N
xwts1ggw479	sge8s8r9kdv	11	\N	\N	\N
fuvpnwuajhl	0pc9xw649k4	4	\N	\N	\N
9udwuhf2o25	0pc9xw649k4	5	\N	\N	\N
dwzj4kwyaia	0pc9xw649k4	6	\N	\N	\N
iiek91fm1lg	0pc9xw649k4	7	\N	\N	\N
9j3mrze0kdh	0pc9xw649k4	8	\N	\N	\N
r5ux2dhnfq1	0pc9xw649k4	9	\N	\N	\N
ulw06kfwwn3	0pc9xw649k4	10	\N	\N	\N
wcib2cpt11z	0pc9xw649k4	11	\N	\N	\N
xwts1ggw479	0pc9xw649k4	12	\N	\N	\N
fuvpnwuajhl	1vvvk5b0mrj	5	\N	\N	\N
9udwuhf2o25	1vvvk5b0mrj	6	\N	\N	\N
dwzj4kwyaia	1vvvk5b0mrj	7	\N	\N	\N
iiek91fm1lg	1vvvk5b0mrj	8	\N	\N	\N
9j3mrze0kdh	1vvvk5b0mrj	9	\N	\N	\N
r5ux2dhnfq1	1vvvk5b0mrj	10	\N	\N	\N
ulw06kfwwn3	1vvvk5b0mrj	11	\N	\N	\N
wcib2cpt11z	1vvvk5b0mrj	12	\N	\N	\N
xwts1ggw479	1vvvk5b0mrj	13	\N	\N	\N
a2izctpt2dm	a2izctpt2dm	0	f	properties	\N
fuvpnwuajhl	a2izctpt2dm	1	\N	\N	1
zxh1oe1qx5t	a7e860jrx5o	1	\N	\N	1
pdot2ybyfc0	pdot2ybyfc0	0	f	properties	\N
a7e860jrx5o	pdot2ybyfc0	1	\N	\N	1
zxh1oe1qx5t	pdot2ybyfc0	2	\N	\N	1
baqq2v2fong	baqq2v2fong	0	f	properties	\N
pdot2ybyfc0	baqq2v2fong	1	\N	\N	1
a7e860jrx5o	baqq2v2fong	2	\N	\N	1
zxh1oe1qx5t	baqq2v2fong	3	\N	\N	1
i0bqeajbvwo	i0bqeajbvwo	0	f	properties	\N
pdot2ybyfc0	i0bqeajbvwo	1	\N	\N	2
a7e860jrx5o	i0bqeajbvwo	2	\N	\N	2
zxh1oe1qx5t	i0bqeajbvwo	3	\N	\N	2
e87ogy2w48b	e87ogy2w48b	0	f	properties	\N
i0bqeajbvwo	e87ogy2w48b	1	\N	\N	1
pdot2ybyfc0	e87ogy2w48b	2	\N	\N	1
a7e860jrx5o	e87ogy2w48b	3	\N	\N	1
zxh1oe1qx5t	e87ogy2w48b	4	\N	\N	1
galt7hbd78y	galt7hbd78y	0	f	properties	\N
e87ogy2w48b	galt7hbd78y	1	\N	\N	1
i0bqeajbvwo	galt7hbd78y	2	\N	\N	1
pdot2ybyfc0	galt7hbd78y	3	\N	\N	1
a7e860jrx5o	galt7hbd78y	4	\N	\N	1
zxh1oe1qx5t	galt7hbd78y	5	\N	\N	1
861gmcfwhia	a7e860jrx5o	2	\N	\N	\N
9yos6i0cjm3	a7e860jrx5o	3	\N	\N	\N
n3yigbe0k9v	a7e860jrx5o	4	\N	\N	\N
073buw1m70l	a7e860jrx5o	5	\N	\N	\N
nocobase-admin-menu	a7e860jrx5o	6	\N	\N	\N
861gmcfwhia	baqq2v2fong	4	\N	\N	\N
9yos6i0cjm3	baqq2v2fong	5	\N	\N	\N
n3yigbe0k9v	baqq2v2fong	6	\N	\N	\N
073buw1m70l	baqq2v2fong	7	\N	\N	\N
nocobase-admin-menu	baqq2v2fong	8	\N	\N	\N
861gmcfwhia	e87ogy2w48b	5	\N	\N	\N
9yos6i0cjm3	e87ogy2w48b	6	\N	\N	\N
n3yigbe0k9v	e87ogy2w48b	7	\N	\N	\N
073buw1m70l	e87ogy2w48b	8	\N	\N	\N
nocobase-admin-menu	e87ogy2w48b	9	\N	\N	\N
861gmcfwhia	galt7hbd78y	6	\N	\N	\N
9yos6i0cjm3	galt7hbd78y	7	\N	\N	\N
n3yigbe0k9v	galt7hbd78y	8	\N	\N	\N
073buw1m70l	galt7hbd78y	9	\N	\N	\N
nocobase-admin-menu	galt7hbd78y	10	\N	\N	\N
861gmcfwhia	i0bqeajbvwo	4	\N	\N	\N
9yos6i0cjm3	i0bqeajbvwo	5	\N	\N	\N
n3yigbe0k9v	i0bqeajbvwo	6	\N	\N	\N
073buw1m70l	i0bqeajbvwo	7	\N	\N	\N
nocobase-admin-menu	i0bqeajbvwo	8	\N	\N	\N
861gmcfwhia	pdot2ybyfc0	3	\N	\N	\N
9yos6i0cjm3	pdot2ybyfc0	4	\N	\N	\N
n3yigbe0k9v	pdot2ybyfc0	5	\N	\N	\N
073buw1m70l	pdot2ybyfc0	6	\N	\N	\N
nocobase-admin-menu	pdot2ybyfc0	7	\N	\N	\N
9yos6i0cjm3	zxh1oe1qx5t	2	\N	\N	\N
n3yigbe0k9v	zxh1oe1qx5t	3	\N	\N	\N
073buw1m70l	zxh1oe1qx5t	4	\N	\N	\N
nocobase-admin-menu	zxh1oe1qx5t	5	\N	\N	\N
zxh1oe1qx5t	zxh1oe1qx5t	0	f	properties	\N
861gmcfwhia	zxh1oe1qx5t	1	\N	\N	1
zbn0vslk90o	zbn0vslk90o	0	f	properties	\N
a6lzbst8sz6	zbn0vslk90o	1	\N	\N	1
i0bqeajbvwo	zbn0vslk90o	2	\N	\N	\N
pdot2ybyfc0	a6lzbst8sz6	2	\N	\N	\N
pdot2ybyfc0	zbn0vslk90o	3	\N	\N	\N
a7e860jrx5o	a6lzbst8sz6	3	\N	\N	\N
a7e860jrx5o	zbn0vslk90o	4	\N	\N	\N
zxh1oe1qx5t	a6lzbst8sz6	4	\N	\N	\N
zxh1oe1qx5t	zbn0vslk90o	5	\N	\N	\N
861gmcfwhia	a6lzbst8sz6	5	\N	\N	\N
scx9pufw9ld	scx9pufw9ld	0	f	properties	\N
7i8vn1nplyc	scx9pufw9ld	1	\N	\N	1
ftwn0si2s5e	ftwn0si2s5e	0	f	properties	\N
scx9pufw9ld	ftwn0si2s5e	1	\N	\N	1
7i8vn1nplyc	ftwn0si2s5e	2	\N	\N	1
que1e0cmz1z	que1e0cmz1z	0	f	properties	\N
ftwn0si2s5e	que1e0cmz1z	1	\N	\N	1
scx9pufw9ld	que1e0cmz1z	2	\N	\N	1
7i8vn1nplyc	que1e0cmz1z	3	\N	\N	1
wwfnvseziiz	wwfnvseziiz	0	f	properties	\N
que1e0cmz1z	wwfnvseziiz	1	\N	\N	1
ftwn0si2s5e	wwfnvseziiz	2	\N	\N	1
scx9pufw9ld	wwfnvseziiz	3	\N	\N	1
7i8vn1nplyc	wwfnvseziiz	4	\N	\N	1
9udwuhf2o25	7i8vn1nplyc	2	\N	\N	\N
dwzj4kwyaia	7i8vn1nplyc	3	\N	\N	\N
iiek91fm1lg	7i8vn1nplyc	4	\N	\N	\N
9j3mrze0kdh	7i8vn1nplyc	5	\N	\N	\N
r5ux2dhnfq1	7i8vn1nplyc	6	\N	\N	\N
ulw06kfwwn3	7i8vn1nplyc	7	\N	\N	\N
wcib2cpt11z	7i8vn1nplyc	8	\N	\N	\N
xwts1ggw479	7i8vn1nplyc	9	\N	\N	\N
fuvpnwuajhl	scx9pufw9ld	2	\N	\N	\N
9udwuhf2o25	scx9pufw9ld	3	\N	\N	\N
dwzj4kwyaia	scx9pufw9ld	4	\N	\N	\N
iiek91fm1lg	scx9pufw9ld	5	\N	\N	\N
9j3mrze0kdh	scx9pufw9ld	6	\N	\N	\N
r5ux2dhnfq1	scx9pufw9ld	7	\N	\N	\N
ulw06kfwwn3	scx9pufw9ld	8	\N	\N	\N
wcib2cpt11z	scx9pufw9ld	9	\N	\N	\N
xwts1ggw479	scx9pufw9ld	10	\N	\N	\N
fuvpnwuajhl	ftwn0si2s5e	3	\N	\N	\N
9udwuhf2o25	ftwn0si2s5e	4	\N	\N	\N
dwzj4kwyaia	ftwn0si2s5e	5	\N	\N	\N
iiek91fm1lg	ftwn0si2s5e	6	\N	\N	\N
9j3mrze0kdh	ftwn0si2s5e	7	\N	\N	\N
r5ux2dhnfq1	ftwn0si2s5e	8	\N	\N	\N
ulw06kfwwn3	ftwn0si2s5e	9	\N	\N	\N
wcib2cpt11z	ftwn0si2s5e	10	\N	\N	\N
xwts1ggw479	ftwn0si2s5e	11	\N	\N	\N
fuvpnwuajhl	que1e0cmz1z	4	\N	\N	\N
9udwuhf2o25	que1e0cmz1z	5	\N	\N	\N
dwzj4kwyaia	que1e0cmz1z	6	\N	\N	\N
iiek91fm1lg	que1e0cmz1z	7	\N	\N	\N
9j3mrze0kdh	que1e0cmz1z	8	\N	\N	\N
r5ux2dhnfq1	que1e0cmz1z	9	\N	\N	\N
ulw06kfwwn3	que1e0cmz1z	10	\N	\N	\N
wcib2cpt11z	que1e0cmz1z	11	\N	\N	\N
xwts1ggw479	que1e0cmz1z	12	\N	\N	\N
fuvpnwuajhl	wwfnvseziiz	5	\N	\N	\N
9udwuhf2o25	wwfnvseziiz	6	\N	\N	\N
dwzj4kwyaia	wwfnvseziiz	7	\N	\N	\N
iiek91fm1lg	wwfnvseziiz	8	\N	\N	\N
9j3mrze0kdh	wwfnvseziiz	9	\N	\N	\N
r5ux2dhnfq1	wwfnvseziiz	10	\N	\N	\N
ulw06kfwwn3	wwfnvseziiz	11	\N	\N	\N
wcib2cpt11z	wwfnvseziiz	12	\N	\N	\N
xwts1ggw479	wwfnvseziiz	13	\N	\N	\N
7i8vn1nplyc	7i8vn1nplyc	0	f	properties	\N
fuvpnwuajhl	7i8vn1nplyc	1	\N	\N	3
gf7yu1fk5fu	gf7yu1fk5fu	0	f	properties	\N
9udwuhf2o25	gf7yu1fk5fu	2	\N	\N	\N
dwzj4kwyaia	gf7yu1fk5fu	3	\N	\N	\N
iiek91fm1lg	gf7yu1fk5fu	4	\N	\N	\N
9j3mrze0kdh	gf7yu1fk5fu	5	\N	\N	\N
r5ux2dhnfq1	gf7yu1fk5fu	6	\N	\N	\N
ulw06kfwwn3	gf7yu1fk5fu	7	\N	\N	\N
wcib2cpt11z	gf7yu1fk5fu	8	\N	\N	\N
xwts1ggw479	gf7yu1fk5fu	9	\N	\N	\N
fuvpnwuajhl	gf7yu1fk5fu	1	\N	\N	4
861gmcfwhia	zbn0vslk90o	6	\N	\N	\N
9yos6i0cjm3	a6lzbst8sz6	6	\N	\N	\N
9yos6i0cjm3	zbn0vslk90o	7	\N	\N	\N
n3yigbe0k9v	a6lzbst8sz6	7	\N	\N	\N
n3yigbe0k9v	zbn0vslk90o	8	\N	\N	\N
073buw1m70l	a6lzbst8sz6	8	\N	\N	\N
073buw1m70l	zbn0vslk90o	9	\N	\N	\N
nocobase-admin-menu	a6lzbst8sz6	9	\N	\N	\N
nocobase-admin-menu	zbn0vslk90o	10	\N	\N	\N
a6lzbst8sz6	a6lzbst8sz6	0	f	properties	\N
i0bqeajbvwo	a6lzbst8sz6	1	\N	\N	2
f6or5f1urqn	f6or5f1urqn	0	f	properties	\N
q0et9i0iaar	f6or5f1urqn	1	\N	\N	1
i0bqeajbvwo	f6or5f1urqn	2	\N	\N	\N
pdot2ybyfc0	f6or5f1urqn	3	\N	\N	\N
pdot2ybyfc0	q0et9i0iaar	2	\N	\N	\N
a7e860jrx5o	f6or5f1urqn	4	\N	\N	\N
a7e860jrx5o	q0et9i0iaar	3	\N	\N	\N
zxh1oe1qx5t	f6or5f1urqn	5	\N	\N	\N
zxh1oe1qx5t	q0et9i0iaar	4	\N	\N	\N
861gmcfwhia	f6or5f1urqn	6	\N	\N	\N
861gmcfwhia	q0et9i0iaar	5	\N	\N	\N
9yos6i0cjm3	f6or5f1urqn	7	\N	\N	\N
9yos6i0cjm3	q0et9i0iaar	6	\N	\N	\N
n3yigbe0k9v	f6or5f1urqn	8	\N	\N	\N
n3yigbe0k9v	q0et9i0iaar	7	\N	\N	\N
073buw1m70l	f6or5f1urqn	9	\N	\N	\N
073buw1m70l	q0et9i0iaar	8	\N	\N	\N
nocobase-admin-menu	f6or5f1urqn	10	\N	\N	\N
nocobase-admin-menu	q0et9i0iaar	9	\N	\N	\N
q0et9i0iaar	q0et9i0iaar	0	f	properties	\N
i0bqeajbvwo	q0et9i0iaar	1	\N	\N	3
l3sn84hkipn	l3sn84hkipn	0	f	properties	\N
2honxaktv0l	l3sn84hkipn	1	\N	\N	1
i0bqeajbvwo	l3sn84hkipn	2	\N	\N	\N
pdot2ybyfc0	2honxaktv0l	2	\N	\N	\N
pdot2ybyfc0	l3sn84hkipn	3	\N	\N	\N
a7e860jrx5o	2honxaktv0l	3	\N	\N	\N
a7e860jrx5o	l3sn84hkipn	4	\N	\N	\N
zxh1oe1qx5t	2honxaktv0l	4	\N	\N	\N
zxh1oe1qx5t	l3sn84hkipn	5	\N	\N	\N
861gmcfwhia	2honxaktv0l	5	\N	\N	\N
861gmcfwhia	l3sn84hkipn	6	\N	\N	\N
9yos6i0cjm3	2honxaktv0l	6	\N	\N	\N
9yos6i0cjm3	l3sn84hkipn	7	\N	\N	\N
n3yigbe0k9v	2honxaktv0l	7	\N	\N	\N
n3yigbe0k9v	l3sn84hkipn	8	\N	\N	\N
073buw1m70l	2honxaktv0l	8	\N	\N	\N
073buw1m70l	l3sn84hkipn	9	\N	\N	\N
nocobase-admin-menu	2honxaktv0l	9	\N	\N	\N
nocobase-admin-menu	l3sn84hkipn	10	\N	\N	\N
2honxaktv0l	2honxaktv0l	0	f	properties	\N
i0bqeajbvwo	2honxaktv0l	1	\N	\N	4
hg9tvy6yuph	hg9tvy6yuph	0	f	properties	\N
bzirblya7qw	hg9tvy6yuph	1	\N	\N	1
k4kftsn5ht7	k4kftsn5ht7	0	f	properties	\N
hg9tvy6yuph	k4kftsn5ht7	1	\N	\N	1
bzirblya7qw	k4kftsn5ht7	2	\N	\N	1
ebu29iqsaqx	ebu29iqsaqx	0	f	properties	\N
k4kftsn5ht7	ebu29iqsaqx	1	\N	\N	1
hg9tvy6yuph	ebu29iqsaqx	2	\N	\N	1
bzirblya7qw	ebu29iqsaqx	3	\N	\N	1
4gdmc9g083s	4gdmc9g083s	0	f	properties	\N
ebu29iqsaqx	4gdmc9g083s	1	\N	\N	1
k4kftsn5ht7	4gdmc9g083s	2	\N	\N	1
hg9tvy6yuph	4gdmc9g083s	3	\N	\N	1
bzirblya7qw	4gdmc9g083s	4	\N	\N	1
galt7hbd78y	4gdmc9g083s	5	\N	\N	\N
e87ogy2w48b	4gdmc9g083s	6	\N	\N	\N
i0bqeajbvwo	4gdmc9g083s	7	\N	\N	\N
pdot2ybyfc0	4gdmc9g083s	8	\N	\N	\N
lm0dfpdoltg	lm0dfpdoltg	0	f	properties	\N
6ex1fiqbfa8	lm0dfpdoltg	1	\N	\N	1
iiek91fm1lg	6ex1fiqbfa8	2	\N	\N	\N
9j3mrze0kdh	6ex1fiqbfa8	3	\N	\N	\N
r5ux2dhnfq1	6ex1fiqbfa8	4	\N	\N	\N
ulw06kfwwn3	6ex1fiqbfa8	5	\N	\N	\N
wcib2cpt11z	6ex1fiqbfa8	6	\N	\N	\N
xwts1ggw479	6ex1fiqbfa8	7	\N	\N	\N
dwzj4kwyaia	lm0dfpdoltg	2	\N	\N	\N
iiek91fm1lg	lm0dfpdoltg	3	\N	\N	\N
9j3mrze0kdh	lm0dfpdoltg	4	\N	\N	\N
r5ux2dhnfq1	lm0dfpdoltg	5	\N	\N	\N
ulw06kfwwn3	lm0dfpdoltg	6	\N	\N	\N
wcib2cpt11z	lm0dfpdoltg	7	\N	\N	\N
xwts1ggw479	lm0dfpdoltg	8	\N	\N	\N
6ex1fiqbfa8	6ex1fiqbfa8	0	f	properties	\N
dwzj4kwyaia	6ex1fiqbfa8	1	\N	\N	2
6idlds4jdgv	6idlds4jdgv	0	f	properties	\N
dqssxed8op7	6idlds4jdgv	1	\N	\N	1
dwzj4kwyaia	6idlds4jdgv	2	\N	\N	\N
iiek91fm1lg	6idlds4jdgv	3	\N	\N	\N
9j3mrze0kdh	6idlds4jdgv	4	\N	\N	\N
r5ux2dhnfq1	6idlds4jdgv	5	\N	\N	\N
ulw06kfwwn3	6idlds4jdgv	6	\N	\N	\N
wcib2cpt11z	6idlds4jdgv	7	\N	\N	\N
xwts1ggw479	6idlds4jdgv	8	\N	\N	\N
iiek91fm1lg	dqssxed8op7	2	\N	\N	\N
9j3mrze0kdh	dqssxed8op7	3	\N	\N	\N
r5ux2dhnfq1	dqssxed8op7	4	\N	\N	\N
ulw06kfwwn3	dqssxed8op7	5	\N	\N	\N
wcib2cpt11z	dqssxed8op7	6	\N	\N	\N
xwts1ggw479	dqssxed8op7	7	\N	\N	\N
dqssxed8op7	dqssxed8op7	0	f	properties	\N
dwzj4kwyaia	dqssxed8op7	1	\N	\N	3
mk0btnborli	mk0btnborli	0	f	properties	\N
bq12jdwqsm7	mk0btnborli	1	\N	\N	1
iiek91fm1lg	bq12jdwqsm7	2	\N	\N	\N
9j3mrze0kdh	bq12jdwqsm7	3	\N	\N	\N
r5ux2dhnfq1	bq12jdwqsm7	4	\N	\N	\N
ulw06kfwwn3	bq12jdwqsm7	5	\N	\N	\N
wcib2cpt11z	bq12jdwqsm7	6	\N	\N	\N
xwts1ggw479	bq12jdwqsm7	7	\N	\N	\N
dwzj4kwyaia	mk0btnborli	2	\N	\N	\N
iiek91fm1lg	mk0btnborli	3	\N	\N	\N
9j3mrze0kdh	mk0btnborli	4	\N	\N	\N
r5ux2dhnfq1	mk0btnborli	5	\N	\N	\N
ulw06kfwwn3	mk0btnborli	6	\N	\N	\N
wcib2cpt11z	mk0btnborli	7	\N	\N	\N
xwts1ggw479	mk0btnborli	8	\N	\N	\N
bq12jdwqsm7	bq12jdwqsm7	0	f	properties	\N
dwzj4kwyaia	bq12jdwqsm7	1	\N	\N	4
ii9oyxsb8c5	ii9oyxsb8c5	0	f	properties	\N
511oe1h7d0q	ii9oyxsb8c5	1	\N	\N	1
bjya50ieh5c	bjya50ieh5c	0	f	properties	\N
ii9oyxsb8c5	bjya50ieh5c	1	\N	\N	1
511oe1h7d0q	bjya50ieh5c	2	\N	\N	1
qusl2hqi7gk	qusl2hqi7gk	0	f	properties	\N
bjya50ieh5c	qusl2hqi7gk	1	\N	\N	1
ii9oyxsb8c5	qusl2hqi7gk	2	\N	\N	1
511oe1h7d0q	qusl2hqi7gk	3	\N	\N	1
7wvztesg1l9	7wvztesg1l9	0	f	properties	\N
qusl2hqi7gk	7wvztesg1l9	1	\N	\N	1
bjya50ieh5c	7wvztesg1l9	2	\N	\N	1
ii9oyxsb8c5	7wvztesg1l9	3	\N	\N	1
511oe1h7d0q	7wvztesg1l9	4	\N	\N	1
9lqwydcclbh	9lqwydcclbh	0	f	properties	\N
qusl2hqi7gk	9lqwydcclbh	1	\N	\N	2
bjya50ieh5c	9lqwydcclbh	2	\N	\N	2
ii9oyxsb8c5	9lqwydcclbh	3	\N	\N	2
511oe1h7d0q	9lqwydcclbh	4	\N	\N	2
lqc01b4n2xe	511oe1h7d0q	2	\N	\N	\N
5i62m584bjk	511oe1h7d0q	3	\N	\N	\N
yqj4tsj0tp5	511oe1h7d0q	4	\N	\N	\N
y90c6xine07	511oe1h7d0q	5	\N	\N	\N
uz1e0k6wjf1	511oe1h7d0q	6	\N	\N	\N
iiek91fm1lg	511oe1h7d0q	7	\N	\N	\N
9j3mrze0kdh	511oe1h7d0q	8	\N	\N	\N
r5ux2dhnfq1	511oe1h7d0q	9	\N	\N	\N
ulw06kfwwn3	511oe1h7d0q	10	\N	\N	\N
wcib2cpt11z	511oe1h7d0q	11	\N	\N	\N
xwts1ggw479	511oe1h7d0q	12	\N	\N	\N
2dp1sgeoanq	7wvztesg1l9	5	\N	\N	\N
lqc01b4n2xe	7wvztesg1l9	6	\N	\N	\N
5i62m584bjk	7wvztesg1l9	7	\N	\N	\N
yqj4tsj0tp5	7wvztesg1l9	8	\N	\N	\N
y90c6xine07	7wvztesg1l9	9	\N	\N	\N
511oe1h7d0q	511oe1h7d0q	0	f	properties	\N
2dp1sgeoanq	511oe1h7d0q	1	\N	\N	1
a7e860jrx5o	4gdmc9g083s	9	\N	\N	\N
zxh1oe1qx5t	4gdmc9g083s	10	\N	\N	\N
861gmcfwhia	4gdmc9g083s	11	\N	\N	\N
9yos6i0cjm3	4gdmc9g083s	12	\N	\N	\N
n3yigbe0k9v	4gdmc9g083s	13	\N	\N	\N
uz1e0k6wjf1	7wvztesg1l9	10	\N	\N	\N
iiek91fm1lg	7wvztesg1l9	11	\N	\N	\N
9j3mrze0kdh	7wvztesg1l9	12	\N	\N	\N
r5ux2dhnfq1	7wvztesg1l9	13	\N	\N	\N
ulw06kfwwn3	7wvztesg1l9	14	\N	\N	\N
wcib2cpt11z	7wvztesg1l9	15	\N	\N	\N
xwts1ggw479	7wvztesg1l9	16	\N	\N	\N
2dp1sgeoanq	9lqwydcclbh	5	\N	\N	\N
lqc01b4n2xe	9lqwydcclbh	6	\N	\N	\N
5i62m584bjk	9lqwydcclbh	7	\N	\N	\N
yqj4tsj0tp5	9lqwydcclbh	8	\N	\N	\N
y90c6xine07	9lqwydcclbh	9	\N	\N	\N
uz1e0k6wjf1	9lqwydcclbh	10	\N	\N	\N
iiek91fm1lg	9lqwydcclbh	11	\N	\N	\N
9j3mrze0kdh	9lqwydcclbh	12	\N	\N	\N
r5ux2dhnfq1	9lqwydcclbh	13	\N	\N	\N
ulw06kfwwn3	9lqwydcclbh	14	\N	\N	\N
wcib2cpt11z	9lqwydcclbh	15	\N	\N	\N
xwts1ggw479	9lqwydcclbh	16	\N	\N	\N
2dp1sgeoanq	bjya50ieh5c	3	\N	\N	\N
lqc01b4n2xe	bjya50ieh5c	4	\N	\N	\N
5i62m584bjk	bjya50ieh5c	5	\N	\N	\N
yqj4tsj0tp5	bjya50ieh5c	6	\N	\N	\N
y90c6xine07	bjya50ieh5c	7	\N	\N	\N
uz1e0k6wjf1	bjya50ieh5c	8	\N	\N	\N
iiek91fm1lg	bjya50ieh5c	9	\N	\N	\N
9j3mrze0kdh	bjya50ieh5c	10	\N	\N	\N
r5ux2dhnfq1	bjya50ieh5c	11	\N	\N	\N
ulw06kfwwn3	bjya50ieh5c	12	\N	\N	\N
wcib2cpt11z	bjya50ieh5c	13	\N	\N	\N
xwts1ggw479	bjya50ieh5c	14	\N	\N	\N
2dp1sgeoanq	ii9oyxsb8c5	2	\N	\N	\N
lqc01b4n2xe	ii9oyxsb8c5	3	\N	\N	\N
5i62m584bjk	ii9oyxsb8c5	4	\N	\N	\N
yqj4tsj0tp5	ii9oyxsb8c5	5	\N	\N	\N
y90c6xine07	ii9oyxsb8c5	6	\N	\N	\N
uz1e0k6wjf1	ii9oyxsb8c5	7	\N	\N	\N
iiek91fm1lg	ii9oyxsb8c5	8	\N	\N	\N
9j3mrze0kdh	ii9oyxsb8c5	9	\N	\N	\N
r5ux2dhnfq1	ii9oyxsb8c5	10	\N	\N	\N
ulw06kfwwn3	ii9oyxsb8c5	11	\N	\N	\N
wcib2cpt11z	ii9oyxsb8c5	12	\N	\N	\N
xwts1ggw479	ii9oyxsb8c5	13	\N	\N	\N
2dp1sgeoanq	qusl2hqi7gk	4	\N	\N	\N
lqc01b4n2xe	qusl2hqi7gk	5	\N	\N	\N
5i62m584bjk	qusl2hqi7gk	6	\N	\N	\N
yqj4tsj0tp5	qusl2hqi7gk	7	\N	\N	\N
y90c6xine07	qusl2hqi7gk	8	\N	\N	\N
uz1e0k6wjf1	qusl2hqi7gk	9	\N	\N	\N
iiek91fm1lg	qusl2hqi7gk	10	\N	\N	\N
9j3mrze0kdh	qusl2hqi7gk	11	\N	\N	\N
r5ux2dhnfq1	qusl2hqi7gk	12	\N	\N	\N
ulw06kfwwn3	qusl2hqi7gk	13	\N	\N	\N
wcib2cpt11z	qusl2hqi7gk	14	\N	\N	\N
xwts1ggw479	qusl2hqi7gk	15	\N	\N	\N
xh6ua2oy0ak	xh6ua2oy0ak	0	f	properties	\N
5xc37z6hvd7	xh6ua2oy0ak	1	\N	\N	1
h12h75lwjjk	h12h75lwjjk	0	f	properties	\N
xh6ua2oy0ak	h12h75lwjjk	1	\N	\N	1
5xc37z6hvd7	h12h75lwjjk	2	\N	\N	1
7wvztesg1l9	h12h75lwjjk	3	\N	\N	\N
7wvztesg1l9	xh6ua2oy0ak	2	\N	\N	\N
qusl2hqi7gk	5xc37z6hvd7	2	\N	\N	\N
qusl2hqi7gk	h12h75lwjjk	4	\N	\N	\N
qusl2hqi7gk	xh6ua2oy0ak	3	\N	\N	\N
bjya50ieh5c	5xc37z6hvd7	3	\N	\N	\N
bjya50ieh5c	h12h75lwjjk	5	\N	\N	\N
bjya50ieh5c	xh6ua2oy0ak	4	\N	\N	\N
ii9oyxsb8c5	5xc37z6hvd7	4	\N	\N	\N
ii9oyxsb8c5	h12h75lwjjk	6	\N	\N	\N
ii9oyxsb8c5	xh6ua2oy0ak	5	\N	\N	\N
511oe1h7d0q	5xc37z6hvd7	5	\N	\N	\N
511oe1h7d0q	h12h75lwjjk	7	\N	\N	\N
511oe1h7d0q	xh6ua2oy0ak	6	\N	\N	\N
2dp1sgeoanq	5xc37z6hvd7	6	\N	\N	\N
2dp1sgeoanq	h12h75lwjjk	8	\N	\N	\N
2dp1sgeoanq	xh6ua2oy0ak	7	\N	\N	\N
lqc01b4n2xe	5xc37z6hvd7	7	\N	\N	\N
lqc01b4n2xe	h12h75lwjjk	9	\N	\N	\N
lqc01b4n2xe	xh6ua2oy0ak	8	\N	\N	\N
5i62m584bjk	5xc37z6hvd7	8	\N	\N	\N
5i62m584bjk	h12h75lwjjk	10	\N	\N	\N
5i62m584bjk	xh6ua2oy0ak	9	\N	\N	\N
yqj4tsj0tp5	5xc37z6hvd7	9	\N	\N	\N
yqj4tsj0tp5	h12h75lwjjk	11	\N	\N	\N
yqj4tsj0tp5	xh6ua2oy0ak	10	\N	\N	\N
y90c6xine07	5xc37z6hvd7	10	\N	\N	\N
y90c6xine07	h12h75lwjjk	12	\N	\N	\N
y90c6xine07	xh6ua2oy0ak	11	\N	\N	\N
uz1e0k6wjf1	5xc37z6hvd7	11	\N	\N	\N
uz1e0k6wjf1	h12h75lwjjk	13	\N	\N	\N
uz1e0k6wjf1	xh6ua2oy0ak	12	\N	\N	\N
iiek91fm1lg	5xc37z6hvd7	12	\N	\N	\N
iiek91fm1lg	h12h75lwjjk	14	\N	\N	\N
iiek91fm1lg	xh6ua2oy0ak	13	\N	\N	\N
9j3mrze0kdh	5xc37z6hvd7	13	\N	\N	\N
9j3mrze0kdh	h12h75lwjjk	15	\N	\N	\N
9j3mrze0kdh	xh6ua2oy0ak	14	\N	\N	\N
r5ux2dhnfq1	5xc37z6hvd7	14	\N	\N	\N
r5ux2dhnfq1	h12h75lwjjk	16	\N	\N	\N
r5ux2dhnfq1	xh6ua2oy0ak	15	\N	\N	\N
ulw06kfwwn3	5xc37z6hvd7	15	\N	\N	\N
ulw06kfwwn3	h12h75lwjjk	17	\N	\N	\N
ulw06kfwwn3	xh6ua2oy0ak	16	\N	\N	\N
wcib2cpt11z	5xc37z6hvd7	16	\N	\N	\N
wcib2cpt11z	h12h75lwjjk	18	\N	\N	\N
wcib2cpt11z	xh6ua2oy0ak	17	\N	\N	\N
xwts1ggw479	5xc37z6hvd7	17	\N	\N	\N
xwts1ggw479	h12h75lwjjk	19	\N	\N	\N
xwts1ggw479	xh6ua2oy0ak	18	\N	\N	\N
5xc37z6hvd7	5xc37z6hvd7	0	f	properties	\N
7wvztesg1l9	5xc37z6hvd7	1	\N	\N	1
ix3eneqbhqt	ix3eneqbhqt	0	f	properties	\N
b7zq62km2nh	ix3eneqbhqt	1	\N	\N	1
i0bqeajbvwo	ix3eneqbhqt	2	\N	\N	\N
pdot2ybyfc0	b7zq62km2nh	2	\N	\N	\N
pdot2ybyfc0	ix3eneqbhqt	3	\N	\N	\N
a7e860jrx5o	b7zq62km2nh	3	\N	\N	\N
a7e860jrx5o	ix3eneqbhqt	4	\N	\N	\N
zxh1oe1qx5t	b7zq62km2nh	4	\N	\N	\N
zxh1oe1qx5t	ix3eneqbhqt	5	\N	\N	\N
861gmcfwhia	b7zq62km2nh	5	\N	\N	\N
861gmcfwhia	ix3eneqbhqt	6	\N	\N	\N
9yos6i0cjm3	b7zq62km2nh	6	\N	\N	\N
9yos6i0cjm3	ix3eneqbhqt	7	\N	\N	\N
n3yigbe0k9v	b7zq62km2nh	7	\N	\N	\N
n3yigbe0k9v	ix3eneqbhqt	8	\N	\N	\N
073buw1m70l	b7zq62km2nh	8	\N	\N	\N
073buw1m70l	ix3eneqbhqt	9	\N	\N	\N
nocobase-admin-menu	b7zq62km2nh	9	\N	\N	\N
nocobase-admin-menu	ix3eneqbhqt	10	\N	\N	\N
b7zq62km2nh	b7zq62km2nh	0	f	properties	\N
i0bqeajbvwo	b7zq62km2nh	1	\N	\N	5
073buw1m70l	4gdmc9g083s	14	\N	\N	\N
nocobase-admin-menu	4gdmc9g083s	15	\N	\N	\N
e87ogy2w48b	bzirblya7qw	2	\N	\N	\N
i0bqeajbvwo	bzirblya7qw	3	\N	\N	\N
pdot2ybyfc0	bzirblya7qw	4	\N	\N	\N
a7e860jrx5o	bzirblya7qw	5	\N	\N	\N
zxh1oe1qx5t	bzirblya7qw	6	\N	\N	\N
861gmcfwhia	bzirblya7qw	7	\N	\N	\N
9yos6i0cjm3	bzirblya7qw	8	\N	\N	\N
n3yigbe0k9v	bzirblya7qw	9	\N	\N	\N
073buw1m70l	bzirblya7qw	10	\N	\N	\N
nocobase-admin-menu	bzirblya7qw	11	\N	\N	\N
galt7hbd78y	ebu29iqsaqx	4	\N	\N	\N
e87ogy2w48b	ebu29iqsaqx	5	\N	\N	\N
i0bqeajbvwo	ebu29iqsaqx	6	\N	\N	\N
pdot2ybyfc0	ebu29iqsaqx	7	\N	\N	\N
a7e860jrx5o	ebu29iqsaqx	8	\N	\N	\N
zxh1oe1qx5t	ebu29iqsaqx	9	\N	\N	\N
861gmcfwhia	ebu29iqsaqx	10	\N	\N	\N
9yos6i0cjm3	ebu29iqsaqx	11	\N	\N	\N
n3yigbe0k9v	ebu29iqsaqx	12	\N	\N	\N
073buw1m70l	ebu29iqsaqx	13	\N	\N	\N
nocobase-admin-menu	ebu29iqsaqx	14	\N	\N	\N
galt7hbd78y	hg9tvy6yuph	2	\N	\N	\N
e87ogy2w48b	hg9tvy6yuph	3	\N	\N	\N
i0bqeajbvwo	hg9tvy6yuph	4	\N	\N	\N
pdot2ybyfc0	hg9tvy6yuph	5	\N	\N	\N
a7e860jrx5o	hg9tvy6yuph	6	\N	\N	\N
zxh1oe1qx5t	hg9tvy6yuph	7	\N	\N	\N
861gmcfwhia	hg9tvy6yuph	8	\N	\N	\N
9yos6i0cjm3	hg9tvy6yuph	9	\N	\N	\N
n3yigbe0k9v	hg9tvy6yuph	10	\N	\N	\N
v5n63r5xizu	v5n63r5xizu	0	f	properties	\N
qam3nz2fvrb	qam3nz2fvrb	0	f	properties	\N
neokhhxlkag	qam3nz2fvrb	1	\N	\N	1
kwi6avb0snz	kwi6avb0snz	0	f	properties	\N
qam3nz2fvrb	kwi6avb0snz	1	\N	\N	1
neokhhxlkag	kwi6avb0snz	2	\N	\N	1
7wvztesg1l9	kwi6avb0snz	3	\N	\N	\N
7wvztesg1l9	qam3nz2fvrb	2	\N	\N	\N
qusl2hqi7gk	kwi6avb0snz	4	\N	\N	\N
qusl2hqi7gk	neokhhxlkag	2	\N	\N	\N
qusl2hqi7gk	qam3nz2fvrb	3	\N	\N	\N
bjya50ieh5c	kwi6avb0snz	5	\N	\N	\N
bjya50ieh5c	neokhhxlkag	3	\N	\N	\N
bjya50ieh5c	qam3nz2fvrb	4	\N	\N	\N
ii9oyxsb8c5	kwi6avb0snz	6	\N	\N	\N
ii9oyxsb8c5	neokhhxlkag	4	\N	\N	\N
ii9oyxsb8c5	qam3nz2fvrb	5	\N	\N	\N
511oe1h7d0q	kwi6avb0snz	7	\N	\N	\N
511oe1h7d0q	neokhhxlkag	5	\N	\N	\N
511oe1h7d0q	qam3nz2fvrb	6	\N	\N	\N
2dp1sgeoanq	kwi6avb0snz	8	\N	\N	\N
2dp1sgeoanq	neokhhxlkag	6	\N	\N	\N
2dp1sgeoanq	qam3nz2fvrb	7	\N	\N	\N
lqc01b4n2xe	kwi6avb0snz	9	\N	\N	\N
lqc01b4n2xe	neokhhxlkag	7	\N	\N	\N
lqc01b4n2xe	qam3nz2fvrb	8	\N	\N	\N
5i62m584bjk	kwi6avb0snz	10	\N	\N	\N
5i62m584bjk	neokhhxlkag	8	\N	\N	\N
5i62m584bjk	qam3nz2fvrb	9	\N	\N	\N
yqj4tsj0tp5	kwi6avb0snz	11	\N	\N	\N
yqj4tsj0tp5	neokhhxlkag	9	\N	\N	\N
yqj4tsj0tp5	qam3nz2fvrb	10	\N	\N	\N
y90c6xine07	kwi6avb0snz	12	\N	\N	\N
y90c6xine07	neokhhxlkag	10	\N	\N	\N
y90c6xine07	qam3nz2fvrb	11	\N	\N	\N
uz1e0k6wjf1	kwi6avb0snz	13	\N	\N	\N
uz1e0k6wjf1	neokhhxlkag	11	\N	\N	\N
uz1e0k6wjf1	qam3nz2fvrb	12	\N	\N	\N
iiek91fm1lg	kwi6avb0snz	14	\N	\N	\N
iiek91fm1lg	neokhhxlkag	12	\N	\N	\N
iiek91fm1lg	qam3nz2fvrb	13	\N	\N	\N
9j3mrze0kdh	kwi6avb0snz	15	\N	\N	\N
9j3mrze0kdh	neokhhxlkag	13	\N	\N	\N
9j3mrze0kdh	qam3nz2fvrb	14	\N	\N	\N
r5ux2dhnfq1	kwi6avb0snz	16	\N	\N	\N
r5ux2dhnfq1	neokhhxlkag	14	\N	\N	\N
r5ux2dhnfq1	qam3nz2fvrb	15	\N	\N	\N
ulw06kfwwn3	kwi6avb0snz	17	\N	\N	\N
ulw06kfwwn3	neokhhxlkag	15	\N	\N	\N
ulw06kfwwn3	qam3nz2fvrb	16	\N	\N	\N
wcib2cpt11z	kwi6avb0snz	18	\N	\N	\N
wcib2cpt11z	neokhhxlkag	16	\N	\N	\N
wcib2cpt11z	qam3nz2fvrb	17	\N	\N	\N
xwts1ggw479	kwi6avb0snz	19	\N	\N	\N
xwts1ggw479	neokhhxlkag	17	\N	\N	\N
xwts1ggw479	qam3nz2fvrb	18	\N	\N	\N
neokhhxlkag	neokhhxlkag	0	f	properties	\N
7wvztesg1l9	neokhhxlkag	1	\N	\N	3
qusl2hqi7gk	v5n63r5xizu	2	\N	\N	\N
bjya50ieh5c	v5n63r5xizu	3	\N	\N	\N
ii9oyxsb8c5	v5n63r5xizu	4	\N	\N	\N
511oe1h7d0q	v5n63r5xizu	5	\N	\N	\N
2dp1sgeoanq	v5n63r5xizu	6	\N	\N	\N
lqc01b4n2xe	v5n63r5xizu	7	\N	\N	\N
5i62m584bjk	v5n63r5xizu	8	\N	\N	\N
yqj4tsj0tp5	v5n63r5xizu	9	\N	\N	\N
y90c6xine07	v5n63r5xizu	10	\N	\N	\N
uz1e0k6wjf1	v5n63r5xizu	11	\N	\N	\N
iiek91fm1lg	v5n63r5xizu	12	\N	\N	\N
9j3mrze0kdh	v5n63r5xizu	13	\N	\N	\N
r5ux2dhnfq1	v5n63r5xizu	14	\N	\N	\N
ulw06kfwwn3	v5n63r5xizu	15	\N	\N	\N
wcib2cpt11z	v5n63r5xizu	16	\N	\N	\N
xwts1ggw479	v5n63r5xizu	17	\N	\N	\N
9lqwydcclbh	v5n63r5xizu	1	\N	\N	1
073buw1m70l	hg9tvy6yuph	11	\N	\N	\N
nocobase-admin-menu	hg9tvy6yuph	12	\N	\N	\N
galt7hbd78y	k4kftsn5ht7	3	\N	\N	\N
e87ogy2w48b	k4kftsn5ht7	4	\N	\N	\N
i0bqeajbvwo	k4kftsn5ht7	5	\N	\N	\N
pdot2ybyfc0	k4kftsn5ht7	6	\N	\N	\N
a7e860jrx5o	k4kftsn5ht7	7	\N	\N	\N
zxh1oe1qx5t	k4kftsn5ht7	8	\N	\N	\N
861gmcfwhia	k4kftsn5ht7	9	\N	\N	\N
9yos6i0cjm3	k4kftsn5ht7	10	\N	\N	\N
n3yigbe0k9v	k4kftsn5ht7	11	\N	\N	\N
073buw1m70l	k4kftsn5ht7	12	\N	\N	\N
nocobase-admin-menu	k4kftsn5ht7	13	\N	\N	\N
bzirblya7qw	bzirblya7qw	0	f	properties	\N
galt7hbd78y	bzirblya7qw	1	\N	\N	1
8i28yvimg4p	8i28yvimg4p	0	f	properties	\N
66xqkev137r	8i28yvimg4p	1	\N	\N	1
muv6h06t8mi	muv6h06t8mi	0	f	properties	\N
8i28yvimg4p	muv6h06t8mi	1	\N	\N	1
66xqkev137r	muv6h06t8mi	2	\N	\N	1
ybdxp7v91jn	ybdxp7v91jn	0	f	properties	\N
muv6h06t8mi	ybdxp7v91jn	1	\N	\N	1
8i28yvimg4p	ybdxp7v91jn	2	\N	\N	1
66xqkev137r	ybdxp7v91jn	3	\N	\N	1
9cngdl646v0	9cngdl646v0	0	f	properties	\N
ybdxp7v91jn	9cngdl646v0	1	\N	\N	1
muv6h06t8mi	9cngdl646v0	2	\N	\N	1
8i28yvimg4p	9cngdl646v0	3	\N	\N	1
66xqkev137r	9cngdl646v0	4	\N	\N	1
e87ogy2w48b	66xqkev137r	2	\N	\N	\N
i0bqeajbvwo	66xqkev137r	3	\N	\N	\N
pdot2ybyfc0	66xqkev137r	4	\N	\N	\N
a7e860jrx5o	66xqkev137r	5	\N	\N	\N
zxh1oe1qx5t	66xqkev137r	6	\N	\N	\N
861gmcfwhia	66xqkev137r	7	\N	\N	\N
9yos6i0cjm3	66xqkev137r	8	\N	\N	\N
n3yigbe0k9v	66xqkev137r	9	\N	\N	\N
073buw1m70l	66xqkev137r	10	\N	\N	\N
nocobase-admin-menu	66xqkev137r	11	\N	\N	\N
galt7hbd78y	8i28yvimg4p	2	\N	\N	\N
e87ogy2w48b	8i28yvimg4p	3	\N	\N	\N
i0bqeajbvwo	8i28yvimg4p	4	\N	\N	\N
pdot2ybyfc0	8i28yvimg4p	5	\N	\N	\N
a7e860jrx5o	8i28yvimg4p	6	\N	\N	\N
zxh1oe1qx5t	8i28yvimg4p	7	\N	\N	\N
861gmcfwhia	8i28yvimg4p	8	\N	\N	\N
9yos6i0cjm3	8i28yvimg4p	9	\N	\N	\N
n3yigbe0k9v	8i28yvimg4p	10	\N	\N	\N
073buw1m70l	8i28yvimg4p	11	\N	\N	\N
nocobase-admin-menu	8i28yvimg4p	12	\N	\N	\N
galt7hbd78y	9cngdl646v0	5	\N	\N	\N
e87ogy2w48b	9cngdl646v0	6	\N	\N	\N
i0bqeajbvwo	9cngdl646v0	7	\N	\N	\N
pdot2ybyfc0	9cngdl646v0	8	\N	\N	\N
a7e860jrx5o	9cngdl646v0	9	\N	\N	\N
zxh1oe1qx5t	9cngdl646v0	10	\N	\N	\N
861gmcfwhia	9cngdl646v0	11	\N	\N	\N
9yos6i0cjm3	9cngdl646v0	12	\N	\N	\N
n3yigbe0k9v	9cngdl646v0	13	\N	\N	\N
073buw1m70l	9cngdl646v0	14	\N	\N	\N
nocobase-admin-menu	9cngdl646v0	15	\N	\N	\N
galt7hbd78y	muv6h06t8mi	3	\N	\N	\N
e87ogy2w48b	muv6h06t8mi	4	\N	\N	\N
i0bqeajbvwo	muv6h06t8mi	5	\N	\N	\N
pdot2ybyfc0	muv6h06t8mi	6	\N	\N	\N
a7e860jrx5o	muv6h06t8mi	7	\N	\N	\N
zxh1oe1qx5t	muv6h06t8mi	8	\N	\N	\N
861gmcfwhia	muv6h06t8mi	9	\N	\N	\N
9yos6i0cjm3	muv6h06t8mi	10	\N	\N	\N
n3yigbe0k9v	muv6h06t8mi	11	\N	\N	\N
073buw1m70l	muv6h06t8mi	12	\N	\N	\N
nocobase-admin-menu	muv6h06t8mi	13	\N	\N	\N
galt7hbd78y	ybdxp7v91jn	4	\N	\N	\N
e87ogy2w48b	ybdxp7v91jn	5	\N	\N	\N
i0bqeajbvwo	ybdxp7v91jn	6	\N	\N	\N
pdot2ybyfc0	ybdxp7v91jn	7	\N	\N	\N
a7e860jrx5o	ybdxp7v91jn	8	\N	\N	\N
zxh1oe1qx5t	ybdxp7v91jn	9	\N	\N	\N
861gmcfwhia	ybdxp7v91jn	10	\N	\N	\N
9yos6i0cjm3	ybdxp7v91jn	11	\N	\N	\N
n3yigbe0k9v	ybdxp7v91jn	12	\N	\N	\N
073buw1m70l	ybdxp7v91jn	13	\N	\N	\N
nocobase-admin-menu	ybdxp7v91jn	14	\N	\N	\N
66xqkev137r	66xqkev137r	0	f	properties	\N
galt7hbd78y	66xqkev137r	1	\N	\N	2
lgkny2plcta	lgkny2plcta	0	f	properties	\N
e87ogy2w48b	lgkny2plcta	2	\N	\N	\N
i0bqeajbvwo	lgkny2plcta	3	\N	\N	\N
pdot2ybyfc0	lgkny2plcta	4	\N	\N	\N
a7e860jrx5o	lgkny2plcta	5	\N	\N	\N
zxh1oe1qx5t	lgkny2plcta	6	\N	\N	\N
861gmcfwhia	lgkny2plcta	7	\N	\N	\N
9yos6i0cjm3	lgkny2plcta	8	\N	\N	\N
n3yigbe0k9v	lgkny2plcta	9	\N	\N	\N
073buw1m70l	lgkny2plcta	10	\N	\N	\N
nocobase-admin-menu	lgkny2plcta	11	\N	\N	\N
galt7hbd78y	lgkny2plcta	1	\N	\N	3
0m1gm5ozwh9	0m1gm5ozwh9	0	f	properties	\N
pdot2ybyfc0	0m1gm5ozwh9	2	\N	\N	\N
a7e860jrx5o	0m1gm5ozwh9	3	\N	\N	\N
zxh1oe1qx5t	0m1gm5ozwh9	4	\N	\N	\N
861gmcfwhia	0m1gm5ozwh9	5	\N	\N	\N
9yos6i0cjm3	0m1gm5ozwh9	6	\N	\N	\N
n3yigbe0k9v	0m1gm5ozwh9	7	\N	\N	\N
073buw1m70l	0m1gm5ozwh9	8	\N	\N	\N
nocobase-admin-menu	0m1gm5ozwh9	9	\N	\N	\N
baqq2v2fong	0m1gm5ozwh9	1	\N	\N	1
xfwxsmz494e	xfwxsmz494e	0	f	properties	\N
vukfpwp37qn	xfwxsmz494e	1	\N	\N	1
3gtgg35z6e8	3gtgg35z6e8	0	f	properties	\N
xfwxsmz494e	3gtgg35z6e8	1	\N	\N	1
vukfpwp37qn	3gtgg35z6e8	2	\N	\N	1
alnwl1ouj3h	alnwl1ouj3h	0	f	properties	\N
3gtgg35z6e8	alnwl1ouj3h	1	\N	\N	1
xfwxsmz494e	alnwl1ouj3h	2	\N	\N	1
vukfpwp37qn	alnwl1ouj3h	3	\N	\N	1
adxntkyyx2m	adxntkyyx2m	0	f	properties	\N
alnwl1ouj3h	adxntkyyx2m	1	\N	\N	1
3gtgg35z6e8	adxntkyyx2m	2	\N	\N	1
xfwxsmz494e	adxntkyyx2m	3	\N	\N	1
vukfpwp37qn	adxntkyyx2m	4	\N	\N	1
baqq2v2fong	3gtgg35z6e8	3	\N	\N	\N
pdot2ybyfc0	3gtgg35z6e8	4	\N	\N	\N
a7e860jrx5o	3gtgg35z6e8	5	\N	\N	\N
zxh1oe1qx5t	3gtgg35z6e8	6	\N	\N	\N
861gmcfwhia	3gtgg35z6e8	7	\N	\N	\N
9yos6i0cjm3	3gtgg35z6e8	8	\N	\N	\N
n3yigbe0k9v	3gtgg35z6e8	9	\N	\N	\N
073buw1m70l	3gtgg35z6e8	10	\N	\N	\N
nocobase-admin-menu	3gtgg35z6e8	11	\N	\N	\N
baqq2v2fong	adxntkyyx2m	5	\N	\N	\N
pdot2ybyfc0	adxntkyyx2m	6	\N	\N	\N
a7e860jrx5o	adxntkyyx2m	7	\N	\N	\N
zxh1oe1qx5t	adxntkyyx2m	8	\N	\N	\N
861gmcfwhia	adxntkyyx2m	9	\N	\N	\N
9yos6i0cjm3	adxntkyyx2m	10	\N	\N	\N
n3yigbe0k9v	adxntkyyx2m	11	\N	\N	\N
073buw1m70l	adxntkyyx2m	12	\N	\N	\N
nocobase-admin-menu	adxntkyyx2m	13	\N	\N	\N
baqq2v2fong	alnwl1ouj3h	4	\N	\N	\N
pdot2ybyfc0	alnwl1ouj3h	5	\N	\N	\N
a7e860jrx5o	alnwl1ouj3h	6	\N	\N	\N
zxh1oe1qx5t	alnwl1ouj3h	7	\N	\N	\N
861gmcfwhia	alnwl1ouj3h	8	\N	\N	\N
9yos6i0cjm3	alnwl1ouj3h	9	\N	\N	\N
n3yigbe0k9v	alnwl1ouj3h	10	\N	\N	\N
073buw1m70l	alnwl1ouj3h	11	\N	\N	\N
nocobase-admin-menu	alnwl1ouj3h	12	\N	\N	\N
pdot2ybyfc0	vukfpwp37qn	2	\N	\N	\N
a7e860jrx5o	vukfpwp37qn	3	\N	\N	\N
zxh1oe1qx5t	vukfpwp37qn	4	\N	\N	\N
861gmcfwhia	vukfpwp37qn	5	\N	\N	\N
9yos6i0cjm3	vukfpwp37qn	6	\N	\N	\N
n3yigbe0k9v	vukfpwp37qn	7	\N	\N	\N
073buw1m70l	vukfpwp37qn	8	\N	\N	\N
nocobase-admin-menu	vukfpwp37qn	9	\N	\N	\N
baqq2v2fong	xfwxsmz494e	2	\N	\N	\N
pdot2ybyfc0	xfwxsmz494e	3	\N	\N	\N
a7e860jrx5o	xfwxsmz494e	4	\N	\N	\N
zxh1oe1qx5t	xfwxsmz494e	5	\N	\N	\N
861gmcfwhia	xfwxsmz494e	6	\N	\N	\N
9yos6i0cjm3	xfwxsmz494e	7	\N	\N	\N
n3yigbe0k9v	xfwxsmz494e	8	\N	\N	\N
073buw1m70l	xfwxsmz494e	9	\N	\N	\N
nocobase-admin-menu	xfwxsmz494e	10	\N	\N	\N
vukfpwp37qn	vukfpwp37qn	0	f	properties	\N
baqq2v2fong	vukfpwp37qn	1	\N	\N	2
xcztu1xwchz	xcztu1xwchz	0	f	properties	\N
pdot2ybyfc0	xcztu1xwchz	2	\N	\N	\N
a7e860jrx5o	xcztu1xwchz	3	\N	\N	\N
zxh1oe1qx5t	xcztu1xwchz	4	\N	\N	\N
861gmcfwhia	xcztu1xwchz	5	\N	\N	\N
9yos6i0cjm3	xcztu1xwchz	6	\N	\N	\N
n3yigbe0k9v	xcztu1xwchz	7	\N	\N	\N
073buw1m70l	xcztu1xwchz	8	\N	\N	\N
nocobase-admin-menu	xcztu1xwchz	9	\N	\N	\N
baqq2v2fong	xcztu1xwchz	1	\N	\N	3
gtl3wuwfl32	gtl3wuwfl32	0	f	properties	\N
pdot2ybyfc0	gtl3wuwfl32	2	\N	\N	\N
a7e860jrx5o	gtl3wuwfl32	3	\N	\N	\N
zxh1oe1qx5t	gtl3wuwfl32	4	\N	\N	\N
861gmcfwhia	gtl3wuwfl32	5	\N	\N	\N
9yos6i0cjm3	gtl3wuwfl32	6	\N	\N	\N
n3yigbe0k9v	gtl3wuwfl32	7	\N	\N	\N
073buw1m70l	gtl3wuwfl32	8	\N	\N	\N
nocobase-admin-menu	gtl3wuwfl32	9	\N	\N	\N
baqq2v2fong	gtl3wuwfl32	1	\N	\N	4
mmj417nrjpa	mmj417nrjpa	0	f	properties	\N
lmgnrgroovk	mmj417nrjpa	1	\N	\N	1
82ikkgrog2y	82ikkgrog2y	0	f	properties	\N
mmj417nrjpa	82ikkgrog2y	1	\N	\N	1
lmgnrgroovk	82ikkgrog2y	2	\N	\N	1
6kbk2ko53xi	6kbk2ko53xi	0	f	properties	\N
82ikkgrog2y	6kbk2ko53xi	1	\N	\N	1
mmj417nrjpa	6kbk2ko53xi	2	\N	\N	1
lmgnrgroovk	6kbk2ko53xi	3	\N	\N	1
imrhc9he5on	imrhc9he5on	0	f	properties	\N
82ikkgrog2y	imrhc9he5on	1	\N	\N	2
mmj417nrjpa	imrhc9he5on	2	\N	\N	2
lmgnrgroovk	imrhc9he5on	3	\N	\N	2
yjzd6s5ccq4	yjzd6s5ccq4	0	f	properties	\N
imrhc9he5on	yjzd6s5ccq4	1	\N	\N	1
82ikkgrog2y	yjzd6s5ccq4	2	\N	\N	1
mmj417nrjpa	yjzd6s5ccq4	3	\N	\N	1
lmgnrgroovk	yjzd6s5ccq4	4	\N	\N	1
ji9t3fgnkc0	ji9t3fgnkc0	0	f	properties	\N
yjzd6s5ccq4	ji9t3fgnkc0	1	\N	\N	1
imrhc9he5on	ji9t3fgnkc0	2	\N	\N	1
82ikkgrog2y	ji9t3fgnkc0	3	\N	\N	1
mmj417nrjpa	ji9t3fgnkc0	4	\N	\N	1
lmgnrgroovk	ji9t3fgnkc0	5	\N	\N	1
4cx141n1lb4	6kbk2ko53xi	4	\N	\N	\N
k6pr2jh3wgd	6kbk2ko53xi	5	\N	\N	\N
hchm15rxv74	6kbk2ko53xi	6	\N	\N	\N
073buw1m70l	6kbk2ko53xi	7	\N	\N	\N
nocobase-admin-menu	6kbk2ko53xi	8	\N	\N	\N
4cx141n1lb4	82ikkgrog2y	3	\N	\N	\N
k6pr2jh3wgd	82ikkgrog2y	4	\N	\N	\N
hchm15rxv74	82ikkgrog2y	5	\N	\N	\N
073buw1m70l	82ikkgrog2y	6	\N	\N	\N
nocobase-admin-menu	82ikkgrog2y	7	\N	\N	\N
4cx141n1lb4	imrhc9he5on	4	\N	\N	\N
k6pr2jh3wgd	imrhc9he5on	5	\N	\N	\N
hchm15rxv74	imrhc9he5on	6	\N	\N	\N
073buw1m70l	imrhc9he5on	7	\N	\N	\N
nocobase-admin-menu	imrhc9he5on	8	\N	\N	\N
4cx141n1lb4	ji9t3fgnkc0	6	\N	\N	\N
k6pr2jh3wgd	ji9t3fgnkc0	7	\N	\N	\N
hchm15rxv74	ji9t3fgnkc0	8	\N	\N	\N
073buw1m70l	ji9t3fgnkc0	9	\N	\N	\N
nocobase-admin-menu	ji9t3fgnkc0	10	\N	\N	\N
k6pr2jh3wgd	lmgnrgroovk	2	\N	\N	\N
hchm15rxv74	lmgnrgroovk	3	\N	\N	\N
073buw1m70l	lmgnrgroovk	4	\N	\N	\N
nocobase-admin-menu	lmgnrgroovk	5	\N	\N	\N
4cx141n1lb4	mmj417nrjpa	2	\N	\N	\N
k6pr2jh3wgd	mmj417nrjpa	3	\N	\N	\N
hchm15rxv74	mmj417nrjpa	4	\N	\N	\N
073buw1m70l	mmj417nrjpa	5	\N	\N	\N
nocobase-admin-menu	mmj417nrjpa	6	\N	\N	\N
4cx141n1lb4	yjzd6s5ccq4	5	\N	\N	\N
k6pr2jh3wgd	yjzd6s5ccq4	6	\N	\N	\N
hchm15rxv74	yjzd6s5ccq4	7	\N	\N	\N
073buw1m70l	yjzd6s5ccq4	8	\N	\N	\N
nocobase-admin-menu	yjzd6s5ccq4	9	\N	\N	\N
lmgnrgroovk	lmgnrgroovk	0	f	properties	\N
4cx141n1lb4	lmgnrgroovk	1	\N	\N	1
e2bz79kfn39	e2bz79kfn39	0	f	properties	\N
2bwco99n47x	e2bz79kfn39	1	\N	\N	1
2w360eurk19	2w360eurk19	0	f	properties	\N
e2bz79kfn39	2w360eurk19	1	\N	\N	1
2bwco99n47x	2w360eurk19	2	\N	\N	1
85c8uxmskwh	85c8uxmskwh	0	f	properties	\N
2w360eurk19	85c8uxmskwh	1	\N	\N	1
e2bz79kfn39	85c8uxmskwh	2	\N	\N	1
2bwco99n47x	85c8uxmskwh	3	\N	\N	1
eolrwpo9lyf	eolrwpo9lyf	0	f	properties	\N
85c8uxmskwh	eolrwpo9lyf	1	\N	\N	1
2w360eurk19	eolrwpo9lyf	2	\N	\N	1
e2bz79kfn39	eolrwpo9lyf	3	\N	\N	1
2bwco99n47x	2bwco99n47x	0	f	properties	\N
2bwco99n47x	eolrwpo9lyf	4	\N	\N	1
yjzd6s5ccq4	2bwco99n47x	2	\N	\N	\N
imrhc9he5on	2bwco99n47x	3	\N	\N	\N
82ikkgrog2y	2bwco99n47x	4	\N	\N	\N
mmj417nrjpa	2bwco99n47x	5	\N	\N	\N
lmgnrgroovk	2bwco99n47x	6	\N	\N	\N
4cx141n1lb4	2bwco99n47x	7	\N	\N	\N
k6pr2jh3wgd	2bwco99n47x	8	\N	\N	\N
hchm15rxv74	2bwco99n47x	9	\N	\N	\N
073buw1m70l	2bwco99n47x	10	\N	\N	\N
nocobase-admin-menu	2bwco99n47x	11	\N	\N	\N
ji9t3fgnkc0	2w360eurk19	3	\N	\N	\N
yjzd6s5ccq4	2w360eurk19	4	\N	\N	\N
imrhc9he5on	2w360eurk19	5	\N	\N	\N
82ikkgrog2y	2w360eurk19	6	\N	\N	\N
mmj417nrjpa	2w360eurk19	7	\N	\N	\N
lmgnrgroovk	2w360eurk19	8	\N	\N	\N
4cx141n1lb4	2w360eurk19	9	\N	\N	\N
k6pr2jh3wgd	2w360eurk19	10	\N	\N	\N
hchm15rxv74	2w360eurk19	11	\N	\N	\N
073buw1m70l	2w360eurk19	12	\N	\N	\N
nocobase-admin-menu	2w360eurk19	13	\N	\N	\N
ji9t3fgnkc0	85c8uxmskwh	4	\N	\N	\N
yjzd6s5ccq4	85c8uxmskwh	5	\N	\N	\N
imrhc9he5on	85c8uxmskwh	6	\N	\N	\N
82ikkgrog2y	85c8uxmskwh	7	\N	\N	\N
mmj417nrjpa	85c8uxmskwh	8	\N	\N	\N
lmgnrgroovk	85c8uxmskwh	9	\N	\N	\N
4cx141n1lb4	85c8uxmskwh	10	\N	\N	\N
k6pr2jh3wgd	85c8uxmskwh	11	\N	\N	\N
hchm15rxv74	85c8uxmskwh	12	\N	\N	\N
073buw1m70l	85c8uxmskwh	13	\N	\N	\N
nocobase-admin-menu	85c8uxmskwh	14	\N	\N	\N
ji9t3fgnkc0	e2bz79kfn39	2	\N	\N	\N
yjzd6s5ccq4	e2bz79kfn39	3	\N	\N	\N
imrhc9he5on	e2bz79kfn39	4	\N	\N	\N
82ikkgrog2y	e2bz79kfn39	5	\N	\N	\N
mmj417nrjpa	e2bz79kfn39	6	\N	\N	\N
lmgnrgroovk	e2bz79kfn39	7	\N	\N	\N
4cx141n1lb4	e2bz79kfn39	8	\N	\N	\N
k6pr2jh3wgd	e2bz79kfn39	9	\N	\N	\N
hchm15rxv74	e2bz79kfn39	10	\N	\N	\N
073buw1m70l	e2bz79kfn39	11	\N	\N	\N
nocobase-admin-menu	e2bz79kfn39	12	\N	\N	\N
ji9t3fgnkc0	eolrwpo9lyf	5	\N	\N	\N
yjzd6s5ccq4	eolrwpo9lyf	6	\N	\N	\N
imrhc9he5on	eolrwpo9lyf	7	\N	\N	\N
82ikkgrog2y	eolrwpo9lyf	8	\N	\N	\N
mmj417nrjpa	eolrwpo9lyf	9	\N	\N	\N
lmgnrgroovk	eolrwpo9lyf	10	\N	\N	\N
4cx141n1lb4	eolrwpo9lyf	11	\N	\N	\N
k6pr2jh3wgd	eolrwpo9lyf	12	\N	\N	\N
hchm15rxv74	eolrwpo9lyf	13	\N	\N	\N
073buw1m70l	eolrwpo9lyf	14	\N	\N	\N
nocobase-admin-menu	eolrwpo9lyf	15	\N	\N	\N
ji9t3fgnkc0	2bwco99n47x	1	\N	\N	1
pvmgj00ippd	pvmgj00ippd	0	f	properties	\N
szv3v13lwap	pvmgj00ippd	1	\N	\N	1
zkmofdtbl6m	zkmofdtbl6m	0	f	properties	\N
pvmgj00ippd	zkmofdtbl6m	1	\N	\N	1
szv3v13lwap	zkmofdtbl6m	2	\N	\N	1
iniy0emerbt	iniy0emerbt	0	f	properties	\N
zkmofdtbl6m	iniy0emerbt	1	\N	\N	1
pvmgj00ippd	iniy0emerbt	2	\N	\N	1
szv3v13lwap	iniy0emerbt	3	\N	\N	1
u4pz1nv2zu7	u4pz1nv2zu7	0	f	properties	\N
iniy0emerbt	u4pz1nv2zu7	1	\N	\N	1
zkmofdtbl6m	u4pz1nv2zu7	2	\N	\N	1
pvmgj00ippd	u4pz1nv2zu7	3	\N	\N	1
szv3v13lwap	u4pz1nv2zu7	4	\N	\N	1
ji9t3fgnkc0	iniy0emerbt	4	\N	\N	\N
yjzd6s5ccq4	iniy0emerbt	5	\N	\N	\N
imrhc9he5on	iniy0emerbt	6	\N	\N	\N
82ikkgrog2y	iniy0emerbt	7	\N	\N	\N
mmj417nrjpa	iniy0emerbt	8	\N	\N	\N
lmgnrgroovk	iniy0emerbt	9	\N	\N	\N
4cx141n1lb4	iniy0emerbt	10	\N	\N	\N
k6pr2jh3wgd	iniy0emerbt	11	\N	\N	\N
hchm15rxv74	iniy0emerbt	12	\N	\N	\N
073buw1m70l	iniy0emerbt	13	\N	\N	\N
nocobase-admin-menu	iniy0emerbt	14	\N	\N	\N
ji9t3fgnkc0	pvmgj00ippd	2	\N	\N	\N
yjzd6s5ccq4	pvmgj00ippd	3	\N	\N	\N
imrhc9he5on	pvmgj00ippd	4	\N	\N	\N
82ikkgrog2y	pvmgj00ippd	5	\N	\N	\N
mmj417nrjpa	pvmgj00ippd	6	\N	\N	\N
lmgnrgroovk	pvmgj00ippd	7	\N	\N	\N
4cx141n1lb4	pvmgj00ippd	8	\N	\N	\N
k6pr2jh3wgd	pvmgj00ippd	9	\N	\N	\N
hchm15rxv74	pvmgj00ippd	10	\N	\N	\N
073buw1m70l	pvmgj00ippd	11	\N	\N	\N
nocobase-admin-menu	pvmgj00ippd	12	\N	\N	\N
yjzd6s5ccq4	szv3v13lwap	2	\N	\N	\N
imrhc9he5on	szv3v13lwap	3	\N	\N	\N
82ikkgrog2y	szv3v13lwap	4	\N	\N	\N
mmj417nrjpa	szv3v13lwap	5	\N	\N	\N
lmgnrgroovk	szv3v13lwap	6	\N	\N	\N
4cx141n1lb4	szv3v13lwap	7	\N	\N	\N
k6pr2jh3wgd	szv3v13lwap	8	\N	\N	\N
hchm15rxv74	szv3v13lwap	9	\N	\N	\N
073buw1m70l	szv3v13lwap	10	\N	\N	\N
nocobase-admin-menu	szv3v13lwap	11	\N	\N	\N
ji9t3fgnkc0	u4pz1nv2zu7	5	\N	\N	\N
yjzd6s5ccq4	u4pz1nv2zu7	6	\N	\N	\N
imrhc9he5on	u4pz1nv2zu7	7	\N	\N	\N
82ikkgrog2y	u4pz1nv2zu7	8	\N	\N	\N
mmj417nrjpa	u4pz1nv2zu7	9	\N	\N	\N
lmgnrgroovk	u4pz1nv2zu7	10	\N	\N	\N
4cx141n1lb4	u4pz1nv2zu7	11	\N	\N	\N
k6pr2jh3wgd	u4pz1nv2zu7	12	\N	\N	\N
hchm15rxv74	u4pz1nv2zu7	13	\N	\N	\N
073buw1m70l	u4pz1nv2zu7	14	\N	\N	\N
nocobase-admin-menu	u4pz1nv2zu7	15	\N	\N	\N
ji9t3fgnkc0	zkmofdtbl6m	3	\N	\N	\N
yjzd6s5ccq4	zkmofdtbl6m	4	\N	\N	\N
imrhc9he5on	zkmofdtbl6m	5	\N	\N	\N
82ikkgrog2y	zkmofdtbl6m	6	\N	\N	\N
mmj417nrjpa	zkmofdtbl6m	7	\N	\N	\N
lmgnrgroovk	zkmofdtbl6m	8	\N	\N	\N
4cx141n1lb4	zkmofdtbl6m	9	\N	\N	\N
k6pr2jh3wgd	zkmofdtbl6m	10	\N	\N	\N
hchm15rxv74	zkmofdtbl6m	11	\N	\N	\N
073buw1m70l	zkmofdtbl6m	12	\N	\N	\N
nocobase-admin-menu	zkmofdtbl6m	13	\N	\N	\N
szv3v13lwap	szv3v13lwap	0	f	properties	\N
ji9t3fgnkc0	szv3v13lwap	1	\N	\N	2
ugbscwjg6mp	ugbscwjg6mp	0	f	properties	\N
yjzd6s5ccq4	ugbscwjg6mp	2	\N	\N	\N
imrhc9he5on	ugbscwjg6mp	3	\N	\N	\N
82ikkgrog2y	ugbscwjg6mp	4	\N	\N	\N
mmj417nrjpa	ugbscwjg6mp	5	\N	\N	\N
lmgnrgroovk	ugbscwjg6mp	6	\N	\N	\N
4cx141n1lb4	ugbscwjg6mp	7	\N	\N	\N
k6pr2jh3wgd	ugbscwjg6mp	8	\N	\N	\N
hchm15rxv74	ugbscwjg6mp	9	\N	\N	\N
073buw1m70l	ugbscwjg6mp	10	\N	\N	\N
nocobase-admin-menu	ugbscwjg6mp	11	\N	\N	\N
ji9t3fgnkc0	ugbscwjg6mp	1	\N	\N	3
ykxbmnj3qtf	ykxbmnj3qtf	0	f	properties	\N
82ikkgrog2y	ykxbmnj3qtf	2	\N	\N	\N
mmj417nrjpa	ykxbmnj3qtf	3	\N	\N	\N
lmgnrgroovk	ykxbmnj3qtf	4	\N	\N	\N
4cx141n1lb4	ykxbmnj3qtf	5	\N	\N	\N
k6pr2jh3wgd	ykxbmnj3qtf	6	\N	\N	\N
hchm15rxv74	ykxbmnj3qtf	7	\N	\N	\N
073buw1m70l	ykxbmnj3qtf	8	\N	\N	\N
nocobase-admin-menu	ykxbmnj3qtf	9	\N	\N	\N
6kbk2ko53xi	ykxbmnj3qtf	1	\N	\N	1
kxwxa5snxqj	kxwxa5snxqj	0	f	properties	\N
hrottqihhik	kxwxa5snxqj	1	\N	\N	1
kaqxzol2uzz	kaqxzol2uzz	0	f	properties	\N
kxwxa5snxqj	kaqxzol2uzz	1	\N	\N	1
hrottqihhik	kaqxzol2uzz	2	\N	\N	1
49vizxk9deo	49vizxk9deo	0	f	properties	\N
kaqxzol2uzz	49vizxk9deo	1	\N	\N	1
kxwxa5snxqj	49vizxk9deo	2	\N	\N	1
hrottqihhik	49vizxk9deo	3	\N	\N	1
kn2leva9pcs	kn2leva9pcs	0	f	properties	\N
49vizxk9deo	kn2leva9pcs	1	\N	\N	1
kaqxzol2uzz	kn2leva9pcs	2	\N	\N	1
kxwxa5snxqj	kn2leva9pcs	3	\N	\N	1
hrottqihhik	kn2leva9pcs	4	\N	\N	1
6kbk2ko53xi	49vizxk9deo	4	\N	\N	\N
82ikkgrog2y	49vizxk9deo	5	\N	\N	\N
mmj417nrjpa	49vizxk9deo	6	\N	\N	\N
lmgnrgroovk	49vizxk9deo	7	\N	\N	\N
4cx141n1lb4	49vizxk9deo	8	\N	\N	\N
k6pr2jh3wgd	49vizxk9deo	9	\N	\N	\N
hchm15rxv74	49vizxk9deo	10	\N	\N	\N
073buw1m70l	49vizxk9deo	11	\N	\N	\N
nocobase-admin-menu	49vizxk9deo	12	\N	\N	\N
82ikkgrog2y	hrottqihhik	2	\N	\N	\N
mmj417nrjpa	hrottqihhik	3	\N	\N	\N
lmgnrgroovk	hrottqihhik	4	\N	\N	\N
4cx141n1lb4	hrottqihhik	5	\N	\N	\N
k6pr2jh3wgd	hrottqihhik	6	\N	\N	\N
hchm15rxv74	hrottqihhik	7	\N	\N	\N
073buw1m70l	hrottqihhik	8	\N	\N	\N
nocobase-admin-menu	hrottqihhik	9	\N	\N	\N
6kbk2ko53xi	kaqxzol2uzz	3	\N	\N	\N
82ikkgrog2y	kaqxzol2uzz	4	\N	\N	\N
mmj417nrjpa	kaqxzol2uzz	5	\N	\N	\N
lmgnrgroovk	kaqxzol2uzz	6	\N	\N	\N
4cx141n1lb4	kaqxzol2uzz	7	\N	\N	\N
k6pr2jh3wgd	kaqxzol2uzz	8	\N	\N	\N
hchm15rxv74	kaqxzol2uzz	9	\N	\N	\N
073buw1m70l	kaqxzol2uzz	10	\N	\N	\N
nocobase-admin-menu	kaqxzol2uzz	11	\N	\N	\N
6kbk2ko53xi	kn2leva9pcs	5	\N	\N	\N
82ikkgrog2y	kn2leva9pcs	6	\N	\N	\N
mmj417nrjpa	kn2leva9pcs	7	\N	\N	\N
lmgnrgroovk	kn2leva9pcs	8	\N	\N	\N
4cx141n1lb4	kn2leva9pcs	9	\N	\N	\N
k6pr2jh3wgd	kn2leva9pcs	10	\N	\N	\N
hchm15rxv74	kn2leva9pcs	11	\N	\N	\N
073buw1m70l	kn2leva9pcs	12	\N	\N	\N
nocobase-admin-menu	kn2leva9pcs	13	\N	\N	\N
6kbk2ko53xi	kxwxa5snxqj	2	\N	\N	\N
82ikkgrog2y	kxwxa5snxqj	3	\N	\N	\N
mmj417nrjpa	kxwxa5snxqj	4	\N	\N	\N
lmgnrgroovk	kxwxa5snxqj	5	\N	\N	\N
4cx141n1lb4	kxwxa5snxqj	6	\N	\N	\N
k6pr2jh3wgd	kxwxa5snxqj	7	\N	\N	\N
hchm15rxv74	kxwxa5snxqj	8	\N	\N	\N
073buw1m70l	kxwxa5snxqj	9	\N	\N	\N
nocobase-admin-menu	kxwxa5snxqj	10	\N	\N	\N
hrottqihhik	hrottqihhik	0	f	properties	\N
6kbk2ko53xi	hrottqihhik	1	\N	\N	2
m22ogp0s8dv	m22ogp0s8dv	0	f	properties	\N
82ikkgrog2y	m22ogp0s8dv	2	\N	\N	\N
mmj417nrjpa	m22ogp0s8dv	3	\N	\N	\N
lmgnrgroovk	m22ogp0s8dv	4	\N	\N	\N
4cx141n1lb4	m22ogp0s8dv	5	\N	\N	\N
k6pr2jh3wgd	m22ogp0s8dv	6	\N	\N	\N
hchm15rxv74	m22ogp0s8dv	7	\N	\N	\N
073buw1m70l	m22ogp0s8dv	8	\N	\N	\N
nocobase-admin-menu	m22ogp0s8dv	9	\N	\N	\N
6kbk2ko53xi	m22ogp0s8dv	1	\N	\N	3
z6frz5xuu4k	z6frz5xuu4k	0	f	properties	\N
82ikkgrog2y	z6frz5xuu4k	2	\N	\N	\N
mmj417nrjpa	z6frz5xuu4k	3	\N	\N	\N
lmgnrgroovk	z6frz5xuu4k	4	\N	\N	\N
4cx141n1lb4	z6frz5xuu4k	5	\N	\N	\N
k6pr2jh3wgd	z6frz5xuu4k	6	\N	\N	\N
hchm15rxv74	z6frz5xuu4k	7	\N	\N	\N
073buw1m70l	z6frz5xuu4k	8	\N	\N	\N
nocobase-admin-menu	z6frz5xuu4k	9	\N	\N	\N
6kbk2ko53xi	z6frz5xuu4k	1	\N	\N	4
82ikkgrog2y	08ul9zdtvmm	2	\N	\N	\N
0ykb0dwa7qn	0ykb0dwa7qn	0	f	properties	\N
08ul9zdtvmm	0ykb0dwa7qn	1	\N	\N	1
mmj417nrjpa	08ul9zdtvmm	3	\N	\N	\N
lmgnrgroovk	08ul9zdtvmm	4	\N	\N	\N
4cx141n1lb4	08ul9zdtvmm	5	\N	\N	\N
k6pr2jh3wgd	08ul9zdtvmm	6	\N	\N	\N
hchm15rxv74	08ul9zdtvmm	7	\N	\N	\N
073buw1m70l	08ul9zdtvmm	8	\N	\N	\N
nocobase-admin-menu	08ul9zdtvmm	9	\N	\N	\N
imrhc9he5on	0ykb0dwa7qn	2	\N	\N	\N
82ikkgrog2y	0ykb0dwa7qn	3	\N	\N	\N
mmj417nrjpa	0ykb0dwa7qn	4	\N	\N	\N
lmgnrgroovk	0ykb0dwa7qn	5	\N	\N	\N
4cx141n1lb4	0ykb0dwa7qn	6	\N	\N	\N
k6pr2jh3wgd	0ykb0dwa7qn	7	\N	\N	\N
hchm15rxv74	0ykb0dwa7qn	8	\N	\N	\N
073buw1m70l	0ykb0dwa7qn	9	\N	\N	\N
nocobase-admin-menu	0ykb0dwa7qn	10	\N	\N	\N
08ul9zdtvmm	08ul9zdtvmm	0	f	properties	\N
imrhc9he5on	08ul9zdtvmm	1	\N	\N	2
sbo1xc9b65s	sbo1xc9b65s	0	f	properties	\N
2l1dxgil9m0	sbo1xc9b65s	1	\N	\N	1
82ikkgrog2y	2l1dxgil9m0	2	\N	\N	\N
mmj417nrjpa	2l1dxgil9m0	3	\N	\N	\N
lmgnrgroovk	2l1dxgil9m0	4	\N	\N	\N
4cx141n1lb4	2l1dxgil9m0	5	\N	\N	\N
k6pr2jh3wgd	2l1dxgil9m0	6	\N	\N	\N
hchm15rxv74	2l1dxgil9m0	7	\N	\N	\N
073buw1m70l	2l1dxgil9m0	8	\N	\N	\N
nocobase-admin-menu	2l1dxgil9m0	9	\N	\N	\N
imrhc9he5on	sbo1xc9b65s	2	\N	\N	\N
82ikkgrog2y	sbo1xc9b65s	3	\N	\N	\N
mmj417nrjpa	sbo1xc9b65s	4	\N	\N	\N
lmgnrgroovk	sbo1xc9b65s	5	\N	\N	\N
4cx141n1lb4	sbo1xc9b65s	6	\N	\N	\N
k6pr2jh3wgd	sbo1xc9b65s	7	\N	\N	\N
hchm15rxv74	sbo1xc9b65s	8	\N	\N	\N
073buw1m70l	sbo1xc9b65s	9	\N	\N	\N
nocobase-admin-menu	sbo1xc9b65s	10	\N	\N	\N
2l1dxgil9m0	2l1dxgil9m0	0	f	properties	\N
imrhc9he5on	2l1dxgil9m0	1	\N	\N	3
h9b6ss6g5n5	h9b6ss6g5n5	0	f	properties	\N
2yp2l3a5rvg	h9b6ss6g5n5	1	\N	\N	1
82ikkgrog2y	2yp2l3a5rvg	2	\N	\N	\N
mmj417nrjpa	2yp2l3a5rvg	3	\N	\N	\N
lmgnrgroovk	2yp2l3a5rvg	4	\N	\N	\N
4cx141n1lb4	2yp2l3a5rvg	5	\N	\N	\N
k6pr2jh3wgd	2yp2l3a5rvg	6	\N	\N	\N
hchm15rxv74	2yp2l3a5rvg	7	\N	\N	\N
073buw1m70l	2yp2l3a5rvg	8	\N	\N	\N
nocobase-admin-menu	2yp2l3a5rvg	9	\N	\N	\N
imrhc9he5on	h9b6ss6g5n5	2	\N	\N	\N
82ikkgrog2y	h9b6ss6g5n5	3	\N	\N	\N
mmj417nrjpa	h9b6ss6g5n5	4	\N	\N	\N
lmgnrgroovk	h9b6ss6g5n5	5	\N	\N	\N
4cx141n1lb4	h9b6ss6g5n5	6	\N	\N	\N
k6pr2jh3wgd	h9b6ss6g5n5	7	\N	\N	\N
hchm15rxv74	h9b6ss6g5n5	8	\N	\N	\N
073buw1m70l	h9b6ss6g5n5	9	\N	\N	\N
nocobase-admin-menu	h9b6ss6g5n5	10	\N	\N	\N
2yp2l3a5rvg	2yp2l3a5rvg	0	f	properties	\N
imrhc9he5on	2yp2l3a5rvg	1	\N	\N	4
bj7dti4exso	bj7dti4exso	0	f	properties	\N
r15lkroggz5	bj7dti4exso	1	\N	\N	1
imrhc9he5on	bj7dti4exso	2	\N	\N	\N
82ikkgrog2y	bj7dti4exso	3	\N	\N	\N
mmj417nrjpa	bj7dti4exso	4	\N	\N	\N
lmgnrgroovk	bj7dti4exso	5	\N	\N	\N
4cx141n1lb4	bj7dti4exso	6	\N	\N	\N
k6pr2jh3wgd	bj7dti4exso	7	\N	\N	\N
hchm15rxv74	bj7dti4exso	8	\N	\N	\N
073buw1m70l	bj7dti4exso	9	\N	\N	\N
nocobase-admin-menu	bj7dti4exso	10	\N	\N	\N
82ikkgrog2y	r15lkroggz5	2	\N	\N	\N
mmj417nrjpa	r15lkroggz5	3	\N	\N	\N
lmgnrgroovk	r15lkroggz5	4	\N	\N	\N
4cx141n1lb4	r15lkroggz5	5	\N	\N	\N
k6pr2jh3wgd	r15lkroggz5	6	\N	\N	\N
hchm15rxv74	r15lkroggz5	7	\N	\N	\N
073buw1m70l	r15lkroggz5	8	\N	\N	\N
nocobase-admin-menu	r15lkroggz5	9	\N	\N	\N
r15lkroggz5	r15lkroggz5	0	f	properties	\N
imrhc9he5on	r15lkroggz5	1	\N	\N	5
nocobase-admin-menu	xwts1ggw479	2	\N	\N	\N
073buw1m70l	wcib2cpt11z	2	\N	\N	\N
nocobase-admin-menu	wcib2cpt11z	3	\N	\N	\N
073buw1m70l	ulw06kfwwn3	3	\N	\N	\N
nocobase-admin-menu	ulw06kfwwn3	4	\N	\N	\N
073buw1m70l	r5ux2dhnfq1	4	\N	\N	\N
nocobase-admin-menu	r5ux2dhnfq1	5	\N	\N	\N
073buw1m70l	9j3mrze0kdh	5	\N	\N	\N
nocobase-admin-menu	9j3mrze0kdh	6	\N	\N	\N
073buw1m70l	iiek91fm1lg	6	\N	\N	\N
nocobase-admin-menu	iiek91fm1lg	7	\N	\N	\N
073buw1m70l	uz1e0k6wjf1	7	\N	\N	\N
nocobase-admin-menu	uz1e0k6wjf1	8	\N	\N	\N
073buw1m70l	dwzj4kwyaia	7	\N	\N	\N
nocobase-admin-menu	dwzj4kwyaia	8	\N	\N	\N
073buw1m70l	9udwuhf2o25	8	\N	\N	\N
nocobase-admin-menu	9udwuhf2o25	9	\N	\N	\N
073buw1m70l	fuvpnwuajhl	9	\N	\N	\N
nocobase-admin-menu	fuvpnwuajhl	10	\N	\N	\N
073buw1m70l	ajlhev8hgld	8	\N	\N	\N
nocobase-admin-menu	ajlhev8hgld	9	\N	\N	\N
073buw1m70l	y90c6xine07	8	\N	\N	\N
nocobase-admin-menu	y90c6xine07	9	\N	\N	\N
073buw1m70l	yqj4tsj0tp5	9	\N	\N	\N
nocobase-admin-menu	yqj4tsj0tp5	10	\N	\N	\N
073buw1m70l	5i62m584bjk	10	\N	\N	\N
nocobase-admin-menu	5i62m584bjk	11	\N	\N	\N
073buw1m70l	lqc01b4n2xe	11	\N	\N	\N
nocobase-admin-menu	lqc01b4n2xe	12	\N	\N	\N
073buw1m70l	2dp1sgeoanq	12	\N	\N	\N
nocobase-admin-menu	2dp1sgeoanq	13	\N	\N	\N
073buw1m70l	3g77tkiq3m4	8	\N	\N	\N
nocobase-admin-menu	3g77tkiq3m4	9	\N	\N	\N
073buw1m70l	qbzhqbkp363	8	\N	\N	\N
nocobase-admin-menu	qbzhqbkp363	9	\N	\N	\N
073buw1m70l	a2izctpt2dm	10	\N	\N	\N
nocobase-admin-menu	a2izctpt2dm	11	\N	\N	\N
073buw1m70l	8qtz3wrc8jb	11	\N	\N	\N
nocobase-admin-menu	8qtz3wrc8jb	12	\N	\N	\N
073buw1m70l	sge8s8r9kdv	12	\N	\N	\N
nocobase-admin-menu	sge8s8r9kdv	13	\N	\N	\N
073buw1m70l	0pc9xw649k4	13	\N	\N	\N
nocobase-admin-menu	0pc9xw649k4	14	\N	\N	\N
073buw1m70l	1vvvk5b0mrj	14	\N	\N	\N
nocobase-admin-menu	1vvvk5b0mrj	15	\N	\N	\N
073buw1m70l	7i8vn1nplyc	10	\N	\N	\N
nocobase-admin-menu	7i8vn1nplyc	11	\N	\N	\N
073buw1m70l	scx9pufw9ld	11	\N	\N	\N
nocobase-admin-menu	scx9pufw9ld	12	\N	\N	\N
073buw1m70l	ftwn0si2s5e	12	\N	\N	\N
nocobase-admin-menu	ftwn0si2s5e	13	\N	\N	\N
073buw1m70l	que1e0cmz1z	13	\N	\N	\N
nocobase-admin-menu	que1e0cmz1z	14	\N	\N	\N
073buw1m70l	wwfnvseziiz	14	\N	\N	\N
nocobase-admin-menu	wwfnvseziiz	15	\N	\N	\N
073buw1m70l	gf7yu1fk5fu	10	\N	\N	\N
nocobase-admin-menu	gf7yu1fk5fu	11	\N	\N	\N
073buw1m70l	6ex1fiqbfa8	8	\N	\N	\N
nocobase-admin-menu	6ex1fiqbfa8	9	\N	\N	\N
073buw1m70l	lm0dfpdoltg	9	\N	\N	\N
nocobase-admin-menu	lm0dfpdoltg	10	\N	\N	\N
073buw1m70l	6idlds4jdgv	9	\N	\N	\N
nocobase-admin-menu	6idlds4jdgv	10	\N	\N	\N
073buw1m70l	dqssxed8op7	8	\N	\N	\N
nocobase-admin-menu	dqssxed8op7	9	\N	\N	\N
073buw1m70l	bq12jdwqsm7	8	\N	\N	\N
nocobase-admin-menu	bq12jdwqsm7	9	\N	\N	\N
073buw1m70l	mk0btnborli	9	\N	\N	\N
nocobase-admin-menu	mk0btnborli	10	\N	\N	\N
073buw1m70l	511oe1h7d0q	13	\N	\N	\N
nocobase-admin-menu	511oe1h7d0q	14	\N	\N	\N
073buw1m70l	7wvztesg1l9	17	\N	\N	\N
073buw1m70l	xwts1ggw479	1	\N	\N	1
nocobase-admin-menu	7wvztesg1l9	18	\N	\N	\N
073buw1m70l	9lqwydcclbh	17	\N	\N	\N
nocobase-admin-menu	9lqwydcclbh	18	\N	\N	\N
073buw1m70l	bjya50ieh5c	15	\N	\N	\N
nocobase-admin-menu	bjya50ieh5c	16	\N	\N	\N
073buw1m70l	ii9oyxsb8c5	14	\N	\N	\N
nocobase-admin-menu	ii9oyxsb8c5	15	\N	\N	\N
073buw1m70l	qusl2hqi7gk	16	\N	\N	\N
nocobase-admin-menu	qusl2hqi7gk	17	\N	\N	\N
073buw1m70l	5xc37z6hvd7	18	\N	\N	\N
nocobase-admin-menu	5xc37z6hvd7	19	\N	\N	\N
073buw1m70l	h12h75lwjjk	20	\N	\N	\N
nocobase-admin-menu	h12h75lwjjk	21	\N	\N	\N
073buw1m70l	xh6ua2oy0ak	19	\N	\N	\N
nocobase-admin-menu	xh6ua2oy0ak	20	\N	\N	\N
073buw1m70l	kwi6avb0snz	20	\N	\N	\N
nocobase-admin-menu	kwi6avb0snz	21	\N	\N	\N
073buw1m70l	neokhhxlkag	18	\N	\N	\N
nocobase-admin-menu	neokhhxlkag	19	\N	\N	\N
073buw1m70l	qam3nz2fvrb	19	\N	\N	\N
nocobase-admin-menu	qam3nz2fvrb	20	\N	\N	\N
073buw1m70l	v5n63r5xizu	18	\N	\N	\N
nocobase-admin-menu	v5n63r5xizu	19	\N	\N	\N
073buw1m70l	n3yigbe0k9v	1	\N	\N	2
073buw1m70l	hchm15rxv74	1	\N	\N	4
073buw1m70l	p3ls96regvr	1	\N	\N	5
073buw1m70l	bljegelqea8	1	\N	\N	6
ic7u2lri0wu	ic7u2lri0wu	0	f	properties	\N
6hd31g8yv4w	ic7u2lri0wu	1	\N	\N	1
4z1o600a2we	4z1o600a2we	0	f	properties	\N
ic7u2lri0wu	4z1o600a2we	1	\N	\N	1
6hd31g8yv4w	4z1o600a2we	2	\N	\N	1
qiff3fagpbp	qiff3fagpbp	0	f	properties	\N
4z1o600a2we	qiff3fagpbp	1	\N	\N	1
ic7u2lri0wu	qiff3fagpbp	2	\N	\N	1
6hd31g8yv4w	qiff3fagpbp	3	\N	\N	1
j6u3fnp1gf7	j6u3fnp1gf7	0	f	properties	\N
qiff3fagpbp	j6u3fnp1gf7	1	\N	\N	1
4z1o600a2we	j6u3fnp1gf7	2	\N	\N	1
ic7u2lri0wu	j6u3fnp1gf7	3	\N	\N	1
6hd31g8yv4w	j6u3fnp1gf7	4	\N	\N	1
bbqntpvrcj9	bbqntpvrcj9	0	f	properties	\N
qiff3fagpbp	bbqntpvrcj9	1	\N	\N	2
4z1o600a2we	bbqntpvrcj9	2	\N	\N	2
ic7u2lri0wu	bbqntpvrcj9	3	\N	\N	2
6hd31g8yv4w	bbqntpvrcj9	4	\N	\N	2
wwfnvseziiz	4z1o600a2we	3	\N	\N	\N
que1e0cmz1z	4z1o600a2we	4	\N	\N	\N
ftwn0si2s5e	4z1o600a2we	5	\N	\N	\N
scx9pufw9ld	4z1o600a2we	6	\N	\N	\N
7i8vn1nplyc	4z1o600a2we	7	\N	\N	\N
fuvpnwuajhl	4z1o600a2we	8	\N	\N	\N
9udwuhf2o25	4z1o600a2we	9	\N	\N	\N
dwzj4kwyaia	4z1o600a2we	10	\N	\N	\N
iiek91fm1lg	4z1o600a2we	11	\N	\N	\N
9j3mrze0kdh	4z1o600a2we	12	\N	\N	\N
r5ux2dhnfq1	4z1o600a2we	13	\N	\N	\N
ulw06kfwwn3	4z1o600a2we	14	\N	\N	\N
wcib2cpt11z	4z1o600a2we	15	\N	\N	\N
xwts1ggw479	4z1o600a2we	16	\N	\N	\N
073buw1m70l	4z1o600a2we	17	\N	\N	\N
nocobase-admin-menu	4z1o600a2we	18	\N	\N	\N
que1e0cmz1z	6hd31g8yv4w	2	\N	\N	\N
ftwn0si2s5e	6hd31g8yv4w	3	\N	\N	\N
scx9pufw9ld	6hd31g8yv4w	4	\N	\N	\N
7i8vn1nplyc	6hd31g8yv4w	5	\N	\N	\N
fuvpnwuajhl	6hd31g8yv4w	6	\N	\N	\N
9udwuhf2o25	6hd31g8yv4w	7	\N	\N	\N
dwzj4kwyaia	6hd31g8yv4w	8	\N	\N	\N
iiek91fm1lg	6hd31g8yv4w	9	\N	\N	\N
9j3mrze0kdh	6hd31g8yv4w	10	\N	\N	\N
r5ux2dhnfq1	6hd31g8yv4w	11	\N	\N	\N
ulw06kfwwn3	6hd31g8yv4w	12	\N	\N	\N
wcib2cpt11z	6hd31g8yv4w	13	\N	\N	\N
xwts1ggw479	6hd31g8yv4w	14	\N	\N	\N
073buw1m70l	6hd31g8yv4w	15	\N	\N	\N
nocobase-admin-menu	6hd31g8yv4w	16	\N	\N	\N
wwfnvseziiz	bbqntpvrcj9	5	\N	\N	\N
que1e0cmz1z	bbqntpvrcj9	6	\N	\N	\N
ftwn0si2s5e	bbqntpvrcj9	7	\N	\N	\N
scx9pufw9ld	bbqntpvrcj9	8	\N	\N	\N
7i8vn1nplyc	bbqntpvrcj9	9	\N	\N	\N
fuvpnwuajhl	bbqntpvrcj9	10	\N	\N	\N
9udwuhf2o25	bbqntpvrcj9	11	\N	\N	\N
dwzj4kwyaia	bbqntpvrcj9	12	\N	\N	\N
iiek91fm1lg	bbqntpvrcj9	13	\N	\N	\N
9j3mrze0kdh	bbqntpvrcj9	14	\N	\N	\N
r5ux2dhnfq1	bbqntpvrcj9	15	\N	\N	\N
ulw06kfwwn3	bbqntpvrcj9	16	\N	\N	\N
wcib2cpt11z	bbqntpvrcj9	17	\N	\N	\N
xwts1ggw479	bbqntpvrcj9	18	\N	\N	\N
073buw1m70l	bbqntpvrcj9	19	\N	\N	\N
nocobase-admin-menu	bbqntpvrcj9	20	\N	\N	\N
wwfnvseziiz	ic7u2lri0wu	2	\N	\N	\N
que1e0cmz1z	ic7u2lri0wu	3	\N	\N	\N
ftwn0si2s5e	ic7u2lri0wu	4	\N	\N	\N
scx9pufw9ld	ic7u2lri0wu	5	\N	\N	\N
7i8vn1nplyc	ic7u2lri0wu	6	\N	\N	\N
fuvpnwuajhl	ic7u2lri0wu	7	\N	\N	\N
9udwuhf2o25	ic7u2lri0wu	8	\N	\N	\N
dwzj4kwyaia	ic7u2lri0wu	9	\N	\N	\N
iiek91fm1lg	ic7u2lri0wu	10	\N	\N	\N
9j3mrze0kdh	ic7u2lri0wu	11	\N	\N	\N
r5ux2dhnfq1	ic7u2lri0wu	12	\N	\N	\N
ulw06kfwwn3	ic7u2lri0wu	13	\N	\N	\N
wcib2cpt11z	ic7u2lri0wu	14	\N	\N	\N
xwts1ggw479	ic7u2lri0wu	15	\N	\N	\N
073buw1m70l	ic7u2lri0wu	16	\N	\N	\N
nocobase-admin-menu	ic7u2lri0wu	17	\N	\N	\N
wwfnvseziiz	j6u3fnp1gf7	5	\N	\N	\N
que1e0cmz1z	j6u3fnp1gf7	6	\N	\N	\N
ftwn0si2s5e	j6u3fnp1gf7	7	\N	\N	\N
scx9pufw9ld	j6u3fnp1gf7	8	\N	\N	\N
7i8vn1nplyc	j6u3fnp1gf7	9	\N	\N	\N
fuvpnwuajhl	j6u3fnp1gf7	10	\N	\N	\N
9udwuhf2o25	j6u3fnp1gf7	11	\N	\N	\N
dwzj4kwyaia	j6u3fnp1gf7	12	\N	\N	\N
iiek91fm1lg	j6u3fnp1gf7	13	\N	\N	\N
9j3mrze0kdh	j6u3fnp1gf7	14	\N	\N	\N
r5ux2dhnfq1	j6u3fnp1gf7	15	\N	\N	\N
ulw06kfwwn3	j6u3fnp1gf7	16	\N	\N	\N
wcib2cpt11z	j6u3fnp1gf7	17	\N	\N	\N
xwts1ggw479	j6u3fnp1gf7	18	\N	\N	\N
073buw1m70l	j6u3fnp1gf7	19	\N	\N	\N
nocobase-admin-menu	j6u3fnp1gf7	20	\N	\N	\N
wwfnvseziiz	qiff3fagpbp	4	\N	\N	\N
que1e0cmz1z	qiff3fagpbp	5	\N	\N	\N
ftwn0si2s5e	qiff3fagpbp	6	\N	\N	\N
scx9pufw9ld	qiff3fagpbp	7	\N	\N	\N
7i8vn1nplyc	qiff3fagpbp	8	\N	\N	\N
fuvpnwuajhl	qiff3fagpbp	9	\N	\N	\N
9udwuhf2o25	qiff3fagpbp	10	\N	\N	\N
dwzj4kwyaia	qiff3fagpbp	11	\N	\N	\N
iiek91fm1lg	qiff3fagpbp	12	\N	\N	\N
9j3mrze0kdh	qiff3fagpbp	13	\N	\N	\N
r5ux2dhnfq1	qiff3fagpbp	14	\N	\N	\N
ulw06kfwwn3	qiff3fagpbp	15	\N	\N	\N
wcib2cpt11z	qiff3fagpbp	16	\N	\N	\N
xwts1ggw479	qiff3fagpbp	17	\N	\N	\N
073buw1m70l	qiff3fagpbp	18	\N	\N	\N
nocobase-admin-menu	qiff3fagpbp	19	\N	\N	\N
6hd31g8yv4w	6hd31g8yv4w	0	f	properties	\N
wwfnvseziiz	6hd31g8yv4w	1	\N	\N	1
11v507faua9	11v507faua9	0	f	properties	\N
6ldkeouiqu6	11v507faua9	1	\N	\N	1
64hct65otbl	64hct65otbl	0	f	properties	\N
11v507faua9	64hct65otbl	1	\N	\N	1
6ldkeouiqu6	64hct65otbl	2	\N	\N	1
j6u3fnp1gf7	11v507faua9	2	\N	\N	\N
qiff3fagpbp	11v507faua9	3	\N	\N	\N
4z1o600a2we	11v507faua9	4	\N	\N	\N
ic7u2lri0wu	11v507faua9	5	\N	\N	\N
6hd31g8yv4w	11v507faua9	6	\N	\N	\N
wwfnvseziiz	11v507faua9	7	\N	\N	\N
que1e0cmz1z	11v507faua9	8	\N	\N	\N
ftwn0si2s5e	11v507faua9	9	\N	\N	\N
scx9pufw9ld	11v507faua9	10	\N	\N	\N
7i8vn1nplyc	11v507faua9	11	\N	\N	\N
fuvpnwuajhl	11v507faua9	12	\N	\N	\N
9udwuhf2o25	11v507faua9	13	\N	\N	\N
dwzj4kwyaia	11v507faua9	14	\N	\N	\N
iiek91fm1lg	11v507faua9	15	\N	\N	\N
9j3mrze0kdh	11v507faua9	16	\N	\N	\N
r5ux2dhnfq1	11v507faua9	17	\N	\N	\N
ulw06kfwwn3	11v507faua9	18	\N	\N	\N
wcib2cpt11z	11v507faua9	19	\N	\N	\N
xwts1ggw479	11v507faua9	20	\N	\N	\N
073buw1m70l	11v507faua9	21	\N	\N	\N
nocobase-admin-menu	11v507faua9	22	\N	\N	\N
j6u3fnp1gf7	64hct65otbl	3	\N	\N	\N
qiff3fagpbp	64hct65otbl	4	\N	\N	\N
4z1o600a2we	64hct65otbl	5	\N	\N	\N
ic7u2lri0wu	64hct65otbl	6	\N	\N	\N
6hd31g8yv4w	64hct65otbl	7	\N	\N	\N
wwfnvseziiz	64hct65otbl	8	\N	\N	\N
que1e0cmz1z	64hct65otbl	9	\N	\N	\N
ftwn0si2s5e	64hct65otbl	10	\N	\N	\N
scx9pufw9ld	64hct65otbl	11	\N	\N	\N
7i8vn1nplyc	64hct65otbl	12	\N	\N	\N
fuvpnwuajhl	64hct65otbl	13	\N	\N	\N
9udwuhf2o25	64hct65otbl	14	\N	\N	\N
dwzj4kwyaia	64hct65otbl	15	\N	\N	\N
iiek91fm1lg	64hct65otbl	16	\N	\N	\N
9j3mrze0kdh	64hct65otbl	17	\N	\N	\N
r5ux2dhnfq1	64hct65otbl	18	\N	\N	\N
ulw06kfwwn3	64hct65otbl	19	\N	\N	\N
wcib2cpt11z	64hct65otbl	20	\N	\N	\N
xwts1ggw479	64hct65otbl	21	\N	\N	\N
073buw1m70l	64hct65otbl	22	\N	\N	\N
nocobase-admin-menu	64hct65otbl	23	\N	\N	\N
qiff3fagpbp	6ldkeouiqu6	2	\N	\N	\N
4z1o600a2we	6ldkeouiqu6	3	\N	\N	\N
ic7u2lri0wu	6ldkeouiqu6	4	\N	\N	\N
6hd31g8yv4w	6ldkeouiqu6	5	\N	\N	\N
wwfnvseziiz	6ldkeouiqu6	6	\N	\N	\N
que1e0cmz1z	6ldkeouiqu6	7	\N	\N	\N
ftwn0si2s5e	6ldkeouiqu6	8	\N	\N	\N
scx9pufw9ld	6ldkeouiqu6	9	\N	\N	\N
7i8vn1nplyc	6ldkeouiqu6	10	\N	\N	\N
fuvpnwuajhl	6ldkeouiqu6	11	\N	\N	\N
9udwuhf2o25	6ldkeouiqu6	12	\N	\N	\N
dwzj4kwyaia	6ldkeouiqu6	13	\N	\N	\N
iiek91fm1lg	6ldkeouiqu6	14	\N	\N	\N
9j3mrze0kdh	6ldkeouiqu6	15	\N	\N	\N
r5ux2dhnfq1	6ldkeouiqu6	16	\N	\N	\N
ulw06kfwwn3	6ldkeouiqu6	17	\N	\N	\N
wcib2cpt11z	6ldkeouiqu6	18	\N	\N	\N
xwts1ggw479	6ldkeouiqu6	19	\N	\N	\N
073buw1m70l	6ldkeouiqu6	20	\N	\N	\N
nocobase-admin-menu	6ldkeouiqu6	21	\N	\N	\N
6ldkeouiqu6	6ldkeouiqu6	0	f	properties	\N
j6u3fnp1gf7	6ldkeouiqu6	1	\N	\N	1
7bgianrailm	7bgianrailm	0	f	properties	\N
s9lar6nxkb9	7bgianrailm	1	\N	\N	1
7ac5fvdsvhv	7ac5fvdsvhv	0	f	properties	\N
7bgianrailm	7ac5fvdsvhv	1	\N	\N	1
s9lar6nxkb9	7ac5fvdsvhv	2	\N	\N	1
j6u3fnp1gf7	7ac5fvdsvhv	3	\N	\N	\N
qiff3fagpbp	7ac5fvdsvhv	4	\N	\N	\N
4z1o600a2we	7ac5fvdsvhv	5	\N	\N	\N
ic7u2lri0wu	7ac5fvdsvhv	6	\N	\N	\N
6hd31g8yv4w	7ac5fvdsvhv	7	\N	\N	\N
wwfnvseziiz	7ac5fvdsvhv	8	\N	\N	\N
que1e0cmz1z	7ac5fvdsvhv	9	\N	\N	\N
ftwn0si2s5e	7ac5fvdsvhv	10	\N	\N	\N
scx9pufw9ld	7ac5fvdsvhv	11	\N	\N	\N
7i8vn1nplyc	7ac5fvdsvhv	12	\N	\N	\N
fuvpnwuajhl	7ac5fvdsvhv	13	\N	\N	\N
9udwuhf2o25	7ac5fvdsvhv	14	\N	\N	\N
dwzj4kwyaia	7ac5fvdsvhv	15	\N	\N	\N
iiek91fm1lg	7ac5fvdsvhv	16	\N	\N	\N
9j3mrze0kdh	7ac5fvdsvhv	17	\N	\N	\N
r5ux2dhnfq1	7ac5fvdsvhv	18	\N	\N	\N
ulw06kfwwn3	7ac5fvdsvhv	19	\N	\N	\N
wcib2cpt11z	7ac5fvdsvhv	20	\N	\N	\N
xwts1ggw479	7ac5fvdsvhv	21	\N	\N	\N
073buw1m70l	7ac5fvdsvhv	22	\N	\N	\N
nocobase-admin-menu	7ac5fvdsvhv	23	\N	\N	\N
j6u3fnp1gf7	7bgianrailm	2	\N	\N	\N
qiff3fagpbp	7bgianrailm	3	\N	\N	\N
4z1o600a2we	7bgianrailm	4	\N	\N	\N
ic7u2lri0wu	7bgianrailm	5	\N	\N	\N
6hd31g8yv4w	7bgianrailm	6	\N	\N	\N
wwfnvseziiz	7bgianrailm	7	\N	\N	\N
que1e0cmz1z	7bgianrailm	8	\N	\N	\N
ftwn0si2s5e	7bgianrailm	9	\N	\N	\N
scx9pufw9ld	7bgianrailm	10	\N	\N	\N
7i8vn1nplyc	7bgianrailm	11	\N	\N	\N
fuvpnwuajhl	7bgianrailm	12	\N	\N	\N
9udwuhf2o25	7bgianrailm	13	\N	\N	\N
dwzj4kwyaia	7bgianrailm	14	\N	\N	\N
iiek91fm1lg	7bgianrailm	15	\N	\N	\N
9j3mrze0kdh	7bgianrailm	16	\N	\N	\N
r5ux2dhnfq1	7bgianrailm	17	\N	\N	\N
ulw06kfwwn3	7bgianrailm	18	\N	\N	\N
wcib2cpt11z	7bgianrailm	19	\N	\N	\N
xwts1ggw479	7bgianrailm	20	\N	\N	\N
073buw1m70l	7bgianrailm	21	\N	\N	\N
nocobase-admin-menu	7bgianrailm	22	\N	\N	\N
qiff3fagpbp	s9lar6nxkb9	2	\N	\N	\N
4z1o600a2we	s9lar6nxkb9	3	\N	\N	\N
s9lar6nxkb9	s9lar6nxkb9	0	f	properties	\N
j6u3fnp1gf7	s9lar6nxkb9	1	\N	\N	2
ic7u2lri0wu	s9lar6nxkb9	4	\N	\N	\N
6hd31g8yv4w	s9lar6nxkb9	5	\N	\N	\N
wwfnvseziiz	s9lar6nxkb9	6	\N	\N	\N
que1e0cmz1z	s9lar6nxkb9	7	\N	\N	\N
ftwn0si2s5e	s9lar6nxkb9	8	\N	\N	\N
scx9pufw9ld	s9lar6nxkb9	9	\N	\N	\N
7i8vn1nplyc	s9lar6nxkb9	10	\N	\N	\N
fuvpnwuajhl	s9lar6nxkb9	11	\N	\N	\N
9udwuhf2o25	s9lar6nxkb9	12	\N	\N	\N
dwzj4kwyaia	s9lar6nxkb9	13	\N	\N	\N
iiek91fm1lg	s9lar6nxkb9	14	\N	\N	\N
9j3mrze0kdh	s9lar6nxkb9	15	\N	\N	\N
r5ux2dhnfq1	s9lar6nxkb9	16	\N	\N	\N
ulw06kfwwn3	s9lar6nxkb9	17	\N	\N	\N
wcib2cpt11z	s9lar6nxkb9	18	\N	\N	\N
xwts1ggw479	s9lar6nxkb9	19	\N	\N	\N
073buw1m70l	s9lar6nxkb9	20	\N	\N	\N
nocobase-admin-menu	s9lar6nxkb9	21	\N	\N	\N
x747kf9mxwc	x747kf9mxwc	0	f	properties	\N
34dbxdespfo	x747kf9mxwc	1	\N	\N	1
p6s217wf7ct	p6s217wf7ct	0	f	properties	\N
x747kf9mxwc	p6s217wf7ct	1	\N	\N	1
34dbxdespfo	p6s217wf7ct	2	\N	\N	1
qiff3fagpbp	34dbxdespfo	2	\N	\N	\N
4z1o600a2we	34dbxdespfo	3	\N	\N	\N
ic7u2lri0wu	34dbxdespfo	4	\N	\N	\N
6hd31g8yv4w	34dbxdespfo	5	\N	\N	\N
wwfnvseziiz	34dbxdespfo	6	\N	\N	\N
que1e0cmz1z	34dbxdespfo	7	\N	\N	\N
ftwn0si2s5e	34dbxdespfo	8	\N	\N	\N
scx9pufw9ld	34dbxdespfo	9	\N	\N	\N
7i8vn1nplyc	34dbxdespfo	10	\N	\N	\N
fuvpnwuajhl	34dbxdespfo	11	\N	\N	\N
9udwuhf2o25	34dbxdespfo	12	\N	\N	\N
dwzj4kwyaia	34dbxdespfo	13	\N	\N	\N
iiek91fm1lg	34dbxdespfo	14	\N	\N	\N
9j3mrze0kdh	34dbxdespfo	15	\N	\N	\N
r5ux2dhnfq1	34dbxdespfo	16	\N	\N	\N
ulw06kfwwn3	34dbxdespfo	17	\N	\N	\N
wcib2cpt11z	34dbxdespfo	18	\N	\N	\N
xwts1ggw479	34dbxdespfo	19	\N	\N	\N
073buw1m70l	34dbxdespfo	20	\N	\N	\N
nocobase-admin-menu	34dbxdespfo	21	\N	\N	\N
j6u3fnp1gf7	p6s217wf7ct	3	\N	\N	\N
qiff3fagpbp	p6s217wf7ct	4	\N	\N	\N
4z1o600a2we	p6s217wf7ct	5	\N	\N	\N
ic7u2lri0wu	p6s217wf7ct	6	\N	\N	\N
6hd31g8yv4w	p6s217wf7ct	7	\N	\N	\N
wwfnvseziiz	p6s217wf7ct	8	\N	\N	\N
que1e0cmz1z	p6s217wf7ct	9	\N	\N	\N
ftwn0si2s5e	p6s217wf7ct	10	\N	\N	\N
scx9pufw9ld	p6s217wf7ct	11	\N	\N	\N
7i8vn1nplyc	p6s217wf7ct	12	\N	\N	\N
fuvpnwuajhl	p6s217wf7ct	13	\N	\N	\N
9udwuhf2o25	p6s217wf7ct	14	\N	\N	\N
dwzj4kwyaia	p6s217wf7ct	15	\N	\N	\N
iiek91fm1lg	p6s217wf7ct	16	\N	\N	\N
9j3mrze0kdh	p6s217wf7ct	17	\N	\N	\N
r5ux2dhnfq1	p6s217wf7ct	18	\N	\N	\N
ulw06kfwwn3	p6s217wf7ct	19	\N	\N	\N
wcib2cpt11z	p6s217wf7ct	20	\N	\N	\N
xwts1ggw479	p6s217wf7ct	21	\N	\N	\N
073buw1m70l	p6s217wf7ct	22	\N	\N	\N
nocobase-admin-menu	p6s217wf7ct	23	\N	\N	\N
j6u3fnp1gf7	x747kf9mxwc	2	\N	\N	\N
qiff3fagpbp	x747kf9mxwc	3	\N	\N	\N
4z1o600a2we	x747kf9mxwc	4	\N	\N	\N
ic7u2lri0wu	x747kf9mxwc	5	\N	\N	\N
6hd31g8yv4w	x747kf9mxwc	6	\N	\N	\N
wwfnvseziiz	x747kf9mxwc	7	\N	\N	\N
que1e0cmz1z	x747kf9mxwc	8	\N	\N	\N
ftwn0si2s5e	x747kf9mxwc	9	\N	\N	\N
scx9pufw9ld	x747kf9mxwc	10	\N	\N	\N
7i8vn1nplyc	x747kf9mxwc	11	\N	\N	\N
fuvpnwuajhl	x747kf9mxwc	12	\N	\N	\N
9udwuhf2o25	x747kf9mxwc	13	\N	\N	\N
dwzj4kwyaia	x747kf9mxwc	14	\N	\N	\N
iiek91fm1lg	x747kf9mxwc	15	\N	\N	\N
9j3mrze0kdh	x747kf9mxwc	16	\N	\N	\N
r5ux2dhnfq1	x747kf9mxwc	17	\N	\N	\N
ulw06kfwwn3	x747kf9mxwc	18	\N	\N	\N
wcib2cpt11z	x747kf9mxwc	19	\N	\N	\N
xwts1ggw479	x747kf9mxwc	20	\N	\N	\N
073buw1m70l	x747kf9mxwc	21	\N	\N	\N
nocobase-admin-menu	x747kf9mxwc	22	\N	\N	\N
34dbxdespfo	34dbxdespfo	0	f	properties	\N
j6u3fnp1gf7	34dbxdespfo	1	\N	\N	3
49du3kw1vk3	49du3kw1vk3	0	f	properties	\N
qiff3fagpbp	49du3kw1vk3	2	\N	\N	\N
4z1o600a2we	49du3kw1vk3	3	\N	\N	\N
ic7u2lri0wu	49du3kw1vk3	4	\N	\N	\N
6hd31g8yv4w	49du3kw1vk3	5	\N	\N	\N
wwfnvseziiz	49du3kw1vk3	6	\N	\N	\N
que1e0cmz1z	49du3kw1vk3	7	\N	\N	\N
ftwn0si2s5e	49du3kw1vk3	8	\N	\N	\N
scx9pufw9ld	49du3kw1vk3	9	\N	\N	\N
7i8vn1nplyc	49du3kw1vk3	10	\N	\N	\N
fuvpnwuajhl	49du3kw1vk3	11	\N	\N	\N
9udwuhf2o25	49du3kw1vk3	12	\N	\N	\N
dwzj4kwyaia	49du3kw1vk3	13	\N	\N	\N
iiek91fm1lg	49du3kw1vk3	14	\N	\N	\N
9j3mrze0kdh	49du3kw1vk3	15	\N	\N	\N
r5ux2dhnfq1	49du3kw1vk3	16	\N	\N	\N
ulw06kfwwn3	49du3kw1vk3	17	\N	\N	\N
wcib2cpt11z	49du3kw1vk3	18	\N	\N	\N
xwts1ggw479	49du3kw1vk3	19	\N	\N	\N
073buw1m70l	49du3kw1vk3	20	\N	\N	\N
nocobase-admin-menu	49du3kw1vk3	21	\N	\N	\N
bbqntpvrcj9	49du3kw1vk3	1	\N	\N	1
3wjttvlbvom	3wjttvlbvom	0	f	properties	\N
7608d2qrms5	3wjttvlbvom	1	\N	\N	1
7b0nw7tckru	7b0nw7tckru	0	f	properties	\N
3wjttvlbvom	7b0nw7tckru	1	\N	\N	1
7608d2qrms5	7b0nw7tckru	2	\N	\N	1
kiub9a1d6kl	kiub9a1d6kl	0	f	properties	\N
7b0nw7tckru	kiub9a1d6kl	1	\N	\N	1
3wjttvlbvom	kiub9a1d6kl	2	\N	\N	1
7608d2qrms5	kiub9a1d6kl	3	\N	\N	1
3qm94lpqqbi	3qm94lpqqbi	0	f	properties	\N
kiub9a1d6kl	3qm94lpqqbi	1	\N	\N	1
7b0nw7tckru	3qm94lpqqbi	2	\N	\N	1
3wjttvlbvom	3qm94lpqqbi	3	\N	\N	1
7608d2qrms5	3qm94lpqqbi	4	\N	\N	1
eb1kzrwxlpo	eb1kzrwxlpo	0	f	properties	\N
kiub9a1d6kl	eb1kzrwxlpo	1	\N	\N	2
7b0nw7tckru	eb1kzrwxlpo	2	\N	\N	2
3wjttvlbvom	eb1kzrwxlpo	3	\N	\N	2
7608d2qrms5	eb1kzrwxlpo	4	\N	\N	2
adxntkyyx2m	3qm94lpqqbi	5	\N	\N	\N
alnwl1ouj3h	3qm94lpqqbi	6	\N	\N	\N
3gtgg35z6e8	3qm94lpqqbi	7	\N	\N	\N
xfwxsmz494e	3qm94lpqqbi	8	\N	\N	\N
vukfpwp37qn	3qm94lpqqbi	9	\N	\N	\N
baqq2v2fong	3qm94lpqqbi	10	\N	\N	\N
pdot2ybyfc0	3qm94lpqqbi	11	\N	\N	\N
a7e860jrx5o	3qm94lpqqbi	12	\N	\N	\N
zxh1oe1qx5t	3qm94lpqqbi	13	\N	\N	\N
861gmcfwhia	3qm94lpqqbi	14	\N	\N	\N
9yos6i0cjm3	3qm94lpqqbi	15	\N	\N	\N
n3yigbe0k9v	3qm94lpqqbi	16	\N	\N	\N
073buw1m70l	3qm94lpqqbi	17	\N	\N	\N
nocobase-admin-menu	3qm94lpqqbi	18	\N	\N	\N
adxntkyyx2m	3wjttvlbvom	2	\N	\N	\N
alnwl1ouj3h	3wjttvlbvom	3	\N	\N	\N
3gtgg35z6e8	3wjttvlbvom	4	\N	\N	\N
xfwxsmz494e	3wjttvlbvom	5	\N	\N	\N
vukfpwp37qn	3wjttvlbvom	6	\N	\N	\N
baqq2v2fong	3wjttvlbvom	7	\N	\N	\N
pdot2ybyfc0	3wjttvlbvom	8	\N	\N	\N
a7e860jrx5o	3wjttvlbvom	9	\N	\N	\N
zxh1oe1qx5t	3wjttvlbvom	10	\N	\N	\N
861gmcfwhia	3wjttvlbvom	11	\N	\N	\N
9yos6i0cjm3	3wjttvlbvom	12	\N	\N	\N
n3yigbe0k9v	3wjttvlbvom	13	\N	\N	\N
073buw1m70l	3wjttvlbvom	14	\N	\N	\N
nocobase-admin-menu	3wjttvlbvom	15	\N	\N	\N
alnwl1ouj3h	7608d2qrms5	2	\N	\N	\N
3gtgg35z6e8	7608d2qrms5	3	\N	\N	\N
xfwxsmz494e	7608d2qrms5	4	\N	\N	\N
vukfpwp37qn	7608d2qrms5	5	\N	\N	\N
baqq2v2fong	7608d2qrms5	6	\N	\N	\N
pdot2ybyfc0	7608d2qrms5	7	\N	\N	\N
a7e860jrx5o	7608d2qrms5	8	\N	\N	\N
zxh1oe1qx5t	7608d2qrms5	9	\N	\N	\N
861gmcfwhia	7608d2qrms5	10	\N	\N	\N
9yos6i0cjm3	7608d2qrms5	11	\N	\N	\N
n3yigbe0k9v	7608d2qrms5	12	\N	\N	\N
073buw1m70l	7608d2qrms5	13	\N	\N	\N
nocobase-admin-menu	7608d2qrms5	14	\N	\N	\N
adxntkyyx2m	7b0nw7tckru	3	\N	\N	\N
alnwl1ouj3h	7b0nw7tckru	4	\N	\N	\N
3gtgg35z6e8	7b0nw7tckru	5	\N	\N	\N
xfwxsmz494e	7b0nw7tckru	6	\N	\N	\N
vukfpwp37qn	7b0nw7tckru	7	\N	\N	\N
baqq2v2fong	7b0nw7tckru	8	\N	\N	\N
pdot2ybyfc0	7b0nw7tckru	9	\N	\N	\N
a7e860jrx5o	7b0nw7tckru	10	\N	\N	\N
zxh1oe1qx5t	7b0nw7tckru	11	\N	\N	\N
861gmcfwhia	7b0nw7tckru	12	\N	\N	\N
9yos6i0cjm3	7b0nw7tckru	13	\N	\N	\N
n3yigbe0k9v	7b0nw7tckru	14	\N	\N	\N
073buw1m70l	7b0nw7tckru	15	\N	\N	\N
nocobase-admin-menu	7b0nw7tckru	16	\N	\N	\N
adxntkyyx2m	eb1kzrwxlpo	5	\N	\N	\N
alnwl1ouj3h	eb1kzrwxlpo	6	\N	\N	\N
3gtgg35z6e8	eb1kzrwxlpo	7	\N	\N	\N
xfwxsmz494e	eb1kzrwxlpo	8	\N	\N	\N
vukfpwp37qn	eb1kzrwxlpo	9	\N	\N	\N
baqq2v2fong	eb1kzrwxlpo	10	\N	\N	\N
pdot2ybyfc0	eb1kzrwxlpo	11	\N	\N	\N
a7e860jrx5o	eb1kzrwxlpo	12	\N	\N	\N
zxh1oe1qx5t	eb1kzrwxlpo	13	\N	\N	\N
861gmcfwhia	eb1kzrwxlpo	14	\N	\N	\N
9yos6i0cjm3	eb1kzrwxlpo	15	\N	\N	\N
n3yigbe0k9v	eb1kzrwxlpo	16	\N	\N	\N
073buw1m70l	eb1kzrwxlpo	17	\N	\N	\N
nocobase-admin-menu	eb1kzrwxlpo	18	\N	\N	\N
adxntkyyx2m	kiub9a1d6kl	4	\N	\N	\N
alnwl1ouj3h	kiub9a1d6kl	5	\N	\N	\N
3gtgg35z6e8	kiub9a1d6kl	6	\N	\N	\N
xfwxsmz494e	kiub9a1d6kl	7	\N	\N	\N
vukfpwp37qn	kiub9a1d6kl	8	\N	\N	\N
baqq2v2fong	kiub9a1d6kl	9	\N	\N	\N
pdot2ybyfc0	kiub9a1d6kl	10	\N	\N	\N
a7e860jrx5o	kiub9a1d6kl	11	\N	\N	\N
zxh1oe1qx5t	kiub9a1d6kl	12	\N	\N	\N
861gmcfwhia	kiub9a1d6kl	13	\N	\N	\N
9yos6i0cjm3	kiub9a1d6kl	14	\N	\N	\N
n3yigbe0k9v	kiub9a1d6kl	15	\N	\N	\N
073buw1m70l	kiub9a1d6kl	16	\N	\N	\N
nocobase-admin-menu	kiub9a1d6kl	17	\N	\N	\N
7608d2qrms5	7608d2qrms5	0	f	properties	\N
adxntkyyx2m	7608d2qrms5	1	\N	\N	1
gknyqq41xnt	gknyqq41xnt	0	f	properties	\N
p8r4eqswil9	gknyqq41xnt	1	\N	\N	1
923mrc3wb4s	923mrc3wb4s	0	f	properties	\N
gknyqq41xnt	923mrc3wb4s	1	\N	\N	1
p8r4eqswil9	923mrc3wb4s	2	\N	\N	1
3qm94lpqqbi	923mrc3wb4s	3	\N	\N	\N
kiub9a1d6kl	923mrc3wb4s	4	\N	\N	\N
7b0nw7tckru	923mrc3wb4s	5	\N	\N	\N
3wjttvlbvom	923mrc3wb4s	6	\N	\N	\N
7608d2qrms5	923mrc3wb4s	7	\N	\N	\N
adxntkyyx2m	923mrc3wb4s	8	\N	\N	\N
alnwl1ouj3h	923mrc3wb4s	9	\N	\N	\N
3gtgg35z6e8	923mrc3wb4s	10	\N	\N	\N
xfwxsmz494e	923mrc3wb4s	11	\N	\N	\N
vukfpwp37qn	923mrc3wb4s	12	\N	\N	\N
baqq2v2fong	923mrc3wb4s	13	\N	\N	\N
pdot2ybyfc0	923mrc3wb4s	14	\N	\N	\N
a7e860jrx5o	923mrc3wb4s	15	\N	\N	\N
zxh1oe1qx5t	923mrc3wb4s	16	\N	\N	\N
861gmcfwhia	923mrc3wb4s	17	\N	\N	\N
9yos6i0cjm3	923mrc3wb4s	18	\N	\N	\N
n3yigbe0k9v	923mrc3wb4s	19	\N	\N	\N
073buw1m70l	923mrc3wb4s	20	\N	\N	\N
nocobase-admin-menu	923mrc3wb4s	21	\N	\N	\N
3qm94lpqqbi	gknyqq41xnt	2	\N	\N	\N
kiub9a1d6kl	gknyqq41xnt	3	\N	\N	\N
7b0nw7tckru	gknyqq41xnt	4	\N	\N	\N
3wjttvlbvom	gknyqq41xnt	5	\N	\N	\N
7608d2qrms5	gknyqq41xnt	6	\N	\N	\N
adxntkyyx2m	gknyqq41xnt	7	\N	\N	\N
alnwl1ouj3h	gknyqq41xnt	8	\N	\N	\N
3gtgg35z6e8	gknyqq41xnt	9	\N	\N	\N
xfwxsmz494e	gknyqq41xnt	10	\N	\N	\N
vukfpwp37qn	gknyqq41xnt	11	\N	\N	\N
baqq2v2fong	gknyqq41xnt	12	\N	\N	\N
pdot2ybyfc0	gknyqq41xnt	13	\N	\N	\N
a7e860jrx5o	gknyqq41xnt	14	\N	\N	\N
zxh1oe1qx5t	gknyqq41xnt	15	\N	\N	\N
861gmcfwhia	gknyqq41xnt	16	\N	\N	\N
9yos6i0cjm3	gknyqq41xnt	17	\N	\N	\N
n3yigbe0k9v	gknyqq41xnt	18	\N	\N	\N
073buw1m70l	gknyqq41xnt	19	\N	\N	\N
nocobase-admin-menu	gknyqq41xnt	20	\N	\N	\N
kiub9a1d6kl	p8r4eqswil9	2	\N	\N	\N
7b0nw7tckru	p8r4eqswil9	3	\N	\N	\N
3wjttvlbvom	p8r4eqswil9	4	\N	\N	\N
7608d2qrms5	p8r4eqswil9	5	\N	\N	\N
adxntkyyx2m	p8r4eqswil9	6	\N	\N	\N
alnwl1ouj3h	p8r4eqswil9	7	\N	\N	\N
3gtgg35z6e8	p8r4eqswil9	8	\N	\N	\N
xfwxsmz494e	p8r4eqswil9	9	\N	\N	\N
p8r4eqswil9	p8r4eqswil9	0	f	properties	\N
vukfpwp37qn	p8r4eqswil9	10	\N	\N	\N
baqq2v2fong	p8r4eqswil9	11	\N	\N	\N
pdot2ybyfc0	p8r4eqswil9	12	\N	\N	\N
a7e860jrx5o	p8r4eqswil9	13	\N	\N	\N
zxh1oe1qx5t	p8r4eqswil9	14	\N	\N	\N
861gmcfwhia	p8r4eqswil9	15	\N	\N	\N
9yos6i0cjm3	p8r4eqswil9	16	\N	\N	\N
n3yigbe0k9v	p8r4eqswil9	17	\N	\N	\N
073buw1m70l	p8r4eqswil9	18	\N	\N	\N
nocobase-admin-menu	p8r4eqswil9	19	\N	\N	\N
3qm94lpqqbi	p8r4eqswil9	1	\N	\N	1
uhyna377ejo	uhyna377ejo	0	f	properties	\N
3qm94lpqqbi	uhyna377ejo	1	\N	\N	2
uqefruvwdrj	uqefruvwdrj	0	f	properties	\N
uhyna377ejo	uqefruvwdrj	1	\N	\N	1
694yihv1mt2	694yihv1mt2	0	f	properties	\N
uqefruvwdrj	694yihv1mt2	1	\N	\N	1
uhyna377ejo	694yihv1mt2	2	\N	\N	1
3qm94lpqqbi	694yihv1mt2	3	\N	\N	\N
kiub9a1d6kl	694yihv1mt2	4	\N	\N	\N
7b0nw7tckru	694yihv1mt2	5	\N	\N	\N
3wjttvlbvom	694yihv1mt2	6	\N	\N	\N
7608d2qrms5	694yihv1mt2	7	\N	\N	\N
adxntkyyx2m	694yihv1mt2	8	\N	\N	\N
alnwl1ouj3h	694yihv1mt2	9	\N	\N	\N
3gtgg35z6e8	694yihv1mt2	10	\N	\N	\N
xfwxsmz494e	694yihv1mt2	11	\N	\N	\N
vukfpwp37qn	694yihv1mt2	12	\N	\N	\N
baqq2v2fong	694yihv1mt2	13	\N	\N	\N
pdot2ybyfc0	694yihv1mt2	14	\N	\N	\N
a7e860jrx5o	694yihv1mt2	15	\N	\N	\N
zxh1oe1qx5t	694yihv1mt2	16	\N	\N	\N
861gmcfwhia	694yihv1mt2	17	\N	\N	\N
9yos6i0cjm3	694yihv1mt2	18	\N	\N	\N
n3yigbe0k9v	694yihv1mt2	19	\N	\N	\N
073buw1m70l	694yihv1mt2	20	\N	\N	\N
nocobase-admin-menu	694yihv1mt2	21	\N	\N	\N
kiub9a1d6kl	uhyna377ejo	2	\N	\N	\N
7b0nw7tckru	uhyna377ejo	3	\N	\N	\N
3wjttvlbvom	uhyna377ejo	4	\N	\N	\N
7608d2qrms5	uhyna377ejo	5	\N	\N	\N
adxntkyyx2m	uhyna377ejo	6	\N	\N	\N
alnwl1ouj3h	uhyna377ejo	7	\N	\N	\N
3gtgg35z6e8	uhyna377ejo	8	\N	\N	\N
xfwxsmz494e	uhyna377ejo	9	\N	\N	\N
vukfpwp37qn	uhyna377ejo	10	\N	\N	\N
baqq2v2fong	uhyna377ejo	11	\N	\N	\N
pdot2ybyfc0	uhyna377ejo	12	\N	\N	\N
a7e860jrx5o	uhyna377ejo	13	\N	\N	\N
zxh1oe1qx5t	uhyna377ejo	14	\N	\N	\N
861gmcfwhia	uhyna377ejo	15	\N	\N	\N
9yos6i0cjm3	uhyna377ejo	16	\N	\N	\N
n3yigbe0k9v	uhyna377ejo	17	\N	\N	\N
073buw1m70l	uhyna377ejo	18	\N	\N	\N
nocobase-admin-menu	uhyna377ejo	19	\N	\N	\N
3qm94lpqqbi	uqefruvwdrj	2	\N	\N	\N
kiub9a1d6kl	uqefruvwdrj	3	\N	\N	\N
7b0nw7tckru	uqefruvwdrj	4	\N	\N	\N
3wjttvlbvom	uqefruvwdrj	5	\N	\N	\N
7608d2qrms5	uqefruvwdrj	6	\N	\N	\N
adxntkyyx2m	uqefruvwdrj	7	\N	\N	\N
alnwl1ouj3h	uqefruvwdrj	8	\N	\N	\N
3gtgg35z6e8	uqefruvwdrj	9	\N	\N	\N
xfwxsmz494e	uqefruvwdrj	10	\N	\N	\N
vukfpwp37qn	uqefruvwdrj	11	\N	\N	\N
baqq2v2fong	uqefruvwdrj	12	\N	\N	\N
pdot2ybyfc0	uqefruvwdrj	13	\N	\N	\N
a7e860jrx5o	uqefruvwdrj	14	\N	\N	\N
zxh1oe1qx5t	uqefruvwdrj	15	\N	\N	\N
861gmcfwhia	uqefruvwdrj	16	\N	\N	\N
9yos6i0cjm3	uqefruvwdrj	17	\N	\N	\N
n3yigbe0k9v	uqefruvwdrj	18	\N	\N	\N
073buw1m70l	uqefruvwdrj	19	\N	\N	\N
nocobase-admin-menu	uqefruvwdrj	20	\N	\N	\N
prfw0qv3j86	prfw0qv3j86	0	f	properties	\N
kiub9a1d6kl	prfw0qv3j86	2	\N	\N	\N
7b0nw7tckru	prfw0qv3j86	3	\N	\N	\N
3wjttvlbvom	prfw0qv3j86	4	\N	\N	\N
7608d2qrms5	prfw0qv3j86	5	\N	\N	\N
adxntkyyx2m	prfw0qv3j86	6	\N	\N	\N
alnwl1ouj3h	prfw0qv3j86	7	\N	\N	\N
3gtgg35z6e8	prfw0qv3j86	8	\N	\N	\N
xfwxsmz494e	prfw0qv3j86	9	\N	\N	\N
vukfpwp37qn	prfw0qv3j86	10	\N	\N	\N
baqq2v2fong	prfw0qv3j86	11	\N	\N	\N
pdot2ybyfc0	prfw0qv3j86	12	\N	\N	\N
a7e860jrx5o	prfw0qv3j86	13	\N	\N	\N
zxh1oe1qx5t	prfw0qv3j86	14	\N	\N	\N
861gmcfwhia	prfw0qv3j86	15	\N	\N	\N
9yos6i0cjm3	prfw0qv3j86	16	\N	\N	\N
n3yigbe0k9v	prfw0qv3j86	17	\N	\N	\N
073buw1m70l	prfw0qv3j86	18	\N	\N	\N
nocobase-admin-menu	prfw0qv3j86	19	\N	\N	\N
eb1kzrwxlpo	prfw0qv3j86	1	\N	\N	1
9t4p5s7w6b5	9t4p5s7w6b5	0	f	properties	\N
qu64eoa7amg	9t4p5s7w6b5	1	\N	\N	1
imrhc9he5on	9t4p5s7w6b5	2	\N	\N	\N
82ikkgrog2y	qu64eoa7amg	2	\N	\N	\N
82ikkgrog2y	9t4p5s7w6b5	3	\N	\N	\N
mmj417nrjpa	qu64eoa7amg	3	\N	\N	\N
mmj417nrjpa	9t4p5s7w6b5	4	\N	\N	\N
lmgnrgroovk	qu64eoa7amg	4	\N	\N	\N
lmgnrgroovk	9t4p5s7w6b5	5	\N	\N	\N
4cx141n1lb4	qu64eoa7amg	5	\N	\N	\N
4cx141n1lb4	9t4p5s7w6b5	6	\N	\N	\N
k6pr2jh3wgd	qu64eoa7amg	6	\N	\N	\N
k6pr2jh3wgd	9t4p5s7w6b5	7	\N	\N	\N
hchm15rxv74	qu64eoa7amg	7	\N	\N	\N
hchm15rxv74	9t4p5s7w6b5	8	\N	\N	\N
073buw1m70l	qu64eoa7amg	8	\N	\N	\N
073buw1m70l	9t4p5s7w6b5	9	\N	\N	\N
nocobase-admin-menu	qu64eoa7amg	9	\N	\N	\N
nocobase-admin-menu	9t4p5s7w6b5	10	\N	\N	\N
qu64eoa7amg	qu64eoa7amg	0	f	properties	\N
imrhc9he5on	qu64eoa7amg	1	\N	\N	6
e3eaa6uq9t8	lylp2daxzr6	2	\N	\N	\N
beq12cybpaz	c8kzc0jfotm	2	\N	\N	\N
beq12cybpaz	lylp2daxzr6	3	\N	\N	\N
smd6vh6wzvh	c8kzc0jfotm	3	\N	\N	\N
smd6vh6wzvh	lylp2daxzr6	4	\N	\N	\N
dac2j2kt870	c8kzc0jfotm	4	\N	\N	\N
dac2j2kt870	lylp2daxzr6	5	\N	\N	\N
fq548i6jjul	c8kzc0jfotm	5	\N	\N	\N
fq548i6jjul	lylp2daxzr6	6	\N	\N	\N
b8e4crdaije	c8kzc0jfotm	6	\N	\N	\N
b8e4crdaije	lylp2daxzr6	7	\N	\N	\N
41zfs8bogys	c8kzc0jfotm	7	\N	\N	\N
41zfs8bogys	lylp2daxzr6	8	\N	\N	\N
073buw1m70l	c8kzc0jfotm	8	\N	\N	\N
073buw1m70l	lylp2daxzr6	9	\N	\N	\N
nocobase-admin-menu	c8kzc0jfotm	9	\N	\N	\N
nocobase-admin-menu	lylp2daxzr6	10	\N	\N	\N
e3eaa6uq9t8	c8kzc0jfotm	1	\N	\N	4
41zfs8bogys	ydsit0px4rd	14	\N	\N	\N
41zfs8bogys	un4uti49os0	15	\N	\N	\N
41zfs8bogys	hhlmur67sro	16	\N	\N	\N
41zfs8bogys	avdz4ojpjyi	16	\N	\N	\N
073buw1m70l	mk3xa4vi82o	13	\N	\N	\N
073buw1m70l	3yn0m2wrfox	14	\N	\N	\N
22pnzqtybji	5du82txc6va	2	\N	\N	\N
ik0zt15yup2	ik0zt15yup2	0	t	properties	\N
w1vttmfcjic	ik0zt15yup2	1	\N	\N	1
833uu3rb1nm	833uu3rb1nm	0	f	properties	\N
ik0zt15yup2	833uu3rb1nm	1	\N	\N	1
w1vttmfcjic	833uu3rb1nm	2	\N	\N	1
nocobase-admin-menu	833uu3rb1nm	3	\N	\N	\N
nocobase-admin-menu	ik0zt15yup2	2	\N	\N	\N
w1vttmfcjic	w1vttmfcjic	0	f	properties	\N
nocobase-admin-menu	w1vttmfcjic	1	\N	\N	3
f205ix4mjg8	f205ix4mjg8	0	f	properties	\N
fvx7g50y58n	f205ix4mjg8	1	\N	\N	1
1whdhzzrodk	1whdhzzrodk	0	f	properties	\N
f205ix4mjg8	1whdhzzrodk	1	\N	\N	1
fvx7g50y58n	1whdhzzrodk	2	\N	\N	1
f6vhj5hgult	f6vhj5hgult	0	f	properties	\N
1whdhzzrodk	f6vhj5hgult	1	\N	\N	1
f205ix4mjg8	f6vhj5hgult	2	\N	\N	1
fvx7g50y58n	f6vhj5hgult	3	\N	\N	1
09yy6b78jxi	09yy6b78jxi	0	f	properties	\N
1whdhzzrodk	09yy6b78jxi	1	\N	\N	2
f205ix4mjg8	09yy6b78jxi	2	\N	\N	2
fvx7g50y58n	09yy6b78jxi	3	\N	\N	2
mqma0oexw7v	mqma0oexw7v	0	f	properties	\N
09yy6b78jxi	mqma0oexw7v	1	\N	\N	1
1whdhzzrodk	mqma0oexw7v	2	\N	\N	1
f205ix4mjg8	mqma0oexw7v	3	\N	\N	1
fvx7g50y58n	mqma0oexw7v	4	\N	\N	1
22pnzqtybji	22pnzqtybji	0	f	properties	\N
mqma0oexw7v	22pnzqtybji	1	\N	\N	1
09yy6b78jxi	22pnzqtybji	2	\N	\N	1
1whdhzzrodk	22pnzqtybji	3	\N	\N	1
f205ix4mjg8	22pnzqtybji	4	\N	\N	1
fvx7g50y58n	22pnzqtybji	5	\N	\N	1
99wrtdh3vjb	99wrtdh3vjb	0	f	properties	\N
mqma0oexw7v	99wrtdh3vjb	1	\N	\N	2
09yy6b78jxi	99wrtdh3vjb	2	\N	\N	2
1whdhzzrodk	99wrtdh3vjb	3	\N	\N	2
f205ix4mjg8	99wrtdh3vjb	4	\N	\N	2
fvx7g50y58n	99wrtdh3vjb	5	\N	\N	2
833uu3rb1nm	09yy6b78jxi	4	\N	\N	\N
ik0zt15yup2	09yy6b78jxi	5	\N	\N	\N
w1vttmfcjic	09yy6b78jxi	6	\N	\N	\N
nocobase-admin-menu	09yy6b78jxi	7	\N	\N	\N
833uu3rb1nm	1whdhzzrodk	3	\N	\N	\N
ik0zt15yup2	1whdhzzrodk	4	\N	\N	\N
w1vttmfcjic	1whdhzzrodk	5	\N	\N	\N
nocobase-admin-menu	1whdhzzrodk	6	\N	\N	\N
833uu3rb1nm	22pnzqtybji	6	\N	\N	\N
ik0zt15yup2	22pnzqtybji	7	\N	\N	\N
w1vttmfcjic	22pnzqtybji	8	\N	\N	\N
nocobase-admin-menu	22pnzqtybji	9	\N	\N	\N
833uu3rb1nm	99wrtdh3vjb	6	\N	\N	\N
ik0zt15yup2	99wrtdh3vjb	7	\N	\N	\N
w1vttmfcjic	99wrtdh3vjb	8	\N	\N	\N
nocobase-admin-menu	99wrtdh3vjb	9	\N	\N	\N
833uu3rb1nm	f205ix4mjg8	2	\N	\N	\N
ik0zt15yup2	f205ix4mjg8	3	\N	\N	\N
w1vttmfcjic	f205ix4mjg8	4	\N	\N	\N
nocobase-admin-menu	f205ix4mjg8	5	\N	\N	\N
833uu3rb1nm	f6vhj5hgult	4	\N	\N	\N
ik0zt15yup2	f6vhj5hgult	5	\N	\N	\N
w1vttmfcjic	f6vhj5hgult	6	\N	\N	\N
nocobase-admin-menu	f6vhj5hgult	7	\N	\N	\N
ik0zt15yup2	fvx7g50y58n	2	\N	\N	\N
w1vttmfcjic	fvx7g50y58n	3	\N	\N	\N
nocobase-admin-menu	fvx7g50y58n	4	\N	\N	\N
833uu3rb1nm	mqma0oexw7v	5	\N	\N	\N
ik0zt15yup2	mqma0oexw7v	6	\N	\N	\N
w1vttmfcjic	mqma0oexw7v	7	\N	\N	\N
nocobase-admin-menu	mqma0oexw7v	8	\N	\N	\N
fvx7g50y58n	fvx7g50y58n	0	f	properties	\N
833uu3rb1nm	fvx7g50y58n	1	\N	\N	1
5du82txc6va	5du82txc6va	0	f	properties	\N
t1avimtuwpm	5du82txc6va	1	\N	\N	1
jvsn4hlvp5o	jvsn4hlvp5o	0	f	properties	\N
5du82txc6va	jvsn4hlvp5o	1	\N	\N	1
t1avimtuwpm	jvsn4hlvp5o	2	\N	\N	1
mqma0oexw7v	5du82txc6va	3	\N	\N	\N
09yy6b78jxi	5du82txc6va	4	\N	\N	\N
1whdhzzrodk	5du82txc6va	5	\N	\N	\N
f205ix4mjg8	5du82txc6va	6	\N	\N	\N
fvx7g50y58n	5du82txc6va	7	\N	\N	\N
833uu3rb1nm	5du82txc6va	8	\N	\N	\N
ik0zt15yup2	5du82txc6va	9	\N	\N	\N
w1vttmfcjic	5du82txc6va	10	\N	\N	\N
nocobase-admin-menu	5du82txc6va	11	\N	\N	\N
22pnzqtybji	jvsn4hlvp5o	3	\N	\N	\N
mqma0oexw7v	jvsn4hlvp5o	4	\N	\N	\N
09yy6b78jxi	jvsn4hlvp5o	5	\N	\N	\N
1whdhzzrodk	jvsn4hlvp5o	6	\N	\N	\N
f205ix4mjg8	jvsn4hlvp5o	7	\N	\N	\N
fvx7g50y58n	jvsn4hlvp5o	8	\N	\N	\N
833uu3rb1nm	jvsn4hlvp5o	9	\N	\N	\N
ik0zt15yup2	jvsn4hlvp5o	10	\N	\N	\N
w1vttmfcjic	jvsn4hlvp5o	11	\N	\N	\N
nocobase-admin-menu	jvsn4hlvp5o	12	\N	\N	\N
mqma0oexw7v	t1avimtuwpm	2	\N	\N	\N
09yy6b78jxi	t1avimtuwpm	3	\N	\N	\N
1whdhzzrodk	t1avimtuwpm	4	\N	\N	\N
f205ix4mjg8	t1avimtuwpm	5	\N	\N	\N
fvx7g50y58n	t1avimtuwpm	6	\N	\N	\N
833uu3rb1nm	t1avimtuwpm	7	\N	\N	\N
ik0zt15yup2	t1avimtuwpm	8	\N	\N	\N
w1vttmfcjic	t1avimtuwpm	9	\N	\N	\N
nocobase-admin-menu	t1avimtuwpm	10	\N	\N	\N
t1avimtuwpm	t1avimtuwpm	0	f	properties	\N
nmsro2sp378	nmsro2sp378	0	f	properties	\N
e4samnonhij	nmsro2sp378	1	\N	\N	1
j6v7p1dgvc9	j6v7p1dgvc9	0	f	properties	\N
nmsro2sp378	j6v7p1dgvc9	1	\N	\N	1
e4samnonhij	j6v7p1dgvc9	2	\N	\N	1
mqma0oexw7v	e4samnonhij	2	\N	\N	\N
09yy6b78jxi	e4samnonhij	3	\N	\N	\N
1whdhzzrodk	e4samnonhij	4	\N	\N	\N
f205ix4mjg8	e4samnonhij	5	\N	\N	\N
fvx7g50y58n	e4samnonhij	6	\N	\N	\N
833uu3rb1nm	e4samnonhij	7	\N	\N	\N
ik0zt15yup2	e4samnonhij	8	\N	\N	\N
w1vttmfcjic	e4samnonhij	9	\N	\N	\N
nocobase-admin-menu	e4samnonhij	10	\N	\N	\N
22pnzqtybji	j6v7p1dgvc9	3	\N	\N	\N
mqma0oexw7v	j6v7p1dgvc9	4	\N	\N	\N
09yy6b78jxi	j6v7p1dgvc9	5	\N	\N	\N
1whdhzzrodk	j6v7p1dgvc9	6	\N	\N	\N
f205ix4mjg8	j6v7p1dgvc9	7	\N	\N	\N
22pnzqtybji	t1avimtuwpm	1	\N	\N	2
fvx7g50y58n	j6v7p1dgvc9	8	\N	\N	\N
833uu3rb1nm	j6v7p1dgvc9	9	\N	\N	\N
ik0zt15yup2	j6v7p1dgvc9	10	\N	\N	\N
w1vttmfcjic	j6v7p1dgvc9	11	\N	\N	\N
nocobase-admin-menu	j6v7p1dgvc9	12	\N	\N	\N
22pnzqtybji	nmsro2sp378	2	\N	\N	\N
mqma0oexw7v	nmsro2sp378	3	\N	\N	\N
09yy6b78jxi	nmsro2sp378	4	\N	\N	\N
1whdhzzrodk	nmsro2sp378	5	\N	\N	\N
f205ix4mjg8	nmsro2sp378	6	\N	\N	\N
fvx7g50y58n	nmsro2sp378	7	\N	\N	\N
833uu3rb1nm	nmsro2sp378	8	\N	\N	\N
ik0zt15yup2	nmsro2sp378	9	\N	\N	\N
w1vttmfcjic	nmsro2sp378	10	\N	\N	\N
nocobase-admin-menu	nmsro2sp378	11	\N	\N	\N
e4samnonhij	e4samnonhij	0	f	properties	\N
mue77s53ug0	mue77s53ug0	0	f	properties	\N
zsylwgqg56a	mue77s53ug0	1	\N	\N	1
agy55hanha3	agy55hanha3	0	f	properties	\N
mue77s53ug0	agy55hanha3	1	\N	\N	1
zsylwgqg56a	agy55hanha3	2	\N	\N	1
sfa4kawo4ky	sfa4kawo4ky	0	f	properties	\N
agy55hanha3	sfa4kawo4ky	1	\N	\N	1
mue77s53ug0	sfa4kawo4ky	2	\N	\N	1
zsylwgqg56a	sfa4kawo4ky	3	\N	\N	1
4sqtmnjqy3l	4sqtmnjqy3l	0	f	properties	\N
sfa4kawo4ky	4sqtmnjqy3l	1	\N	\N	1
agy55hanha3	4sqtmnjqy3l	2	\N	\N	1
mue77s53ug0	4sqtmnjqy3l	3	\N	\N	1
zsylwgqg56a	4sqtmnjqy3l	4	\N	\N	1
eupy33wyahw	eupy33wyahw	0	f	properties	\N
sfa4kawo4ky	eupy33wyahw	1	\N	\N	2
agy55hanha3	eupy33wyahw	2	\N	\N	2
mue77s53ug0	eupy33wyahw	3	\N	\N	2
zsylwgqg56a	eupy33wyahw	4	\N	\N	2
wklx0s4mt5t	mue77s53ug0	2	\N	\N	\N
wklx0s4mt5t	agy55hanha3	3	\N	\N	\N
wklx0s4mt5t	sfa4kawo4ky	4	\N	\N	\N
wklx0s4mt5t	4sqtmnjqy3l	5	\N	\N	\N
wklx0s4mt5t	eupy33wyahw	5	\N	\N	\N
yt77srlsive	zsylwgqg56a	2	\N	\N	\N
yt77srlsive	mue77s53ug0	3	\N	\N	\N
yt77srlsive	agy55hanha3	4	\N	\N	\N
yt77srlsive	sfa4kawo4ky	5	\N	\N	\N
yt77srlsive	4sqtmnjqy3l	6	\N	\N	\N
yt77srlsive	eupy33wyahw	6	\N	\N	\N
826yic3e7bk	zsylwgqg56a	3	\N	\N	\N
826yic3e7bk	mue77s53ug0	4	\N	\N	\N
826yic3e7bk	agy55hanha3	5	\N	\N	\N
826yic3e7bk	sfa4kawo4ky	6	\N	\N	\N
sm99m0bwdty	sm99m0bwdty	0	f	properties	\N
826yic3e7bk	4sqtmnjqy3l	7	\N	\N	\N
826yic3e7bk	eupy33wyahw	7	\N	\N	\N
9c1c2orwoq7	zsylwgqg56a	4	\N	\N	\N
9c1c2orwoq7	mue77s53ug0	5	\N	\N	\N
9c1c2orwoq7	agy55hanha3	6	\N	\N	\N
9c1c2orwoq7	sfa4kawo4ky	7	\N	\N	\N
9c1c2orwoq7	4sqtmnjqy3l	8	\N	\N	\N
9c1c2orwoq7	eupy33wyahw	8	\N	\N	\N
dknwg9949yr	zsylwgqg56a	5	\N	\N	\N
dknwg9949yr	mue77s53ug0	6	\N	\N	\N
dknwg9949yr	agy55hanha3	7	\N	\N	\N
dknwg9949yr	sfa4kawo4ky	8	\N	\N	\N
dknwg9949yr	4sqtmnjqy3l	9	\N	\N	\N
dknwg9949yr	eupy33wyahw	9	\N	\N	\N
tw82t2es2ty	zsylwgqg56a	6	\N	\N	\N
tw82t2es2ty	mue77s53ug0	7	\N	\N	\N
tw82t2es2ty	agy55hanha3	8	\N	\N	\N
tw82t2es2ty	sfa4kawo4ky	9	\N	\N	\N
tw82t2es2ty	4sqtmnjqy3l	10	\N	\N	\N
tw82t2es2ty	eupy33wyahw	10	\N	\N	\N
culzjbos9r3	zsylwgqg56a	7	\N	\N	\N
culzjbos9r3	mue77s53ug0	8	\N	\N	\N
culzjbos9r3	agy55hanha3	9	\N	\N	\N
culzjbos9r3	sfa4kawo4ky	10	\N	\N	\N
culzjbos9r3	4sqtmnjqy3l	11	\N	\N	\N
culzjbos9r3	eupy33wyahw	11	\N	\N	\N
3owowmpqg3i	zsylwgqg56a	8	\N	\N	\N
3owowmpqg3i	mue77s53ug0	9	\N	\N	\N
3owowmpqg3i	agy55hanha3	10	\N	\N	\N
3owowmpqg3i	sfa4kawo4ky	11	\N	\N	\N
3owowmpqg3i	4sqtmnjqy3l	12	\N	\N	\N
3owowmpqg3i	eupy33wyahw	12	\N	\N	\N
wu05wqno6t2	zsylwgqg56a	9	\N	\N	\N
wu05wqno6t2	mue77s53ug0	10	\N	\N	\N
wu05wqno6t2	agy55hanha3	11	\N	\N	\N
wu05wqno6t2	sfa4kawo4ky	12	\N	\N	\N
wu05wqno6t2	4sqtmnjqy3l	13	\N	\N	\N
wu05wqno6t2	eupy33wyahw	13	\N	\N	\N
fq548i6jjul	zsylwgqg56a	10	\N	\N	\N
sgipr99uvpy	sgipr99uvpy	0	f	properties	\N
y6sl19mjcff	sgipr99uvpy	1	\N	\N	1
fq548i6jjul	mue77s53ug0	11	\N	\N	\N
fq548i6jjul	agy55hanha3	12	\N	\N	\N
22pnzqtybji	sgipr99uvpy	2	\N	\N	\N
fq548i6jjul	sfa4kawo4ky	13	\N	\N	\N
mqma0oexw7v	y6sl19mjcff	2	\N	\N	\N
mqma0oexw7v	sgipr99uvpy	3	\N	\N	\N
fq548i6jjul	4sqtmnjqy3l	14	\N	\N	\N
09yy6b78jxi	y6sl19mjcff	3	\N	\N	\N
09yy6b78jxi	sgipr99uvpy	4	\N	\N	\N
fq548i6jjul	eupy33wyahw	14	\N	\N	\N
1whdhzzrodk	y6sl19mjcff	4	\N	\N	\N
1whdhzzrodk	sgipr99uvpy	5	\N	\N	\N
b8e4crdaije	zsylwgqg56a	11	\N	\N	\N
f205ix4mjg8	y6sl19mjcff	5	\N	\N	\N
f205ix4mjg8	sgipr99uvpy	6	\N	\N	\N
b8e4crdaije	mue77s53ug0	12	\N	\N	\N
fvx7g50y58n	y6sl19mjcff	6	\N	\N	\N
fvx7g50y58n	sgipr99uvpy	7	\N	\N	\N
b8e4crdaije	agy55hanha3	13	\N	\N	\N
833uu3rb1nm	y6sl19mjcff	7	\N	\N	\N
833uu3rb1nm	sgipr99uvpy	8	\N	\N	\N
b8e4crdaije	sfa4kawo4ky	14	\N	\N	\N
ik0zt15yup2	y6sl19mjcff	8	\N	\N	\N
ik0zt15yup2	sgipr99uvpy	9	\N	\N	\N
b8e4crdaije	4sqtmnjqy3l	15	\N	\N	\N
w1vttmfcjic	y6sl19mjcff	9	\N	\N	\N
w1vttmfcjic	sgipr99uvpy	10	\N	\N	\N
b8e4crdaije	eupy33wyahw	15	\N	\N	\N
nocobase-admin-menu	y6sl19mjcff	10	\N	\N	\N
nocobase-admin-menu	sgipr99uvpy	11	\N	\N	\N
41zfs8bogys	zsylwgqg56a	12	\N	\N	\N
y6sl19mjcff	y6sl19mjcff	0	f	properties	\N
62kkj5k4vhn	62kkj5k4vhn	0	f	properties	\N
cjgytsf96xm	62kkj5k4vhn	1	\N	\N	1
cjgytsf96xm	cjgytsf96xm	0	f	properties	\N
04nart2ippj	04nart2ippj	0	f	properties	\N
5idf4nxla3u	5idf4nxla3u	0	f	properties	\N
22pnzqtybji	e4samnonhij	1	\N	\N	7
22pnzqtybji	y6sl19mjcff	1	\N	\N	10
41zfs8bogys	mue77s53ug0	13	\N	\N	\N
22pnzqtybji	62kkj5k4vhn	2	\N	\N	\N
41zfs8bogys	agy55hanha3	14	\N	\N	\N
mqma0oexw7v	cjgytsf96xm	2	\N	\N	\N
mqma0oexw7v	62kkj5k4vhn	3	\N	\N	\N
41zfs8bogys	sfa4kawo4ky	15	\N	\N	\N
09yy6b78jxi	cjgytsf96xm	3	\N	\N	\N
09yy6b78jxi	62kkj5k4vhn	4	\N	\N	\N
41zfs8bogys	4sqtmnjqy3l	16	\N	\N	\N
1whdhzzrodk	cjgytsf96xm	4	\N	\N	\N
1whdhzzrodk	62kkj5k4vhn	5	\N	\N	\N
41zfs8bogys	eupy33wyahw	16	\N	\N	\N
f205ix4mjg8	cjgytsf96xm	5	\N	\N	\N
f205ix4mjg8	62kkj5k4vhn	6	\N	\N	\N
073buw1m70l	zsylwgqg56a	13	\N	\N	\N
fvx7g50y58n	cjgytsf96xm	6	\N	\N	\N
fvx7g50y58n	62kkj5k4vhn	7	\N	\N	\N
073buw1m70l	mue77s53ug0	14	\N	\N	\N
833uu3rb1nm	cjgytsf96xm	7	\N	\N	\N
833uu3rb1nm	62kkj5k4vhn	8	\N	\N	\N
073buw1m70l	agy55hanha3	15	\N	\N	\N
ik0zt15yup2	cjgytsf96xm	8	\N	\N	\N
ik0zt15yup2	62kkj5k4vhn	9	\N	\N	\N
073buw1m70l	sfa4kawo4ky	16	\N	\N	\N
w1vttmfcjic	cjgytsf96xm	9	\N	\N	\N
w1vttmfcjic	62kkj5k4vhn	10	\N	\N	\N
073buw1m70l	4sqtmnjqy3l	17	\N	\N	\N
nocobase-admin-menu	cjgytsf96xm	10	\N	\N	\N
nocobase-admin-menu	62kkj5k4vhn	11	\N	\N	\N
073buw1m70l	eupy33wyahw	17	\N	\N	\N
nocobase-admin-menu	zsylwgqg56a	14	\N	\N	\N
qujstuiy3k2	qujstuiy3k2	0	f	properties	\N
udmmaahgp9z	qujstuiy3k2	1	\N	\N	1
p3st627y95d	p3st627y95d	0	f	properties	\N
qujstuiy3k2	p3st627y95d	1	\N	\N	1
udmmaahgp9z	p3st627y95d	2	\N	\N	1
22pnzqtybji	qujstuiy3k2	2	\N	\N	\N
22pnzqtybji	p3st627y95d	3	\N	\N	\N
mqma0oexw7v	udmmaahgp9z	2	\N	\N	\N
mqma0oexw7v	qujstuiy3k2	3	\N	\N	\N
mqma0oexw7v	p3st627y95d	4	\N	\N	\N
09yy6b78jxi	udmmaahgp9z	3	\N	\N	\N
09yy6b78jxi	qujstuiy3k2	4	\N	\N	\N
09yy6b78jxi	p3st627y95d	5	\N	\N	\N
1whdhzzrodk	udmmaahgp9z	4	\N	\N	\N
1whdhzzrodk	qujstuiy3k2	5	\N	\N	\N
1whdhzzrodk	p3st627y95d	6	\N	\N	\N
f205ix4mjg8	udmmaahgp9z	5	\N	\N	\N
f205ix4mjg8	qujstuiy3k2	6	\N	\N	\N
f205ix4mjg8	p3st627y95d	7	\N	\N	\N
fvx7g50y58n	udmmaahgp9z	6	\N	\N	\N
fvx7g50y58n	qujstuiy3k2	7	\N	\N	\N
fvx7g50y58n	p3st627y95d	8	\N	\N	\N
833uu3rb1nm	udmmaahgp9z	7	\N	\N	\N
833uu3rb1nm	qujstuiy3k2	8	\N	\N	\N
833uu3rb1nm	p3st627y95d	9	\N	\N	\N
ik0zt15yup2	udmmaahgp9z	8	\N	\N	\N
ik0zt15yup2	qujstuiy3k2	9	\N	\N	\N
ik0zt15yup2	p3st627y95d	10	\N	\N	\N
w1vttmfcjic	udmmaahgp9z	9	\N	\N	\N
w1vttmfcjic	qujstuiy3k2	10	\N	\N	\N
w1vttmfcjic	p3st627y95d	11	\N	\N	\N
nocobase-admin-menu	udmmaahgp9z	10	\N	\N	\N
nocobase-admin-menu	qujstuiy3k2	11	\N	\N	\N
nocobase-admin-menu	p3st627y95d	12	\N	\N	\N
udmmaahgp9z	udmmaahgp9z	0	f	properties	\N
nocobase-admin-menu	mue77s53ug0	15	\N	\N	\N
e43yauc7npg	e43yauc7npg	0	f	properties	\N
jjset43gbyy	e43yauc7npg	1	\N	\N	1
nocobase-admin-menu	agy55hanha3	16	\N	\N	\N
nocobase-admin-menu	sfa4kawo4ky	17	\N	\N	\N
nocobase-admin-menu	4sqtmnjqy3l	18	\N	\N	\N
nocobase-admin-menu	eupy33wyahw	18	\N	\N	\N
zsylwgqg56a	zsylwgqg56a	0	f	properties	\N
wklx0s4mt5t	zsylwgqg56a	1	\N	\N	1
n1q88j8ccbz	n1q88j8ccbz	0	f	properties	\N
8bk7zmz6xb6	n1q88j8ccbz	1	\N	\N	1
nlou4s5aouj	nlou4s5aouj	0	f	properties	\N
n1q88j8ccbz	nlou4s5aouj	1	\N	\N	1
8bk7zmz6xb6	nlou4s5aouj	2	\N	\N	1
4sqtmnjqy3l	n1q88j8ccbz	2	\N	\N	\N
4sqtmnjqy3l	nlou4s5aouj	3	\N	\N	\N
sfa4kawo4ky	8bk7zmz6xb6	2	\N	\N	\N
sfa4kawo4ky	n1q88j8ccbz	3	\N	\N	\N
sfa4kawo4ky	nlou4s5aouj	4	\N	\N	\N
agy55hanha3	8bk7zmz6xb6	3	\N	\N	\N
agy55hanha3	n1q88j8ccbz	4	\N	\N	\N
jjgq2nh2ik3	jjgq2nh2ik3	0	f	properties	\N
1bwhaq1v3y8	jjgq2nh2ik3	1	\N	\N	1
i0bqeajbvwo	jjgq2nh2ik3	2	\N	\N	\N
pdot2ybyfc0	1bwhaq1v3y8	2	\N	\N	\N
pdot2ybyfc0	jjgq2nh2ik3	3	\N	\N	\N
a7e860jrx5o	1bwhaq1v3y8	3	\N	\N	\N
a7e860jrx5o	jjgq2nh2ik3	4	\N	\N	\N
zxh1oe1qx5t	1bwhaq1v3y8	4	\N	\N	\N
zxh1oe1qx5t	jjgq2nh2ik3	5	\N	\N	\N
861gmcfwhia	1bwhaq1v3y8	5	\N	\N	\N
861gmcfwhia	jjgq2nh2ik3	6	\N	\N	\N
9yos6i0cjm3	1bwhaq1v3y8	6	\N	\N	\N
9yos6i0cjm3	jjgq2nh2ik3	7	\N	\N	\N
n3yigbe0k9v	1bwhaq1v3y8	7	\N	\N	\N
n3yigbe0k9v	jjgq2nh2ik3	8	\N	\N	\N
073buw1m70l	1bwhaq1v3y8	8	\N	\N	\N
073buw1m70l	jjgq2nh2ik3	9	\N	\N	\N
nocobase-admin-menu	1bwhaq1v3y8	9	\N	\N	\N
nocobase-admin-menu	jjgq2nh2ik3	10	\N	\N	\N
1bwhaq1v3y8	1bwhaq1v3y8	0	f	properties	\N
i0bqeajbvwo	1bwhaq1v3y8	1	\N	\N	7
5pjzqrzcwxl	5pjzqrzcwxl	0	f	properties	\N
vrwoxsmqz7z	5pjzqrzcwxl	1	\N	\N	1
i0bqeajbvwo	5pjzqrzcwxl	2	\N	\N	\N
pdot2ybyfc0	vrwoxsmqz7z	2	\N	\N	\N
pdot2ybyfc0	5pjzqrzcwxl	3	\N	\N	\N
a7e860jrx5o	vrwoxsmqz7z	3	\N	\N	\N
a7e860jrx5o	5pjzqrzcwxl	4	\N	\N	\N
zxh1oe1qx5t	vrwoxsmqz7z	4	\N	\N	\N
zxh1oe1qx5t	5pjzqrzcwxl	5	\N	\N	\N
861gmcfwhia	vrwoxsmqz7z	5	\N	\N	\N
861gmcfwhia	5pjzqrzcwxl	6	\N	\N	\N
9yos6i0cjm3	vrwoxsmqz7z	6	\N	\N	\N
9yos6i0cjm3	5pjzqrzcwxl	7	\N	\N	\N
n3yigbe0k9v	vrwoxsmqz7z	7	\N	\N	\N
n3yigbe0k9v	5pjzqrzcwxl	8	\N	\N	\N
vrwoxsmqz7z	vrwoxsmqz7z	0	f	properties	\N
i0bqeajbvwo	vrwoxsmqz7z	1	\N	\N	8
jjset43gbyy	jjset43gbyy	0	f	properties	\N
agy55hanha3	nlou4s5aouj	5	\N	\N	\N
22pnzqtybji	cjgytsf96xm	1	\N	\N	11
22pnzqtybji	udmmaahgp9z	1	\N	\N	12
073buw1m70l	vrwoxsmqz7z	8	\N	\N	\N
073buw1m70l	5pjzqrzcwxl	9	\N	\N	\N
nocobase-admin-menu	vrwoxsmqz7z	9	\N	\N	\N
nocobase-admin-menu	5pjzqrzcwxl	10	\N	\N	\N
u4x9wfxqbko	u4x9wfxqbko	0	f	properties	\N
o8jbt34ilny	u4x9wfxqbko	1	\N	\N	1
i0bqeajbvwo	u4x9wfxqbko	2	\N	\N	\N
pdot2ybyfc0	o8jbt34ilny	2	\N	\N	\N
pdot2ybyfc0	u4x9wfxqbko	3	\N	\N	\N
a7e860jrx5o	o8jbt34ilny	3	\N	\N	\N
a7e860jrx5o	u4x9wfxqbko	4	\N	\N	\N
zxh1oe1qx5t	o8jbt34ilny	4	\N	\N	\N
zxh1oe1qx5t	u4x9wfxqbko	5	\N	\N	\N
861gmcfwhia	o8jbt34ilny	5	\N	\N	\N
861gmcfwhia	u4x9wfxqbko	6	\N	\N	\N
9yos6i0cjm3	o8jbt34ilny	6	\N	\N	\N
9yos6i0cjm3	u4x9wfxqbko	7	\N	\N	\N
n3yigbe0k9v	o8jbt34ilny	7	\N	\N	\N
n3yigbe0k9v	u4x9wfxqbko	8	\N	\N	\N
073buw1m70l	o8jbt34ilny	8	\N	\N	\N
073buw1m70l	u4x9wfxqbko	9	\N	\N	\N
nocobase-admin-menu	o8jbt34ilny	9	\N	\N	\N
nocobase-admin-menu	u4x9wfxqbko	10	\N	\N	\N
o8jbt34ilny	o8jbt34ilny	0	f	properties	\N
3dk4jf9qcgo	3dk4jf9qcgo	0	f	properties	\N
i0bqeajbvwo	e43yauc7npg	2	\N	\N	\N
pdot2ybyfc0	jjset43gbyy	2	\N	\N	\N
pdot2ybyfc0	e43yauc7npg	3	\N	\N	\N
a7e860jrx5o	jjset43gbyy	3	\N	\N	\N
a7e860jrx5o	e43yauc7npg	4	\N	\N	\N
zxh1oe1qx5t	jjset43gbyy	4	\N	\N	\N
zxh1oe1qx5t	e43yauc7npg	5	\N	\N	\N
861gmcfwhia	jjset43gbyy	5	\N	\N	\N
861gmcfwhia	e43yauc7npg	6	\N	\N	\N
9yos6i0cjm3	jjset43gbyy	6	\N	\N	\N
9yos6i0cjm3	e43yauc7npg	7	\N	\N	\N
n3yigbe0k9v	jjset43gbyy	7	\N	\N	\N
n3yigbe0k9v	e43yauc7npg	8	\N	\N	\N
073buw1m70l	jjset43gbyy	8	\N	\N	\N
073buw1m70l	e43yauc7npg	9	\N	\N	\N
nocobase-admin-menu	jjset43gbyy	9	\N	\N	\N
nocobase-admin-menu	e43yauc7npg	10	\N	\N	\N
i0bqeajbvwo	o8jbt34ilny	1	\N	\N	10
i0bqeajbvwo	jjset43gbyy	1	\N	\N	9
iibr9bsne2i	iibr9bsne2i	0	f	properties	\N
zq78mhjzir3	iibr9bsne2i	1	\N	\N	1
22rasa1ixp1	22rasa1ixp1	0	f	properties	\N
iibr9bsne2i	22rasa1ixp1	1	\N	\N	1
zq78mhjzir3	22rasa1ixp1	2	\N	\N	1
3qm94lpqqbi	iibr9bsne2i	2	\N	\N	\N
3qm94lpqqbi	22rasa1ixp1	3	\N	\N	\N
kiub9a1d6kl	zq78mhjzir3	2	\N	\N	\N
kiub9a1d6kl	iibr9bsne2i	3	\N	\N	\N
kiub9a1d6kl	22rasa1ixp1	4	\N	\N	\N
7b0nw7tckru	zq78mhjzir3	3	\N	\N	\N
7b0nw7tckru	iibr9bsne2i	4	\N	\N	\N
7b0nw7tckru	22rasa1ixp1	5	\N	\N	\N
3wjttvlbvom	zq78mhjzir3	4	\N	\N	\N
3wjttvlbvom	iibr9bsne2i	5	\N	\N	\N
3wjttvlbvom	22rasa1ixp1	6	\N	\N	\N
7608d2qrms5	zq78mhjzir3	5	\N	\N	\N
7608d2qrms5	iibr9bsne2i	6	\N	\N	\N
7608d2qrms5	22rasa1ixp1	7	\N	\N	\N
adxntkyyx2m	zq78mhjzir3	6	\N	\N	\N
adxntkyyx2m	iibr9bsne2i	7	\N	\N	\N
adxntkyyx2m	22rasa1ixp1	8	\N	\N	\N
alnwl1ouj3h	zq78mhjzir3	7	\N	\N	\N
alnwl1ouj3h	iibr9bsne2i	8	\N	\N	\N
alnwl1ouj3h	22rasa1ixp1	9	\N	\N	\N
3gtgg35z6e8	zq78mhjzir3	8	\N	\N	\N
3gtgg35z6e8	iibr9bsne2i	9	\N	\N	\N
3gtgg35z6e8	22rasa1ixp1	10	\N	\N	\N
xfwxsmz494e	zq78mhjzir3	9	\N	\N	\N
xfwxsmz494e	iibr9bsne2i	10	\N	\N	\N
xfwxsmz494e	22rasa1ixp1	11	\N	\N	\N
vukfpwp37qn	zq78mhjzir3	10	\N	\N	\N
vukfpwp37qn	iibr9bsne2i	11	\N	\N	\N
vukfpwp37qn	22rasa1ixp1	12	\N	\N	\N
baqq2v2fong	zq78mhjzir3	11	\N	\N	\N
baqq2v2fong	iibr9bsne2i	12	\N	\N	\N
baqq2v2fong	22rasa1ixp1	13	\N	\N	\N
pdot2ybyfc0	zq78mhjzir3	12	\N	\N	\N
pdot2ybyfc0	iibr9bsne2i	13	\N	\N	\N
pdot2ybyfc0	22rasa1ixp1	14	\N	\N	\N
a7e860jrx5o	zq78mhjzir3	13	\N	\N	\N
a7e860jrx5o	iibr9bsne2i	14	\N	\N	\N
a7e860jrx5o	22rasa1ixp1	15	\N	\N	\N
zxh1oe1qx5t	zq78mhjzir3	14	\N	\N	\N
zxh1oe1qx5t	iibr9bsne2i	15	\N	\N	\N
zxh1oe1qx5t	22rasa1ixp1	16	\N	\N	\N
861gmcfwhia	zq78mhjzir3	15	\N	\N	\N
861gmcfwhia	iibr9bsne2i	16	\N	\N	\N
861gmcfwhia	22rasa1ixp1	17	\N	\N	\N
9yos6i0cjm3	zq78mhjzir3	16	\N	\N	\N
9yos6i0cjm3	iibr9bsne2i	17	\N	\N	\N
9yos6i0cjm3	22rasa1ixp1	18	\N	\N	\N
n3yigbe0k9v	zq78mhjzir3	17	\N	\N	\N
n3yigbe0k9v	iibr9bsne2i	18	\N	\N	\N
n3yigbe0k9v	22rasa1ixp1	19	\N	\N	\N
073buw1m70l	zq78mhjzir3	18	\N	\N	\N
073buw1m70l	iibr9bsne2i	19	\N	\N	\N
073buw1m70l	22rasa1ixp1	20	\N	\N	\N
nocobase-admin-menu	zq78mhjzir3	19	\N	\N	\N
nocobase-admin-menu	iibr9bsne2i	20	\N	\N	\N
nocobase-admin-menu	22rasa1ixp1	21	\N	\N	\N
zq78mhjzir3	zq78mhjzir3	0	f	properties	\N
3qm94lpqqbi	zq78mhjzir3	1	\N	\N	3
0z89q32g4ef	0z89q32g4ef	0	f	properties	\N
3dk4jf9qcgo	0z89q32g4ef	1	\N	\N	1
3e2mxifwrgn	3e2mxifwrgn	0	f	properties	\N
0z89q32g4ef	3e2mxifwrgn	1	\N	\N	1
3dk4jf9qcgo	3e2mxifwrgn	2	\N	\N	1
3qm94lpqqbi	0z89q32g4ef	2	\N	\N	\N
3qm94lpqqbi	3e2mxifwrgn	3	\N	\N	\N
kiub9a1d6kl	3dk4jf9qcgo	2	\N	\N	\N
kiub9a1d6kl	0z89q32g4ef	3	\N	\N	\N
kiub9a1d6kl	3e2mxifwrgn	4	\N	\N	\N
7b0nw7tckru	3dk4jf9qcgo	3	\N	\N	\N
7b0nw7tckru	0z89q32g4ef	4	\N	\N	\N
7b0nw7tckru	3e2mxifwrgn	5	\N	\N	\N
3wjttvlbvom	3dk4jf9qcgo	4	\N	\N	\N
3wjttvlbvom	0z89q32g4ef	5	\N	\N	\N
3wjttvlbvom	3e2mxifwrgn	6	\N	\N	\N
7608d2qrms5	3dk4jf9qcgo	5	\N	\N	\N
7608d2qrms5	0z89q32g4ef	6	\N	\N	\N
7608d2qrms5	3e2mxifwrgn	7	\N	\N	\N
adxntkyyx2m	3dk4jf9qcgo	6	\N	\N	\N
3qm94lpqqbi	3dk4jf9qcgo	1	\N	\N	4
mue77s53ug0	8bk7zmz6xb6	4	\N	\N	\N
mue77s53ug0	n1q88j8ccbz	5	\N	\N	\N
mue77s53ug0	nlou4s5aouj	6	\N	\N	\N
zsylwgqg56a	8bk7zmz6xb6	5	\N	\N	\N
zsylwgqg56a	n1q88j8ccbz	6	\N	\N	\N
adxntkyyx2m	0z89q32g4ef	7	\N	\N	\N
adxntkyyx2m	3e2mxifwrgn	8	\N	\N	\N
alnwl1ouj3h	3dk4jf9qcgo	7	\N	\N	\N
alnwl1ouj3h	0z89q32g4ef	8	\N	\N	\N
alnwl1ouj3h	3e2mxifwrgn	9	\N	\N	\N
3gtgg35z6e8	3dk4jf9qcgo	8	\N	\N	\N
3gtgg35z6e8	0z89q32g4ef	9	\N	\N	\N
3gtgg35z6e8	3e2mxifwrgn	10	\N	\N	\N
xfwxsmz494e	3dk4jf9qcgo	9	\N	\N	\N
xfwxsmz494e	0z89q32g4ef	10	\N	\N	\N
xfwxsmz494e	3e2mxifwrgn	11	\N	\N	\N
vukfpwp37qn	3dk4jf9qcgo	10	\N	\N	\N
vukfpwp37qn	0z89q32g4ef	11	\N	\N	\N
vukfpwp37qn	3e2mxifwrgn	12	\N	\N	\N
baqq2v2fong	3dk4jf9qcgo	11	\N	\N	\N
baqq2v2fong	0z89q32g4ef	12	\N	\N	\N
baqq2v2fong	3e2mxifwrgn	13	\N	\N	\N
pdot2ybyfc0	3dk4jf9qcgo	12	\N	\N	\N
pdot2ybyfc0	0z89q32g4ef	13	\N	\N	\N
pdot2ybyfc0	3e2mxifwrgn	14	\N	\N	\N
a7e860jrx5o	3dk4jf9qcgo	13	\N	\N	\N
a7e860jrx5o	0z89q32g4ef	14	\N	\N	\N
a7e860jrx5o	3e2mxifwrgn	15	\N	\N	\N
zxh1oe1qx5t	3dk4jf9qcgo	14	\N	\N	\N
zxh1oe1qx5t	0z89q32g4ef	15	\N	\N	\N
zxh1oe1qx5t	3e2mxifwrgn	16	\N	\N	\N
861gmcfwhia	3dk4jf9qcgo	15	\N	\N	\N
861gmcfwhia	0z89q32g4ef	16	\N	\N	\N
861gmcfwhia	3e2mxifwrgn	17	\N	\N	\N
9yos6i0cjm3	3dk4jf9qcgo	16	\N	\N	\N
9yos6i0cjm3	0z89q32g4ef	17	\N	\N	\N
9yos6i0cjm3	3e2mxifwrgn	18	\N	\N	\N
n3yigbe0k9v	3dk4jf9qcgo	17	\N	\N	\N
n3yigbe0k9v	0z89q32g4ef	18	\N	\N	\N
n3yigbe0k9v	3e2mxifwrgn	19	\N	\N	\N
073buw1m70l	3dk4jf9qcgo	18	\N	\N	\N
073buw1m70l	0z89q32g4ef	19	\N	\N	\N
073buw1m70l	3e2mxifwrgn	20	\N	\N	\N
nocobase-admin-menu	3dk4jf9qcgo	19	\N	\N	\N
nocobase-admin-menu	0z89q32g4ef	20	\N	\N	\N
nocobase-admin-menu	3e2mxifwrgn	21	\N	\N	\N
t216s3mm5pg	t216s3mm5pg	0	f	properties	\N
t4dc144nsfl	t216s3mm5pg	1	\N	\N	1
ubyg54x0z7j	ubyg54x0z7j	0	f	properties	\N
t216s3mm5pg	ubyg54x0z7j	1	\N	\N	1
t4dc144nsfl	ubyg54x0z7j	2	\N	\N	1
3qm94lpqqbi	t216s3mm5pg	2	\N	\N	\N
3qm94lpqqbi	ubyg54x0z7j	3	\N	\N	\N
kiub9a1d6kl	t4dc144nsfl	2	\N	\N	\N
kiub9a1d6kl	t216s3mm5pg	3	\N	\N	\N
kiub9a1d6kl	ubyg54x0z7j	4	\N	\N	\N
7b0nw7tckru	t4dc144nsfl	3	\N	\N	\N
7b0nw7tckru	t216s3mm5pg	4	\N	\N	\N
7b0nw7tckru	ubyg54x0z7j	5	\N	\N	\N
3wjttvlbvom	t4dc144nsfl	4	\N	\N	\N
3wjttvlbvom	t216s3mm5pg	5	\N	\N	\N
3wjttvlbvom	ubyg54x0z7j	6	\N	\N	\N
7608d2qrms5	t4dc144nsfl	5	\N	\N	\N
7608d2qrms5	t216s3mm5pg	6	\N	\N	\N
7608d2qrms5	ubyg54x0z7j	7	\N	\N	\N
adxntkyyx2m	t4dc144nsfl	6	\N	\N	\N
adxntkyyx2m	t216s3mm5pg	7	\N	\N	\N
adxntkyyx2m	ubyg54x0z7j	8	\N	\N	\N
alnwl1ouj3h	t4dc144nsfl	7	\N	\N	\N
alnwl1ouj3h	t216s3mm5pg	8	\N	\N	\N
alnwl1ouj3h	ubyg54x0z7j	9	\N	\N	\N
3gtgg35z6e8	t4dc144nsfl	8	\N	\N	\N
3gtgg35z6e8	t216s3mm5pg	9	\N	\N	\N
3gtgg35z6e8	ubyg54x0z7j	10	\N	\N	\N
xfwxsmz494e	t4dc144nsfl	9	\N	\N	\N
xfwxsmz494e	t216s3mm5pg	10	\N	\N	\N
xfwxsmz494e	ubyg54x0z7j	11	\N	\N	\N
vukfpwp37qn	t4dc144nsfl	10	\N	\N	\N
vukfpwp37qn	t216s3mm5pg	11	\N	\N	\N
vukfpwp37qn	ubyg54x0z7j	12	\N	\N	\N
baqq2v2fong	t4dc144nsfl	11	\N	\N	\N
baqq2v2fong	t216s3mm5pg	12	\N	\N	\N
baqq2v2fong	ubyg54x0z7j	13	\N	\N	\N
pdot2ybyfc0	t4dc144nsfl	12	\N	\N	\N
pdot2ybyfc0	t216s3mm5pg	13	\N	\N	\N
pdot2ybyfc0	ubyg54x0z7j	14	\N	\N	\N
a7e860jrx5o	t4dc144nsfl	13	\N	\N	\N
a7e860jrx5o	t216s3mm5pg	14	\N	\N	\N
a7e860jrx5o	ubyg54x0z7j	15	\N	\N	\N
zxh1oe1qx5t	t4dc144nsfl	14	\N	\N	\N
zxh1oe1qx5t	t216s3mm5pg	15	\N	\N	\N
zxh1oe1qx5t	ubyg54x0z7j	16	\N	\N	\N
861gmcfwhia	t4dc144nsfl	15	\N	\N	\N
861gmcfwhia	t216s3mm5pg	16	\N	\N	\N
861gmcfwhia	ubyg54x0z7j	17	\N	\N	\N
9yos6i0cjm3	t4dc144nsfl	16	\N	\N	\N
9yos6i0cjm3	t216s3mm5pg	17	\N	\N	\N
9yos6i0cjm3	ubyg54x0z7j	18	\N	\N	\N
n3yigbe0k9v	t4dc144nsfl	17	\N	\N	\N
n3yigbe0k9v	t216s3mm5pg	18	\N	\N	\N
n3yigbe0k9v	ubyg54x0z7j	19	\N	\N	\N
073buw1m70l	t4dc144nsfl	18	\N	\N	\N
073buw1m70l	t216s3mm5pg	19	\N	\N	\N
073buw1m70l	ubyg54x0z7j	20	\N	\N	\N
nocobase-admin-menu	t4dc144nsfl	19	\N	\N	\N
nocobase-admin-menu	t216s3mm5pg	20	\N	\N	\N
nocobase-admin-menu	ubyg54x0z7j	21	\N	\N	\N
t4dc144nsfl	t4dc144nsfl	0	f	properties	\N
3qm94lpqqbi	t4dc144nsfl	1	\N	\N	5
zsylwgqg56a	nlou4s5aouj	7	\N	\N	\N
wklx0s4mt5t	8bk7zmz6xb6	6	\N	\N	\N
wklx0s4mt5t	n1q88j8ccbz	7	\N	\N	\N
wklx0s4mt5t	nlou4s5aouj	8	\N	\N	\N
yt77srlsive	8bk7zmz6xb6	7	\N	\N	\N
yt77srlsive	n1q88j8ccbz	8	\N	\N	\N
yt77srlsive	nlou4s5aouj	9	\N	\N	\N
826yic3e7bk	8bk7zmz6xb6	8	\N	\N	\N
826yic3e7bk	n1q88j8ccbz	9	\N	\N	\N
826yic3e7bk	nlou4s5aouj	10	\N	\N	\N
9c1c2orwoq7	8bk7zmz6xb6	9	\N	\N	\N
9c1c2orwoq7	n1q88j8ccbz	10	\N	\N	\N
9c1c2orwoq7	nlou4s5aouj	11	\N	\N	\N
dknwg9949yr	8bk7zmz6xb6	10	\N	\N	\N
dknwg9949yr	n1q88j8ccbz	11	\N	\N	\N
dknwg9949yr	nlou4s5aouj	12	\N	\N	\N
tw82t2es2ty	8bk7zmz6xb6	11	\N	\N	\N
tw82t2es2ty	n1q88j8ccbz	12	\N	\N	\N
tw82t2es2ty	nlou4s5aouj	13	\N	\N	\N
culzjbos9r3	8bk7zmz6xb6	12	\N	\N	\N
culzjbos9r3	n1q88j8ccbz	13	\N	\N	\N
culzjbos9r3	nlou4s5aouj	14	\N	\N	\N
3owowmpqg3i	8bk7zmz6xb6	13	\N	\N	\N
3owowmpqg3i	n1q88j8ccbz	14	\N	\N	\N
3owowmpqg3i	nlou4s5aouj	15	\N	\N	\N
wu05wqno6t2	8bk7zmz6xb6	14	\N	\N	\N
wu05wqno6t2	n1q88j8ccbz	15	\N	\N	\N
wu05wqno6t2	nlou4s5aouj	16	\N	\N	\N
fq548i6jjul	8bk7zmz6xb6	15	\N	\N	\N
fq548i6jjul	n1q88j8ccbz	16	\N	\N	\N
fq548i6jjul	nlou4s5aouj	17	\N	\N	\N
b8e4crdaije	8bk7zmz6xb6	16	\N	\N	\N
b8e4crdaije	n1q88j8ccbz	17	\N	\N	\N
b8e4crdaije	nlou4s5aouj	18	\N	\N	\N
41zfs8bogys	8bk7zmz6xb6	17	\N	\N	\N
41zfs8bogys	n1q88j8ccbz	18	\N	\N	\N
41zfs8bogys	nlou4s5aouj	19	\N	\N	\N
073buw1m70l	8bk7zmz6xb6	18	\N	\N	\N
073buw1m70l	n1q88j8ccbz	19	\N	\N	\N
073buw1m70l	nlou4s5aouj	20	\N	\N	\N
nocobase-admin-menu	8bk7zmz6xb6	19	\N	\N	\N
nocobase-admin-menu	n1q88j8ccbz	20	\N	\N	\N
nocobase-admin-menu	nlou4s5aouj	21	\N	\N	\N
8bk7zmz6xb6	8bk7zmz6xb6	0	f	properties	\N
4sqtmnjqy3l	8bk7zmz6xb6	1	\N	\N	1
3k4d6voqqmv	3k4d6voqqmv	0	f	properties	\N
30afm9j9mof	3k4d6voqqmv	1	\N	\N	1
nk1o1xq6m6v	nk1o1xq6m6v	0	f	properties	\N
3k4d6voqqmv	nk1o1xq6m6v	1	\N	\N	1
30afm9j9mof	nk1o1xq6m6v	2	\N	\N	1
4sqtmnjqy3l	3k4d6voqqmv	2	\N	\N	\N
4sqtmnjqy3l	nk1o1xq6m6v	3	\N	\N	\N
sfa4kawo4ky	30afm9j9mof	2	\N	\N	\N
sfa4kawo4ky	3k4d6voqqmv	3	\N	\N	\N
sfa4kawo4ky	nk1o1xq6m6v	4	\N	\N	\N
agy55hanha3	30afm9j9mof	3	\N	\N	\N
agy55hanha3	3k4d6voqqmv	4	\N	\N	\N
agy55hanha3	nk1o1xq6m6v	5	\N	\N	\N
mue77s53ug0	30afm9j9mof	4	\N	\N	\N
mue77s53ug0	3k4d6voqqmv	5	\N	\N	\N
mue77s53ug0	nk1o1xq6m6v	6	\N	\N	\N
zsylwgqg56a	30afm9j9mof	5	\N	\N	\N
zsylwgqg56a	3k4d6voqqmv	6	\N	\N	\N
2hjcaexud97	2hjcaexud97	0	f	properties	\N
ckpzj5e9g0l	2hjcaexud97	1	\N	\N	1
cnkf4yhbeb3	cnkf4yhbeb3	0	f	properties	\N
2hjcaexud97	cnkf4yhbeb3	1	\N	\N	1
ckpzj5e9g0l	cnkf4yhbeb3	2	\N	\N	1
3qm94lpqqbi	2hjcaexud97	2	\N	\N	\N
3qm94lpqqbi	cnkf4yhbeb3	3	\N	\N	\N
kiub9a1d6kl	ckpzj5e9g0l	2	\N	\N	\N
kiub9a1d6kl	2hjcaexud97	3	\N	\N	\N
kiub9a1d6kl	cnkf4yhbeb3	4	\N	\N	\N
7b0nw7tckru	ckpzj5e9g0l	3	\N	\N	\N
7b0nw7tckru	2hjcaexud97	4	\N	\N	\N
7b0nw7tckru	cnkf4yhbeb3	5	\N	\N	\N
3wjttvlbvom	ckpzj5e9g0l	4	\N	\N	\N
3wjttvlbvom	2hjcaexud97	5	\N	\N	\N
3wjttvlbvom	cnkf4yhbeb3	6	\N	\N	\N
7608d2qrms5	ckpzj5e9g0l	5	\N	\N	\N
7608d2qrms5	2hjcaexud97	6	\N	\N	\N
7608d2qrms5	cnkf4yhbeb3	7	\N	\N	\N
adxntkyyx2m	ckpzj5e9g0l	6	\N	\N	\N
adxntkyyx2m	2hjcaexud97	7	\N	\N	\N
adxntkyyx2m	cnkf4yhbeb3	8	\N	\N	\N
alnwl1ouj3h	ckpzj5e9g0l	7	\N	\N	\N
alnwl1ouj3h	2hjcaexud97	8	\N	\N	\N
alnwl1ouj3h	cnkf4yhbeb3	9	\N	\N	\N
3gtgg35z6e8	ckpzj5e9g0l	8	\N	\N	\N
3gtgg35z6e8	2hjcaexud97	9	\N	\N	\N
3gtgg35z6e8	cnkf4yhbeb3	10	\N	\N	\N
xfwxsmz494e	ckpzj5e9g0l	9	\N	\N	\N
xfwxsmz494e	2hjcaexud97	10	\N	\N	\N
xfwxsmz494e	cnkf4yhbeb3	11	\N	\N	\N
vukfpwp37qn	ckpzj5e9g0l	10	\N	\N	\N
vukfpwp37qn	2hjcaexud97	11	\N	\N	\N
vukfpwp37qn	cnkf4yhbeb3	12	\N	\N	\N
baqq2v2fong	ckpzj5e9g0l	11	\N	\N	\N
baqq2v2fong	2hjcaexud97	12	\N	\N	\N
baqq2v2fong	cnkf4yhbeb3	13	\N	\N	\N
pdot2ybyfc0	ckpzj5e9g0l	12	\N	\N	\N
pdot2ybyfc0	2hjcaexud97	13	\N	\N	\N
pdot2ybyfc0	cnkf4yhbeb3	14	\N	\N	\N
a7e860jrx5o	ckpzj5e9g0l	13	\N	\N	\N
a7e860jrx5o	2hjcaexud97	14	\N	\N	\N
a7e860jrx5o	cnkf4yhbeb3	15	\N	\N	\N
zxh1oe1qx5t	ckpzj5e9g0l	14	\N	\N	\N
zxh1oe1qx5t	2hjcaexud97	15	\N	\N	\N
zxh1oe1qx5t	cnkf4yhbeb3	16	\N	\N	\N
861gmcfwhia	ckpzj5e9g0l	15	\N	\N	\N
861gmcfwhia	2hjcaexud97	16	\N	\N	\N
861gmcfwhia	cnkf4yhbeb3	17	\N	\N	\N
9yos6i0cjm3	ckpzj5e9g0l	16	\N	\N	\N
9yos6i0cjm3	2hjcaexud97	17	\N	\N	\N
9yos6i0cjm3	cnkf4yhbeb3	18	\N	\N	\N
n3yigbe0k9v	ckpzj5e9g0l	17	\N	\N	\N
n3yigbe0k9v	2hjcaexud97	18	\N	\N	\N
n3yigbe0k9v	cnkf4yhbeb3	19	\N	\N	\N
073buw1m70l	ckpzj5e9g0l	18	\N	\N	\N
073buw1m70l	2hjcaexud97	19	\N	\N	\N
073buw1m70l	cnkf4yhbeb3	20	\N	\N	\N
nocobase-admin-menu	ckpzj5e9g0l	19	\N	\N	\N
nocobase-admin-menu	2hjcaexud97	20	\N	\N	\N
nocobase-admin-menu	cnkf4yhbeb3	21	\N	\N	\N
ckpzj5e9g0l	ckpzj5e9g0l	0	f	properties	\N
3qm94lpqqbi	ckpzj5e9g0l	1	\N	\N	7
lhhb4d5lz96	lhhb4d5lz96	0	f	properties	\N
sr4x5sl1mby	lhhb4d5lz96	1	\N	\N	1
mm99ajvazt8	mm99ajvazt8	0	f	properties	\N
lhhb4d5lz96	mm99ajvazt8	1	\N	\N	1
sr4x5sl1mby	mm99ajvazt8	2	\N	\N	1
yfijfhpa0n1	yfijfhpa0n1	0	f	properties	\N
mm99ajvazt8	yfijfhpa0n1	1	\N	\N	1
lhhb4d5lz96	yfijfhpa0n1	2	\N	\N	1
sr4x5sl1mby	yfijfhpa0n1	3	\N	\N	1
p3st627y95d	lhhb4d5lz96	2	\N	\N	\N
p3st627y95d	mm99ajvazt8	3	\N	\N	\N
p3st627y95d	yfijfhpa0n1	4	\N	\N	\N
qujstuiy3k2	sr4x5sl1mby	2	\N	\N	\N
qujstuiy3k2	lhhb4d5lz96	3	\N	\N	\N
qujstuiy3k2	mm99ajvazt8	4	\N	\N	\N
qujstuiy3k2	yfijfhpa0n1	5	\N	\N	\N
udmmaahgp9z	sr4x5sl1mby	3	\N	\N	\N
udmmaahgp9z	lhhb4d5lz96	4	\N	\N	\N
udmmaahgp9z	mm99ajvazt8	5	\N	\N	\N
udmmaahgp9z	yfijfhpa0n1	6	\N	\N	\N
22pnzqtybji	sr4x5sl1mby	4	\N	\N	\N
22pnzqtybji	lhhb4d5lz96	5	\N	\N	\N
22pnzqtybji	mm99ajvazt8	6	\N	\N	\N
22pnzqtybji	yfijfhpa0n1	7	\N	\N	\N
mqma0oexw7v	sr4x5sl1mby	5	\N	\N	\N
mqma0oexw7v	lhhb4d5lz96	6	\N	\N	\N
mqma0oexw7v	mm99ajvazt8	7	\N	\N	\N
mqma0oexw7v	yfijfhpa0n1	8	\N	\N	\N
09yy6b78jxi	sr4x5sl1mby	6	\N	\N	\N
09yy6b78jxi	lhhb4d5lz96	7	\N	\N	\N
09yy6b78jxi	mm99ajvazt8	8	\N	\N	\N
09yy6b78jxi	yfijfhpa0n1	9	\N	\N	\N
sr4x5sl1mby	sr4x5sl1mby	0	f	properties	\N
zsylwgqg56a	nk1o1xq6m6v	7	\N	\N	\N
p3st627y95d	sr4x5sl1mby	1	\N	\N	1
1whdhzzrodk	sr4x5sl1mby	7	\N	\N	\N
1whdhzzrodk	lhhb4d5lz96	8	\N	\N	\N
1whdhzzrodk	mm99ajvazt8	9	\N	\N	\N
1whdhzzrodk	yfijfhpa0n1	10	\N	\N	\N
f205ix4mjg8	sr4x5sl1mby	8	\N	\N	\N
f205ix4mjg8	lhhb4d5lz96	9	\N	\N	\N
f205ix4mjg8	mm99ajvazt8	10	\N	\N	\N
f205ix4mjg8	yfijfhpa0n1	11	\N	\N	\N
fvx7g50y58n	sr4x5sl1mby	9	\N	\N	\N
fvx7g50y58n	lhhb4d5lz96	10	\N	\N	\N
fvx7g50y58n	mm99ajvazt8	11	\N	\N	\N
fvx7g50y58n	yfijfhpa0n1	12	\N	\N	\N
833uu3rb1nm	sr4x5sl1mby	10	\N	\N	\N
833uu3rb1nm	lhhb4d5lz96	11	\N	\N	\N
833uu3rb1nm	mm99ajvazt8	12	\N	\N	\N
833uu3rb1nm	yfijfhpa0n1	13	\N	\N	\N
ik0zt15yup2	sr4x5sl1mby	11	\N	\N	\N
ik0zt15yup2	lhhb4d5lz96	12	\N	\N	\N
ik0zt15yup2	mm99ajvazt8	13	\N	\N	\N
ik0zt15yup2	yfijfhpa0n1	14	\N	\N	\N
w1vttmfcjic	sr4x5sl1mby	12	\N	\N	\N
w1vttmfcjic	lhhb4d5lz96	13	\N	\N	\N
w1vttmfcjic	mm99ajvazt8	14	\N	\N	\N
w1vttmfcjic	yfijfhpa0n1	15	\N	\N	\N
nocobase-admin-menu	sr4x5sl1mby	13	\N	\N	\N
nocobase-admin-menu	lhhb4d5lz96	14	\N	\N	\N
nocobase-admin-menu	mm99ajvazt8	15	\N	\N	\N
nocobase-admin-menu	yfijfhpa0n1	16	\N	\N	\N
odmrtfsxjp5	odmrtfsxjp5	0	f	properties	\N
alt2km13pi6	odmrtfsxjp5	1	\N	\N	1
fo7g83k4wnw	fo7g83k4wnw	0	f	properties	\N
odmrtfsxjp5	fo7g83k4wnw	1	\N	\N	1
alt2km13pi6	fo7g83k4wnw	2	\N	\N	1
xaewf0sjo76	xaewf0sjo76	0	f	properties	\N
fo7g83k4wnw	xaewf0sjo76	1	\N	\N	1
odmrtfsxjp5	xaewf0sjo76	2	\N	\N	1
alt2km13pi6	xaewf0sjo76	3	\N	\N	1
g4n9eb2icuo	g4n9eb2icuo	0	f	properties	\N
xaewf0sjo76	g4n9eb2icuo	1	\N	\N	1
fo7g83k4wnw	g4n9eb2icuo	2	\N	\N	1
odmrtfsxjp5	g4n9eb2icuo	3	\N	\N	1
alt2km13pi6	g4n9eb2icuo	4	\N	\N	1
99wrtdh3vjb	odmrtfsxjp5	2	\N	\N	\N
99wrtdh3vjb	fo7g83k4wnw	3	\N	\N	\N
99wrtdh3vjb	xaewf0sjo76	4	\N	\N	\N
99wrtdh3vjb	g4n9eb2icuo	5	\N	\N	\N
mqma0oexw7v	alt2km13pi6	2	\N	\N	\N
mqma0oexw7v	odmrtfsxjp5	3	\N	\N	\N
mqma0oexw7v	fo7g83k4wnw	4	\N	\N	\N
mqma0oexw7v	xaewf0sjo76	5	\N	\N	\N
mqma0oexw7v	g4n9eb2icuo	6	\N	\N	\N
09yy6b78jxi	alt2km13pi6	3	\N	\N	\N
09yy6b78jxi	odmrtfsxjp5	4	\N	\N	\N
09yy6b78jxi	fo7g83k4wnw	5	\N	\N	\N
09yy6b78jxi	xaewf0sjo76	6	\N	\N	\N
09yy6b78jxi	g4n9eb2icuo	7	\N	\N	\N
1whdhzzrodk	alt2km13pi6	4	\N	\N	\N
1whdhzzrodk	odmrtfsxjp5	5	\N	\N	\N
1whdhzzrodk	fo7g83k4wnw	6	\N	\N	\N
1whdhzzrodk	xaewf0sjo76	7	\N	\N	\N
1whdhzzrodk	g4n9eb2icuo	8	\N	\N	\N
f205ix4mjg8	alt2km13pi6	5	\N	\N	\N
f205ix4mjg8	odmrtfsxjp5	6	\N	\N	\N
f205ix4mjg8	fo7g83k4wnw	7	\N	\N	\N
f205ix4mjg8	xaewf0sjo76	8	\N	\N	\N
f205ix4mjg8	g4n9eb2icuo	9	\N	\N	\N
fvx7g50y58n	alt2km13pi6	6	\N	\N	\N
fvx7g50y58n	odmrtfsxjp5	7	\N	\N	\N
fvx7g50y58n	fo7g83k4wnw	8	\N	\N	\N
fvx7g50y58n	xaewf0sjo76	9	\N	\N	\N
fvx7g50y58n	g4n9eb2icuo	10	\N	\N	\N
833uu3rb1nm	alt2km13pi6	7	\N	\N	\N
833uu3rb1nm	odmrtfsxjp5	8	\N	\N	\N
833uu3rb1nm	fo7g83k4wnw	9	\N	\N	\N
833uu3rb1nm	xaewf0sjo76	10	\N	\N	\N
833uu3rb1nm	g4n9eb2icuo	11	\N	\N	\N
ik0zt15yup2	alt2km13pi6	8	\N	\N	\N
ik0zt15yup2	odmrtfsxjp5	9	\N	\N	\N
ik0zt15yup2	fo7g83k4wnw	10	\N	\N	\N
ik0zt15yup2	xaewf0sjo76	11	\N	\N	\N
ik0zt15yup2	g4n9eb2icuo	12	\N	\N	\N
w1vttmfcjic	alt2km13pi6	9	\N	\N	\N
w1vttmfcjic	odmrtfsxjp5	10	\N	\N	\N
w1vttmfcjic	fo7g83k4wnw	11	\N	\N	\N
w1vttmfcjic	xaewf0sjo76	12	\N	\N	\N
w1vttmfcjic	g4n9eb2icuo	13	\N	\N	\N
nocobase-admin-menu	alt2km13pi6	10	\N	\N	\N
nocobase-admin-menu	odmrtfsxjp5	11	\N	\N	\N
nocobase-admin-menu	fo7g83k4wnw	12	\N	\N	\N
nocobase-admin-menu	xaewf0sjo76	13	\N	\N	\N
nocobase-admin-menu	g4n9eb2icuo	14	\N	\N	\N
alt2km13pi6	alt2km13pi6	0	f	properties	\N
99wrtdh3vjb	alt2km13pi6	1	\N	\N	1
gt78k6uibhm	gt78k6uibhm	0	f	properties	\N
mqma0oexw7v	gt78k6uibhm	2	\N	\N	\N
09yy6b78jxi	gt78k6uibhm	3	\N	\N	\N
1whdhzzrodk	gt78k6uibhm	4	\N	\N	\N
f205ix4mjg8	gt78k6uibhm	5	\N	\N	\N
fvx7g50y58n	gt78k6uibhm	6	\N	\N	\N
833uu3rb1nm	gt78k6uibhm	7	\N	\N	\N
ik0zt15yup2	gt78k6uibhm	8	\N	\N	\N
w1vttmfcjic	gt78k6uibhm	9	\N	\N	\N
nocobase-admin-menu	gt78k6uibhm	10	\N	\N	\N
99wrtdh3vjb	gt78k6uibhm	1	\N	\N	2
5bru92qlyrq	5bru92qlyrq	0	t	properties	\N
obl2auujo32	5bru92qlyrq	1	\N	\N	1
i80vemflinb	i80vemflinb	0	f	properties	\N
5bru92qlyrq	i80vemflinb	1	\N	\N	1
obl2auujo32	i80vemflinb	2	\N	\N	1
nocobase-admin-menu	5bru92qlyrq	2	\N	\N	\N
nocobase-admin-menu	i80vemflinb	3	\N	\N	\N
obl2auujo32	obl2auujo32	0	f	properties	\N
nocobase-admin-menu	obl2auujo32	1	\N	\N	4
wklx0s4mt5t	30afm9j9mof	6	\N	\N	\N
xgcak2lw2iz	xgcak2lw2iz	0	f	properties	\N
fzzjta8vefz	xgcak2lw2iz	1	\N	\N	1
0jc7b0j4ca8	0jc7b0j4ca8	0	f	properties	\N
xgcak2lw2iz	0jc7b0j4ca8	1	\N	\N	1
fzzjta8vefz	0jc7b0j4ca8	2	\N	\N	1
wklx0s4mt5t	3k4d6voqqmv	7	\N	\N	\N
g4n9eb2icuo	xgcak2lw2iz	2	\N	\N	\N
g4n9eb2icuo	0jc7b0j4ca8	3	\N	\N	\N
xaewf0sjo76	fzzjta8vefz	2	\N	\N	\N
xaewf0sjo76	xgcak2lw2iz	3	\N	\N	\N
xaewf0sjo76	0jc7b0j4ca8	4	\N	\N	\N
fo7g83k4wnw	fzzjta8vefz	3	\N	\N	\N
fo7g83k4wnw	xgcak2lw2iz	4	\N	\N	\N
fo7g83k4wnw	0jc7b0j4ca8	5	\N	\N	\N
odmrtfsxjp5	fzzjta8vefz	4	\N	\N	\N
odmrtfsxjp5	xgcak2lw2iz	5	\N	\N	\N
odmrtfsxjp5	0jc7b0j4ca8	6	\N	\N	\N
alt2km13pi6	fzzjta8vefz	5	\N	\N	\N
alt2km13pi6	xgcak2lw2iz	6	\N	\N	\N
alt2km13pi6	0jc7b0j4ca8	7	\N	\N	\N
99wrtdh3vjb	fzzjta8vefz	6	\N	\N	\N
99wrtdh3vjb	xgcak2lw2iz	7	\N	\N	\N
99wrtdh3vjb	0jc7b0j4ca8	8	\N	\N	\N
mqma0oexw7v	fzzjta8vefz	7	\N	\N	\N
mqma0oexw7v	xgcak2lw2iz	8	\N	\N	\N
mqma0oexw7v	0jc7b0j4ca8	9	\N	\N	\N
09yy6b78jxi	fzzjta8vefz	8	\N	\N	\N
09yy6b78jxi	xgcak2lw2iz	9	\N	\N	\N
09yy6b78jxi	0jc7b0j4ca8	10	\N	\N	\N
1whdhzzrodk	fzzjta8vefz	9	\N	\N	\N
1whdhzzrodk	xgcak2lw2iz	10	\N	\N	\N
1whdhzzrodk	0jc7b0j4ca8	11	\N	\N	\N
f205ix4mjg8	fzzjta8vefz	10	\N	\N	\N
f205ix4mjg8	xgcak2lw2iz	11	\N	\N	\N
f205ix4mjg8	0jc7b0j4ca8	12	\N	\N	\N
fvx7g50y58n	fzzjta8vefz	11	\N	\N	\N
fvx7g50y58n	xgcak2lw2iz	12	\N	\N	\N
fvx7g50y58n	0jc7b0j4ca8	13	\N	\N	\N
833uu3rb1nm	fzzjta8vefz	12	\N	\N	\N
833uu3rb1nm	xgcak2lw2iz	13	\N	\N	\N
833uu3rb1nm	0jc7b0j4ca8	14	\N	\N	\N
ik0zt15yup2	fzzjta8vefz	13	\N	\N	\N
ik0zt15yup2	xgcak2lw2iz	14	\N	\N	\N
ik0zt15yup2	0jc7b0j4ca8	15	\N	\N	\N
w1vttmfcjic	fzzjta8vefz	14	\N	\N	\N
w1vttmfcjic	xgcak2lw2iz	15	\N	\N	\N
w1vttmfcjic	0jc7b0j4ca8	16	\N	\N	\N
nocobase-admin-menu	fzzjta8vefz	15	\N	\N	\N
nocobase-admin-menu	xgcak2lw2iz	16	\N	\N	\N
nocobase-admin-menu	0jc7b0j4ca8	17	\N	\N	\N
fzzjta8vefz	fzzjta8vefz	0	f	properties	\N
g4n9eb2icuo	fzzjta8vefz	1	\N	\N	1
wklx0s4mt5t	nk1o1xq6m6v	8	\N	\N	\N
yt77srlsive	30afm9j9mof	7	\N	\N	\N
yt77srlsive	3k4d6voqqmv	8	\N	\N	\N
yt77srlsive	nk1o1xq6m6v	9	\N	\N	\N
826yic3e7bk	30afm9j9mof	8	\N	\N	\N
qea4hkirot0	qea4hkirot0	0	f	properties	\N
ml67mod4ivt	qea4hkirot0	1	\N	\N	1
826yic3e7bk	3k4d6voqqmv	9	\N	\N	\N
826yic3e7bk	nk1o1xq6m6v	10	\N	\N	\N
fuhvhiwfe1n	fuhvhiwfe1n	0	f	properties	\N
ml67mod4ivt	fuhvhiwfe1n	1	\N	\N	2
9c1c2orwoq7	30afm9j9mof	9	\N	\N	\N
9c1c2orwoq7	3k4d6voqqmv	10	\N	\N	\N
r9bunptonmc	r9bunptonmc	0	f	properties	\N
fuhvhiwfe1n	r9bunptonmc	1	\N	\N	1
ml67mod4ivt	r9bunptonmc	2	\N	\N	1
9c1c2orwoq7	nk1o1xq6m6v	11	\N	\N	\N
dknwg9949yr	30afm9j9mof	10	\N	\N	\N
e2breqfve4x	e2breqfve4x	0	f	properties	\N
r9bunptonmc	e2breqfve4x	1	\N	\N	1
fuhvhiwfe1n	e2breqfve4x	2	\N	\N	1
ml67mod4ivt	e2breqfve4x	3	\N	\N	1
dknwg9949yr	3k4d6voqqmv	11	\N	\N	\N
dknwg9949yr	nk1o1xq6m6v	12	\N	\N	\N
iyimw3a9uc2	iyimw3a9uc2	0	f	properties	\N
r9bunptonmc	iyimw3a9uc2	1	\N	\N	2
fuhvhiwfe1n	iyimw3a9uc2	2	\N	\N	2
ml67mod4ivt	iyimw3a9uc2	3	\N	\N	2
tw82t2es2ty	30afm9j9mof	11	\N	\N	\N
tw82t2es2ty	3k4d6voqqmv	12	\N	\N	\N
tw82t2es2ty	nk1o1xq6m6v	13	\N	\N	\N
culzjbos9r3	30afm9j9mof	12	\N	\N	\N
culzjbos9r3	3k4d6voqqmv	13	\N	\N	\N
culzjbos9r3	nk1o1xq6m6v	14	\N	\N	\N
3owowmpqg3i	30afm9j9mof	13	\N	\N	\N
3owowmpqg3i	3k4d6voqqmv	14	\N	\N	\N
3owowmpqg3i	nk1o1xq6m6v	15	\N	\N	\N
wu05wqno6t2	30afm9j9mof	14	\N	\N	\N
xaewf0sjo76	4lk9neaacek	2	\N	\N	\N
wu05wqno6t2	3k4d6voqqmv	15	\N	\N	\N
wu05wqno6t2	nk1o1xq6m6v	16	\N	\N	\N
fq548i6jjul	30afm9j9mof	15	\N	\N	\N
fq548i6jjul	3k4d6voqqmv	16	\N	\N	\N
fq548i6jjul	nk1o1xq6m6v	17	\N	\N	\N
b8e4crdaije	30afm9j9mof	16	\N	\N	\N
b8e4crdaije	3k4d6voqqmv	17	\N	\N	\N
fo7g83k4wnw	4lk9neaacek	3	\N	\N	\N
b8e4crdaije	nk1o1xq6m6v	18	\N	\N	\N
41zfs8bogys	30afm9j9mof	17	\N	\N	\N
41zfs8bogys	3k4d6voqqmv	18	\N	\N	\N
41zfs8bogys	nk1o1xq6m6v	19	\N	\N	\N
073buw1m70l	30afm9j9mof	18	\N	\N	\N
073buw1m70l	3k4d6voqqmv	19	\N	\N	\N
073buw1m70l	nk1o1xq6m6v	20	\N	\N	\N
odmrtfsxjp5	4lk9neaacek	4	\N	\N	\N
nocobase-admin-menu	30afm9j9mof	19	\N	\N	\N
nocobase-admin-menu	3k4d6voqqmv	20	\N	\N	\N
nocobase-admin-menu	nk1o1xq6m6v	21	\N	\N	\N
30afm9j9mof	30afm9j9mof	0	f	properties	\N
4sqtmnjqy3l	30afm9j9mof	1	\N	\N	2
74s44xtfq9i	74s44xtfq9i	0	f	properties	\N
alt2km13pi6	4lk9neaacek	5	\N	\N	\N
p75pmr75t0d	74s44xtfq9i	1	\N	\N	1
cyqcbe8h8e3	cyqcbe8h8e3	0	f	properties	\N
74s44xtfq9i	cyqcbe8h8e3	1	\N	\N	1
p75pmr75t0d	cyqcbe8h8e3	2	\N	\N	1
4sqtmnjqy3l	74s44xtfq9i	2	\N	\N	\N
4sqtmnjqy3l	cyqcbe8h8e3	3	\N	\N	\N
99wrtdh3vjb	4lk9neaacek	6	\N	\N	\N
sfa4kawo4ky	p75pmr75t0d	2	\N	\N	\N
sfa4kawo4ky	74s44xtfq9i	3	\N	\N	\N
sfa4kawo4ky	cyqcbe8h8e3	4	\N	\N	\N
agy55hanha3	p75pmr75t0d	3	\N	\N	\N
agy55hanha3	74s44xtfq9i	4	\N	\N	\N
agy55hanha3	cyqcbe8h8e3	5	\N	\N	\N
mue77s53ug0	p75pmr75t0d	4	\N	\N	\N
mqma0oexw7v	4lk9neaacek	7	\N	\N	\N
mue77s53ug0	74s44xtfq9i	5	\N	\N	\N
mue77s53ug0	cyqcbe8h8e3	6	\N	\N	\N
zsylwgqg56a	p75pmr75t0d	5	\N	\N	\N
zsylwgqg56a	74s44xtfq9i	6	\N	\N	\N
zsylwgqg56a	cyqcbe8h8e3	7	\N	\N	\N
wklx0s4mt5t	p75pmr75t0d	6	\N	\N	\N
wklx0s4mt5t	74s44xtfq9i	7	\N	\N	\N
09yy6b78jxi	4lk9neaacek	8	\N	\N	\N
wklx0s4mt5t	cyqcbe8h8e3	8	\N	\N	\N
yt77srlsive	p75pmr75t0d	7	\N	\N	\N
yt77srlsive	74s44xtfq9i	8	\N	\N	\N
yt77srlsive	cyqcbe8h8e3	9	\N	\N	\N
826yic3e7bk	p75pmr75t0d	8	\N	\N	\N
826yic3e7bk	74s44xtfq9i	9	\N	\N	\N
826yic3e7bk	cyqcbe8h8e3	10	\N	\N	\N
1whdhzzrodk	4lk9neaacek	9	\N	\N	\N
9c1c2orwoq7	p75pmr75t0d	9	\N	\N	\N
9c1c2orwoq7	74s44xtfq9i	10	\N	\N	\N
9c1c2orwoq7	cyqcbe8h8e3	11	\N	\N	\N
ml67mod4ivt	ml67mod4ivt	0	f	properties	\N
dknwg9949yr	p75pmr75t0d	10	\N	\N	\N
dknwg9949yr	74s44xtfq9i	11	\N	\N	\N
dknwg9949yr	cyqcbe8h8e3	12	\N	\N	\N
f205ix4mjg8	4lk9neaacek	10	\N	\N	\N
tw82t2es2ty	p75pmr75t0d	11	\N	\N	\N
tw82t2es2ty	74s44xtfq9i	12	\N	\N	\N
tw82t2es2ty	cyqcbe8h8e3	13	\N	\N	\N
culzjbos9r3	p75pmr75t0d	12	\N	\N	\N
culzjbos9r3	74s44xtfq9i	13	\N	\N	\N
culzjbos9r3	cyqcbe8h8e3	14	\N	\N	\N
3owowmpqg3i	p75pmr75t0d	13	\N	\N	\N
fvx7g50y58n	4lk9neaacek	11	\N	\N	\N
3owowmpqg3i	74s44xtfq9i	14	\N	\N	\N
3owowmpqg3i	cyqcbe8h8e3	15	\N	\N	\N
wu05wqno6t2	p75pmr75t0d	14	\N	\N	\N
wu05wqno6t2	74s44xtfq9i	15	\N	\N	\N
wu05wqno6t2	cyqcbe8h8e3	16	\N	\N	\N
fq548i6jjul	p75pmr75t0d	15	\N	\N	\N
fq548i6jjul	74s44xtfq9i	16	\N	\N	\N
833uu3rb1nm	4lk9neaacek	12	\N	\N	\N
fq548i6jjul	cyqcbe8h8e3	17	\N	\N	\N
b8e4crdaije	p75pmr75t0d	16	\N	\N	\N
b8e4crdaije	74s44xtfq9i	17	\N	\N	\N
b8e4crdaije	cyqcbe8h8e3	18	\N	\N	\N
41zfs8bogys	p75pmr75t0d	17	\N	\N	\N
41zfs8bogys	74s44xtfq9i	18	\N	\N	\N
41zfs8bogys	cyqcbe8h8e3	19	\N	\N	\N
ik0zt15yup2	4lk9neaacek	13	\N	\N	\N
073buw1m70l	p75pmr75t0d	18	\N	\N	\N
073buw1m70l	74s44xtfq9i	19	\N	\N	\N
073buw1m70l	cyqcbe8h8e3	20	\N	\N	\N
nocobase-admin-menu	p75pmr75t0d	19	\N	\N	\N
nocobase-admin-menu	74s44xtfq9i	20	\N	\N	\N
nocobase-admin-menu	cyqcbe8h8e3	21	\N	\N	\N
p75pmr75t0d	p75pmr75t0d	0	f	properties	\N
w1vttmfcjic	4lk9neaacek	14	\N	\N	\N
4sqtmnjqy3l	p75pmr75t0d	1	\N	\N	3
je71b5yiapc	je71b5yiapc	0	f	properties	\N
sfa4kawo4ky	je71b5yiapc	2	\N	\N	\N
agy55hanha3	je71b5yiapc	3	\N	\N	\N
mue77s53ug0	je71b5yiapc	4	\N	\N	\N
nocobase-admin-menu	4lk9neaacek	15	\N	\N	\N
zsylwgqg56a	je71b5yiapc	5	\N	\N	\N
wklx0s4mt5t	je71b5yiapc	6	\N	\N	\N
yt77srlsive	je71b5yiapc	7	\N	\N	\N
826yic3e7bk	je71b5yiapc	8	\N	\N	\N
9c1c2orwoq7	je71b5yiapc	9	\N	\N	\N
dknwg9949yr	je71b5yiapc	10	\N	\N	\N
tw82t2es2ty	je71b5yiapc	11	\N	\N	\N
4lk9neaacek	4lk9neaacek	0	f	properties	\N
g4n9eb2icuo	4lk9neaacek	1	\N	\N	2
culzjbos9r3	je71b5yiapc	12	\N	\N	\N
kbm738ecszi	qea4hkirot0	2	\N	\N	\N
kbm738ecszi	fuhvhiwfe1n	2	\N	\N	\N
kbm738ecszi	r9bunptonmc	3	\N	\N	\N
kbm738ecszi	e2breqfve4x	4	\N	\N	\N
kbm738ecszi	iyimw3a9uc2	4	\N	\N	\N
3owowmpqg3i	je71b5yiapc	13	\N	\N	\N
kbm738ecszi	ml67mod4ivt	1	\N	\N	1
xaewf0sjo76	kbm738ecszi	3	\N	\N	\N
xaewf0sjo76	ml67mod4ivt	4	\N	\N	\N
xaewf0sjo76	qea4hkirot0	5	\N	\N	\N
xaewf0sjo76	fuhvhiwfe1n	5	\N	\N	\N
xaewf0sjo76	r9bunptonmc	6	\N	\N	\N
xaewf0sjo76	e2breqfve4x	7	\N	\N	\N
xaewf0sjo76	iyimw3a9uc2	7	\N	\N	\N
fo7g83k4wnw	kbm738ecszi	4	\N	\N	\N
fo7g83k4wnw	ml67mod4ivt	5	\N	\N	\N
fo7g83k4wnw	qea4hkirot0	6	\N	\N	\N
fo7g83k4wnw	fuhvhiwfe1n	6	\N	\N	\N
fo7g83k4wnw	r9bunptonmc	7	\N	\N	\N
fo7g83k4wnw	e2breqfve4x	8	\N	\N	\N
fo7g83k4wnw	iyimw3a9uc2	8	\N	\N	\N
odmrtfsxjp5	kbm738ecszi	5	\N	\N	\N
odmrtfsxjp5	ml67mod4ivt	6	\N	\N	\N
odmrtfsxjp5	qea4hkirot0	7	\N	\N	\N
odmrtfsxjp5	fuhvhiwfe1n	7	\N	\N	\N
odmrtfsxjp5	r9bunptonmc	8	\N	\N	\N
odmrtfsxjp5	e2breqfve4x	9	\N	\N	\N
odmrtfsxjp5	iyimw3a9uc2	9	\N	\N	\N
alt2km13pi6	kbm738ecszi	6	\N	\N	\N
alt2km13pi6	ml67mod4ivt	7	\N	\N	\N
alt2km13pi6	qea4hkirot0	8	\N	\N	\N
alt2km13pi6	fuhvhiwfe1n	8	\N	\N	\N
alt2km13pi6	r9bunptonmc	9	\N	\N	\N
alt2km13pi6	e2breqfve4x	10	\N	\N	\N
alt2km13pi6	iyimw3a9uc2	10	\N	\N	\N
99wrtdh3vjb	kbm738ecszi	7	\N	\N	\N
99wrtdh3vjb	ml67mod4ivt	8	\N	\N	\N
99wrtdh3vjb	qea4hkirot0	9	\N	\N	\N
99wrtdh3vjb	fuhvhiwfe1n	9	\N	\N	\N
99wrtdh3vjb	r9bunptonmc	10	\N	\N	\N
99wrtdh3vjb	e2breqfve4x	11	\N	\N	\N
99wrtdh3vjb	iyimw3a9uc2	11	\N	\N	\N
mqma0oexw7v	kbm738ecszi	8	\N	\N	\N
mqma0oexw7v	ml67mod4ivt	9	\N	\N	\N
mqma0oexw7v	qea4hkirot0	10	\N	\N	\N
mqma0oexw7v	fuhvhiwfe1n	10	\N	\N	\N
mqma0oexw7v	r9bunptonmc	11	\N	\N	\N
mqma0oexw7v	e2breqfve4x	12	\N	\N	\N
mqma0oexw7v	iyimw3a9uc2	12	\N	\N	\N
09yy6b78jxi	kbm738ecszi	9	\N	\N	\N
09yy6b78jxi	ml67mod4ivt	10	\N	\N	\N
09yy6b78jxi	qea4hkirot0	11	\N	\N	\N
09yy6b78jxi	fuhvhiwfe1n	11	\N	\N	\N
09yy6b78jxi	r9bunptonmc	12	\N	\N	\N
09yy6b78jxi	e2breqfve4x	13	\N	\N	\N
09yy6b78jxi	iyimw3a9uc2	13	\N	\N	\N
1whdhzzrodk	kbm738ecszi	10	\N	\N	\N
1whdhzzrodk	ml67mod4ivt	11	\N	\N	\N
1whdhzzrodk	qea4hkirot0	12	\N	\N	\N
1whdhzzrodk	fuhvhiwfe1n	12	\N	\N	\N
1whdhzzrodk	r9bunptonmc	13	\N	\N	\N
1whdhzzrodk	e2breqfve4x	14	\N	\N	\N
1whdhzzrodk	iyimw3a9uc2	14	\N	\N	\N
f205ix4mjg8	kbm738ecszi	11	\N	\N	\N
f205ix4mjg8	ml67mod4ivt	12	\N	\N	\N
f205ix4mjg8	qea4hkirot0	13	\N	\N	\N
f205ix4mjg8	fuhvhiwfe1n	13	\N	\N	\N
f205ix4mjg8	r9bunptonmc	14	\N	\N	\N
f205ix4mjg8	e2breqfve4x	15	\N	\N	\N
f205ix4mjg8	iyimw3a9uc2	15	\N	\N	\N
fvx7g50y58n	kbm738ecszi	12	\N	\N	\N
fvx7g50y58n	ml67mod4ivt	13	\N	\N	\N
fvx7g50y58n	qea4hkirot0	14	\N	\N	\N
fvx7g50y58n	fuhvhiwfe1n	14	\N	\N	\N
fvx7g50y58n	r9bunptonmc	15	\N	\N	\N
fvx7g50y58n	e2breqfve4x	16	\N	\N	\N
fvx7g50y58n	iyimw3a9uc2	16	\N	\N	\N
833uu3rb1nm	kbm738ecszi	13	\N	\N	\N
833uu3rb1nm	ml67mod4ivt	14	\N	\N	\N
wu05wqno6t2	je71b5yiapc	14	\N	\N	\N
fq548i6jjul	je71b5yiapc	15	\N	\N	\N
833uu3rb1nm	qea4hkirot0	15	\N	\N	\N
833uu3rb1nm	fuhvhiwfe1n	15	\N	\N	\N
833uu3rb1nm	r9bunptonmc	16	\N	\N	\N
833uu3rb1nm	e2breqfve4x	17	\N	\N	\N
833uu3rb1nm	iyimw3a9uc2	17	\N	\N	\N
ik0zt15yup2	kbm738ecszi	14	\N	\N	\N
ik0zt15yup2	ml67mod4ivt	15	\N	\N	\N
ik0zt15yup2	qea4hkirot0	16	\N	\N	\N
ik0zt15yup2	fuhvhiwfe1n	16	\N	\N	\N
ik0zt15yup2	r9bunptonmc	17	\N	\N	\N
ik0zt15yup2	e2breqfve4x	18	\N	\N	\N
ik0zt15yup2	iyimw3a9uc2	18	\N	\N	\N
w1vttmfcjic	kbm738ecszi	15	\N	\N	\N
w1vttmfcjic	ml67mod4ivt	16	\N	\N	\N
w1vttmfcjic	qea4hkirot0	17	\N	\N	\N
w1vttmfcjic	fuhvhiwfe1n	17	\N	\N	\N
w1vttmfcjic	r9bunptonmc	18	\N	\N	\N
w1vttmfcjic	e2breqfve4x	19	\N	\N	\N
w1vttmfcjic	iyimw3a9uc2	19	\N	\N	\N
nocobase-admin-menu	kbm738ecszi	16	\N	\N	\N
nocobase-admin-menu	ml67mod4ivt	17	\N	\N	\N
nocobase-admin-menu	qea4hkirot0	18	\N	\N	\N
nocobase-admin-menu	fuhvhiwfe1n	18	\N	\N	\N
nocobase-admin-menu	r9bunptonmc	19	\N	\N	\N
nocobase-admin-menu	e2breqfve4x	20	\N	\N	\N
nocobase-admin-menu	iyimw3a9uc2	20	\N	\N	\N
fzzjta8vefz	ml67mod4ivt	2	\N	\N	\N
fzzjta8vefz	qea4hkirot0	3	\N	\N	\N
fzzjta8vefz	fuhvhiwfe1n	3	\N	\N	\N
fzzjta8vefz	r9bunptonmc	4	\N	\N	\N
fzzjta8vefz	e2breqfve4x	5	\N	\N	\N
fzzjta8vefz	iyimw3a9uc2	5	\N	\N	\N
g4n9eb2icuo	kbm738ecszi	2	\N	\N	\N
g4n9eb2icuo	ml67mod4ivt	3	\N	\N	\N
g4n9eb2icuo	qea4hkirot0	4	\N	\N	\N
g4n9eb2icuo	fuhvhiwfe1n	4	\N	\N	\N
g4n9eb2icuo	r9bunptonmc	5	\N	\N	\N
g4n9eb2icuo	e2breqfve4x	6	\N	\N	\N
g4n9eb2icuo	iyimw3a9uc2	6	\N	\N	\N
kbm738ecszi	kbm738ecszi	0	f	properties	\N
fzzjta8vefz	kbm738ecszi	1	\N	\N	2
b8e4crdaije	je71b5yiapc	16	\N	\N	\N
41zfs8bogys	je71b5yiapc	17	\N	\N	\N
073buw1m70l	je71b5yiapc	18	\N	\N	\N
nocobase-admin-menu	je71b5yiapc	19	\N	\N	\N
eupy33wyahw	je71b5yiapc	1	\N	\N	1
evlfkn2k9ay	evlfkn2k9ay	0	f	properties	\N
9261692m4qa	evlfkn2k9ay	1	\N	\N	1
siizaqdcc7g	siizaqdcc7g	0	f	properties	\N
evlfkn2k9ay	siizaqdcc7g	1	\N	\N	1
9261692m4qa	siizaqdcc7g	2	\N	\N	1
ziv7xyw0rep	ziv7xyw0rep	0	f	properties	\N
siizaqdcc7g	ziv7xyw0rep	1	\N	\N	1
evlfkn2k9ay	ziv7xyw0rep	2	\N	\N	1
9261692m4qa	ziv7xyw0rep	3	\N	\N	1
9i5rajl4o7f	9i5rajl4o7f	0	f	properties	\N
ziv7xyw0rep	9i5rajl4o7f	1	\N	\N	1
siizaqdcc7g	9i5rajl4o7f	2	\N	\N	1
evlfkn2k9ay	9i5rajl4o7f	3	\N	\N	1
9261692m4qa	9i5rajl4o7f	4	\N	\N	1
h57ad49xfey	evlfkn2k9ay	2	\N	\N	\N
h57ad49xfey	siizaqdcc7g	3	\N	\N	\N
h57ad49xfey	ziv7xyw0rep	4	\N	\N	\N
h57ad49xfey	9i5rajl4o7f	5	\N	\N	\N
beq12cybpaz	9261692m4qa	2	\N	\N	\N
beq12cybpaz	evlfkn2k9ay	3	\N	\N	\N
beq12cybpaz	siizaqdcc7g	4	\N	\N	\N
beq12cybpaz	ziv7xyw0rep	5	\N	\N	\N
beq12cybpaz	9i5rajl4o7f	6	\N	\N	\N
smd6vh6wzvh	9261692m4qa	3	\N	\N	\N
smd6vh6wzvh	evlfkn2k9ay	4	\N	\N	\N
smd6vh6wzvh	siizaqdcc7g	5	\N	\N	\N
smd6vh6wzvh	ziv7xyw0rep	6	\N	\N	\N
smd6vh6wzvh	9i5rajl4o7f	7	\N	\N	\N
dac2j2kt870	9261692m4qa	4	\N	\N	\N
dac2j2kt870	evlfkn2k9ay	5	\N	\N	\N
dac2j2kt870	siizaqdcc7g	6	\N	\N	\N
dac2j2kt870	ziv7xyw0rep	7	\N	\N	\N
dac2j2kt870	9i5rajl4o7f	8	\N	\N	\N
fq548i6jjul	9261692m4qa	5	\N	\N	\N
fq548i6jjul	evlfkn2k9ay	6	\N	\N	\N
fq548i6jjul	siizaqdcc7g	7	\N	\N	\N
0sygad82cqs	sm99m0bwdty	2	\N	\N	\N
fq548i6jjul	ziv7xyw0rep	8	\N	\N	\N
fq548i6jjul	9i5rajl4o7f	9	\N	\N	\N
b8e4crdaije	9261692m4qa	6	\N	\N	\N
b8e4crdaije	evlfkn2k9ay	7	\N	\N	\N
b8e4crdaije	siizaqdcc7g	8	\N	\N	\N
b8e4crdaije	ziv7xyw0rep	9	\N	\N	\N
b8e4crdaije	9i5rajl4o7f	10	\N	\N	\N
41zfs8bogys	9261692m4qa	7	\N	\N	\N
41zfs8bogys	evlfkn2k9ay	8	\N	\N	\N
41zfs8bogys	siizaqdcc7g	9	\N	\N	\N
41zfs8bogys	ziv7xyw0rep	10	\N	\N	\N
41zfs8bogys	9i5rajl4o7f	11	\N	\N	\N
073buw1m70l	9261692m4qa	8	\N	\N	\N
073buw1m70l	evlfkn2k9ay	9	\N	\N	\N
0yu3l905f1t	sm99m0bwdty	1	\N	\N	1
22pnzqtybji	sm99m0bwdty	3	\N	\N	\N
0yu3l905f1t	0yu3l905f1t	0	f	properties	\N
0sygad82cqs	0yu3l905f1t	1	\N	\N	1
22pnzqtybji	0yu3l905f1t	2	\N	\N	\N
mqma0oexw7v	sm99m0bwdty	4	\N	\N	\N
mqma0oexw7v	0sygad82cqs	2	\N	\N	\N
mqma0oexw7v	0yu3l905f1t	3	\N	\N	\N
09yy6b78jxi	sm99m0bwdty	5	\N	\N	\N
09yy6b78jxi	0sygad82cqs	3	\N	\N	\N
09yy6b78jxi	0yu3l905f1t	4	\N	\N	\N
1whdhzzrodk	sm99m0bwdty	6	\N	\N	\N
1whdhzzrodk	0sygad82cqs	4	\N	\N	\N
1whdhzzrodk	0yu3l905f1t	5	\N	\N	\N
f205ix4mjg8	sm99m0bwdty	7	\N	\N	\N
f205ix4mjg8	0sygad82cqs	5	\N	\N	\N
f205ix4mjg8	0yu3l905f1t	6	\N	\N	\N
fvx7g50y58n	sm99m0bwdty	8	\N	\N	\N
fvx7g50y58n	0sygad82cqs	6	\N	\N	\N
fvx7g50y58n	0yu3l905f1t	7	\N	\N	\N
833uu3rb1nm	sm99m0bwdty	9	\N	\N	\N
833uu3rb1nm	0sygad82cqs	7	\N	\N	\N
833uu3rb1nm	0yu3l905f1t	8	\N	\N	\N
ik0zt15yup2	sm99m0bwdty	10	\N	\N	\N
ik0zt15yup2	0sygad82cqs	8	\N	\N	\N
ik0zt15yup2	0yu3l905f1t	9	\N	\N	\N
w1vttmfcjic	sm99m0bwdty	11	\N	\N	\N
w1vttmfcjic	0sygad82cqs	9	\N	\N	\N
w1vttmfcjic	0yu3l905f1t	10	\N	\N	\N
nocobase-admin-menu	sm99m0bwdty	12	\N	\N	\N
nocobase-admin-menu	0sygad82cqs	10	\N	\N	\N
nocobase-admin-menu	0yu3l905f1t	11	\N	\N	\N
0sygad82cqs	0sygad82cqs	0	f	properties	\N
073buw1m70l	siizaqdcc7g	10	\N	\N	\N
073buw1m70l	ziv7xyw0rep	11	\N	\N	\N
073buw1m70l	9i5rajl4o7f	12	\N	\N	\N
nocobase-admin-menu	9261692m4qa	9	\N	\N	\N
nocobase-admin-menu	evlfkn2k9ay	10	\N	\N	\N
nocobase-admin-menu	siizaqdcc7g	11	\N	\N	\N
nocobase-admin-menu	ziv7xyw0rep	12	\N	\N	\N
nocobase-admin-menu	9i5rajl4o7f	13	\N	\N	\N
9261692m4qa	9261692m4qa	0	f	properties	\N
h57ad49xfey	9261692m4qa	1	\N	\N	1
2is90czs6ox	2is90czs6ox	0	f	properties	\N
beq12cybpaz	2is90czs6ox	2	\N	\N	\N
smd6vh6wzvh	2is90czs6ox	3	\N	\N	\N
dac2j2kt870	2is90czs6ox	4	\N	\N	\N
fq548i6jjul	2is90czs6ox	5	\N	\N	\N
b8e4crdaije	2is90czs6ox	6	\N	\N	\N
41zfs8bogys	2is90czs6ox	7	\N	\N	\N
073buw1m70l	2is90czs6ox	8	\N	\N	\N
nocobase-admin-menu	2is90czs6ox	9	\N	\N	\N
h57ad49xfey	2is90czs6ox	1	\N	\N	2
elx91vnsmjj	elx91vnsmjj	0	f	properties	\N
xkqldchxl9c	elx91vnsmjj	1	\N	\N	1
xkqldchxl9c	04nart2ippj	2	\N	\N	\N
elx91vnsmjj	04nart2ippj	1	\N	\N	1
22pnzqtybji	elx91vnsmjj	2	\N	\N	\N
22pnzqtybji	04nart2ippj	3	\N	\N	\N
mqma0oexw7v	xkqldchxl9c	2	\N	\N	\N
mqma0oexw7v	elx91vnsmjj	3	\N	\N	\N
mqma0oexw7v	04nart2ippj	4	\N	\N	\N
09yy6b78jxi	xkqldchxl9c	3	\N	\N	\N
09yy6b78jxi	elx91vnsmjj	4	\N	\N	\N
09yy6b78jxi	04nart2ippj	5	\N	\N	\N
1whdhzzrodk	xkqldchxl9c	4	\N	\N	\N
1whdhzzrodk	elx91vnsmjj	5	\N	\N	\N
1whdhzzrodk	04nart2ippj	6	\N	\N	\N
f205ix4mjg8	xkqldchxl9c	5	\N	\N	\N
f205ix4mjg8	elx91vnsmjj	6	\N	\N	\N
f205ix4mjg8	04nart2ippj	7	\N	\N	\N
fvx7g50y58n	xkqldchxl9c	6	\N	\N	\N
fvx7g50y58n	elx91vnsmjj	7	\N	\N	\N
fvx7g50y58n	04nart2ippj	8	\N	\N	\N
833uu3rb1nm	xkqldchxl9c	7	\N	\N	\N
833uu3rb1nm	elx91vnsmjj	8	\N	\N	\N
833uu3rb1nm	04nart2ippj	9	\N	\N	\N
ik0zt15yup2	xkqldchxl9c	8	\N	\N	\N
ik0zt15yup2	elx91vnsmjj	9	\N	\N	\N
ik0zt15yup2	04nart2ippj	10	\N	\N	\N
w1vttmfcjic	xkqldchxl9c	9	\N	\N	\N
w1vttmfcjic	elx91vnsmjj	10	\N	\N	\N
w1vttmfcjic	04nart2ippj	11	\N	\N	\N
nocobase-admin-menu	xkqldchxl9c	10	\N	\N	\N
nocobase-admin-menu	elx91vnsmjj	11	\N	\N	\N
nocobase-admin-menu	04nart2ippj	12	\N	\N	\N
xkqldchxl9c	xkqldchxl9c	0	f	properties	\N
hm0dk2bjmly	hm0dk2bjmly	0	f	properties	\N
beq12cybpaz	hm0dk2bjmly	2	\N	\N	\N
smd6vh6wzvh	hm0dk2bjmly	3	\N	\N	\N
k2mxivm0oqa	k2mxivm0oqa	0	f	properties	\N
4ta56kbw4tp	4ta56kbw4tp	0	f	properties	\N
dac2j2kt870	hm0dk2bjmly	4	\N	\N	\N
fq548i6jjul	hm0dk2bjmly	5	\N	\N	\N
mqma0oexw7v	aezmizce5n2	2	\N	\N	\N
b8e4crdaije	hm0dk2bjmly	6	\N	\N	\N
41zfs8bogys	hm0dk2bjmly	7	\N	\N	\N
09yy6b78jxi	aezmizce5n2	3	\N	\N	\N
073buw1m70l	hm0dk2bjmly	8	\N	\N	\N
nocobase-admin-menu	hm0dk2bjmly	9	\N	\N	\N
1whdhzzrodk	aezmizce5n2	4	\N	\N	\N
h57ad49xfey	hm0dk2bjmly	1	\N	\N	3
f205ix4mjg8	aezmizce5n2	5	\N	\N	\N
41rxrx9byzc	41rxrx9byzc	0	f	properties	\N
fvx7g50y58n	aezmizce5n2	6	\N	\N	\N
beq12cybpaz	41rxrx9byzc	2	\N	\N	\N
smd6vh6wzvh	41rxrx9byzc	3	\N	\N	\N
833uu3rb1nm	aezmizce5n2	7	\N	\N	\N
dac2j2kt870	41rxrx9byzc	4	\N	\N	\N
fq548i6jjul	41rxrx9byzc	5	\N	\N	\N
ik0zt15yup2	aezmizce5n2	8	\N	\N	\N
b8e4crdaije	41rxrx9byzc	6	\N	\N	\N
41zfs8bogys	41rxrx9byzc	7	\N	\N	\N
w1vttmfcjic	aezmizce5n2	9	\N	\N	\N
073buw1m70l	41rxrx9byzc	8	\N	\N	\N
nocobase-admin-menu	41rxrx9byzc	9	\N	\N	\N
nocobase-admin-menu	aezmizce5n2	10	\N	\N	\N
h57ad49xfey	41rxrx9byzc	1	\N	\N	4
aezmizce5n2	aezmizce5n2	0	f	properties	\N
3yn0m2wrfox	3yn0m2wrfox	0	f	properties	\N
mk3xa4vi82o	3yn0m2wrfox	1	\N	\N	1
ydsit0px4rd	ydsit0px4rd	0	f	properties	\N
3yn0m2wrfox	ydsit0px4rd	1	\N	\N	1
mk3xa4vi82o	ydsit0px4rd	2	\N	\N	1
22pnzqtybji	0sygad82cqs	1	\N	\N	5
un4uti49os0	un4uti49os0	0	f	properties	\N
ydsit0px4rd	un4uti49os0	1	\N	\N	1
3yn0m2wrfox	un4uti49os0	2	\N	\N	1
mk3xa4vi82o	un4uti49os0	3	\N	\N	1
mk3xa4vi82o	mk3xa4vi82o	0	f	properties	\N
4ta56kbw4tp	k2mxivm0oqa	1	\N	\N	1
4ta56kbw4tp	5idf4nxla3u	2	\N	\N	\N
k2mxivm0oqa	5idf4nxla3u	1	\N	\N	1
22pnzqtybji	k2mxivm0oqa	2	\N	\N	\N
22pnzqtybji	5idf4nxla3u	3	\N	\N	\N
mqma0oexw7v	4ta56kbw4tp	2	\N	\N	\N
mqma0oexw7v	k2mxivm0oqa	3	\N	\N	\N
mqma0oexw7v	5idf4nxla3u	4	\N	\N	\N
09yy6b78jxi	4ta56kbw4tp	3	\N	\N	\N
09yy6b78jxi	k2mxivm0oqa	4	\N	\N	\N
09yy6b78jxi	5idf4nxla3u	5	\N	\N	\N
1whdhzzrodk	4ta56kbw4tp	4	\N	\N	\N
1whdhzzrodk	k2mxivm0oqa	5	\N	\N	\N
1whdhzzrodk	5idf4nxla3u	6	\N	\N	\N
f205ix4mjg8	4ta56kbw4tp	5	\N	\N	\N
f205ix4mjg8	k2mxivm0oqa	6	\N	\N	\N
f205ix4mjg8	5idf4nxla3u	7	\N	\N	\N
fvx7g50y58n	4ta56kbw4tp	6	\N	\N	\N
fvx7g50y58n	k2mxivm0oqa	7	\N	\N	\N
fvx7g50y58n	5idf4nxla3u	8	\N	\N	\N
833uu3rb1nm	4ta56kbw4tp	7	\N	\N	\N
833uu3rb1nm	k2mxivm0oqa	8	\N	\N	\N
833uu3rb1nm	5idf4nxla3u	9	\N	\N	\N
ik0zt15yup2	4ta56kbw4tp	8	\N	\N	\N
ik0zt15yup2	k2mxivm0oqa	9	\N	\N	\N
ik0zt15yup2	5idf4nxla3u	10	\N	\N	\N
w1vttmfcjic	4ta56kbw4tp	9	\N	\N	\N
w1vttmfcjic	k2mxivm0oqa	10	\N	\N	\N
22pnzqtybji	xkqldchxl9c	1	\N	\N	6
22pnzqtybji	aezmizce5n2	1	\N	\N	4
22pnzqtybji	4ta56kbw4tp	1	\N	\N	3
w1vttmfcjic	5idf4nxla3u	11	\N	\N	\N
nocobase-admin-menu	4ta56kbw4tp	10	\N	\N	\N
nocobase-admin-menu	k2mxivm0oqa	11	\N	\N	\N
nocobase-admin-menu	5idf4nxla3u	12	\N	\N	\N
b8e4crdaije	b8e4crdaije	0	t	properties	\N
41zfs8bogys	b8e4crdaije	1	\N	\N	1
fq548i6jjul	fq548i6jjul	0	f	properties	\N
b8e4crdaije	fq548i6jjul	1	\N	\N	1
41zfs8bogys	fq548i6jjul	2	\N	\N	1
073buw1m70l	b8e4crdaije	2	\N	\N	\N
073buw1m70l	fq548i6jjul	3	\N	\N	\N
nocobase-admin-menu	41zfs8bogys	2	\N	\N	\N
nocobase-admin-menu	b8e4crdaije	3	\N	\N	\N
nocobase-admin-menu	fq548i6jjul	4	\N	\N	\N
41zfs8bogys	41zfs8bogys	0	f	properties	\N
073buw1m70l	41zfs8bogys	1	\N	\N	7
3owowmpqg3i	3owowmpqg3i	0	f	properties	\N
wu05wqno6t2	3owowmpqg3i	1	\N	\N	1
culzjbos9r3	culzjbos9r3	0	f	properties	\N
3owowmpqg3i	culzjbos9r3	1	\N	\N	1
wu05wqno6t2	culzjbos9r3	2	\N	\N	1
tw82t2es2ty	tw82t2es2ty	0	f	properties	\N
culzjbos9r3	tw82t2es2ty	1	\N	\N	1
3owowmpqg3i	tw82t2es2ty	2	\N	\N	1
wu05wqno6t2	tw82t2es2ty	3	\N	\N	1
v3o080ka847	v3o080ka847	0	f	properties	\N
culzjbos9r3	v3o080ka847	1	\N	\N	2
3owowmpqg3i	v3o080ka847	2	\N	\N	2
wu05wqno6t2	v3o080ka847	3	\N	\N	2
c8kzc0jfotm	c8kzc0jfotm	0	f	properties	\N
hhlmur67sro	hhlmur67sro	0	f	properties	\N
un4uti49os0	hhlmur67sro	1	\N	\N	1
ydsit0px4rd	hhlmur67sro	2	\N	\N	1
8sehmqjx6y1	8sehmqjx6y1	0	f	properties	\N
9vahgw6b2zc	8sehmqjx6y1	1	\N	\N	1
3yn0m2wrfox	hhlmur67sro	3	\N	\N	1
mk3xa4vi82o	hhlmur67sro	4	\N	\N	1
avdz4ojpjyi	avdz4ojpjyi	0	f	properties	\N
un4uti49os0	avdz4ojpjyi	1	\N	\N	2
fq548i6jjul	3owowmpqg3i	2	\N	\N	\N
fq548i6jjul	culzjbos9r3	3	\N	\N	\N
fq548i6jjul	tw82t2es2ty	4	\N	\N	\N
fq548i6jjul	v3o080ka847	4	\N	\N	\N
ydsit0px4rd	avdz4ojpjyi	2	\N	\N	2
3yn0m2wrfox	avdz4ojpjyi	3	\N	\N	2
b8e4crdaije	wu05wqno6t2	2	\N	\N	\N
b8e4crdaije	3owowmpqg3i	3	\N	\N	\N
b8e4crdaije	culzjbos9r3	4	\N	\N	\N
b8e4crdaije	tw82t2es2ty	5	\N	\N	\N
b8e4crdaije	v3o080ka847	5	\N	\N	\N
mk3xa4vi82o	avdz4ojpjyi	4	\N	\N	2
41zfs8bogys	wu05wqno6t2	3	\N	\N	\N
41zfs8bogys	3owowmpqg3i	4	\N	\N	\N
41zfs8bogys	culzjbos9r3	5	\N	\N	\N
41zfs8bogys	tw82t2es2ty	6	\N	\N	\N
41zfs8bogys	v3o080ka847	6	\N	\N	\N
9i5rajl4o7f	3yn0m2wrfox	2	\N	\N	\N
9i5rajl4o7f	ydsit0px4rd	3	\N	\N	\N
073buw1m70l	wu05wqno6t2	4	\N	\N	\N
073buw1m70l	3owowmpqg3i	5	\N	\N	\N
073buw1m70l	culzjbos9r3	6	\N	\N	\N
073buw1m70l	tw82t2es2ty	7	\N	\N	\N
073buw1m70l	v3o080ka847	7	\N	\N	\N
9i5rajl4o7f	un4uti49os0	4	\N	\N	\N
9i5rajl4o7f	hhlmur67sro	5	\N	\N	\N
nocobase-admin-menu	wu05wqno6t2	5	\N	\N	\N
nocobase-admin-menu	3owowmpqg3i	6	\N	\N	\N
nocobase-admin-menu	culzjbos9r3	7	\N	\N	\N
nocobase-admin-menu	tw82t2es2ty	8	\N	\N	\N
nocobase-admin-menu	v3o080ka847	8	\N	\N	\N
9i5rajl4o7f	avdz4ojpjyi	5	\N	\N	\N
ziv7xyw0rep	mk3xa4vi82o	2	\N	\N	\N
wu05wqno6t2	wu05wqno6t2	0	f	properties	\N
fq548i6jjul	wu05wqno6t2	1	\N	\N	1
smd6vh6wzvh	smd6vh6wzvh	0	f	properties	\N
dac2j2kt870	smd6vh6wzvh	1	\N	\N	1
beq12cybpaz	beq12cybpaz	0	f	properties	\N
smd6vh6wzvh	beq12cybpaz	1	\N	\N	1
dac2j2kt870	beq12cybpaz	2	\N	\N	1
h57ad49xfey	h57ad49xfey	0	f	properties	\N
beq12cybpaz	h57ad49xfey	1	\N	\N	1
smd6vh6wzvh	h57ad49xfey	2	\N	\N	1
dac2j2kt870	h57ad49xfey	3	\N	\N	1
e3eaa6uq9t8	e3eaa6uq9t8	0	f	properties	\N
beq12cybpaz	e3eaa6uq9t8	1	\N	\N	2
smd6vh6wzvh	e3eaa6uq9t8	2	\N	\N	2
dac2j2kt870	e3eaa6uq9t8	3	\N	\N	2
lylp2daxzr6	lylp2daxzr6	0	f	properties	\N
c8kzc0jfotm	lylp2daxzr6	1	\N	\N	1
fq548i6jjul	smd6vh6wzvh	2	\N	\N	\N
fq548i6jjul	beq12cybpaz	3	\N	\N	\N
fq548i6jjul	h57ad49xfey	4	\N	\N	\N
fq548i6jjul	e3eaa6uq9t8	4	\N	\N	\N
b8e4crdaije	dac2j2kt870	2	\N	\N	\N
b8e4crdaije	smd6vh6wzvh	3	\N	\N	\N
b8e4crdaije	beq12cybpaz	4	\N	\N	\N
b8e4crdaije	h57ad49xfey	5	\N	\N	\N
b8e4crdaije	e3eaa6uq9t8	5	\N	\N	\N
41zfs8bogys	dac2j2kt870	3	\N	\N	\N
41zfs8bogys	smd6vh6wzvh	4	\N	\N	\N
41zfs8bogys	beq12cybpaz	5	\N	\N	\N
41zfs8bogys	h57ad49xfey	6	\N	\N	\N
41zfs8bogys	e3eaa6uq9t8	6	\N	\N	\N
073buw1m70l	dac2j2kt870	4	\N	\N	\N
073buw1m70l	smd6vh6wzvh	5	\N	\N	\N
073buw1m70l	beq12cybpaz	6	\N	\N	\N
073buw1m70l	h57ad49xfey	7	\N	\N	\N
073buw1m70l	e3eaa6uq9t8	7	\N	\N	\N
dac2j2kt870	dac2j2kt870	0	f	properties	\N
fq548i6jjul	dac2j2kt870	1	\N	\N	2
9vahgw6b2zc	9vahgw6b2zc	0	f	properties	\N
ziv7xyw0rep	3yn0m2wrfox	3	\N	\N	\N
ziv7xyw0rep	ydsit0px4rd	4	\N	\N	\N
ziv7xyw0rep	un4uti49os0	5	\N	\N	\N
ziv7xyw0rep	hhlmur67sro	6	\N	\N	\N
ziv7xyw0rep	avdz4ojpjyi	6	\N	\N	\N
siizaqdcc7g	mk3xa4vi82o	3	\N	\N	\N
siizaqdcc7g	3yn0m2wrfox	4	\N	\N	\N
siizaqdcc7g	ydsit0px4rd	5	\N	\N	\N
siizaqdcc7g	un4uti49os0	6	\N	\N	\N
siizaqdcc7g	hhlmur67sro	7	\N	\N	\N
siizaqdcc7g	avdz4ojpjyi	7	\N	\N	\N
evlfkn2k9ay	mk3xa4vi82o	4	\N	\N	\N
evlfkn2k9ay	3yn0m2wrfox	5	\N	\N	\N
evlfkn2k9ay	ydsit0px4rd	6	\N	\N	\N
evlfkn2k9ay	un4uti49os0	7	\N	\N	\N
evlfkn2k9ay	hhlmur67sro	8	\N	\N	\N
evlfkn2k9ay	avdz4ojpjyi	8	\N	\N	\N
9261692m4qa	mk3xa4vi82o	5	\N	\N	\N
nocobase-admin-menu	dac2j2kt870	5	\N	\N	\N
nocobase-admin-menu	smd6vh6wzvh	6	\N	\N	\N
nocobase-admin-menu	beq12cybpaz	7	\N	\N	\N
nocobase-admin-menu	h57ad49xfey	8	\N	\N	\N
nocobase-admin-menu	e3eaa6uq9t8	8	\N	\N	\N
slyvobazfq4	slyvobazfq4	0	f	properties	\N
culzjbos9r3	slyvobazfq4	2	\N	\N	\N
3owowmpqg3i	slyvobazfq4	3	\N	\N	\N
wu05wqno6t2	slyvobazfq4	4	\N	\N	\N
fq548i6jjul	slyvobazfq4	5	\N	\N	\N
b8e4crdaije	slyvobazfq4	6	\N	\N	\N
41zfs8bogys	slyvobazfq4	7	\N	\N	\N
073buw1m70l	slyvobazfq4	8	\N	\N	\N
nocobase-admin-menu	slyvobazfq4	9	\N	\N	\N
tw82t2es2ty	slyvobazfq4	1	\N	\N	1
9c1c2orwoq7	9c1c2orwoq7	0	f	properties	\N
dknwg9949yr	9c1c2orwoq7	1	\N	\N	1
826yic3e7bk	826yic3e7bk	0	f	properties	\N
9c1c2orwoq7	826yic3e7bk	1	\N	\N	1
dknwg9949yr	826yic3e7bk	2	\N	\N	1
yt77srlsive	yt77srlsive	0	f	properties	\N
826yic3e7bk	yt77srlsive	1	\N	\N	1
9c1c2orwoq7	yt77srlsive	2	\N	\N	1
dknwg9949yr	yt77srlsive	3	\N	\N	1
wklx0s4mt5t	wklx0s4mt5t	0	f	properties	\N
yt77srlsive	wklx0s4mt5t	1	\N	\N	1
826yic3e7bk	wklx0s4mt5t	2	\N	\N	1
9c1c2orwoq7	wklx0s4mt5t	3	\N	\N	1
dknwg9949yr	wklx0s4mt5t	4	\N	\N	1
tw82t2es2ty	9c1c2orwoq7	2	\N	\N	\N
tw82t2es2ty	826yic3e7bk	3	\N	\N	\N
tw82t2es2ty	yt77srlsive	4	\N	\N	\N
tw82t2es2ty	wklx0s4mt5t	5	\N	\N	\N
culzjbos9r3	dknwg9949yr	2	\N	\N	\N
culzjbos9r3	9c1c2orwoq7	3	\N	\N	\N
culzjbos9r3	826yic3e7bk	4	\N	\N	\N
culzjbos9r3	yt77srlsive	5	\N	\N	\N
culzjbos9r3	wklx0s4mt5t	6	\N	\N	\N
3owowmpqg3i	dknwg9949yr	3	\N	\N	\N
3owowmpqg3i	9c1c2orwoq7	4	\N	\N	\N
3owowmpqg3i	826yic3e7bk	5	\N	\N	\N
3owowmpqg3i	yt77srlsive	6	\N	\N	\N
3owowmpqg3i	wklx0s4mt5t	7	\N	\N	\N
wu05wqno6t2	dknwg9949yr	4	\N	\N	\N
wu05wqno6t2	9c1c2orwoq7	5	\N	\N	\N
wu05wqno6t2	826yic3e7bk	6	\N	\N	\N
wu05wqno6t2	yt77srlsive	7	\N	\N	\N
wu05wqno6t2	wklx0s4mt5t	8	\N	\N	\N
fq548i6jjul	dknwg9949yr	5	\N	\N	\N
fq548i6jjul	9c1c2orwoq7	6	\N	\N	\N
fq548i6jjul	826yic3e7bk	7	\N	\N	\N
fq548i6jjul	yt77srlsive	8	\N	\N	\N
fq548i6jjul	wklx0s4mt5t	9	\N	\N	\N
b8e4crdaije	dknwg9949yr	6	\N	\N	\N
b8e4crdaije	9c1c2orwoq7	7	\N	\N	\N
b8e4crdaije	826yic3e7bk	8	\N	\N	\N
b8e4crdaije	yt77srlsive	9	\N	\N	\N
b8e4crdaije	wklx0s4mt5t	10	\N	\N	\N
41zfs8bogys	dknwg9949yr	7	\N	\N	\N
41zfs8bogys	9c1c2orwoq7	8	\N	\N	\N
41zfs8bogys	826yic3e7bk	9	\N	\N	\N
41zfs8bogys	yt77srlsive	10	\N	\N	\N
41zfs8bogys	wklx0s4mt5t	11	\N	\N	\N
073buw1m70l	dknwg9949yr	8	\N	\N	\N
073buw1m70l	9c1c2orwoq7	9	\N	\N	\N
073buw1m70l	826yic3e7bk	10	\N	\N	\N
073buw1m70l	yt77srlsive	11	\N	\N	\N
073buw1m70l	wklx0s4mt5t	12	\N	\N	\N
nocobase-admin-menu	dknwg9949yr	9	\N	\N	\N
nocobase-admin-menu	9c1c2orwoq7	10	\N	\N	\N
nocobase-admin-menu	826yic3e7bk	11	\N	\N	\N
nocobase-admin-menu	yt77srlsive	12	\N	\N	\N
nocobase-admin-menu	wklx0s4mt5t	13	\N	\N	\N
dknwg9949yr	dknwg9949yr	0	f	properties	\N
tw82t2es2ty	dknwg9949yr	1	\N	\N	2
5w0u5l0eba3	5w0u5l0eba3	0	f	properties	\N
culzjbos9r3	5w0u5l0eba3	2	\N	\N	\N
3owowmpqg3i	5w0u5l0eba3	3	\N	\N	\N
wu05wqno6t2	5w0u5l0eba3	4	\N	\N	\N
fq548i6jjul	5w0u5l0eba3	5	\N	\N	\N
b8e4crdaije	5w0u5l0eba3	6	\N	\N	\N
41zfs8bogys	5w0u5l0eba3	7	\N	\N	\N
073buw1m70l	5w0u5l0eba3	8	\N	\N	\N
nocobase-admin-menu	5w0u5l0eba3	9	\N	\N	\N
tw82t2es2ty	5w0u5l0eba3	1	\N	\N	3
2ziyozcgtvr	2ziyozcgtvr	0	f	properties	\N
culzjbos9r3	2ziyozcgtvr	2	\N	\N	\N
3owowmpqg3i	2ziyozcgtvr	3	\N	\N	\N
wu05wqno6t2	2ziyozcgtvr	4	\N	\N	\N
fq548i6jjul	2ziyozcgtvr	5	\N	\N	\N
b8e4crdaije	2ziyozcgtvr	6	\N	\N	\N
41zfs8bogys	2ziyozcgtvr	7	\N	\N	\N
073buw1m70l	2ziyozcgtvr	8	\N	\N	\N
nocobase-admin-menu	2ziyozcgtvr	9	\N	\N	\N
tw82t2es2ty	2ziyozcgtvr	1	\N	\N	4
9261692m4qa	3yn0m2wrfox	6	\N	\N	\N
9261692m4qa	ydsit0px4rd	7	\N	\N	\N
9261692m4qa	un4uti49os0	8	\N	\N	\N
9261692m4qa	hhlmur67sro	9	\N	\N	\N
9261692m4qa	avdz4ojpjyi	9	\N	\N	\N
h57ad49xfey	mk3xa4vi82o	6	\N	\N	\N
h57ad49xfey	3yn0m2wrfox	7	\N	\N	\N
h57ad49xfey	ydsit0px4rd	8	\N	\N	\N
h57ad49xfey	un4uti49os0	9	\N	\N	\N
h57ad49xfey	hhlmur67sro	10	\N	\N	\N
h57ad49xfey	avdz4ojpjyi	10	\N	\N	\N
beq12cybpaz	mk3xa4vi82o	7	\N	\N	\N
beq12cybpaz	3yn0m2wrfox	8	\N	\N	\N
beq12cybpaz	ydsit0px4rd	9	\N	\N	\N
beq12cybpaz	un4uti49os0	10	\N	\N	\N
beq12cybpaz	hhlmur67sro	11	\N	\N	\N
beq12cybpaz	avdz4ojpjyi	11	\N	\N	\N
smd6vh6wzvh	mk3xa4vi82o	8	\N	\N	\N
smd6vh6wzvh	3yn0m2wrfox	9	\N	\N	\N
smd6vh6wzvh	ydsit0px4rd	10	\N	\N	\N
smd6vh6wzvh	un4uti49os0	11	\N	\N	\N
smd6vh6wzvh	hhlmur67sro	12	\N	\N	\N
smd6vh6wzvh	avdz4ojpjyi	12	\N	\N	\N
dac2j2kt870	mk3xa4vi82o	9	\N	\N	\N
dac2j2kt870	3yn0m2wrfox	10	\N	\N	\N
dac2j2kt870	ydsit0px4rd	11	\N	\N	\N
dac2j2kt870	un4uti49os0	12	\N	\N	\N
dac2j2kt870	hhlmur67sro	13	\N	\N	\N
dac2j2kt870	avdz4ojpjyi	13	\N	\N	\N
fq548i6jjul	mk3xa4vi82o	10	\N	\N	\N
fq548i6jjul	3yn0m2wrfox	11	\N	\N	\N
fq548i6jjul	ydsit0px4rd	12	\N	\N	\N
fq548i6jjul	un4uti49os0	13	\N	\N	\N
fq548i6jjul	hhlmur67sro	14	\N	\N	\N
fq548i6jjul	avdz4ojpjyi	14	\N	\N	\N
b8e4crdaije	mk3xa4vi82o	11	\N	\N	\N
b8e4crdaije	3yn0m2wrfox	12	\N	\N	\N
b8e4crdaije	ydsit0px4rd	13	\N	\N	\N
b8e4crdaije	un4uti49os0	14	\N	\N	\N
b8e4crdaije	hhlmur67sro	15	\N	\N	\N
b8e4crdaije	avdz4ojpjyi	15	\N	\N	\N
41zfs8bogys	mk3xa4vi82o	12	\N	\N	\N
41zfs8bogys	3yn0m2wrfox	13	\N	\N	\N
o75drsj41f1	o75drsj41f1	0	f	properties	\N
p9tevlo816p	o75drsj41f1	1	\N	\N	1
v3o080ka847	o75drsj41f1	2	\N	\N	\N
culzjbos9r3	p9tevlo816p	2	\N	\N	\N
culzjbos9r3	o75drsj41f1	3	\N	\N	\N
3owowmpqg3i	p9tevlo816p	3	\N	\N	\N
3owowmpqg3i	o75drsj41f1	4	\N	\N	\N
wu05wqno6t2	p9tevlo816p	4	\N	\N	\N
wu05wqno6t2	o75drsj41f1	5	\N	\N	\N
fq548i6jjul	p9tevlo816p	5	\N	\N	\N
fq548i6jjul	o75drsj41f1	6	\N	\N	\N
b8e4crdaije	p9tevlo816p	6	\N	\N	\N
b8e4crdaije	o75drsj41f1	7	\N	\N	\N
41zfs8bogys	p9tevlo816p	7	\N	\N	\N
41zfs8bogys	o75drsj41f1	8	\N	\N	\N
073buw1m70l	p9tevlo816p	8	\N	\N	\N
073buw1m70l	o75drsj41f1	9	\N	\N	\N
nocobase-admin-menu	p9tevlo816p	9	\N	\N	\N
nocobase-admin-menu	o75drsj41f1	10	\N	\N	\N
p9tevlo816p	p9tevlo816p	0	f	properties	\N
v3o080ka847	p9tevlo816p	1	\N	\N	3
n9ajlii3rdt	n9ajlii3rdt	0	f	properties	\N
8kbnum15b1u	n9ajlii3rdt	1	\N	\N	1
v3o080ka847	n9ajlii3rdt	2	\N	\N	\N
culzjbos9r3	8kbnum15b1u	2	\N	\N	\N
culzjbos9r3	n9ajlii3rdt	3	\N	\N	\N
3owowmpqg3i	8kbnum15b1u	3	\N	\N	\N
3owowmpqg3i	n9ajlii3rdt	4	\N	\N	\N
wu05wqno6t2	8kbnum15b1u	4	\N	\N	\N
wu05wqno6t2	n9ajlii3rdt	5	\N	\N	\N
fq548i6jjul	8kbnum15b1u	5	\N	\N	\N
fq548i6jjul	n9ajlii3rdt	6	\N	\N	\N
b8e4crdaije	8kbnum15b1u	6	\N	\N	\N
b8e4crdaije	n9ajlii3rdt	7	\N	\N	\N
41zfs8bogys	8kbnum15b1u	7	\N	\N	\N
41zfs8bogys	n9ajlii3rdt	8	\N	\N	\N
073buw1m70l	8kbnum15b1u	8	\N	\N	\N
073buw1m70l	n9ajlii3rdt	9	\N	\N	\N
nocobase-admin-menu	8kbnum15b1u	9	\N	\N	\N
nocobase-admin-menu	n9ajlii3rdt	10	\N	\N	\N
8kbnum15b1u	8kbnum15b1u	0	f	properties	\N
v3o080ka847	8kbnum15b1u	1	\N	\N	4
4nsqtpiaris	4nsqtpiaris	0	f	properties	\N
datiyxz3yqb	4nsqtpiaris	1	\N	\N	1
v3o080ka847	4nsqtpiaris	2	\N	\N	\N
culzjbos9r3	datiyxz3yqb	2	\N	\N	\N
culzjbos9r3	4nsqtpiaris	3	\N	\N	\N
3owowmpqg3i	datiyxz3yqb	3	\N	\N	\N
3owowmpqg3i	4nsqtpiaris	4	\N	\N	\N
wu05wqno6t2	datiyxz3yqb	4	\N	\N	\N
wu05wqno6t2	4nsqtpiaris	5	\N	\N	\N
fq548i6jjul	datiyxz3yqb	5	\N	\N	\N
fq548i6jjul	4nsqtpiaris	6	\N	\N	\N
b8e4crdaije	datiyxz3yqb	6	\N	\N	\N
b8e4crdaije	4nsqtpiaris	7	\N	\N	\N
41zfs8bogys	datiyxz3yqb	7	\N	\N	\N
41zfs8bogys	4nsqtpiaris	8	\N	\N	\N
073buw1m70l	datiyxz3yqb	8	\N	\N	\N
073buw1m70l	4nsqtpiaris	9	\N	\N	\N
nocobase-admin-menu	datiyxz3yqb	9	\N	\N	\N
nocobase-admin-menu	4nsqtpiaris	10	\N	\N	\N
datiyxz3yqb	datiyxz3yqb	0	f	properties	\N
v3o080ka847	datiyxz3yqb	1	\N	\N	5
v3o080ka847	8sehmqjx6y1	2	\N	\N	\N
culzjbos9r3	9vahgw6b2zc	2	\N	\N	\N
culzjbos9r3	8sehmqjx6y1	3	\N	\N	\N
3owowmpqg3i	9vahgw6b2zc	3	\N	\N	\N
3owowmpqg3i	8sehmqjx6y1	4	\N	\N	\N
wu05wqno6t2	9vahgw6b2zc	4	\N	\N	\N
wu05wqno6t2	8sehmqjx6y1	5	\N	\N	\N
fq548i6jjul	9vahgw6b2zc	5	\N	\N	\N
fq548i6jjul	8sehmqjx6y1	6	\N	\N	\N
b8e4crdaije	9vahgw6b2zc	6	\N	\N	\N
b8e4crdaije	8sehmqjx6y1	7	\N	\N	\N
41zfs8bogys	9vahgw6b2zc	7	\N	\N	\N
41zfs8bogys	8sehmqjx6y1	8	\N	\N	\N
073buw1m70l	9vahgw6b2zc	8	\N	\N	\N
073buw1m70l	8sehmqjx6y1	9	\N	\N	\N
nocobase-admin-menu	9vahgw6b2zc	9	\N	\N	\N
nocobase-admin-menu	8sehmqjx6y1	10	\N	\N	\N
v3o080ka847	9vahgw6b2zc	1	\N	\N	6
0c9o95n7ckl	0c9o95n7ckl	0	f	properties	\N
uqksfd0oriv	0c9o95n7ckl	1	\N	\N	1
e3eaa6uq9t8	0c9o95n7ckl	2	\N	\N	\N
beq12cybpaz	uqksfd0oriv	2	\N	\N	\N
beq12cybpaz	0c9o95n7ckl	3	\N	\N	\N
smd6vh6wzvh	uqksfd0oriv	3	\N	\N	\N
smd6vh6wzvh	0c9o95n7ckl	4	\N	\N	\N
dac2j2kt870	uqksfd0oriv	4	\N	\N	\N
dac2j2kt870	0c9o95n7ckl	5	\N	\N	\N
fq548i6jjul	uqksfd0oriv	5	\N	\N	\N
fq548i6jjul	0c9o95n7ckl	6	\N	\N	\N
b8e4crdaije	uqksfd0oriv	6	\N	\N	\N
b8e4crdaije	0c9o95n7ckl	7	\N	\N	\N
41zfs8bogys	uqksfd0oriv	7	\N	\N	\N
41zfs8bogys	0c9o95n7ckl	8	\N	\N	\N
073buw1m70l	uqksfd0oriv	8	\N	\N	\N
073buw1m70l	0c9o95n7ckl	9	\N	\N	\N
nocobase-admin-menu	uqksfd0oriv	9	\N	\N	\N
nocobase-admin-menu	0c9o95n7ckl	10	\N	\N	\N
uqksfd0oriv	uqksfd0oriv	0	f	properties	\N
e3eaa6uq9t8	uqksfd0oriv	1	\N	\N	2
5p4ay8t5i8m	5p4ay8t5i8m	0	f	properties	\N
tgg2yk2x7el	5p4ay8t5i8m	1	\N	\N	1
e3eaa6uq9t8	5p4ay8t5i8m	2	\N	\N	\N
beq12cybpaz	tgg2yk2x7el	2	\N	\N	\N
beq12cybpaz	5p4ay8t5i8m	3	\N	\N	\N
smd6vh6wzvh	tgg2yk2x7el	3	\N	\N	\N
smd6vh6wzvh	5p4ay8t5i8m	4	\N	\N	\N
dac2j2kt870	tgg2yk2x7el	4	\N	\N	\N
dac2j2kt870	5p4ay8t5i8m	5	\N	\N	\N
fq548i6jjul	tgg2yk2x7el	5	\N	\N	\N
fq548i6jjul	5p4ay8t5i8m	6	\N	\N	\N
b8e4crdaije	tgg2yk2x7el	6	\N	\N	\N
b8e4crdaije	5p4ay8t5i8m	7	\N	\N	\N
41zfs8bogys	tgg2yk2x7el	7	\N	\N	\N
41zfs8bogys	5p4ay8t5i8m	8	\N	\N	\N
073buw1m70l	tgg2yk2x7el	8	\N	\N	\N
073buw1m70l	5p4ay8t5i8m	9	\N	\N	\N
nocobase-admin-menu	tgg2yk2x7el	9	\N	\N	\N
nocobase-admin-menu	5p4ay8t5i8m	10	\N	\N	\N
tgg2yk2x7el	tgg2yk2x7el	0	f	properties	\N
e3eaa6uq9t8	tgg2yk2x7el	1	\N	\N	3
073buw1m70l	ydsit0px4rd	15	\N	\N	\N
073buw1m70l	un4uti49os0	16	\N	\N	\N
073buw1m70l	hhlmur67sro	17	\N	\N	\N
073buw1m70l	avdz4ojpjyi	17	\N	\N	\N
nocobase-admin-menu	mk3xa4vi82o	14	\N	\N	\N
nocobase-admin-menu	3yn0m2wrfox	15	\N	\N	\N
nocobase-admin-menu	ydsit0px4rd	16	\N	\N	\N
nocobase-admin-menu	un4uti49os0	17	\N	\N	\N
nocobase-admin-menu	hhlmur67sro	18	\N	\N	\N
nocobase-admin-menu	avdz4ojpjyi	18	\N	\N	\N
9i5rajl4o7f	mk3xa4vi82o	1	\N	\N	1
cagfhzs782w	cagfhzs782w	0	f	properties	\N
yze2x2u555p	cagfhzs782w	1	\N	\N	1
nua7kket7hz	nua7kket7hz	0	f	properties	\N
cagfhzs782w	nua7kket7hz	1	\N	\N	1
yze2x2u555p	nua7kket7hz	2	\N	\N	1
41zfs8bogys	yze2x2u555p	17	\N	\N	\N
41zfs8bogys	cagfhzs782w	18	\N	\N	\N
41zfs8bogys	nua7kket7hz	19	\N	\N	\N
hhlmur67sro	cagfhzs782w	2	\N	\N	\N
hhlmur67sro	nua7kket7hz	3	\N	\N	\N
un4uti49os0	yze2x2u555p	2	\N	\N	\N
un4uti49os0	cagfhzs782w	3	\N	\N	\N
un4uti49os0	nua7kket7hz	4	\N	\N	\N
ydsit0px4rd	yze2x2u555p	3	\N	\N	\N
ydsit0px4rd	cagfhzs782w	4	\N	\N	\N
ydsit0px4rd	nua7kket7hz	5	\N	\N	\N
3yn0m2wrfox	yze2x2u555p	4	\N	\N	\N
3yn0m2wrfox	cagfhzs782w	5	\N	\N	\N
3yn0m2wrfox	nua7kket7hz	6	\N	\N	\N
mk3xa4vi82o	yze2x2u555p	5	\N	\N	\N
mk3xa4vi82o	cagfhzs782w	6	\N	\N	\N
mk3xa4vi82o	nua7kket7hz	7	\N	\N	\N
9i5rajl4o7f	yze2x2u555p	6	\N	\N	\N
9i5rajl4o7f	cagfhzs782w	7	\N	\N	\N
9i5rajl4o7f	nua7kket7hz	8	\N	\N	\N
ziv7xyw0rep	yze2x2u555p	7	\N	\N	\N
ziv7xyw0rep	cagfhzs782w	8	\N	\N	\N
ziv7xyw0rep	nua7kket7hz	9	\N	\N	\N
siizaqdcc7g	yze2x2u555p	8	\N	\N	\N
siizaqdcc7g	cagfhzs782w	9	\N	\N	\N
siizaqdcc7g	nua7kket7hz	10	\N	\N	\N
evlfkn2k9ay	yze2x2u555p	9	\N	\N	\N
evlfkn2k9ay	cagfhzs782w	10	\N	\N	\N
evlfkn2k9ay	nua7kket7hz	11	\N	\N	\N
9261692m4qa	yze2x2u555p	10	\N	\N	\N
9261692m4qa	cagfhzs782w	11	\N	\N	\N
9261692m4qa	nua7kket7hz	12	\N	\N	\N
h57ad49xfey	yze2x2u555p	11	\N	\N	\N
h57ad49xfey	cagfhzs782w	12	\N	\N	\N
h57ad49xfey	nua7kket7hz	13	\N	\N	\N
beq12cybpaz	yze2x2u555p	12	\N	\N	\N
beq12cybpaz	cagfhzs782w	13	\N	\N	\N
beq12cybpaz	nua7kket7hz	14	\N	\N	\N
smd6vh6wzvh	yze2x2u555p	13	\N	\N	\N
smd6vh6wzvh	cagfhzs782w	14	\N	\N	\N
smd6vh6wzvh	nua7kket7hz	15	\N	\N	\N
dac2j2kt870	yze2x2u555p	14	\N	\N	\N
dac2j2kt870	cagfhzs782w	15	\N	\N	\N
dac2j2kt870	nua7kket7hz	16	\N	\N	\N
fq548i6jjul	yze2x2u555p	15	\N	\N	\N
fq548i6jjul	cagfhzs782w	16	\N	\N	\N
fq548i6jjul	nua7kket7hz	17	\N	\N	\N
b8e4crdaije	yze2x2u555p	16	\N	\N	\N
b8e4crdaije	cagfhzs782w	17	\N	\N	\N
b8e4crdaije	nua7kket7hz	18	\N	\N	\N
073buw1m70l	yze2x2u555p	18	\N	\N	\N
073buw1m70l	cagfhzs782w	19	\N	\N	\N
073buw1m70l	nua7kket7hz	20	\N	\N	\N
nocobase-admin-menu	yze2x2u555p	19	\N	\N	\N
nocobase-admin-menu	cagfhzs782w	20	\N	\N	\N
nocobase-admin-menu	nua7kket7hz	21	\N	\N	\N
yze2x2u555p	yze2x2u555p	0	f	properties	\N
hhlmur67sro	yze2x2u555p	1	\N	\N	1
ln1lttr31if	ln1lttr31if	0	f	properties	\N
hwdhwy2que9	ln1lttr31if	1	\N	\N	1
whfdv9dw36r	whfdv9dw36r	0	f	properties	\N
ln1lttr31if	whfdv9dw36r	1	\N	\N	1
hwdhwy2que9	whfdv9dw36r	2	\N	\N	1
41zfs8bogys	hwdhwy2que9	17	\N	\N	\N
41zfs8bogys	ln1lttr31if	18	\N	\N	\N
41zfs8bogys	whfdv9dw36r	19	\N	\N	\N
hhlmur67sro	ln1lttr31if	2	\N	\N	\N
hhlmur67sro	whfdv9dw36r	3	\N	\N	\N
un4uti49os0	hwdhwy2que9	2	\N	\N	\N
un4uti49os0	ln1lttr31if	3	\N	\N	\N
un4uti49os0	whfdv9dw36r	4	\N	\N	\N
ydsit0px4rd	hwdhwy2que9	3	\N	\N	\N
ydsit0px4rd	ln1lttr31if	4	\N	\N	\N
ydsit0px4rd	whfdv9dw36r	5	\N	\N	\N
3yn0m2wrfox	hwdhwy2que9	4	\N	\N	\N
3yn0m2wrfox	ln1lttr31if	5	\N	\N	\N
3yn0m2wrfox	whfdv9dw36r	6	\N	\N	\N
mk3xa4vi82o	hwdhwy2que9	5	\N	\N	\N
mk3xa4vi82o	ln1lttr31if	6	\N	\N	\N
mk3xa4vi82o	whfdv9dw36r	7	\N	\N	\N
9i5rajl4o7f	hwdhwy2que9	6	\N	\N	\N
9i5rajl4o7f	ln1lttr31if	7	\N	\N	\N
9i5rajl4o7f	whfdv9dw36r	8	\N	\N	\N
ziv7xyw0rep	hwdhwy2que9	7	\N	\N	\N
ziv7xyw0rep	ln1lttr31if	8	\N	\N	\N
ziv7xyw0rep	whfdv9dw36r	9	\N	\N	\N
siizaqdcc7g	hwdhwy2que9	8	\N	\N	\N
siizaqdcc7g	ln1lttr31if	9	\N	\N	\N
siizaqdcc7g	whfdv9dw36r	10	\N	\N	\N
evlfkn2k9ay	hwdhwy2que9	9	\N	\N	\N
evlfkn2k9ay	ln1lttr31if	10	\N	\N	\N
evlfkn2k9ay	whfdv9dw36r	11	\N	\N	\N
9261692m4qa	hwdhwy2que9	10	\N	\N	\N
9261692m4qa	ln1lttr31if	11	\N	\N	\N
9261692m4qa	whfdv9dw36r	12	\N	\N	\N
h57ad49xfey	hwdhwy2que9	11	\N	\N	\N
h57ad49xfey	ln1lttr31if	12	\N	\N	\N
h57ad49xfey	whfdv9dw36r	13	\N	\N	\N
beq12cybpaz	hwdhwy2que9	12	\N	\N	\N
beq12cybpaz	ln1lttr31if	13	\N	\N	\N
beq12cybpaz	whfdv9dw36r	14	\N	\N	\N
smd6vh6wzvh	hwdhwy2que9	13	\N	\N	\N
smd6vh6wzvh	ln1lttr31if	14	\N	\N	\N
smd6vh6wzvh	whfdv9dw36r	15	\N	\N	\N
dac2j2kt870	hwdhwy2que9	14	\N	\N	\N
dac2j2kt870	ln1lttr31if	15	\N	\N	\N
dac2j2kt870	whfdv9dw36r	16	\N	\N	\N
fq548i6jjul	hwdhwy2que9	15	\N	\N	\N
fq548i6jjul	ln1lttr31if	16	\N	\N	\N
fq548i6jjul	whfdv9dw36r	17	\N	\N	\N
b8e4crdaije	hwdhwy2que9	16	\N	\N	\N
b8e4crdaije	ln1lttr31if	17	\N	\N	\N
b8e4crdaije	whfdv9dw36r	18	\N	\N	\N
073buw1m70l	hwdhwy2que9	18	\N	\N	\N
hwdhwy2que9	hwdhwy2que9	0	f	properties	\N
hhlmur67sro	hwdhwy2que9	1	\N	\N	2
073buw1m70l	ln1lttr31if	19	\N	\N	\N
073buw1m70l	whfdv9dw36r	20	\N	\N	\N
nocobase-admin-menu	hwdhwy2que9	19	\N	\N	\N
nocobase-admin-menu	ln1lttr31if	20	\N	\N	\N
nocobase-admin-menu	whfdv9dw36r	21	\N	\N	\N
05ogzmyvz6t	05ogzmyvz6t	0	f	properties	\N
41zfs8bogys	05ogzmyvz6t	17	\N	\N	\N
un4uti49os0	05ogzmyvz6t	2	\N	\N	\N
ydsit0px4rd	05ogzmyvz6t	3	\N	\N	\N
3yn0m2wrfox	05ogzmyvz6t	4	\N	\N	\N
mk3xa4vi82o	05ogzmyvz6t	5	\N	\N	\N
9i5rajl4o7f	05ogzmyvz6t	6	\N	\N	\N
ziv7xyw0rep	05ogzmyvz6t	7	\N	\N	\N
siizaqdcc7g	05ogzmyvz6t	8	\N	\N	\N
evlfkn2k9ay	05ogzmyvz6t	9	\N	\N	\N
9261692m4qa	05ogzmyvz6t	10	\N	\N	\N
h57ad49xfey	05ogzmyvz6t	11	\N	\N	\N
beq12cybpaz	05ogzmyvz6t	12	\N	\N	\N
smd6vh6wzvh	05ogzmyvz6t	13	\N	\N	\N
dac2j2kt870	05ogzmyvz6t	14	\N	\N	\N
fq548i6jjul	05ogzmyvz6t	15	\N	\N	\N
b8e4crdaije	05ogzmyvz6t	16	\N	\N	\N
073buw1m70l	05ogzmyvz6t	18	\N	\N	\N
nocobase-admin-menu	05ogzmyvz6t	19	\N	\N	\N
avdz4ojpjyi	05ogzmyvz6t	1	\N	\N	1
jqr7lgri2e0	jqr7lgri2e0	0	t	properties	\N
5vjhonzhs45	jqr7lgri2e0	1	\N	\N	1
2mxzcpz5cle	2mxzcpz5cle	0	f	properties	\N
jqr7lgri2e0	2mxzcpz5cle	1	\N	\N	1
5vjhonzhs45	2mxzcpz5cle	2	\N	\N	1
073buw1m70l	jqr7lgri2e0	2	\N	\N	\N
073buw1m70l	2mxzcpz5cle	3	\N	\N	\N
nocobase-admin-menu	5vjhonzhs45	2	\N	\N	\N
nocobase-admin-menu	jqr7lgri2e0	3	\N	\N	\N
nocobase-admin-menu	2mxzcpz5cle	4	\N	\N	\N
5vjhonzhs45	5vjhonzhs45	0	f	properties	\N
073buw1m70l	5vjhonzhs45	1	\N	\N	8
ae9oy5f4ysb	ae9oy5f4ysb	0	f	properties	\N
wso6s8x6rl8	ae9oy5f4ysb	1	\N	\N	1
n9v4n7uay5t	n9v4n7uay5t	0	f	properties	\N
ae9oy5f4ysb	n9v4n7uay5t	1	\N	\N	1
wso6s8x6rl8	n9v4n7uay5t	2	\N	\N	1
7hcdwtkjl53	7hcdwtkjl53	0	f	properties	\N
n9v4n7uay5t	7hcdwtkjl53	1	\N	\N	1
ae9oy5f4ysb	7hcdwtkjl53	2	\N	\N	1
wso6s8x6rl8	7hcdwtkjl53	3	\N	\N	1
2mxzcpz5cle	ae9oy5f4ysb	2	\N	\N	\N
2mxzcpz5cle	n9v4n7uay5t	3	\N	\N	\N
2mxzcpz5cle	7hcdwtkjl53	4	\N	\N	\N
jqr7lgri2e0	wso6s8x6rl8	2	\N	\N	\N
jqr7lgri2e0	ae9oy5f4ysb	3	\N	\N	\N
jqr7lgri2e0	n9v4n7uay5t	4	\N	\N	\N
jqr7lgri2e0	7hcdwtkjl53	5	\N	\N	\N
5vjhonzhs45	wso6s8x6rl8	3	\N	\N	\N
5vjhonzhs45	ae9oy5f4ysb	4	\N	\N	\N
5vjhonzhs45	n9v4n7uay5t	5	\N	\N	\N
5vjhonzhs45	7hcdwtkjl53	6	\N	\N	\N
073buw1m70l	wso6s8x6rl8	4	\N	\N	\N
073buw1m70l	ae9oy5f4ysb	5	\N	\N	\N
073buw1m70l	n9v4n7uay5t	6	\N	\N	\N
073buw1m70l	7hcdwtkjl53	7	\N	\N	\N
nocobase-admin-menu	wso6s8x6rl8	5	\N	\N	\N
nocobase-admin-menu	ae9oy5f4ysb	6	\N	\N	\N
nocobase-admin-menu	n9v4n7uay5t	7	\N	\N	\N
nocobase-admin-menu	7hcdwtkjl53	8	\N	\N	\N
wso6s8x6rl8	wso6s8x6rl8	0	f	properties	\N
2mxzcpz5cle	wso6s8x6rl8	1	\N	\N	1
olvl2c3hlpk	olvl2c3hlpk	0	f	properties	\N
oku0n57sd7x	olvl2c3hlpk	1	\N	\N	1
oam5lsqaqw1	oam5lsqaqw1	0	f	properties	\N
olvl2c3hlpk	oam5lsqaqw1	1	\N	\N	1
oku0n57sd7x	oam5lsqaqw1	2	\N	\N	1
oy9b77omeje	oy9b77omeje	0	f	properties	\N
oam5lsqaqw1	oy9b77omeje	1	\N	\N	1
olvl2c3hlpk	oy9b77omeje	2	\N	\N	1
oku0n57sd7x	oy9b77omeje	3	\N	\N	1
i80vemflinb	olvl2c3hlpk	2	\N	\N	\N
i80vemflinb	oam5lsqaqw1	3	\N	\N	\N
i80vemflinb	oy9b77omeje	4	\N	\N	\N
5bru92qlyrq	oku0n57sd7x	2	\N	\N	\N
5bru92qlyrq	olvl2c3hlpk	3	\N	\N	\N
5bru92qlyrq	oam5lsqaqw1	4	\N	\N	\N
5bru92qlyrq	oy9b77omeje	5	\N	\N	\N
obl2auujo32	oku0n57sd7x	3	\N	\N	\N
obl2auujo32	olvl2c3hlpk	4	\N	\N	\N
obl2auujo32	oam5lsqaqw1	5	\N	\N	\N
obl2auujo32	oy9b77omeje	6	\N	\N	\N
nocobase-admin-menu	oku0n57sd7x	4	\N	\N	\N
nocobase-admin-menu	olvl2c3hlpk	5	\N	\N	\N
nocobase-admin-menu	oam5lsqaqw1	6	\N	\N	\N
nocobase-admin-menu	oy9b77omeje	7	\N	\N	\N
oku0n57sd7x	oku0n57sd7x	0	f	properties	\N
i80vemflinb	oku0n57sd7x	1	\N	\N	1
55dw0zjnq5z	55dw0zjnq5z	0	f	properties	\N
x7rtah7eo6m	x7rtah7eo6m	0	f	properties	\N
h2074c82qcd	x7rtah7eo6m	1	\N	\N	1
7cqqh5i0a2o	7cqqh5i0a2o	0	f	properties	\N
x7rtah7eo6m	7cqqh5i0a2o	1	\N	\N	1
h2074c82qcd	7cqqh5i0a2o	2	\N	\N	1
5bru92qlyrq	br2iml0jo4g	2	\N	\N	\N
obl2auujo32	br2iml0jo4g	3	\N	\N	\N
nocobase-admin-menu	br2iml0jo4g	4	\N	\N	\N
br2iml0jo4g	br2iml0jo4g	0	f	properties	\N
i80vemflinb	br2iml0jo4g	1	\N	\N	2
y1rrkjssybd	y1rrkjssybd	0	f	properties	\N
iyip7uhpv5v	y1rrkjssybd	1	\N	\N	1
uy8iun5lic9	uy8iun5lic9	0	f	properties	\N
y1rrkjssybd	uy8iun5lic9	1	\N	\N	1
iyip7uhpv5v	uy8iun5lic9	2	\N	\N	1
7cqqh5i0a2o	y1rrkjssybd	2	\N	\N	\N
7cqqh5i0a2o	uy8iun5lic9	3	\N	\N	\N
x7rtah7eo6m	iyip7uhpv5v	2	\N	\N	\N
x7rtah7eo6m	y1rrkjssybd	3	\N	\N	\N
x7rtah7eo6m	uy8iun5lic9	4	\N	\N	\N
h2074c82qcd	iyip7uhpv5v	3	\N	\N	\N
h2074c82qcd	y1rrkjssybd	4	\N	\N	\N
h2074c82qcd	uy8iun5lic9	5	\N	\N	\N
iyip7uhpv5v	iyip7uhpv5v	0	f	properties	\N
7cqqh5i0a2o	iyip7uhpv5v	1	\N	\N	1
y5cb9mdp2aj	y5cb9mdp2aj	0	f	properties	\N
55dw0zjnq5z	y5cb9mdp2aj	1	\N	\N	1
huog9umg369	huog9umg369	0	f	properties	\N
y5cb9mdp2aj	huog9umg369	1	\N	\N	1
55dw0zjnq5z	huog9umg369	2	\N	\N	1
7cqqh5i0a2o	y5cb9mdp2aj	2	\N	\N	\N
7cqqh5i0a2o	huog9umg369	3	\N	\N	\N
x7rtah7eo6m	55dw0zjnq5z	2	\N	\N	\N
x7rtah7eo6m	y5cb9mdp2aj	3	\N	\N	\N
x7rtah7eo6m	huog9umg369	4	\N	\N	\N
h2074c82qcd	55dw0zjnq5z	3	\N	\N	\N
h2074c82qcd	y5cb9mdp2aj	4	\N	\N	\N
h2074c82qcd	huog9umg369	5	\N	\N	\N
7cqqh5i0a2o	55dw0zjnq5z	1	\N	\N	2
h2074c82qcd	h2074c82qcd	0	f	properties	\N
kfb8elqjp0o	x7rtah7eo6m	2	\N	\N	\N
kfb8elqjp0o	7cqqh5i0a2o	3	\N	\N	\N
kfb8elqjp0o	iyip7uhpv5v	4	\N	\N	\N
kfb8elqjp0o	y1rrkjssybd	5	\N	\N	\N
kfb8elqjp0o	uy8iun5lic9	6	\N	\N	\N
kfb8elqjp0o	55dw0zjnq5z	4	\N	\N	\N
kfb8elqjp0o	y5cb9mdp2aj	5	\N	\N	\N
kfb8elqjp0o	huog9umg369	6	\N	\N	\N
evtz6ljqxdq	evtz6ljqxdq	0	f	properties	\N
kfb8elqjp0o	h2074c82qcd	1	\N	\N	1
oku0n57sd7x	h2074c82qcd	2	\N	\N	\N
oku0n57sd7x	x7rtah7eo6m	3	\N	\N	\N
oku0n57sd7x	7cqqh5i0a2o	4	\N	\N	\N
oku0n57sd7x	iyip7uhpv5v	5	\N	\N	\N
oku0n57sd7x	y1rrkjssybd	6	\N	\N	\N
oku0n57sd7x	uy8iun5lic9	7	\N	\N	\N
oku0n57sd7x	55dw0zjnq5z	5	\N	\N	\N
oku0n57sd7x	y5cb9mdp2aj	6	\N	\N	\N
oku0n57sd7x	huog9umg369	7	\N	\N	\N
i80vemflinb	kfb8elqjp0o	2	\N	\N	\N
i80vemflinb	h2074c82qcd	3	\N	\N	\N
i80vemflinb	x7rtah7eo6m	4	\N	\N	\N
i80vemflinb	7cqqh5i0a2o	5	\N	\N	\N
i80vemflinb	iyip7uhpv5v	6	\N	\N	\N
i80vemflinb	y1rrkjssybd	7	\N	\N	\N
i80vemflinb	uy8iun5lic9	8	\N	\N	\N
i80vemflinb	55dw0zjnq5z	6	\N	\N	\N
i80vemflinb	y5cb9mdp2aj	7	\N	\N	\N
i80vemflinb	huog9umg369	8	\N	\N	\N
5bru92qlyrq	kfb8elqjp0o	3	\N	\N	\N
5bru92qlyrq	h2074c82qcd	4	\N	\N	\N
5bru92qlyrq	x7rtah7eo6m	5	\N	\N	\N
5bru92qlyrq	7cqqh5i0a2o	6	\N	\N	\N
5bru92qlyrq	iyip7uhpv5v	7	\N	\N	\N
5bru92qlyrq	y1rrkjssybd	8	\N	\N	\N
5bru92qlyrq	uy8iun5lic9	9	\N	\N	\N
5bru92qlyrq	55dw0zjnq5z	7	\N	\N	\N
5bru92qlyrq	y5cb9mdp2aj	8	\N	\N	\N
5bru92qlyrq	huog9umg369	9	\N	\N	\N
obl2auujo32	kfb8elqjp0o	4	\N	\N	\N
obl2auujo32	h2074c82qcd	5	\N	\N	\N
obl2auujo32	x7rtah7eo6m	6	\N	\N	\N
obl2auujo32	7cqqh5i0a2o	7	\N	\N	\N
obl2auujo32	iyip7uhpv5v	8	\N	\N	\N
obl2auujo32	y1rrkjssybd	9	\N	\N	\N
obl2auujo32	uy8iun5lic9	10	\N	\N	\N
obl2auujo32	55dw0zjnq5z	8	\N	\N	\N
obl2auujo32	y5cb9mdp2aj	9	\N	\N	\N
obl2auujo32	huog9umg369	10	\N	\N	\N
nocobase-admin-menu	kfb8elqjp0o	5	\N	\N	\N
nocobase-admin-menu	h2074c82qcd	6	\N	\N	\N
nocobase-admin-menu	x7rtah7eo6m	7	\N	\N	\N
nocobase-admin-menu	7cqqh5i0a2o	8	\N	\N	\N
nocobase-admin-menu	iyip7uhpv5v	9	\N	\N	\N
nocobase-admin-menu	y1rrkjssybd	10	\N	\N	\N
nocobase-admin-menu	uy8iun5lic9	11	\N	\N	\N
nocobase-admin-menu	55dw0zjnq5z	9	\N	\N	\N
nocobase-admin-menu	y5cb9mdp2aj	10	\N	\N	\N
nocobase-admin-menu	huog9umg369	11	\N	\N	\N
kfb8elqjp0o	kfb8elqjp0o	0	f	properties	\N
oku0n57sd7x	kfb8elqjp0o	1	\N	\N	2
es37ibmvv1x	es37ibmvv1x	0	f	properties	\N
gfmff5ur0jg	es37ibmvv1x	1	\N	\N	1
kfb8elqjp0o	es37ibmvv1x	2	\N	\N	\N
oku0n57sd7x	gfmff5ur0jg	2	\N	\N	\N
oku0n57sd7x	es37ibmvv1x	3	\N	\N	\N
i80vemflinb	gfmff5ur0jg	3	\N	\N	\N
i80vemflinb	es37ibmvv1x	4	\N	\N	\N
5bru92qlyrq	gfmff5ur0jg	4	\N	\N	\N
5bru92qlyrq	es37ibmvv1x	5	\N	\N	\N
obl2auujo32	gfmff5ur0jg	5	\N	\N	\N
obl2auujo32	es37ibmvv1x	6	\N	\N	\N
nocobase-admin-menu	gfmff5ur0jg	6	\N	\N	\N
nocobase-admin-menu	es37ibmvv1x	7	\N	\N	\N
gfmff5ur0jg	gfmff5ur0jg	0	f	properties	\N
kfb8elqjp0o	gfmff5ur0jg	1	\N	\N	2
byou5tpcmg3	byou5tpcmg3	0	f	properties	\N
evtz6ljqxdq	byou5tpcmg3	1	\N	\N	1
2r8rihvxbxo	2r8rihvxbxo	0	f	properties	\N
byou5tpcmg3	2r8rihvxbxo	1	\N	\N	1
evtz6ljqxdq	2r8rihvxbxo	2	\N	\N	1
hinf8z4a0c0	hinf8z4a0c0	0	f	properties	\N
2r8rihvxbxo	hinf8z4a0c0	1	\N	\N	1
byou5tpcmg3	hinf8z4a0c0	2	\N	\N	1
evtz6ljqxdq	hinf8z4a0c0	3	\N	\N	1
efkn3sb524k	efkn3sb524k	0	f	properties	\N
hinf8z4a0c0	efkn3sb524k	1	\N	\N	1
2r8rihvxbxo	efkn3sb524k	2	\N	\N	1
byou5tpcmg3	efkn3sb524k	3	\N	\N	1
evtz6ljqxdq	efkn3sb524k	4	\N	\N	1
y2c016sbek0	y2c016sbek0	0	f	properties	\N
hinf8z4a0c0	y2c016sbek0	1	\N	\N	2
2r8rihvxbxo	y2c016sbek0	2	\N	\N	2
byou5tpcmg3	y2c016sbek0	3	\N	\N	2
evtz6ljqxdq	y2c016sbek0	4	\N	\N	2
46hfbluhnm0	46hfbluhnm0	0	f	properties	\N
hinf8z4a0c0	46hfbluhnm0	1	\N	\N	3
2r8rihvxbxo	46hfbluhnm0	2	\N	\N	3
byou5tpcmg3	46hfbluhnm0	3	\N	\N	3
evtz6ljqxdq	46hfbluhnm0	4	\N	\N	3
i80vemflinb	byou5tpcmg3	2	\N	\N	\N
i80vemflinb	2r8rihvxbxo	3	\N	\N	\N
i80vemflinb	hinf8z4a0c0	4	\N	\N	\N
i80vemflinb	efkn3sb524k	5	\N	\N	\N
i80vemflinb	y2c016sbek0	5	\N	\N	\N
i80vemflinb	46hfbluhnm0	5	\N	\N	\N
5bru92qlyrq	evtz6ljqxdq	2	\N	\N	\N
5bru92qlyrq	byou5tpcmg3	3	\N	\N	\N
5bru92qlyrq	2r8rihvxbxo	4	\N	\N	\N
5bru92qlyrq	hinf8z4a0c0	5	\N	\N	\N
5bru92qlyrq	efkn3sb524k	6	\N	\N	\N
5bru92qlyrq	y2c016sbek0	6	\N	\N	\N
5bru92qlyrq	46hfbluhnm0	6	\N	\N	\N
obl2auujo32	evtz6ljqxdq	3	\N	\N	\N
obl2auujo32	byou5tpcmg3	4	\N	\N	\N
obl2auujo32	2r8rihvxbxo	5	\N	\N	\N
obl2auujo32	hinf8z4a0c0	6	\N	\N	\N
obl2auujo32	efkn3sb524k	7	\N	\N	\N
obl2auujo32	y2c016sbek0	7	\N	\N	\N
obl2auujo32	46hfbluhnm0	7	\N	\N	\N
nocobase-admin-menu	evtz6ljqxdq	4	\N	\N	\N
nocobase-admin-menu	byou5tpcmg3	5	\N	\N	\N
nocobase-admin-menu	2r8rihvxbxo	6	\N	\N	\N
nocobase-admin-menu	hinf8z4a0c0	7	\N	\N	\N
nocobase-admin-menu	efkn3sb524k	8	\N	\N	\N
nocobase-admin-menu	y2c016sbek0	8	\N	\N	\N
nocobase-admin-menu	46hfbluhnm0	8	\N	\N	\N
i80vemflinb	evtz6ljqxdq	1	\N	\N	3
8nro93nzp01	8nro93nzp01	0	f	properties	\N
t41h1b5ogjp	8nro93nzp01	1	\N	\N	1
ffgmrwpmg44	ffgmrwpmg44	0	f	properties	\N
8nro93nzp01	ffgmrwpmg44	1	\N	\N	1
t41h1b5ogjp	ffgmrwpmg44	2	\N	\N	1
y2c016sbek0	8nro93nzp01	2	\N	\N	\N
y2c016sbek0	ffgmrwpmg44	3	\N	\N	\N
hinf8z4a0c0	t41h1b5ogjp	2	\N	\N	\N
hinf8z4a0c0	8nro93nzp01	3	\N	\N	\N
hinf8z4a0c0	ffgmrwpmg44	4	\N	\N	\N
2r8rihvxbxo	t41h1b5ogjp	3	\N	\N	\N
2r8rihvxbxo	8nro93nzp01	4	\N	\N	\N
2r8rihvxbxo	ffgmrwpmg44	5	\N	\N	\N
byou5tpcmg3	t41h1b5ogjp	4	\N	\N	\N
byou5tpcmg3	8nro93nzp01	5	\N	\N	\N
byou5tpcmg3	ffgmrwpmg44	6	\N	\N	\N
evtz6ljqxdq	t41h1b5ogjp	5	\N	\N	\N
evtz6ljqxdq	8nro93nzp01	6	\N	\N	\N
evtz6ljqxdq	ffgmrwpmg44	7	\N	\N	\N
i80vemflinb	t41h1b5ogjp	6	\N	\N	\N
i80vemflinb	8nro93nzp01	7	\N	\N	\N
i80vemflinb	ffgmrwpmg44	8	\N	\N	\N
5bru92qlyrq	t41h1b5ogjp	7	\N	\N	\N
5bru92qlyrq	8nro93nzp01	8	\N	\N	\N
5bru92qlyrq	ffgmrwpmg44	9	\N	\N	\N
obl2auujo32	t41h1b5ogjp	8	\N	\N	\N
obl2auujo32	8nro93nzp01	9	\N	\N	\N
obl2auujo32	ffgmrwpmg44	10	\N	\N	\N
nocobase-admin-menu	t41h1b5ogjp	9	\N	\N	\N
nocobase-admin-menu	8nro93nzp01	10	\N	\N	\N
nocobase-admin-menu	ffgmrwpmg44	11	\N	\N	\N
t41h1b5ogjp	t41h1b5ogjp	0	f	properties	\N
y2c016sbek0	t41h1b5ogjp	1	\N	\N	1
puz5i9w50bl	puz5i9w50bl	0	f	properties	\N
idfhxat5qg6	puz5i9w50bl	1	\N	\N	1
9kxizfoklw7	9kxizfoklw7	0	f	properties	\N
puz5i9w50bl	9kxizfoklw7	1	\N	\N	1
idfhxat5qg6	9kxizfoklw7	2	\N	\N	1
am0lmjthjqi	am0lmjthjqi	0	f	properties	\N
9kxizfoklw7	am0lmjthjqi	1	\N	\N	1
puz5i9w50bl	am0lmjthjqi	2	\N	\N	1
idfhxat5qg6	am0lmjthjqi	3	\N	\N	1
pdtxkxhi0px	pdtxkxhi0px	0	f	properties	\N
9kxizfoklw7	pdtxkxhi0px	1	\N	\N	2
puz5i9w50bl	pdtxkxhi0px	2	\N	\N	2
idfhxat5qg6	pdtxkxhi0px	3	\N	\N	2
m291sv0y712	m291sv0y712	0	f	properties	\N
3d4bg9et9gc	m291sv0y712	1	\N	\N	1
iqddf9bwww2	puz5i9w50bl	2	\N	\N	\N
iqddf9bwww2	9kxizfoklw7	3	\N	\N	\N
iqddf9bwww2	am0lmjthjqi	4	\N	\N	\N
iqddf9bwww2	pdtxkxhi0px	4	\N	\N	\N
eoxofxze047	idfhxat5qg6	2	\N	\N	\N
eoxofxze047	puz5i9w50bl	3	\N	\N	\N
eoxofxze047	9kxizfoklw7	4	\N	\N	\N
eoxofxze047	am0lmjthjqi	5	\N	\N	\N
eoxofxze047	pdtxkxhi0px	5	\N	\N	\N
p3ls96regvr	idfhxat5qg6	3	\N	\N	\N
p3ls96regvr	puz5i9w50bl	4	\N	\N	\N
p3ls96regvr	9kxizfoklw7	5	\N	\N	\N
p3ls96regvr	am0lmjthjqi	6	\N	\N	\N
p3ls96regvr	pdtxkxhi0px	6	\N	\N	\N
073buw1m70l	idfhxat5qg6	4	\N	\N	\N
073buw1m70l	puz5i9w50bl	5	\N	\N	\N
073buw1m70l	9kxizfoklw7	6	\N	\N	\N
073buw1m70l	am0lmjthjqi	7	\N	\N	\N
073buw1m70l	pdtxkxhi0px	7	\N	\N	\N
nocobase-admin-menu	idfhxat5qg6	5	\N	\N	\N
nocobase-admin-menu	puz5i9w50bl	6	\N	\N	\N
nocobase-admin-menu	9kxizfoklw7	7	\N	\N	\N
nocobase-admin-menu	am0lmjthjqi	8	\N	\N	\N
nocobase-admin-menu	pdtxkxhi0px	8	\N	\N	\N
idfhxat5qg6	idfhxat5qg6	0	f	properties	\N
iqddf9bwww2	idfhxat5qg6	1	\N	\N	1
3d4bg9et9gc	3d4bg9et9gc	0	f	properties	\N
fyur6k3frte	fyur6k3frte	0	f	properties	\N
okedwk5bmwj	fyur6k3frte	1	\N	\N	1
pdtxkxhi0px	fyur6k3frte	2	\N	\N	\N
9kxizfoklw7	okedwk5bmwj	2	\N	\N	\N
9kxizfoklw7	fyur6k3frte	3	\N	\N	\N
puz5i9w50bl	okedwk5bmwj	3	\N	\N	\N
puz5i9w50bl	fyur6k3frte	4	\N	\N	\N
idfhxat5qg6	okedwk5bmwj	4	\N	\N	\N
idfhxat5qg6	fyur6k3frte	5	\N	\N	\N
iqddf9bwww2	okedwk5bmwj	5	\N	\N	\N
iqddf9bwww2	fyur6k3frte	6	\N	\N	\N
eoxofxze047	okedwk5bmwj	6	\N	\N	\N
eoxofxze047	fyur6k3frte	7	\N	\N	\N
p3ls96regvr	okedwk5bmwj	7	\N	\N	\N
p3ls96regvr	fyur6k3frte	8	\N	\N	\N
073buw1m70l	okedwk5bmwj	8	\N	\N	\N
073buw1m70l	fyur6k3frte	9	\N	\N	\N
nocobase-admin-menu	okedwk5bmwj	9	\N	\N	\N
nocobase-admin-menu	fyur6k3frte	10	\N	\N	\N
okedwk5bmwj	okedwk5bmwj	0	f	properties	\N
xhy05nql4d0	xhy05nql4d0	0	f	properties	\N
w6aolvhz2fn	xhy05nql4d0	1	\N	\N	1
pdtxkxhi0px	xhy05nql4d0	2	\N	\N	\N
9kxizfoklw7	w6aolvhz2fn	2	\N	\N	\N
9kxizfoklw7	xhy05nql4d0	3	\N	\N	\N
puz5i9w50bl	w6aolvhz2fn	3	\N	\N	\N
puz5i9w50bl	xhy05nql4d0	4	\N	\N	\N
idfhxat5qg6	w6aolvhz2fn	4	\N	\N	\N
idfhxat5qg6	xhy05nql4d0	5	\N	\N	\N
iqddf9bwww2	w6aolvhz2fn	5	\N	\N	\N
iqddf9bwww2	xhy05nql4d0	6	\N	\N	\N
eoxofxze047	w6aolvhz2fn	6	\N	\N	\N
eoxofxze047	xhy05nql4d0	7	\N	\N	\N
p3ls96regvr	w6aolvhz2fn	7	\N	\N	\N
p3ls96regvr	xhy05nql4d0	8	\N	\N	\N
073buw1m70l	w6aolvhz2fn	8	\N	\N	\N
073buw1m70l	xhy05nql4d0	9	\N	\N	\N
nocobase-admin-menu	w6aolvhz2fn	9	\N	\N	\N
nocobase-admin-menu	xhy05nql4d0	10	\N	\N	\N
w6aolvhz2fn	w6aolvhz2fn	0	f	properties	\N
nz66cob6vdf	nz66cob6vdf	0	f	properties	\N
efjsld3xk23	nz66cob6vdf	1	\N	\N	1
pdtxkxhi0px	nz66cob6vdf	2	\N	\N	\N
9kxizfoklw7	efjsld3xk23	2	\N	\N	\N
9kxizfoklw7	nz66cob6vdf	3	\N	\N	\N
puz5i9w50bl	efjsld3xk23	3	\N	\N	\N
puz5i9w50bl	nz66cob6vdf	4	\N	\N	\N
idfhxat5qg6	efjsld3xk23	4	\N	\N	\N
idfhxat5qg6	nz66cob6vdf	5	\N	\N	\N
iqddf9bwww2	efjsld3xk23	5	\N	\N	\N
iqddf9bwww2	nz66cob6vdf	6	\N	\N	\N
eoxofxze047	efjsld3xk23	6	\N	\N	\N
eoxofxze047	nz66cob6vdf	7	\N	\N	\N
p3ls96regvr	efjsld3xk23	7	\N	\N	\N
p3ls96regvr	nz66cob6vdf	8	\N	\N	\N
073buw1m70l	efjsld3xk23	8	\N	\N	\N
073buw1m70l	nz66cob6vdf	9	\N	\N	\N
nocobase-admin-menu	efjsld3xk23	9	\N	\N	\N
nocobase-admin-menu	nz66cob6vdf	10	\N	\N	\N
efjsld3xk23	efjsld3xk23	0	f	properties	\N
pdtxkxhi0px	okedwk5bmwj	1	\N	\N	4
pdtxkxhi0px	w6aolvhz2fn	1	\N	\N	5
pdtxkxhi0px	efjsld3xk23	1	\N	\N	6
pdtxkxhi0px	m291sv0y712	2	\N	\N	\N
9kxizfoklw7	3d4bg9et9gc	2	\N	\N	\N
9kxizfoklw7	m291sv0y712	3	\N	\N	\N
puz5i9w50bl	3d4bg9et9gc	3	\N	\N	\N
puz5i9w50bl	m291sv0y712	4	\N	\N	\N
idfhxat5qg6	3d4bg9et9gc	4	\N	\N	\N
idfhxat5qg6	m291sv0y712	5	\N	\N	\N
iqddf9bwww2	3d4bg9et9gc	5	\N	\N	\N
iqddf9bwww2	m291sv0y712	6	\N	\N	\N
eoxofxze047	3d4bg9et9gc	6	\N	\N	\N
eoxofxze047	m291sv0y712	7	\N	\N	\N
p3ls96regvr	3d4bg9et9gc	7	\N	\N	\N
p3ls96regvr	m291sv0y712	8	\N	\N	\N
073buw1m70l	3d4bg9et9gc	8	\N	\N	\N
073buw1m70l	m291sv0y712	9	\N	\N	\N
nocobase-admin-menu	3d4bg9et9gc	9	\N	\N	\N
nocobase-admin-menu	m291sv0y712	10	\N	\N	\N
28b4u7eth02	28b4u7eth02	0	f	properties	\N
9kxizfoklw7	28b4u7eth02	2	\N	\N	\N
puz5i9w50bl	28b4u7eth02	3	\N	\N	\N
idfhxat5qg6	28b4u7eth02	4	\N	\N	\N
iqddf9bwww2	28b4u7eth02	5	\N	\N	\N
eoxofxze047	28b4u7eth02	6	\N	\N	\N
p3ls96regvr	28b4u7eth02	7	\N	\N	\N
073buw1m70l	28b4u7eth02	8	\N	\N	\N
nocobase-admin-menu	28b4u7eth02	9	\N	\N	\N
am0lmjthjqi	28b4u7eth02	1	\N	\N	1
82e6meyr33d	82e6meyr33d	0	f	properties	\N
h9kgonsr277	82e6meyr33d	1	\N	\N	1
r0rbal9gwoa	r0rbal9gwoa	0	f	properties	\N
82e6meyr33d	r0rbal9gwoa	1	\N	\N	1
h9kgonsr277	r0rbal9gwoa	2	\N	\N	1
dlbotzk5ta3	dlbotzk5ta3	0	f	properties	\N
r0rbal9gwoa	dlbotzk5ta3	1	\N	\N	1
82e6meyr33d	dlbotzk5ta3	2	\N	\N	1
h9kgonsr277	dlbotzk5ta3	3	\N	\N	1
47lzjhwq4e3	47lzjhwq4e3	0	f	properties	\N
dlbotzk5ta3	47lzjhwq4e3	1	\N	\N	1
r0rbal9gwoa	47lzjhwq4e3	2	\N	\N	1
82e6meyr33d	47lzjhwq4e3	3	\N	\N	1
h9kgonsr277	47lzjhwq4e3	4	\N	\N	1
am0lmjthjqi	82e6meyr33d	2	\N	\N	\N
am0lmjthjqi	r0rbal9gwoa	3	\N	\N	\N
am0lmjthjqi	dlbotzk5ta3	4	\N	\N	\N
am0lmjthjqi	47lzjhwq4e3	5	\N	\N	\N
9kxizfoklw7	h9kgonsr277	2	\N	\N	\N
9kxizfoklw7	82e6meyr33d	3	\N	\N	\N
9kxizfoklw7	r0rbal9gwoa	4	\N	\N	\N
9kxizfoklw7	dlbotzk5ta3	5	\N	\N	\N
9kxizfoklw7	47lzjhwq4e3	6	\N	\N	\N
puz5i9w50bl	h9kgonsr277	3	\N	\N	\N
puz5i9w50bl	82e6meyr33d	4	\N	\N	\N
puz5i9w50bl	r0rbal9gwoa	5	\N	\N	\N
puz5i9w50bl	dlbotzk5ta3	6	\N	\N	\N
puz5i9w50bl	47lzjhwq4e3	7	\N	\N	\N
idfhxat5qg6	h9kgonsr277	4	\N	\N	\N
idfhxat5qg6	82e6meyr33d	5	\N	\N	\N
idfhxat5qg6	r0rbal9gwoa	6	\N	\N	\N
idfhxat5qg6	dlbotzk5ta3	7	\N	\N	\N
idfhxat5qg6	47lzjhwq4e3	8	\N	\N	\N
iqddf9bwww2	h9kgonsr277	5	\N	\N	\N
iqddf9bwww2	82e6meyr33d	6	\N	\N	\N
iqddf9bwww2	r0rbal9gwoa	7	\N	\N	\N
iqddf9bwww2	dlbotzk5ta3	8	\N	\N	\N
iqddf9bwww2	47lzjhwq4e3	9	\N	\N	\N
eoxofxze047	h9kgonsr277	6	\N	\N	\N
eoxofxze047	82e6meyr33d	7	\N	\N	\N
eoxofxze047	r0rbal9gwoa	8	\N	\N	\N
eoxofxze047	dlbotzk5ta3	9	\N	\N	\N
eoxofxze047	47lzjhwq4e3	10	\N	\N	\N
p3ls96regvr	h9kgonsr277	7	\N	\N	\N
p3ls96regvr	82e6meyr33d	8	\N	\N	\N
p3ls96regvr	r0rbal9gwoa	9	\N	\N	\N
p3ls96regvr	dlbotzk5ta3	10	\N	\N	\N
p3ls96regvr	47lzjhwq4e3	11	\N	\N	\N
073buw1m70l	h9kgonsr277	8	\N	\N	\N
073buw1m70l	82e6meyr33d	9	\N	\N	\N
073buw1m70l	r0rbal9gwoa	10	\N	\N	\N
073buw1m70l	dlbotzk5ta3	11	\N	\N	\N
073buw1m70l	47lzjhwq4e3	12	\N	\N	\N
nocobase-admin-menu	h9kgonsr277	9	\N	\N	\N
nocobase-admin-menu	82e6meyr33d	10	\N	\N	\N
nocobase-admin-menu	r0rbal9gwoa	11	\N	\N	\N
nocobase-admin-menu	dlbotzk5ta3	12	\N	\N	\N
nocobase-admin-menu	47lzjhwq4e3	13	\N	\N	\N
h9kgonsr277	h9kgonsr277	0	f	properties	\N
am0lmjthjqi	h9kgonsr277	1	\N	\N	2
949ol9g4pk3	949ol9g4pk3	0	f	properties	\N
9kxizfoklw7	949ol9g4pk3	2	\N	\N	\N
puz5i9w50bl	949ol9g4pk3	3	\N	\N	\N
idfhxat5qg6	949ol9g4pk3	4	\N	\N	\N
iqddf9bwww2	949ol9g4pk3	5	\N	\N	\N
eoxofxze047	949ol9g4pk3	6	\N	\N	\N
p3ls96regvr	949ol9g4pk3	7	\N	\N	\N
073buw1m70l	949ol9g4pk3	8	\N	\N	\N
nocobase-admin-menu	949ol9g4pk3	9	\N	\N	\N
am0lmjthjqi	949ol9g4pk3	1	\N	\N	3
97jnvf1ludu	97jnvf1ludu	0	f	properties	\N
9kxizfoklw7	97jnvf1ludu	2	\N	\N	\N
puz5i9w50bl	97jnvf1ludu	3	\N	\N	\N
idfhxat5qg6	97jnvf1ludu	4	\N	\N	\N
iqddf9bwww2	97jnvf1ludu	5	\N	\N	\N
eoxofxze047	97jnvf1ludu	6	\N	\N	\N
p3ls96regvr	97jnvf1ludu	7	\N	\N	\N
073buw1m70l	97jnvf1ludu	8	\N	\N	\N
nocobase-admin-menu	97jnvf1ludu	9	\N	\N	\N
am0lmjthjqi	97jnvf1ludu	1	\N	\N	4
to668yqpfbk	to668yqpfbk	0	f	properties	\N
lnl6ixhbtoa	lnl6ixhbtoa	0	f	properties	\N
pdtxkxhi0px	3d4bg9et9gc	1	\N	\N	10
to668yqpfbk	lnl6ixhbtoa	1	\N	\N	1
mi71c1ge6na	mi71c1ge6na	0	f	properties	\N
pdtxkxhi0px	lnl6ixhbtoa	2	\N	\N	\N
9kxizfoklw7	to668yqpfbk	2	\N	\N	\N
9kxizfoklw7	lnl6ixhbtoa	3	\N	\N	\N
puz5i9w50bl	to668yqpfbk	3	\N	\N	\N
puz5i9w50bl	lnl6ixhbtoa	4	\N	\N	\N
idfhxat5qg6	to668yqpfbk	4	\N	\N	\N
idfhxat5qg6	lnl6ixhbtoa	5	\N	\N	\N
iqddf9bwww2	to668yqpfbk	5	\N	\N	\N
iqddf9bwww2	lnl6ixhbtoa	6	\N	\N	\N
eoxofxze047	to668yqpfbk	6	\N	\N	\N
eoxofxze047	lnl6ixhbtoa	7	\N	\N	\N
p3ls96regvr	to668yqpfbk	7	\N	\N	\N
p3ls96regvr	lnl6ixhbtoa	8	\N	\N	\N
073buw1m70l	to668yqpfbk	8	\N	\N	\N
073buw1m70l	lnl6ixhbtoa	9	\N	\N	\N
nocobase-admin-menu	to668yqpfbk	9	\N	\N	\N
nocobase-admin-menu	lnl6ixhbtoa	10	\N	\N	\N
pdtxkxhi0px	to668yqpfbk	1	\N	\N	3
q5uzs9ydsfq	q5uzs9ydsfq	0	f	properties	\N
mi71c1ge6na	q5uzs9ydsfq	1	\N	\N	1
zhmd8340u9p	zhmd8340u9p	0	f	properties	\N
q5uzs9ydsfq	zhmd8340u9p	1	\N	\N	1
mi71c1ge6na	zhmd8340u9p	2	\N	\N	1
269ugsobf0q	269ugsobf0q	0	f	properties	\N
zhmd8340u9p	269ugsobf0q	1	\N	\N	1
q5uzs9ydsfq	269ugsobf0q	2	\N	\N	1
mi71c1ge6na	269ugsobf0q	3	\N	\N	1
1zppis56hgq	1zppis56hgq	0	f	properties	\N
269ugsobf0q	1zppis56hgq	1	\N	\N	1
zhmd8340u9p	1zppis56hgq	2	\N	\N	1
q5uzs9ydsfq	1zppis56hgq	3	\N	\N	1
mi71c1ge6na	1zppis56hgq	4	\N	\N	1
2734c1npcd3	2734c1npcd3	0	f	properties	\N
269ugsobf0q	2734c1npcd3	1	\N	\N	2
zhmd8340u9p	2734c1npcd3	2	\N	\N	2
q5uzs9ydsfq	2734c1npcd3	3	\N	\N	2
mi71c1ge6na	2734c1npcd3	4	\N	\N	2
47lzjhwq4e3	q5uzs9ydsfq	2	\N	\N	\N
47lzjhwq4e3	zhmd8340u9p	3	\N	\N	\N
47lzjhwq4e3	269ugsobf0q	4	\N	\N	\N
47lzjhwq4e3	1zppis56hgq	5	\N	\N	\N
47lzjhwq4e3	2734c1npcd3	5	\N	\N	\N
dlbotzk5ta3	mi71c1ge6na	2	\N	\N	\N
dlbotzk5ta3	q5uzs9ydsfq	3	\N	\N	\N
dlbotzk5ta3	zhmd8340u9p	4	\N	\N	\N
dlbotzk5ta3	269ugsobf0q	5	\N	\N	\N
dlbotzk5ta3	1zppis56hgq	6	\N	\N	\N
dlbotzk5ta3	2734c1npcd3	6	\N	\N	\N
r0rbal9gwoa	mi71c1ge6na	3	\N	\N	\N
r0rbal9gwoa	q5uzs9ydsfq	4	\N	\N	\N
r0rbal9gwoa	zhmd8340u9p	5	\N	\N	\N
r0rbal9gwoa	269ugsobf0q	6	\N	\N	\N
r0rbal9gwoa	1zppis56hgq	7	\N	\N	\N
r0rbal9gwoa	2734c1npcd3	7	\N	\N	\N
82e6meyr33d	mi71c1ge6na	4	\N	\N	\N
82e6meyr33d	q5uzs9ydsfq	5	\N	\N	\N
82e6meyr33d	zhmd8340u9p	6	\N	\N	\N
82e6meyr33d	269ugsobf0q	7	\N	\N	\N
82e6meyr33d	1zppis56hgq	8	\N	\N	\N
82e6meyr33d	2734c1npcd3	8	\N	\N	\N
h9kgonsr277	mi71c1ge6na	5	\N	\N	\N
h9kgonsr277	q5uzs9ydsfq	6	\N	\N	\N
h9kgonsr277	zhmd8340u9p	7	\N	\N	\N
h9kgonsr277	269ugsobf0q	8	\N	\N	\N
h9kgonsr277	1zppis56hgq	9	\N	\N	\N
h9kgonsr277	2734c1npcd3	9	\N	\N	\N
am0lmjthjqi	mi71c1ge6na	6	\N	\N	\N
am0lmjthjqi	q5uzs9ydsfq	7	\N	\N	\N
am0lmjthjqi	zhmd8340u9p	8	\N	\N	\N
am0lmjthjqi	269ugsobf0q	9	\N	\N	\N
am0lmjthjqi	1zppis56hgq	10	\N	\N	\N
am0lmjthjqi	2734c1npcd3	10	\N	\N	\N
9kxizfoklw7	mi71c1ge6na	7	\N	\N	\N
9kxizfoklw7	q5uzs9ydsfq	8	\N	\N	\N
9kxizfoklw7	zhmd8340u9p	9	\N	\N	\N
9kxizfoklw7	269ugsobf0q	10	\N	\N	\N
9kxizfoklw7	1zppis56hgq	11	\N	\N	\N
9kxizfoklw7	2734c1npcd3	11	\N	\N	\N
puz5i9w50bl	mi71c1ge6na	8	\N	\N	\N
puz5i9w50bl	q5uzs9ydsfq	9	\N	\N	\N
puz5i9w50bl	zhmd8340u9p	10	\N	\N	\N
puz5i9w50bl	269ugsobf0q	11	\N	\N	\N
puz5i9w50bl	1zppis56hgq	12	\N	\N	\N
puz5i9w50bl	2734c1npcd3	12	\N	\N	\N
idfhxat5qg6	mi71c1ge6na	9	\N	\N	\N
idfhxat5qg6	q5uzs9ydsfq	10	\N	\N	\N
idfhxat5qg6	zhmd8340u9p	11	\N	\N	\N
idfhxat5qg6	269ugsobf0q	12	\N	\N	\N
idfhxat5qg6	1zppis56hgq	13	\N	\N	\N
idfhxat5qg6	2734c1npcd3	13	\N	\N	\N
iqddf9bwww2	mi71c1ge6na	10	\N	\N	\N
iqddf9bwww2	q5uzs9ydsfq	11	\N	\N	\N
iqddf9bwww2	zhmd8340u9p	12	\N	\N	\N
iqddf9bwww2	269ugsobf0q	13	\N	\N	\N
iqddf9bwww2	1zppis56hgq	14	\N	\N	\N
iqddf9bwww2	2734c1npcd3	14	\N	\N	\N
eoxofxze047	mi71c1ge6na	11	\N	\N	\N
eoxofxze047	q5uzs9ydsfq	12	\N	\N	\N
eoxofxze047	zhmd8340u9p	13	\N	\N	\N
eoxofxze047	269ugsobf0q	14	\N	\N	\N
eoxofxze047	1zppis56hgq	15	\N	\N	\N
eoxofxze047	2734c1npcd3	15	\N	\N	\N
p3ls96regvr	mi71c1ge6na	12	\N	\N	\N
p3ls96regvr	q5uzs9ydsfq	13	\N	\N	\N
p3ls96regvr	zhmd8340u9p	14	\N	\N	\N
p3ls96regvr	269ugsobf0q	15	\N	\N	\N
p3ls96regvr	1zppis56hgq	16	\N	\N	\N
p3ls96regvr	2734c1npcd3	16	\N	\N	\N
073buw1m70l	mi71c1ge6na	13	\N	\N	\N
073buw1m70l	q5uzs9ydsfq	14	\N	\N	\N
073buw1m70l	zhmd8340u9p	15	\N	\N	\N
47lzjhwq4e3	mi71c1ge6na	1	\N	\N	1
073buw1m70l	269ugsobf0q	16	\N	\N	\N
073buw1m70l	1zppis56hgq	17	\N	\N	\N
073buw1m70l	2734c1npcd3	17	\N	\N	\N
nocobase-admin-menu	mi71c1ge6na	14	\N	\N	\N
nocobase-admin-menu	q5uzs9ydsfq	15	\N	\N	\N
nocobase-admin-menu	zhmd8340u9p	16	\N	\N	\N
nocobase-admin-menu	269ugsobf0q	17	\N	\N	\N
nocobase-admin-menu	1zppis56hgq	18	\N	\N	\N
nocobase-admin-menu	2734c1npcd3	18	\N	\N	\N
k8wly6qev2x	k8wly6qev2x	0	f	properties	\N
lbqrwbc300m	k8wly6qev2x	1	\N	\N	1
kuzt62annzq	kuzt62annzq	0	f	properties	\N
k8wly6qev2x	kuzt62annzq	1	\N	\N	1
lbqrwbc300m	kuzt62annzq	2	\N	\N	1
1zppis56hgq	k8wly6qev2x	2	\N	\N	\N
1zppis56hgq	kuzt62annzq	3	\N	\N	\N
269ugsobf0q	lbqrwbc300m	2	\N	\N	\N
269ugsobf0q	k8wly6qev2x	3	\N	\N	\N
269ugsobf0q	kuzt62annzq	4	\N	\N	\N
zhmd8340u9p	lbqrwbc300m	3	\N	\N	\N
zhmd8340u9p	k8wly6qev2x	4	\N	\N	\N
zhmd8340u9p	kuzt62annzq	5	\N	\N	\N
q5uzs9ydsfq	lbqrwbc300m	4	\N	\N	\N
q5uzs9ydsfq	k8wly6qev2x	5	\N	\N	\N
q5uzs9ydsfq	kuzt62annzq	6	\N	\N	\N
mi71c1ge6na	lbqrwbc300m	5	\N	\N	\N
mi71c1ge6na	k8wly6qev2x	6	\N	\N	\N
mi71c1ge6na	kuzt62annzq	7	\N	\N	\N
47lzjhwq4e3	lbqrwbc300m	6	\N	\N	\N
47lzjhwq4e3	k8wly6qev2x	7	\N	\N	\N
47lzjhwq4e3	kuzt62annzq	8	\N	\N	\N
dlbotzk5ta3	lbqrwbc300m	7	\N	\N	\N
dlbotzk5ta3	k8wly6qev2x	8	\N	\N	\N
dlbotzk5ta3	kuzt62annzq	9	\N	\N	\N
r0rbal9gwoa	lbqrwbc300m	8	\N	\N	\N
r0rbal9gwoa	k8wly6qev2x	9	\N	\N	\N
r0rbal9gwoa	kuzt62annzq	10	\N	\N	\N
82e6meyr33d	lbqrwbc300m	9	\N	\N	\N
82e6meyr33d	k8wly6qev2x	10	\N	\N	\N
82e6meyr33d	kuzt62annzq	11	\N	\N	\N
h9kgonsr277	lbqrwbc300m	10	\N	\N	\N
h9kgonsr277	k8wly6qev2x	11	\N	\N	\N
h9kgonsr277	kuzt62annzq	12	\N	\N	\N
am0lmjthjqi	lbqrwbc300m	11	\N	\N	\N
am0lmjthjqi	k8wly6qev2x	12	\N	\N	\N
am0lmjthjqi	kuzt62annzq	13	\N	\N	\N
9kxizfoklw7	lbqrwbc300m	12	\N	\N	\N
9kxizfoklw7	k8wly6qev2x	13	\N	\N	\N
9kxizfoklw7	kuzt62annzq	14	\N	\N	\N
puz5i9w50bl	lbqrwbc300m	13	\N	\N	\N
puz5i9w50bl	k8wly6qev2x	14	\N	\N	\N
puz5i9w50bl	kuzt62annzq	15	\N	\N	\N
idfhxat5qg6	lbqrwbc300m	14	\N	\N	\N
idfhxat5qg6	k8wly6qev2x	15	\N	\N	\N
idfhxat5qg6	kuzt62annzq	16	\N	\N	\N
iqddf9bwww2	lbqrwbc300m	15	\N	\N	\N
iqddf9bwww2	k8wly6qev2x	16	\N	\N	\N
iqddf9bwww2	kuzt62annzq	17	\N	\N	\N
eoxofxze047	lbqrwbc300m	16	\N	\N	\N
eoxofxze047	k8wly6qev2x	17	\N	\N	\N
eoxofxze047	kuzt62annzq	18	\N	\N	\N
p3ls96regvr	lbqrwbc300m	17	\N	\N	\N
p3ls96regvr	k8wly6qev2x	18	\N	\N	\N
p3ls96regvr	kuzt62annzq	19	\N	\N	\N
073buw1m70l	lbqrwbc300m	18	\N	\N	\N
073buw1m70l	k8wly6qev2x	19	\N	\N	\N
073buw1m70l	kuzt62annzq	20	\N	\N	\N
nocobase-admin-menu	lbqrwbc300m	19	\N	\N	\N
nocobase-admin-menu	k8wly6qev2x	20	\N	\N	\N
nocobase-admin-menu	kuzt62annzq	21	\N	\N	\N
lbqrwbc300m	lbqrwbc300m	0	f	properties	\N
1zppis56hgq	lbqrwbc300m	1	\N	\N	1
o9u7omjfm9v	o9u7omjfm9v	0	f	properties	\N
1la4yan1f8i	o9u7omjfm9v	1	\N	\N	1
3l8rauopr1i	3l8rauopr1i	0	f	properties	\N
o9u7omjfm9v	3l8rauopr1i	1	\N	\N	1
1la4yan1f8i	3l8rauopr1i	2	\N	\N	1
1zppis56hgq	o9u7omjfm9v	2	\N	\N	\N
1zppis56hgq	3l8rauopr1i	3	\N	\N	\N
269ugsobf0q	1la4yan1f8i	2	\N	\N	\N
269ugsobf0q	o9u7omjfm9v	3	\N	\N	\N
269ugsobf0q	3l8rauopr1i	4	\N	\N	\N
zhmd8340u9p	1la4yan1f8i	3	\N	\N	\N
zhmd8340u9p	o9u7omjfm9v	4	\N	\N	\N
zhmd8340u9p	3l8rauopr1i	5	\N	\N	\N
q5uzs9ydsfq	1la4yan1f8i	4	\N	\N	\N
q5uzs9ydsfq	o9u7omjfm9v	5	\N	\N	\N
q5uzs9ydsfq	3l8rauopr1i	6	\N	\N	\N
mi71c1ge6na	1la4yan1f8i	5	\N	\N	\N
mi71c1ge6na	o9u7omjfm9v	6	\N	\N	\N
mi71c1ge6na	3l8rauopr1i	7	\N	\N	\N
47lzjhwq4e3	1la4yan1f8i	6	\N	\N	\N
47lzjhwq4e3	o9u7omjfm9v	7	\N	\N	\N
47lzjhwq4e3	3l8rauopr1i	8	\N	\N	\N
dlbotzk5ta3	1la4yan1f8i	7	\N	\N	\N
dlbotzk5ta3	o9u7omjfm9v	8	\N	\N	\N
dlbotzk5ta3	3l8rauopr1i	9	\N	\N	\N
r0rbal9gwoa	1la4yan1f8i	8	\N	\N	\N
r0rbal9gwoa	o9u7omjfm9v	9	\N	\N	\N
r0rbal9gwoa	3l8rauopr1i	10	\N	\N	\N
82e6meyr33d	1la4yan1f8i	9	\N	\N	\N
82e6meyr33d	o9u7omjfm9v	10	\N	\N	\N
82e6meyr33d	3l8rauopr1i	11	\N	\N	\N
h9kgonsr277	1la4yan1f8i	10	\N	\N	\N
h9kgonsr277	o9u7omjfm9v	11	\N	\N	\N
h9kgonsr277	3l8rauopr1i	12	\N	\N	\N
am0lmjthjqi	1la4yan1f8i	11	\N	\N	\N
am0lmjthjqi	o9u7omjfm9v	12	\N	\N	\N
am0lmjthjqi	3l8rauopr1i	13	\N	\N	\N
9kxizfoklw7	1la4yan1f8i	12	\N	\N	\N
9kxizfoklw7	o9u7omjfm9v	13	\N	\N	\N
9kxizfoklw7	3l8rauopr1i	14	\N	\N	\N
puz5i9w50bl	1la4yan1f8i	13	\N	\N	\N
puz5i9w50bl	o9u7omjfm9v	14	\N	\N	\N
puz5i9w50bl	3l8rauopr1i	15	\N	\N	\N
idfhxat5qg6	1la4yan1f8i	14	\N	\N	\N
idfhxat5qg6	o9u7omjfm9v	15	\N	\N	\N
idfhxat5qg6	3l8rauopr1i	16	\N	\N	\N
iqddf9bwww2	1la4yan1f8i	15	\N	\N	\N
iqddf9bwww2	o9u7omjfm9v	16	\N	\N	\N
iqddf9bwww2	3l8rauopr1i	17	\N	\N	\N
eoxofxze047	1la4yan1f8i	16	\N	\N	\N
eoxofxze047	o9u7omjfm9v	17	\N	\N	\N
eoxofxze047	3l8rauopr1i	18	\N	\N	\N
p3ls96regvr	1la4yan1f8i	17	\N	\N	\N
p3ls96regvr	o9u7omjfm9v	18	\N	\N	\N
p3ls96regvr	3l8rauopr1i	19	\N	\N	\N
073buw1m70l	1la4yan1f8i	18	\N	\N	\N
073buw1m70l	o9u7omjfm9v	19	\N	\N	\N
073buw1m70l	3l8rauopr1i	20	\N	\N	\N
1la4yan1f8i	1la4yan1f8i	0	f	properties	\N
1zppis56hgq	1la4yan1f8i	1	\N	\N	2
nocobase-admin-menu	1la4yan1f8i	19	\N	\N	\N
nocobase-admin-menu	o9u7omjfm9v	20	\N	\N	\N
nocobase-admin-menu	3l8rauopr1i	21	\N	\N	\N
rbo4f75swb8	rbo4f75swb8	0	f	properties	\N
vlp8rv3bdrm	rbo4f75swb8	1	\N	\N	1
xp5thab18zp	xp5thab18zp	0	f	properties	\N
rbo4f75swb8	xp5thab18zp	1	\N	\N	1
vlp8rv3bdrm	xp5thab18zp	2	\N	\N	1
1zppis56hgq	rbo4f75swb8	2	\N	\N	\N
1zppis56hgq	xp5thab18zp	3	\N	\N	\N
269ugsobf0q	vlp8rv3bdrm	2	\N	\N	\N
269ugsobf0q	rbo4f75swb8	3	\N	\N	\N
269ugsobf0q	xp5thab18zp	4	\N	\N	\N
zhmd8340u9p	vlp8rv3bdrm	3	\N	\N	\N
zhmd8340u9p	rbo4f75swb8	4	\N	\N	\N
zhmd8340u9p	xp5thab18zp	5	\N	\N	\N
q5uzs9ydsfq	vlp8rv3bdrm	4	\N	\N	\N
q5uzs9ydsfq	rbo4f75swb8	5	\N	\N	\N
q5uzs9ydsfq	xp5thab18zp	6	\N	\N	\N
mi71c1ge6na	vlp8rv3bdrm	5	\N	\N	\N
mi71c1ge6na	rbo4f75swb8	6	\N	\N	\N
mi71c1ge6na	xp5thab18zp	7	\N	\N	\N
47lzjhwq4e3	vlp8rv3bdrm	6	\N	\N	\N
47lzjhwq4e3	rbo4f75swb8	7	\N	\N	\N
47lzjhwq4e3	xp5thab18zp	8	\N	\N	\N
dlbotzk5ta3	vlp8rv3bdrm	7	\N	\N	\N
dlbotzk5ta3	rbo4f75swb8	8	\N	\N	\N
dlbotzk5ta3	xp5thab18zp	9	\N	\N	\N
r0rbal9gwoa	vlp8rv3bdrm	8	\N	\N	\N
r0rbal9gwoa	rbo4f75swb8	9	\N	\N	\N
r0rbal9gwoa	xp5thab18zp	10	\N	\N	\N
82e6meyr33d	vlp8rv3bdrm	9	\N	\N	\N
82e6meyr33d	rbo4f75swb8	10	\N	\N	\N
82e6meyr33d	xp5thab18zp	11	\N	\N	\N
h9kgonsr277	vlp8rv3bdrm	10	\N	\N	\N
h9kgonsr277	rbo4f75swb8	11	\N	\N	\N
h9kgonsr277	xp5thab18zp	12	\N	\N	\N
am0lmjthjqi	vlp8rv3bdrm	11	\N	\N	\N
am0lmjthjqi	rbo4f75swb8	12	\N	\N	\N
am0lmjthjqi	xp5thab18zp	13	\N	\N	\N
9kxizfoklw7	vlp8rv3bdrm	12	\N	\N	\N
9kxizfoklw7	rbo4f75swb8	13	\N	\N	\N
9kxizfoklw7	xp5thab18zp	14	\N	\N	\N
puz5i9w50bl	vlp8rv3bdrm	13	\N	\N	\N
puz5i9w50bl	rbo4f75swb8	14	\N	\N	\N
puz5i9w50bl	xp5thab18zp	15	\N	\N	\N
idfhxat5qg6	vlp8rv3bdrm	14	\N	\N	\N
idfhxat5qg6	rbo4f75swb8	15	\N	\N	\N
idfhxat5qg6	xp5thab18zp	16	\N	\N	\N
iqddf9bwww2	vlp8rv3bdrm	15	\N	\N	\N
iqddf9bwww2	rbo4f75swb8	16	\N	\N	\N
iqddf9bwww2	xp5thab18zp	17	\N	\N	\N
eoxofxze047	vlp8rv3bdrm	16	\N	\N	\N
eoxofxze047	rbo4f75swb8	17	\N	\N	\N
eoxofxze047	xp5thab18zp	18	\N	\N	\N
p3ls96regvr	vlp8rv3bdrm	17	\N	\N	\N
p3ls96regvr	rbo4f75swb8	18	\N	\N	\N
p3ls96regvr	xp5thab18zp	19	\N	\N	\N
073buw1m70l	vlp8rv3bdrm	18	\N	\N	\N
073buw1m70l	rbo4f75swb8	19	\N	\N	\N
073buw1m70l	xp5thab18zp	20	\N	\N	\N
nocobase-admin-menu	vlp8rv3bdrm	19	\N	\N	\N
nocobase-admin-menu	rbo4f75swb8	20	\N	\N	\N
nocobase-admin-menu	xp5thab18zp	21	\N	\N	\N
vlp8rv3bdrm	vlp8rv3bdrm	0	f	properties	\N
1zppis56hgq	vlp8rv3bdrm	1	\N	\N	3
wf6i0l1rq5h	wf6i0l1rq5h	0	f	properties	\N
hu4f6iqkias	wf6i0l1rq5h	1	\N	\N	1
b19flc450d4	b19flc450d4	0	f	properties	\N
wf6i0l1rq5h	b19flc450d4	1	\N	\N	1
hu4f6iqkias	b19flc450d4	2	\N	\N	1
1zppis56hgq	wf6i0l1rq5h	2	\N	\N	\N
1zppis56hgq	b19flc450d4	3	\N	\N	\N
269ugsobf0q	hu4f6iqkias	2	\N	\N	\N
269ugsobf0q	wf6i0l1rq5h	3	\N	\N	\N
269ugsobf0q	b19flc450d4	4	\N	\N	\N
zhmd8340u9p	hu4f6iqkias	3	\N	\N	\N
zhmd8340u9p	wf6i0l1rq5h	4	\N	\N	\N
zhmd8340u9p	b19flc450d4	5	\N	\N	\N
q5uzs9ydsfq	hu4f6iqkias	4	\N	\N	\N
q5uzs9ydsfq	wf6i0l1rq5h	5	\N	\N	\N
q5uzs9ydsfq	b19flc450d4	6	\N	\N	\N
mi71c1ge6na	hu4f6iqkias	5	\N	\N	\N
mi71c1ge6na	wf6i0l1rq5h	6	\N	\N	\N
mi71c1ge6na	b19flc450d4	7	\N	\N	\N
47lzjhwq4e3	hu4f6iqkias	6	\N	\N	\N
47lzjhwq4e3	wf6i0l1rq5h	7	\N	\N	\N
47lzjhwq4e3	b19flc450d4	8	\N	\N	\N
dlbotzk5ta3	hu4f6iqkias	7	\N	\N	\N
dlbotzk5ta3	wf6i0l1rq5h	8	\N	\N	\N
dlbotzk5ta3	b19flc450d4	9	\N	\N	\N
r0rbal9gwoa	hu4f6iqkias	8	\N	\N	\N
r0rbal9gwoa	wf6i0l1rq5h	9	\N	\N	\N
r0rbal9gwoa	b19flc450d4	10	\N	\N	\N
82e6meyr33d	hu4f6iqkias	9	\N	\N	\N
82e6meyr33d	wf6i0l1rq5h	10	\N	\N	\N
82e6meyr33d	b19flc450d4	11	\N	\N	\N
h9kgonsr277	hu4f6iqkias	10	\N	\N	\N
h9kgonsr277	wf6i0l1rq5h	11	\N	\N	\N
h9kgonsr277	b19flc450d4	12	\N	\N	\N
am0lmjthjqi	hu4f6iqkias	11	\N	\N	\N
am0lmjthjqi	wf6i0l1rq5h	12	\N	\N	\N
am0lmjthjqi	b19flc450d4	13	\N	\N	\N
9kxizfoklw7	hu4f6iqkias	12	\N	\N	\N
9kxizfoklw7	wf6i0l1rq5h	13	\N	\N	\N
9kxizfoklw7	b19flc450d4	14	\N	\N	\N
puz5i9w50bl	hu4f6iqkias	13	\N	\N	\N
puz5i9w50bl	wf6i0l1rq5h	14	\N	\N	\N
puz5i9w50bl	b19flc450d4	15	\N	\N	\N
idfhxat5qg6	hu4f6iqkias	14	\N	\N	\N
idfhxat5qg6	wf6i0l1rq5h	15	\N	\N	\N
idfhxat5qg6	b19flc450d4	16	\N	\N	\N
iqddf9bwww2	hu4f6iqkias	15	\N	\N	\N
iqddf9bwww2	wf6i0l1rq5h	16	\N	\N	\N
iqddf9bwww2	b19flc450d4	17	\N	\N	\N
eoxofxze047	hu4f6iqkias	16	\N	\N	\N
eoxofxze047	wf6i0l1rq5h	17	\N	\N	\N
eoxofxze047	b19flc450d4	18	\N	\N	\N
p3ls96regvr	hu4f6iqkias	17	\N	\N	\N
p3ls96regvr	wf6i0l1rq5h	18	\N	\N	\N
p3ls96regvr	b19flc450d4	19	\N	\N	\N
073buw1m70l	hu4f6iqkias	18	\N	\N	\N
073buw1m70l	wf6i0l1rq5h	19	\N	\N	\N
073buw1m70l	b19flc450d4	20	\N	\N	\N
nocobase-admin-menu	hu4f6iqkias	19	\N	\N	\N
nocobase-admin-menu	wf6i0l1rq5h	20	\N	\N	\N
nocobase-admin-menu	b19flc450d4	21	\N	\N	\N
hu4f6iqkias	hu4f6iqkias	0	f	properties	\N
1zppis56hgq	hu4f6iqkias	1	\N	\N	4
bl5cko9dc2s	bl5cko9dc2s	0	f	properties	\N
w8z0t7km6y6	w8z0t7km6y6	0	f	properties	\N
w8z0t7km6y6	bl5cko9dc2s	1	\N	\N	1
q8iw0s2gord	q8iw0s2gord	0	f	properties	\N
bl5cko9dc2s	q8iw0s2gord	1	\N	\N	1
w8z0t7km6y6	q8iw0s2gord	2	\N	\N	1
1zppis56hgq	bl5cko9dc2s	2	\N	\N	\N
1zppis56hgq	q8iw0s2gord	3	\N	\N	\N
269ugsobf0q	w8z0t7km6y6	2	\N	\N	\N
269ugsobf0q	bl5cko9dc2s	3	\N	\N	\N
269ugsobf0q	q8iw0s2gord	4	\N	\N	\N
zhmd8340u9p	w8z0t7km6y6	3	\N	\N	\N
zhmd8340u9p	bl5cko9dc2s	4	\N	\N	\N
zhmd8340u9p	q8iw0s2gord	5	\N	\N	\N
q5uzs9ydsfq	w8z0t7km6y6	4	\N	\N	\N
q5uzs9ydsfq	bl5cko9dc2s	5	\N	\N	\N
q5uzs9ydsfq	q8iw0s2gord	6	\N	\N	\N
mi71c1ge6na	w8z0t7km6y6	5	\N	\N	\N
mi71c1ge6na	bl5cko9dc2s	6	\N	\N	\N
mi71c1ge6na	q8iw0s2gord	7	\N	\N	\N
47lzjhwq4e3	w8z0t7km6y6	6	\N	\N	\N
47lzjhwq4e3	bl5cko9dc2s	7	\N	\N	\N
47lzjhwq4e3	q8iw0s2gord	8	\N	\N	\N
dlbotzk5ta3	w8z0t7km6y6	7	\N	\N	\N
dlbotzk5ta3	bl5cko9dc2s	8	\N	\N	\N
dlbotzk5ta3	q8iw0s2gord	9	\N	\N	\N
r0rbal9gwoa	w8z0t7km6y6	8	\N	\N	\N
r0rbal9gwoa	bl5cko9dc2s	9	\N	\N	\N
r0rbal9gwoa	q8iw0s2gord	10	\N	\N	\N
82e6meyr33d	w8z0t7km6y6	9	\N	\N	\N
82e6meyr33d	bl5cko9dc2s	10	\N	\N	\N
82e6meyr33d	q8iw0s2gord	11	\N	\N	\N
h9kgonsr277	w8z0t7km6y6	10	\N	\N	\N
h9kgonsr277	bl5cko9dc2s	11	\N	\N	\N
h9kgonsr277	q8iw0s2gord	12	\N	\N	\N
am0lmjthjqi	w8z0t7km6y6	11	\N	\N	\N
am0lmjthjqi	bl5cko9dc2s	12	\N	\N	\N
am0lmjthjqi	q8iw0s2gord	13	\N	\N	\N
9kxizfoklw7	w8z0t7km6y6	12	\N	\N	\N
9kxizfoklw7	bl5cko9dc2s	13	\N	\N	\N
9kxizfoklw7	q8iw0s2gord	14	\N	\N	\N
puz5i9w50bl	w8z0t7km6y6	13	\N	\N	\N
puz5i9w50bl	bl5cko9dc2s	14	\N	\N	\N
puz5i9w50bl	q8iw0s2gord	15	\N	\N	\N
idfhxat5qg6	w8z0t7km6y6	14	\N	\N	\N
idfhxat5qg6	bl5cko9dc2s	15	\N	\N	\N
idfhxat5qg6	q8iw0s2gord	16	\N	\N	\N
iqddf9bwww2	w8z0t7km6y6	15	\N	\N	\N
iqddf9bwww2	bl5cko9dc2s	16	\N	\N	\N
iqddf9bwww2	q8iw0s2gord	17	\N	\N	\N
eoxofxze047	w8z0t7km6y6	16	\N	\N	\N
eoxofxze047	bl5cko9dc2s	17	\N	\N	\N
eoxofxze047	q8iw0s2gord	18	\N	\N	\N
p3ls96regvr	w8z0t7km6y6	17	\N	\N	\N
p3ls96regvr	bl5cko9dc2s	18	\N	\N	\N
p3ls96regvr	q8iw0s2gord	19	\N	\N	\N
073buw1m70l	w8z0t7km6y6	18	\N	\N	\N
073buw1m70l	bl5cko9dc2s	19	\N	\N	\N
073buw1m70l	q8iw0s2gord	20	\N	\N	\N
nocobase-admin-menu	w8z0t7km6y6	19	\N	\N	\N
nocobase-admin-menu	bl5cko9dc2s	20	\N	\N	\N
nocobase-admin-menu	q8iw0s2gord	21	\N	\N	\N
1zppis56hgq	w8z0t7km6y6	1	\N	\N	5
oppm7g32hpv	oppm7g32hpv	0	f	properties	\N
hnxlnz7kz6g	oppm7g32hpv	1	\N	\N	1
f4w58chv2n1	f4w58chv2n1	0	f	properties	\N
oppm7g32hpv	f4w58chv2n1	1	\N	\N	1
hnxlnz7kz6g	f4w58chv2n1	2	\N	\N	1
1zppis56hgq	oppm7g32hpv	2	\N	\N	\N
1zppis56hgq	f4w58chv2n1	3	\N	\N	\N
269ugsobf0q	hnxlnz7kz6g	2	\N	\N	\N
269ugsobf0q	oppm7g32hpv	3	\N	\N	\N
269ugsobf0q	f4w58chv2n1	4	\N	\N	\N
zhmd8340u9p	hnxlnz7kz6g	3	\N	\N	\N
zhmd8340u9p	oppm7g32hpv	4	\N	\N	\N
zhmd8340u9p	f4w58chv2n1	5	\N	\N	\N
q5uzs9ydsfq	hnxlnz7kz6g	4	\N	\N	\N
q5uzs9ydsfq	oppm7g32hpv	5	\N	\N	\N
q5uzs9ydsfq	f4w58chv2n1	6	\N	\N	\N
mi71c1ge6na	hnxlnz7kz6g	5	\N	\N	\N
mi71c1ge6na	oppm7g32hpv	6	\N	\N	\N
mi71c1ge6na	f4w58chv2n1	7	\N	\N	\N
47lzjhwq4e3	hnxlnz7kz6g	6	\N	\N	\N
47lzjhwq4e3	oppm7g32hpv	7	\N	\N	\N
47lzjhwq4e3	f4w58chv2n1	8	\N	\N	\N
dlbotzk5ta3	hnxlnz7kz6g	7	\N	\N	\N
dlbotzk5ta3	oppm7g32hpv	8	\N	\N	\N
dlbotzk5ta3	f4w58chv2n1	9	\N	\N	\N
r0rbal9gwoa	hnxlnz7kz6g	8	\N	\N	\N
r0rbal9gwoa	oppm7g32hpv	9	\N	\N	\N
r0rbal9gwoa	f4w58chv2n1	10	\N	\N	\N
82e6meyr33d	hnxlnz7kz6g	9	\N	\N	\N
82e6meyr33d	oppm7g32hpv	10	\N	\N	\N
82e6meyr33d	f4w58chv2n1	11	\N	\N	\N
h9kgonsr277	hnxlnz7kz6g	10	\N	\N	\N
h9kgonsr277	oppm7g32hpv	11	\N	\N	\N
h9kgonsr277	f4w58chv2n1	12	\N	\N	\N
am0lmjthjqi	hnxlnz7kz6g	11	\N	\N	\N
am0lmjthjqi	oppm7g32hpv	12	\N	\N	\N
am0lmjthjqi	f4w58chv2n1	13	\N	\N	\N
9kxizfoklw7	hnxlnz7kz6g	12	\N	\N	\N
9kxizfoklw7	oppm7g32hpv	13	\N	\N	\N
9kxizfoklw7	f4w58chv2n1	14	\N	\N	\N
puz5i9w50bl	hnxlnz7kz6g	13	\N	\N	\N
puz5i9w50bl	oppm7g32hpv	14	\N	\N	\N
puz5i9w50bl	f4w58chv2n1	15	\N	\N	\N
idfhxat5qg6	hnxlnz7kz6g	14	\N	\N	\N
idfhxat5qg6	oppm7g32hpv	15	\N	\N	\N
idfhxat5qg6	f4w58chv2n1	16	\N	\N	\N
iqddf9bwww2	hnxlnz7kz6g	15	\N	\N	\N
iqddf9bwww2	oppm7g32hpv	16	\N	\N	\N
iqddf9bwww2	f4w58chv2n1	17	\N	\N	\N
eoxofxze047	hnxlnz7kz6g	16	\N	\N	\N
eoxofxze047	oppm7g32hpv	17	\N	\N	\N
eoxofxze047	f4w58chv2n1	18	\N	\N	\N
p3ls96regvr	hnxlnz7kz6g	17	\N	\N	\N
p3ls96regvr	oppm7g32hpv	18	\N	\N	\N
p3ls96regvr	f4w58chv2n1	19	\N	\N	\N
073buw1m70l	hnxlnz7kz6g	18	\N	\N	\N
073buw1m70l	oppm7g32hpv	19	\N	\N	\N
073buw1m70l	f4w58chv2n1	20	\N	\N	\N
nocobase-admin-menu	hnxlnz7kz6g	19	\N	\N	\N
nocobase-admin-menu	oppm7g32hpv	20	\N	\N	\N
nocobase-admin-menu	f4w58chv2n1	21	\N	\N	\N
hnxlnz7kz6g	hnxlnz7kz6g	0	f	properties	\N
1zppis56hgq	hnxlnz7kz6g	1	\N	\N	6
zhznhya5d4k	zhznhya5d4k	0	f	properties	\N
k3s1inyl7od	zhznhya5d4k	1	\N	\N	1
wczmtfqkbe7	wczmtfqkbe7	0	f	properties	\N
zhznhya5d4k	wczmtfqkbe7	1	\N	\N	1
k3s1inyl7od	wczmtfqkbe7	2	\N	\N	1
1zppis56hgq	zhznhya5d4k	2	\N	\N	\N
1zppis56hgq	wczmtfqkbe7	3	\N	\N	\N
269ugsobf0q	k3s1inyl7od	2	\N	\N	\N
269ugsobf0q	zhznhya5d4k	3	\N	\N	\N
269ugsobf0q	wczmtfqkbe7	4	\N	\N	\N
zhmd8340u9p	k3s1inyl7od	3	\N	\N	\N
zhmd8340u9p	zhznhya5d4k	4	\N	\N	\N
zhmd8340u9p	wczmtfqkbe7	5	\N	\N	\N
q5uzs9ydsfq	k3s1inyl7od	4	\N	\N	\N
q5uzs9ydsfq	zhznhya5d4k	5	\N	\N	\N
q5uzs9ydsfq	wczmtfqkbe7	6	\N	\N	\N
mi71c1ge6na	k3s1inyl7od	5	\N	\N	\N
mi71c1ge6na	zhznhya5d4k	6	\N	\N	\N
mi71c1ge6na	wczmtfqkbe7	7	\N	\N	\N
47lzjhwq4e3	k3s1inyl7od	6	\N	\N	\N
47lzjhwq4e3	zhznhya5d4k	7	\N	\N	\N
47lzjhwq4e3	wczmtfqkbe7	8	\N	\N	\N
dlbotzk5ta3	k3s1inyl7od	7	\N	\N	\N
dlbotzk5ta3	zhznhya5d4k	8	\N	\N	\N
dlbotzk5ta3	wczmtfqkbe7	9	\N	\N	\N
r0rbal9gwoa	k3s1inyl7od	8	\N	\N	\N
r0rbal9gwoa	zhznhya5d4k	9	\N	\N	\N
r0rbal9gwoa	wczmtfqkbe7	10	\N	\N	\N
82e6meyr33d	k3s1inyl7od	9	\N	\N	\N
82e6meyr33d	zhznhya5d4k	10	\N	\N	\N
82e6meyr33d	wczmtfqkbe7	11	\N	\N	\N
h9kgonsr277	k3s1inyl7od	10	\N	\N	\N
h9kgonsr277	zhznhya5d4k	11	\N	\N	\N
h9kgonsr277	wczmtfqkbe7	12	\N	\N	\N
am0lmjthjqi	k3s1inyl7od	11	\N	\N	\N
am0lmjthjqi	zhznhya5d4k	12	\N	\N	\N
am0lmjthjqi	wczmtfqkbe7	13	\N	\N	\N
9kxizfoklw7	k3s1inyl7od	12	\N	\N	\N
9kxizfoklw7	zhznhya5d4k	13	\N	\N	\N
9kxizfoklw7	wczmtfqkbe7	14	\N	\N	\N
puz5i9w50bl	k3s1inyl7od	13	\N	\N	\N
puz5i9w50bl	zhznhya5d4k	14	\N	\N	\N
puz5i9w50bl	wczmtfqkbe7	15	\N	\N	\N
idfhxat5qg6	k3s1inyl7od	14	\N	\N	\N
idfhxat5qg6	zhznhya5d4k	15	\N	\N	\N
idfhxat5qg6	wczmtfqkbe7	16	\N	\N	\N
iqddf9bwww2	k3s1inyl7od	15	\N	\N	\N
iqddf9bwww2	zhznhya5d4k	16	\N	\N	\N
iqddf9bwww2	wczmtfqkbe7	17	\N	\N	\N
eoxofxze047	k3s1inyl7od	16	\N	\N	\N
eoxofxze047	zhznhya5d4k	17	\N	\N	\N
eoxofxze047	wczmtfqkbe7	18	\N	\N	\N
p3ls96regvr	k3s1inyl7od	17	\N	\N	\N
p3ls96regvr	zhznhya5d4k	18	\N	\N	\N
p3ls96regvr	wczmtfqkbe7	19	\N	\N	\N
073buw1m70l	k3s1inyl7od	18	\N	\N	\N
073buw1m70l	zhznhya5d4k	19	\N	\N	\N
073buw1m70l	wczmtfqkbe7	20	\N	\N	\N
nocobase-admin-menu	k3s1inyl7od	19	\N	\N	\N
nocobase-admin-menu	zhznhya5d4k	20	\N	\N	\N
nocobase-admin-menu	wczmtfqkbe7	21	\N	\N	\N
k3s1inyl7od	k3s1inyl7od	0	f	properties	\N
1zppis56hgq	k3s1inyl7od	1	\N	\N	7
2dan6q3aj1j	2dan6q3aj1j	0	f	properties	\N
269ugsobf0q	2dan6q3aj1j	2	\N	\N	\N
zhmd8340u9p	2dan6q3aj1j	3	\N	\N	\N
q5uzs9ydsfq	2dan6q3aj1j	4	\N	\N	\N
mi71c1ge6na	2dan6q3aj1j	5	\N	\N	\N
47lzjhwq4e3	2dan6q3aj1j	6	\N	\N	\N
dlbotzk5ta3	2dan6q3aj1j	7	\N	\N	\N
r0rbal9gwoa	2dan6q3aj1j	8	\N	\N	\N
82e6meyr33d	2dan6q3aj1j	9	\N	\N	\N
h9kgonsr277	2dan6q3aj1j	10	\N	\N	\N
am0lmjthjqi	2dan6q3aj1j	11	\N	\N	\N
9kxizfoklw7	2dan6q3aj1j	12	\N	\N	\N
puz5i9w50bl	2dan6q3aj1j	13	\N	\N	\N
idfhxat5qg6	2dan6q3aj1j	14	\N	\N	\N
iqddf9bwww2	2dan6q3aj1j	15	\N	\N	\N
eoxofxze047	2dan6q3aj1j	16	\N	\N	\N
p3ls96regvr	2dan6q3aj1j	17	\N	\N	\N
073buw1m70l	2dan6q3aj1j	18	\N	\N	\N
nocobase-admin-menu	2dan6q3aj1j	19	\N	\N	\N
2734c1npcd3	2dan6q3aj1j	1	\N	\N	1
5qaj9xi6q1y	5qaj9xi6q1y	0	f	properties	\N
02fwa86zov7	5qaj9xi6q1y	1	\N	\N	1
bu7t898gulm	bu7t898gulm	0	f	properties	\N
5qaj9xi6q1y	bu7t898gulm	1	\N	\N	1
02fwa86zov7	bu7t898gulm	2	\N	\N	1
i4n9asspbd4	i4n9asspbd4	0	f	properties	\N
bu7t898gulm	i4n9asspbd4	1	\N	\N	1
5qaj9xi6q1y	i4n9asspbd4	2	\N	\N	1
02fwa86zov7	i4n9asspbd4	3	\N	\N	1
5ndh82rjiih	5ndh82rjiih	0	f	properties	\N
i4n9asspbd4	5ndh82rjiih	1	\N	\N	1
bu7t898gulm	5ndh82rjiih	2	\N	\N	1
5qaj9xi6q1y	5ndh82rjiih	3	\N	\N	1
02fwa86zov7	5ndh82rjiih	4	\N	\N	1
kj70yf1en4o	kj70yf1en4o	0	f	properties	\N
i4n9asspbd4	kj70yf1en4o	1	\N	\N	2
bu7t898gulm	kj70yf1en4o	2	\N	\N	2
5qaj9xi6q1y	kj70yf1en4o	3	\N	\N	2
02fwa86zov7	kj70yf1en4o	4	\N	\N	2
u4pz1nv2zu7	5qaj9xi6q1y	2	\N	\N	\N
u4pz1nv2zu7	bu7t898gulm	3	\N	\N	\N
u4pz1nv2zu7	i4n9asspbd4	4	\N	\N	\N
u4pz1nv2zu7	5ndh82rjiih	5	\N	\N	\N
u4pz1nv2zu7	kj70yf1en4o	5	\N	\N	\N
iniy0emerbt	02fwa86zov7	2	\N	\N	\N
iniy0emerbt	5qaj9xi6q1y	3	\N	\N	\N
iniy0emerbt	bu7t898gulm	4	\N	\N	\N
iniy0emerbt	i4n9asspbd4	5	\N	\N	\N
iniy0emerbt	5ndh82rjiih	6	\N	\N	\N
iniy0emerbt	kj70yf1en4o	6	\N	\N	\N
zkmofdtbl6m	02fwa86zov7	3	\N	\N	\N
zkmofdtbl6m	5qaj9xi6q1y	4	\N	\N	\N
zkmofdtbl6m	bu7t898gulm	5	\N	\N	\N
zkmofdtbl6m	i4n9asspbd4	6	\N	\N	\N
zkmofdtbl6m	5ndh82rjiih	7	\N	\N	\N
zkmofdtbl6m	kj70yf1en4o	7	\N	\N	\N
pvmgj00ippd	02fwa86zov7	4	\N	\N	\N
pvmgj00ippd	5qaj9xi6q1y	5	\N	\N	\N
pvmgj00ippd	bu7t898gulm	6	\N	\N	\N
pvmgj00ippd	i4n9asspbd4	7	\N	\N	\N
pvmgj00ippd	5ndh82rjiih	8	\N	\N	\N
pvmgj00ippd	kj70yf1en4o	8	\N	\N	\N
szv3v13lwap	02fwa86zov7	5	\N	\N	\N
szv3v13lwap	5qaj9xi6q1y	6	\N	\N	\N
szv3v13lwap	bu7t898gulm	7	\N	\N	\N
szv3v13lwap	i4n9asspbd4	8	\N	\N	\N
szv3v13lwap	5ndh82rjiih	9	\N	\N	\N
szv3v13lwap	kj70yf1en4o	9	\N	\N	\N
ji9t3fgnkc0	02fwa86zov7	6	\N	\N	\N
ji9t3fgnkc0	5qaj9xi6q1y	7	\N	\N	\N
ji9t3fgnkc0	bu7t898gulm	8	\N	\N	\N
ji9t3fgnkc0	i4n9asspbd4	9	\N	\N	\N
ji9t3fgnkc0	5ndh82rjiih	10	\N	\N	\N
ji9t3fgnkc0	kj70yf1en4o	10	\N	\N	\N
yjzd6s5ccq4	02fwa86zov7	7	\N	\N	\N
02fwa86zov7	02fwa86zov7	0	f	properties	\N
u4pz1nv2zu7	02fwa86zov7	1	\N	\N	1
yjzd6s5ccq4	5qaj9xi6q1y	8	\N	\N	\N
yjzd6s5ccq4	bu7t898gulm	9	\N	\N	\N
yjzd6s5ccq4	i4n9asspbd4	10	\N	\N	\N
yjzd6s5ccq4	5ndh82rjiih	11	\N	\N	\N
yjzd6s5ccq4	kj70yf1en4o	11	\N	\N	\N
imrhc9he5on	02fwa86zov7	8	\N	\N	\N
imrhc9he5on	5qaj9xi6q1y	9	\N	\N	\N
imrhc9he5on	bu7t898gulm	10	\N	\N	\N
imrhc9he5on	i4n9asspbd4	11	\N	\N	\N
imrhc9he5on	5ndh82rjiih	12	\N	\N	\N
imrhc9he5on	kj70yf1en4o	12	\N	\N	\N
82ikkgrog2y	02fwa86zov7	9	\N	\N	\N
82ikkgrog2y	5qaj9xi6q1y	10	\N	\N	\N
82ikkgrog2y	bu7t898gulm	11	\N	\N	\N
82ikkgrog2y	i4n9asspbd4	12	\N	\N	\N
82ikkgrog2y	5ndh82rjiih	13	\N	\N	\N
82ikkgrog2y	kj70yf1en4o	13	\N	\N	\N
mmj417nrjpa	02fwa86zov7	10	\N	\N	\N
mmj417nrjpa	5qaj9xi6q1y	11	\N	\N	\N
mmj417nrjpa	bu7t898gulm	12	\N	\N	\N
mmj417nrjpa	i4n9asspbd4	13	\N	\N	\N
mmj417nrjpa	5ndh82rjiih	14	\N	\N	\N
mmj417nrjpa	kj70yf1en4o	14	\N	\N	\N
lmgnrgroovk	02fwa86zov7	11	\N	\N	\N
lmgnrgroovk	5qaj9xi6q1y	12	\N	\N	\N
lmgnrgroovk	bu7t898gulm	13	\N	\N	\N
lmgnrgroovk	i4n9asspbd4	14	\N	\N	\N
lmgnrgroovk	5ndh82rjiih	15	\N	\N	\N
lmgnrgroovk	kj70yf1en4o	15	\N	\N	\N
4cx141n1lb4	02fwa86zov7	12	\N	\N	\N
4cx141n1lb4	5qaj9xi6q1y	13	\N	\N	\N
4cx141n1lb4	bu7t898gulm	14	\N	\N	\N
4cx141n1lb4	i4n9asspbd4	15	\N	\N	\N
4cx141n1lb4	5ndh82rjiih	16	\N	\N	\N
4cx141n1lb4	kj70yf1en4o	16	\N	\N	\N
k6pr2jh3wgd	02fwa86zov7	13	\N	\N	\N
k6pr2jh3wgd	5qaj9xi6q1y	14	\N	\N	\N
k6pr2jh3wgd	bu7t898gulm	15	\N	\N	\N
k6pr2jh3wgd	i4n9asspbd4	16	\N	\N	\N
k6pr2jh3wgd	5ndh82rjiih	17	\N	\N	\N
k6pr2jh3wgd	kj70yf1en4o	17	\N	\N	\N
hchm15rxv74	02fwa86zov7	14	\N	\N	\N
hchm15rxv74	5qaj9xi6q1y	15	\N	\N	\N
hchm15rxv74	bu7t898gulm	16	\N	\N	\N
hchm15rxv74	i4n9asspbd4	17	\N	\N	\N
hchm15rxv74	5ndh82rjiih	18	\N	\N	\N
hchm15rxv74	kj70yf1en4o	18	\N	\N	\N
073buw1m70l	02fwa86zov7	15	\N	\N	\N
073buw1m70l	5qaj9xi6q1y	16	\N	\N	\N
073buw1m70l	bu7t898gulm	17	\N	\N	\N
073buw1m70l	i4n9asspbd4	18	\N	\N	\N
073buw1m70l	5ndh82rjiih	19	\N	\N	\N
073buw1m70l	kj70yf1en4o	19	\N	\N	\N
nocobase-admin-menu	02fwa86zov7	16	\N	\N	\N
nocobase-admin-menu	5qaj9xi6q1y	17	\N	\N	\N
nocobase-admin-menu	bu7t898gulm	18	\N	\N	\N
nocobase-admin-menu	i4n9asspbd4	19	\N	\N	\N
nocobase-admin-menu	5ndh82rjiih	20	\N	\N	\N
nocobase-admin-menu	kj70yf1en4o	20	\N	\N	\N
618tdc60kn1	618tdc60kn1	0	f	properties	\N
bvvdhzo9s04	618tdc60kn1	1	\N	\N	1
gfqvdpu1eu4	gfqvdpu1eu4	0	f	properties	\N
618tdc60kn1	gfqvdpu1eu4	1	\N	\N	1
bvvdhzo9s04	gfqvdpu1eu4	2	\N	\N	1
5ndh82rjiih	618tdc60kn1	2	\N	\N	\N
5ndh82rjiih	gfqvdpu1eu4	3	\N	\N	\N
i4n9asspbd4	bvvdhzo9s04	2	\N	\N	\N
i4n9asspbd4	618tdc60kn1	3	\N	\N	\N
i4n9asspbd4	gfqvdpu1eu4	4	\N	\N	\N
bu7t898gulm	bvvdhzo9s04	3	\N	\N	\N
bu7t898gulm	618tdc60kn1	4	\N	\N	\N
bu7t898gulm	gfqvdpu1eu4	5	\N	\N	\N
5qaj9xi6q1y	bvvdhzo9s04	4	\N	\N	\N
5qaj9xi6q1y	618tdc60kn1	5	\N	\N	\N
5qaj9xi6q1y	gfqvdpu1eu4	6	\N	\N	\N
02fwa86zov7	bvvdhzo9s04	5	\N	\N	\N
02fwa86zov7	618tdc60kn1	6	\N	\N	\N
02fwa86zov7	gfqvdpu1eu4	7	\N	\N	\N
u4pz1nv2zu7	bvvdhzo9s04	6	\N	\N	\N
u4pz1nv2zu7	618tdc60kn1	7	\N	\N	\N
u4pz1nv2zu7	gfqvdpu1eu4	8	\N	\N	\N
iniy0emerbt	bvvdhzo9s04	7	\N	\N	\N
iniy0emerbt	618tdc60kn1	8	\N	\N	\N
iniy0emerbt	gfqvdpu1eu4	9	\N	\N	\N
zkmofdtbl6m	bvvdhzo9s04	8	\N	\N	\N
zkmofdtbl6m	618tdc60kn1	9	\N	\N	\N
zkmofdtbl6m	gfqvdpu1eu4	10	\N	\N	\N
pvmgj00ippd	bvvdhzo9s04	9	\N	\N	\N
pvmgj00ippd	618tdc60kn1	10	\N	\N	\N
pvmgj00ippd	gfqvdpu1eu4	11	\N	\N	\N
szv3v13lwap	bvvdhzo9s04	10	\N	\N	\N
szv3v13lwap	618tdc60kn1	11	\N	\N	\N
szv3v13lwap	gfqvdpu1eu4	12	\N	\N	\N
ji9t3fgnkc0	bvvdhzo9s04	11	\N	\N	\N
ji9t3fgnkc0	618tdc60kn1	12	\N	\N	\N
ji9t3fgnkc0	gfqvdpu1eu4	13	\N	\N	\N
yjzd6s5ccq4	bvvdhzo9s04	12	\N	\N	\N
yjzd6s5ccq4	618tdc60kn1	13	\N	\N	\N
yjzd6s5ccq4	gfqvdpu1eu4	14	\N	\N	\N
imrhc9he5on	bvvdhzo9s04	13	\N	\N	\N
imrhc9he5on	618tdc60kn1	14	\N	\N	\N
imrhc9he5on	gfqvdpu1eu4	15	\N	\N	\N
82ikkgrog2y	bvvdhzo9s04	14	\N	\N	\N
82ikkgrog2y	618tdc60kn1	15	\N	\N	\N
82ikkgrog2y	gfqvdpu1eu4	16	\N	\N	\N
mmj417nrjpa	bvvdhzo9s04	15	\N	\N	\N
mmj417nrjpa	618tdc60kn1	16	\N	\N	\N
mmj417nrjpa	gfqvdpu1eu4	17	\N	\N	\N
lmgnrgroovk	bvvdhzo9s04	16	\N	\N	\N
lmgnrgroovk	618tdc60kn1	17	\N	\N	\N
lmgnrgroovk	gfqvdpu1eu4	18	\N	\N	\N
4cx141n1lb4	bvvdhzo9s04	17	\N	\N	\N
4cx141n1lb4	618tdc60kn1	18	\N	\N	\N
4cx141n1lb4	gfqvdpu1eu4	19	\N	\N	\N
k6pr2jh3wgd	bvvdhzo9s04	18	\N	\N	\N
k6pr2jh3wgd	618tdc60kn1	19	\N	\N	\N
k6pr2jh3wgd	gfqvdpu1eu4	20	\N	\N	\N
hchm15rxv74	bvvdhzo9s04	19	\N	\N	\N
hchm15rxv74	618tdc60kn1	20	\N	\N	\N
hchm15rxv74	gfqvdpu1eu4	21	\N	\N	\N
073buw1m70l	bvvdhzo9s04	20	\N	\N	\N
073buw1m70l	618tdc60kn1	21	\N	\N	\N
073buw1m70l	gfqvdpu1eu4	22	\N	\N	\N
nocobase-admin-menu	bvvdhzo9s04	21	\N	\N	\N
nocobase-admin-menu	618tdc60kn1	22	\N	\N	\N
nocobase-admin-menu	gfqvdpu1eu4	23	\N	\N	\N
bvvdhzo9s04	bvvdhzo9s04	0	f	properties	\N
5ndh82rjiih	bvvdhzo9s04	1	\N	\N	1
g910prz5n6j	g910prz5n6j	0	f	properties	\N
8a8q29s3pam	g910prz5n6j	1	\N	\N	1
okqx007j2i9	okqx007j2i9	0	f	properties	\N
8a8q29s3pam	8a8q29s3pam	0	f	properties	\N
g910prz5n6j	okqx007j2i9	1	\N	\N	1
8a8q29s3pam	okqx007j2i9	2	\N	\N	1
5ndh82rjiih	g910prz5n6j	2	\N	\N	\N
5ndh82rjiih	okqx007j2i9	3	\N	\N	\N
i4n9asspbd4	8a8q29s3pam	2	\N	\N	\N
i4n9asspbd4	g910prz5n6j	3	\N	\N	\N
i4n9asspbd4	okqx007j2i9	4	\N	\N	\N
bu7t898gulm	8a8q29s3pam	3	\N	\N	\N
bu7t898gulm	g910prz5n6j	4	\N	\N	\N
bu7t898gulm	okqx007j2i9	5	\N	\N	\N
5qaj9xi6q1y	8a8q29s3pam	4	\N	\N	\N
5qaj9xi6q1y	g910prz5n6j	5	\N	\N	\N
5qaj9xi6q1y	okqx007j2i9	6	\N	\N	\N
02fwa86zov7	8a8q29s3pam	5	\N	\N	\N
02fwa86zov7	g910prz5n6j	6	\N	\N	\N
02fwa86zov7	okqx007j2i9	7	\N	\N	\N
u4pz1nv2zu7	8a8q29s3pam	6	\N	\N	\N
u4pz1nv2zu7	g910prz5n6j	7	\N	\N	\N
u4pz1nv2zu7	okqx007j2i9	8	\N	\N	\N
iniy0emerbt	8a8q29s3pam	7	\N	\N	\N
iniy0emerbt	g910prz5n6j	8	\N	\N	\N
iniy0emerbt	okqx007j2i9	9	\N	\N	\N
zkmofdtbl6m	8a8q29s3pam	8	\N	\N	\N
zkmofdtbl6m	g910prz5n6j	9	\N	\N	\N
zkmofdtbl6m	okqx007j2i9	10	\N	\N	\N
pvmgj00ippd	8a8q29s3pam	9	\N	\N	\N
pvmgj00ippd	g910prz5n6j	10	\N	\N	\N
pvmgj00ippd	okqx007j2i9	11	\N	\N	\N
szv3v13lwap	8a8q29s3pam	10	\N	\N	\N
szv3v13lwap	g910prz5n6j	11	\N	\N	\N
szv3v13lwap	okqx007j2i9	12	\N	\N	\N
ji9t3fgnkc0	8a8q29s3pam	11	\N	\N	\N
ji9t3fgnkc0	g910prz5n6j	12	\N	\N	\N
ji9t3fgnkc0	okqx007j2i9	13	\N	\N	\N
yjzd6s5ccq4	8a8q29s3pam	12	\N	\N	\N
yjzd6s5ccq4	g910prz5n6j	13	\N	\N	\N
yjzd6s5ccq4	okqx007j2i9	14	\N	\N	\N
imrhc9he5on	8a8q29s3pam	13	\N	\N	\N
imrhc9he5on	g910prz5n6j	14	\N	\N	\N
imrhc9he5on	okqx007j2i9	15	\N	\N	\N
82ikkgrog2y	8a8q29s3pam	14	\N	\N	\N
82ikkgrog2y	g910prz5n6j	15	\N	\N	\N
82ikkgrog2y	okqx007j2i9	16	\N	\N	\N
mmj417nrjpa	8a8q29s3pam	15	\N	\N	\N
mmj417nrjpa	g910prz5n6j	16	\N	\N	\N
mmj417nrjpa	okqx007j2i9	17	\N	\N	\N
lmgnrgroovk	8a8q29s3pam	16	\N	\N	\N
lmgnrgroovk	g910prz5n6j	17	\N	\N	\N
lmgnrgroovk	okqx007j2i9	18	\N	\N	\N
4cx141n1lb4	8a8q29s3pam	17	\N	\N	\N
4cx141n1lb4	g910prz5n6j	18	\N	\N	\N
4cx141n1lb4	okqx007j2i9	19	\N	\N	\N
k6pr2jh3wgd	8a8q29s3pam	18	\N	\N	\N
k6pr2jh3wgd	g910prz5n6j	19	\N	\N	\N
k6pr2jh3wgd	okqx007j2i9	20	\N	\N	\N
hchm15rxv74	8a8q29s3pam	19	\N	\N	\N
hchm15rxv74	g910prz5n6j	20	\N	\N	\N
hchm15rxv74	okqx007j2i9	21	\N	\N	\N
073buw1m70l	8a8q29s3pam	20	\N	\N	\N
073buw1m70l	g910prz5n6j	21	\N	\N	\N
073buw1m70l	okqx007j2i9	22	\N	\N	\N
nocobase-admin-menu	8a8q29s3pam	21	\N	\N	\N
nocobase-admin-menu	g910prz5n6j	22	\N	\N	\N
nocobase-admin-menu	okqx007j2i9	23	\N	\N	\N
5ndh82rjiih	8a8q29s3pam	1	\N	\N	2
cksn73owy57	cksn73owy57	0	f	properties	\N
dxixmathoof	cksn73owy57	1	\N	\N	1
3fbm9qpyq34	3fbm9qpyq34	0	f	properties	\N
cksn73owy57	3fbm9qpyq34	1	\N	\N	1
dxixmathoof	3fbm9qpyq34	2	\N	\N	1
5ndh82rjiih	cksn73owy57	2	\N	\N	\N
5ndh82rjiih	3fbm9qpyq34	3	\N	\N	\N
i4n9asspbd4	dxixmathoof	2	\N	\N	\N
i4n9asspbd4	cksn73owy57	3	\N	\N	\N
i4n9asspbd4	3fbm9qpyq34	4	\N	\N	\N
bu7t898gulm	dxixmathoof	3	\N	\N	\N
bu7t898gulm	cksn73owy57	4	\N	\N	\N
bu7t898gulm	3fbm9qpyq34	5	\N	\N	\N
5qaj9xi6q1y	dxixmathoof	4	\N	\N	\N
5qaj9xi6q1y	cksn73owy57	5	\N	\N	\N
5qaj9xi6q1y	3fbm9qpyq34	6	\N	\N	\N
02fwa86zov7	dxixmathoof	5	\N	\N	\N
02fwa86zov7	cksn73owy57	6	\N	\N	\N
02fwa86zov7	3fbm9qpyq34	7	\N	\N	\N
u4pz1nv2zu7	dxixmathoof	6	\N	\N	\N
u4pz1nv2zu7	cksn73owy57	7	\N	\N	\N
u4pz1nv2zu7	3fbm9qpyq34	8	\N	\N	\N
iniy0emerbt	dxixmathoof	7	\N	\N	\N
iniy0emerbt	cksn73owy57	8	\N	\N	\N
iniy0emerbt	3fbm9qpyq34	9	\N	\N	\N
zkmofdtbl6m	dxixmathoof	8	\N	\N	\N
zkmofdtbl6m	cksn73owy57	9	\N	\N	\N
zkmofdtbl6m	3fbm9qpyq34	10	\N	\N	\N
pvmgj00ippd	dxixmathoof	9	\N	\N	\N
pvmgj00ippd	cksn73owy57	10	\N	\N	\N
pvmgj00ippd	3fbm9qpyq34	11	\N	\N	\N
szv3v13lwap	dxixmathoof	10	\N	\N	\N
szv3v13lwap	cksn73owy57	11	\N	\N	\N
szv3v13lwap	3fbm9qpyq34	12	\N	\N	\N
ji9t3fgnkc0	dxixmathoof	11	\N	\N	\N
ji9t3fgnkc0	cksn73owy57	12	\N	\N	\N
ji9t3fgnkc0	3fbm9qpyq34	13	\N	\N	\N
yjzd6s5ccq4	dxixmathoof	12	\N	\N	\N
yjzd6s5ccq4	cksn73owy57	13	\N	\N	\N
yjzd6s5ccq4	3fbm9qpyq34	14	\N	\N	\N
imrhc9he5on	dxixmathoof	13	\N	\N	\N
imrhc9he5on	cksn73owy57	14	\N	\N	\N
imrhc9he5on	3fbm9qpyq34	15	\N	\N	\N
82ikkgrog2y	dxixmathoof	14	\N	\N	\N
82ikkgrog2y	cksn73owy57	15	\N	\N	\N
82ikkgrog2y	3fbm9qpyq34	16	\N	\N	\N
mmj417nrjpa	dxixmathoof	15	\N	\N	\N
mmj417nrjpa	cksn73owy57	16	\N	\N	\N
mmj417nrjpa	3fbm9qpyq34	17	\N	\N	\N
lmgnrgroovk	dxixmathoof	16	\N	\N	\N
lmgnrgroovk	cksn73owy57	17	\N	\N	\N
lmgnrgroovk	3fbm9qpyq34	18	\N	\N	\N
4cx141n1lb4	dxixmathoof	17	\N	\N	\N
4cx141n1lb4	cksn73owy57	18	\N	\N	\N
4cx141n1lb4	3fbm9qpyq34	19	\N	\N	\N
k6pr2jh3wgd	dxixmathoof	18	\N	\N	\N
k6pr2jh3wgd	cksn73owy57	19	\N	\N	\N
k6pr2jh3wgd	3fbm9qpyq34	20	\N	\N	\N
hchm15rxv74	dxixmathoof	19	\N	\N	\N
hchm15rxv74	cksn73owy57	20	\N	\N	\N
hchm15rxv74	3fbm9qpyq34	21	\N	\N	\N
073buw1m70l	dxixmathoof	20	\N	\N	\N
073buw1m70l	cksn73owy57	21	\N	\N	\N
073buw1m70l	3fbm9qpyq34	22	\N	\N	\N
nocobase-admin-menu	dxixmathoof	21	\N	\N	\N
nocobase-admin-menu	cksn73owy57	22	\N	\N	\N
nocobase-admin-menu	3fbm9qpyq34	23	\N	\N	\N
5ndh82rjiih	dxixmathoof	1	\N	\N	3
dxixmathoof	dxixmathoof	0	f	properties	\N
kycuv3ul77x	kycuv3ul77x	0	f	properties	\N
i4n9asspbd4	kycuv3ul77x	2	\N	\N	\N
bu7t898gulm	kycuv3ul77x	3	\N	\N	\N
5qaj9xi6q1y	kycuv3ul77x	4	\N	\N	\N
02fwa86zov7	kycuv3ul77x	5	\N	\N	\N
u4pz1nv2zu7	kycuv3ul77x	6	\N	\N	\N
iniy0emerbt	kycuv3ul77x	7	\N	\N	\N
zkmofdtbl6m	kycuv3ul77x	8	\N	\N	\N
pvmgj00ippd	kycuv3ul77x	9	\N	\N	\N
szv3v13lwap	kycuv3ul77x	10	\N	\N	\N
ji9t3fgnkc0	kycuv3ul77x	11	\N	\N	\N
yjzd6s5ccq4	kycuv3ul77x	12	\N	\N	\N
imrhc9he5on	kycuv3ul77x	13	\N	\N	\N
82ikkgrog2y	kycuv3ul77x	14	\N	\N	\N
mmj417nrjpa	kycuv3ul77x	15	\N	\N	\N
lmgnrgroovk	kycuv3ul77x	16	\N	\N	\N
4cx141n1lb4	kycuv3ul77x	17	\N	\N	\N
k6pr2jh3wgd	kycuv3ul77x	18	\N	\N	\N
hchm15rxv74	kycuv3ul77x	19	\N	\N	\N
073buw1m70l	kycuv3ul77x	20	\N	\N	\N
nocobase-admin-menu	kycuv3ul77x	21	\N	\N	\N
kj70yf1en4o	kycuv3ul77x	1	\N	\N	1
5uo2qh1l9qt	5uo2qh1l9qt	0	f	properties	\N
w2xb0a6rkey	5uo2qh1l9qt	1	\N	\N	1
rsvj3o8613d	rsvj3o8613d	0	f	properties	\N
w2xb0a6rkey	rsvj3o8613d	1	\N	\N	2
ai8i45ojqri	ai8i45ojqri	0	f	properties	\N
rsvj3o8613d	ai8i45ojqri	1	\N	\N	1
w2xb0a6rkey	ai8i45ojqri	2	\N	\N	1
vyxprlubesu	vyxprlubesu	0	f	properties	\N
ai8i45ojqri	vyxprlubesu	1	\N	\N	1
rsvj3o8613d	vyxprlubesu	2	\N	\N	1
w2xb0a6rkey	vyxprlubesu	3	\N	\N	1
ln3hk72efta	ln3hk72efta	0	f	properties	\N
ai8i45ojqri	ln3hk72efta	1	\N	\N	2
rsvj3o8613d	ln3hk72efta	2	\N	\N	2
w2xb0a6rkey	ln3hk72efta	3	\N	\N	2
5bru92qlyrq	xz0vx55hcc4	2	\N	\N	\N
obl2auujo32	xz0vx55hcc4	3	\N	\N	\N
nocobase-admin-menu	xz0vx55hcc4	4	\N	\N	\N
xz0vx55hcc4	xz0vx55hcc4	0	f	properties	\N
i80vemflinb	xz0vx55hcc4	1	\N	\N	4
wbf59rpu21x	wbf59rpu21x	0	f	properties	\N
zdule12dho7	zdule12dho7	0	f	properties	\N
wbf59rpu21x	zdule12dho7	1	\N	\N	1
h6d3ghccgs1	zdule12dho7	2	\N	\N	1
vyxprlubesu	wbf59rpu21x	2	\N	\N	\N
vyxprlubesu	zdule12dho7	3	\N	\N	\N
ai8i45ojqri	h6d3ghccgs1	2	\N	\N	\N
ai8i45ojqri	wbf59rpu21x	3	\N	\N	\N
ai8i45ojqri	zdule12dho7	4	\N	\N	\N
rsvj3o8613d	h6d3ghccgs1	3	\N	\N	\N
rsvj3o8613d	wbf59rpu21x	4	\N	\N	\N
rsvj3o8613d	zdule12dho7	5	\N	\N	\N
w2xb0a6rkey	h6d3ghccgs1	4	\N	\N	\N
w2xb0a6rkey	wbf59rpu21x	5	\N	\N	\N
w2xb0a6rkey	zdule12dho7	6	\N	\N	\N
h6d3ghccgs1	h6d3ghccgs1	0	f	properties	\N
vyxprlubesu	h6d3ghccgs1	1	\N	\N	1
g5s8ryvvhrz	g5s8ryvvhrz	0	f	properties	\N
h6d3ghccgs1	wbf59rpu21x	1	\N	\N	2
w2xb0a6rkey	w2xb0a6rkey	0	f	properties	\N
ai8i45ojqri	g5s8ryvvhrz	2	\N	\N	\N
rsvj3o8613d	g5s8ryvvhrz	3	\N	\N	\N
w2xb0a6rkey	g5s8ryvvhrz	4	\N	\N	\N
vyxprlubesu	g5s8ryvvhrz	1	\N	\N	2
acba1j7epdp	acba1j7epdp	0	f	properties	\N
vyxprlubesu	acba1j7epdp	1	\N	\N	4
ai8i45ojqri	cpsgd6q8tor	2	\N	\N	\N
rsvj3o8613d	cpsgd6q8tor	3	\N	\N	\N
w2xb0a6rkey	cpsgd6q8tor	4	\N	\N	\N
cpsgd6q8tor	cpsgd6q8tor	0	f	properties	\N
vyxprlubesu	cpsgd6q8tor	1	\N	\N	3
ai8i45ojqri	acba1j7epdp	2	\N	\N	\N
rsvj3o8613d	acba1j7epdp	3	\N	\N	\N
w2xb0a6rkey	acba1j7epdp	4	\N	\N	\N
mgzf1cosw9o	mgzf1cosw9o	0	f	properties	\N
6rat324pm10	6rat324pm10	0	f	properties	\N
14iywme93h8	14iywme93h8	0	f	properties	\N
rtb84viwmc5	rtb84viwmc5	0	f	properties	\N
svvvwbieur7	mgzf1cosw9o	1	\N	\N	1
h6d3ghccgs1	mgzf1cosw9o	2	\N	\N	\N
vyxprlubesu	svvvwbieur7	2	\N	\N	\N
vyxprlubesu	mgzf1cosw9o	3	\N	\N	\N
ai8i45ojqri	svvvwbieur7	3	\N	\N	\N
ai8i45ojqri	mgzf1cosw9o	4	\N	\N	\N
rsvj3o8613d	svvvwbieur7	4	\N	\N	\N
rsvj3o8613d	mgzf1cosw9o	5	\N	\N	\N
w2xb0a6rkey	svvvwbieur7	5	\N	\N	\N
w2xb0a6rkey	mgzf1cosw9o	6	\N	\N	\N
svvvwbieur7	svvvwbieur7	0	f	properties	\N
vyxprlubesu	rtb84viwmc5	1	\N	\N	5
s3eai5hxpps	6rat324pm10	1	\N	\N	1
h6d3ghccgs1	6rat324pm10	2	\N	\N	\N
vyxprlubesu	s3eai5hxpps	2	\N	\N	\N
vyxprlubesu	6rat324pm10	3	\N	\N	\N
ai8i45ojqri	s3eai5hxpps	3	\N	\N	\N
ai8i45ojqri	6rat324pm10	4	\N	\N	\N
rsvj3o8613d	s3eai5hxpps	4	\N	\N	\N
rsvj3o8613d	6rat324pm10	5	\N	\N	\N
w2xb0a6rkey	s3eai5hxpps	5	\N	\N	\N
w2xb0a6rkey	6rat324pm10	6	\N	\N	\N
s3eai5hxpps	s3eai5hxpps	0	f	properties	\N
kgtaxni455a	14iywme93h8	1	\N	\N	1
h6d3ghccgs1	14iywme93h8	2	\N	\N	\N
vyxprlubesu	kgtaxni455a	2	\N	\N	\N
vyxprlubesu	14iywme93h8	3	\N	\N	\N
ai8i45ojqri	kgtaxni455a	3	\N	\N	\N
ai8i45ojqri	14iywme93h8	4	\N	\N	\N
rsvj3o8613d	kgtaxni455a	4	\N	\N	\N
rsvj3o8613d	14iywme93h8	5	\N	\N	\N
w2xb0a6rkey	kgtaxni455a	5	\N	\N	\N
w2xb0a6rkey	14iywme93h8	6	\N	\N	\N
kgtaxni455a	kgtaxni455a	0	f	properties	\N
ai8i45ojqri	rtb84viwmc5	2	\N	\N	\N
rsvj3o8613d	rtb84viwmc5	3	\N	\N	\N
w2xb0a6rkey	rtb84viwmc5	4	\N	\N	\N
ynl1lraa9vt	ynl1lraa9vt	0	f	properties	\N
ivd8t19ab1b	ynl1lraa9vt	1	\N	\N	1
h6d3ghccgs1	ynl1lraa9vt	2	\N	\N	\N
vyxprlubesu	ivd8t19ab1b	2	\N	\N	\N
vyxprlubesu	ynl1lraa9vt	3	\N	\N	\N
ai8i45ojqri	ivd8t19ab1b	3	\N	\N	\N
ai8i45ojqri	ynl1lraa9vt	4	\N	\N	\N
rsvj3o8613d	ivd8t19ab1b	4	\N	\N	\N
rsvj3o8613d	ynl1lraa9vt	5	\N	\N	\N
w2xb0a6rkey	ivd8t19ab1b	5	\N	\N	\N
w2xb0a6rkey	ynl1lraa9vt	6	\N	\N	\N
ivd8t19ab1b	ivd8t19ab1b	0	f	properties	\N
h6d3ghccgs1	svvvwbieur7	1	\N	\N	3
h6d3ghccgs1	s3eai5hxpps	1	\N	\N	4
h6d3ghccgs1	kgtaxni455a	1	\N	\N	5
h6d3ghccgs1	ivd8t19ab1b	1	\N	\N	1
x8ujxnhlng7	5uo2qh1l9qt	2	\N	\N	\N
x8ujxnhlng7	rsvj3o8613d	2	\N	\N	\N
x8ujxnhlng7	ai8i45ojqri	3	\N	\N	\N
x8ujxnhlng7	vyxprlubesu	4	\N	\N	\N
x8ujxnhlng7	ln3hk72efta	4	\N	\N	\N
x8ujxnhlng7	h6d3ghccgs1	5	\N	\N	\N
x8ujxnhlng7	wbf59rpu21x	6	\N	\N	\N
x8ujxnhlng7	zdule12dho7	7	\N	\N	\N
x8ujxnhlng7	g5s8ryvvhrz	5	\N	\N	\N
x8ujxnhlng7	cpsgd6q8tor	5	\N	\N	\N
x8ujxnhlng7	acba1j7epdp	5	\N	\N	\N
x8ujxnhlng7	svvvwbieur7	6	\N	\N	\N
x8ujxnhlng7	mgzf1cosw9o	7	\N	\N	\N
x8ujxnhlng7	s3eai5hxpps	6	\N	\N	\N
x8ujxnhlng7	6rat324pm10	7	\N	\N	\N
x8ujxnhlng7	kgtaxni455a	6	\N	\N	\N
x8ujxnhlng7	14iywme93h8	7	\N	\N	\N
x8ujxnhlng7	rtb84viwmc5	5	\N	\N	\N
x8ujxnhlng7	ivd8t19ab1b	6	\N	\N	\N
x8ujxnhlng7	ynl1lraa9vt	7	\N	\N	\N
x8ujxnhlng7	w2xb0a6rkey	1	\N	\N	1
evtz6ljqxdq	w2xb0a6rkey	2	\N	\N	\N
evtz6ljqxdq	5uo2qh1l9qt	3	\N	\N	\N
evtz6ljqxdq	rsvj3o8613d	3	\N	\N	\N
evtz6ljqxdq	ai8i45ojqri	4	\N	\N	\N
evtz6ljqxdq	vyxprlubesu	5	\N	\N	\N
evtz6ljqxdq	ln3hk72efta	5	\N	\N	\N
evtz6ljqxdq	h6d3ghccgs1	6	\N	\N	\N
evtz6ljqxdq	wbf59rpu21x	7	\N	\N	\N
evtz6ljqxdq	zdule12dho7	8	\N	\N	\N
evtz6ljqxdq	g5s8ryvvhrz	6	\N	\N	\N
evtz6ljqxdq	cpsgd6q8tor	6	\N	\N	\N
evtz6ljqxdq	acba1j7epdp	6	\N	\N	\N
evtz6ljqxdq	svvvwbieur7	7	\N	\N	\N
evtz6ljqxdq	mgzf1cosw9o	8	\N	\N	\N
evtz6ljqxdq	s3eai5hxpps	7	\N	\N	\N
evtz6ljqxdq	6rat324pm10	8	\N	\N	\N
evtz6ljqxdq	kgtaxni455a	7	\N	\N	\N
evtz6ljqxdq	14iywme93h8	8	\N	\N	\N
evtz6ljqxdq	rtb84viwmc5	6	\N	\N	\N
evtz6ljqxdq	ivd8t19ab1b	7	\N	\N	\N
evtz6ljqxdq	ynl1lraa9vt	8	\N	\N	\N
i80vemflinb	x8ujxnhlng7	2	\N	\N	\N
i80vemflinb	w2xb0a6rkey	3	\N	\N	\N
i80vemflinb	5uo2qh1l9qt	4	\N	\N	\N
i80vemflinb	rsvj3o8613d	4	\N	\N	\N
i80vemflinb	ai8i45ojqri	5	\N	\N	\N
i80vemflinb	vyxprlubesu	6	\N	\N	\N
i80vemflinb	ln3hk72efta	6	\N	\N	\N
i80vemflinb	h6d3ghccgs1	7	\N	\N	\N
i80vemflinb	wbf59rpu21x	8	\N	\N	\N
i80vemflinb	zdule12dho7	9	\N	\N	\N
i80vemflinb	g5s8ryvvhrz	7	\N	\N	\N
i80vemflinb	cpsgd6q8tor	7	\N	\N	\N
i80vemflinb	acba1j7epdp	7	\N	\N	\N
i80vemflinb	svvvwbieur7	8	\N	\N	\N
i80vemflinb	mgzf1cosw9o	9	\N	\N	\N
i80vemflinb	s3eai5hxpps	8	\N	\N	\N
i80vemflinb	6rat324pm10	9	\N	\N	\N
i80vemflinb	kgtaxni455a	8	\N	\N	\N
i80vemflinb	14iywme93h8	9	\N	\N	\N
i80vemflinb	rtb84viwmc5	7	\N	\N	\N
i80vemflinb	ivd8t19ab1b	8	\N	\N	\N
i80vemflinb	ynl1lraa9vt	9	\N	\N	\N
5bru92qlyrq	x8ujxnhlng7	3	\N	\N	\N
5bru92qlyrq	w2xb0a6rkey	4	\N	\N	\N
5bru92qlyrq	5uo2qh1l9qt	5	\N	\N	\N
5bru92qlyrq	rsvj3o8613d	5	\N	\N	\N
5bru92qlyrq	ai8i45ojqri	6	\N	\N	\N
5bru92qlyrq	vyxprlubesu	7	\N	\N	\N
5bru92qlyrq	ln3hk72efta	7	\N	\N	\N
5bru92qlyrq	h6d3ghccgs1	8	\N	\N	\N
5bru92qlyrq	wbf59rpu21x	9	\N	\N	\N
5bru92qlyrq	zdule12dho7	10	\N	\N	\N
5bru92qlyrq	g5s8ryvvhrz	8	\N	\N	\N
5bru92qlyrq	cpsgd6q8tor	8	\N	\N	\N
5bru92qlyrq	acba1j7epdp	8	\N	\N	\N
5bru92qlyrq	svvvwbieur7	9	\N	\N	\N
5bru92qlyrq	mgzf1cosw9o	10	\N	\N	\N
5bru92qlyrq	s3eai5hxpps	9	\N	\N	\N
5bru92qlyrq	6rat324pm10	10	\N	\N	\N
5bru92qlyrq	kgtaxni455a	9	\N	\N	\N
5bru92qlyrq	14iywme93h8	10	\N	\N	\N
5bru92qlyrq	rtb84viwmc5	8	\N	\N	\N
5bru92qlyrq	ivd8t19ab1b	9	\N	\N	\N
5bru92qlyrq	ynl1lraa9vt	10	\N	\N	\N
obl2auujo32	x8ujxnhlng7	4	\N	\N	\N
obl2auujo32	w2xb0a6rkey	5	\N	\N	\N
obl2auujo32	5uo2qh1l9qt	6	\N	\N	\N
obl2auujo32	rsvj3o8613d	6	\N	\N	\N
obl2auujo32	ai8i45ojqri	7	\N	\N	\N
obl2auujo32	vyxprlubesu	8	\N	\N	\N
obl2auujo32	ln3hk72efta	8	\N	\N	\N
obl2auujo32	h6d3ghccgs1	9	\N	\N	\N
obl2auujo32	wbf59rpu21x	10	\N	\N	\N
obl2auujo32	zdule12dho7	11	\N	\N	\N
obl2auujo32	g5s8ryvvhrz	9	\N	\N	\N
obl2auujo32	cpsgd6q8tor	9	\N	\N	\N
obl2auujo32	acba1j7epdp	9	\N	\N	\N
obl2auujo32	svvvwbieur7	10	\N	\N	\N
obl2auujo32	mgzf1cosw9o	11	\N	\N	\N
obl2auujo32	s3eai5hxpps	10	\N	\N	\N
obl2auujo32	6rat324pm10	11	\N	\N	\N
obl2auujo32	kgtaxni455a	10	\N	\N	\N
obl2auujo32	14iywme93h8	11	\N	\N	\N
obl2auujo32	rtb84viwmc5	9	\N	\N	\N
obl2auujo32	ivd8t19ab1b	10	\N	\N	\N
obl2auujo32	ynl1lraa9vt	11	\N	\N	\N
nocobase-admin-menu	x8ujxnhlng7	5	\N	\N	\N
nocobase-admin-menu	w2xb0a6rkey	6	\N	\N	\N
nocobase-admin-menu	5uo2qh1l9qt	7	\N	\N	\N
nocobase-admin-menu	rsvj3o8613d	7	\N	\N	\N
nocobase-admin-menu	ai8i45ojqri	8	\N	\N	\N
nocobase-admin-menu	vyxprlubesu	9	\N	\N	\N
nocobase-admin-menu	ln3hk72efta	9	\N	\N	\N
nocobase-admin-menu	h6d3ghccgs1	10	\N	\N	\N
nocobase-admin-menu	wbf59rpu21x	11	\N	\N	\N
x8ujxnhlng7	x8ujxnhlng7	0	f	properties	\N
nocobase-admin-menu	zdule12dho7	12	\N	\N	\N
nocobase-admin-menu	g5s8ryvvhrz	10	\N	\N	\N
nocobase-admin-menu	cpsgd6q8tor	10	\N	\N	\N
nocobase-admin-menu	acba1j7epdp	10	\N	\N	\N
nocobase-admin-menu	svvvwbieur7	11	\N	\N	\N
nocobase-admin-menu	mgzf1cosw9o	12	\N	\N	\N
nocobase-admin-menu	s3eai5hxpps	11	\N	\N	\N
nocobase-admin-menu	6rat324pm10	12	\N	\N	\N
nocobase-admin-menu	kgtaxni455a	11	\N	\N	\N
nocobase-admin-menu	14iywme93h8	12	\N	\N	\N
nocobase-admin-menu	rtb84viwmc5	10	\N	\N	\N
nocobase-admin-menu	ivd8t19ab1b	11	\N	\N	\N
nocobase-admin-menu	ynl1lraa9vt	12	\N	\N	\N
evtz6ljqxdq	x8ujxnhlng7	1	\N	\N	2
\.


--
-- TOC entry 3911 (class 0 OID 30810)
-- Dependencies: 286
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
9yos6i0cjm3	page	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page"}
861gmcfwhia	34o9i1z8tjr	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock"}
n3yigbe0k9v	p7tskd980nb	{"x-uid":"n3yigbe0k9v","name":"p7tskd980nb","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Dự án","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{"icon":"projectoutlined"},"x-server-hooks":[{"type":"onSelfSave","method":"extractTextToLocale"}]}
xwts1ggw479	f2pw09fqgf9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Yêu cầu xây dựng","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{"icon":"alertoutlined"},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}]}
wcib2cpt11z	page	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page"}
ulw06kfwwn3	by2r43zo37z	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock"}
hchm15rxv74	vmqii3ultu4	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Quỹ dự án","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{"icon":"walletoutlined"},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}]}
k6pr2jh3wgd	page	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page"}
4cx141n1lb4	gfh6mvhpqhf	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock"}
p3ls96regvr	vpd0mbajv2w	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Giao dịch","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{"icon":"transactionoutlined"},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}]}
eoxofxze047	page	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page"}
iqddf9bwww2	r5wbpwss2r6	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock"}
bljegelqea8	kznvjz7npg2	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Smart contract","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{"icon":"codesandboxoutlined"},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}]}
rjo62izvmhu	page	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page"}
8cbzsnycxqk	qtm42mezcms	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock"}
r5ux2dhnfq1	bmc65vm7oek	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
9j3mrze0kdh	ck2n8ze8r3d	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
iiek91fm1lg	l2lhkhzls9l	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableBlockProvider","x-acl-action":"proposes:list","x-use-decorator-props":"useTableBlockDecoratorProps","x-decorator-props":{"collection":"proposes","dataSource":"main","action":"list","params":{"pageSize":20},"rowKey":"id","showIndex":true,"dragSort":false},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:table","x-component":"CardItem","x-filter-targets":[],"x-app-version":"1.3.51"}
uz1e0k6wjf1	actions	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"table:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":"var(--nb-spacing)"}},"x-app-version":"1.3.51"}
dwzj4kwyaia	71vlny9zunq	{"_isJSONSchemaObject":true,"version":"2.0","type":"array","x-initializer":"table:configureColumns","x-component":"TableV2","x-use-component-props":"useTableBlockProps","x-component-props":{"rowKey":"id","rowSelection":{"type":"checkbox"}},"x-app-version":"1.3.51"}
fuvpnwuajhl	iqoozezgs5j	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"DndContext","x-component":"Space","x-component-props":{"split":"|"},"x-app-version":"1.3.51"}
ajlhev8hgld	9rozvkrj2c7	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Filter\\") }}","x-action":"filter","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:filter","x-component":"Filter.Action","x-use-component-props":"useFilterActionProps","x-component-props":{"icon":"FilterOutlined"},"x-align":"left","x-app-version":"1.3.51"}
yqj4tsj0tp5	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Add record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"},"x-app-version":"1.3.51"}
5i62m584bjk	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab","x-initializer-props":{"gridInitializer":"popup:addNew:addBlock"},"x-app-version":"1.3.51"}
lqc01b4n2xe	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Add new\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{},"x-app-version":"1.3.51"}
2dp1sgeoanq	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:addNew:addBlock","x-app-version":"1.3.51"}
y90c6xine07	bblw9raqkur	{"x-uid":"y90c6xine07","name":"bblw9raqkur","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-action":"create","x-acl-action":"create","title":"Thêm mới","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:addNew","x-component":"Action","x-decorator":"ACLActionProvider","x-component-props":{"openMode":"drawer","type":"primary","component":"CreateRecordAction","icon":"PlusOutlined","iconColor":"#1677FF","danger":false},"x-action-context":{"dataSource":"main","collection":"proposes"},"x-align":"right","x-acl-action-props":{"skipScopeCheck":true},"x-app-version":"1.3.51"}
3g77tkiq3m4	nmwk4isho9n	{"x-uid":"3g77tkiq3m4","name":"nmwk4isho9n","_isJSONSchemaObject":true,"version":"2.0","title":"Xoá bỏ","x-action":"destroy","x-component":"Action","x-use-component-props":"useBulkDestroyActionProps","x-component-props":{"icon":"DeleteOutlined","confirm":{"title":"{{t('Delete record')}}","content":"{{t('Are you sure you want to delete it?')}}"},"iconColor":"#1677FF","danger":true,"type":"danger"},"x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:bulkDelete","x-decorator":"ACLActionProvider","x-acl-action-props":{"skipScopeCheck":true},"x-action-settings":{"triggerWorkflows":[]},"x-acl-action":"proposes:destroy","x-align":"right","type":"void","x-app-version":"1.3.51"}
qbzhqbkp363	dmlrbabuhjq	{"x-uid":"qbzhqbkp363","name":"dmlrbabuhjq","_isJSONSchemaObject":true,"version":"2.0","title":"Cập nhật dữ liệu","x-action":"refresh","x-component":"Action","x-use-component-props":"useRefreshActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:refresh","x-component-props":{"icon":"ReloadOutlined","iconColor":"#1677FF","danger":false,"type":"default"},"x-align":"right","type":"void","x-app-version":"1.3.51"}
8qtz3wrc8jb	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"View record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"}}
sge8s8r9kdv	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab"}
0pc9xw649k4	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Details\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{}}
1vvvk5b0mrj	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:common:addBlock"}
scx9pufw9ld	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Edit record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"}}
ftwn0si2s5e	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab"}
a2izctpt2dm	t0ejkkbw0r3	{"x-uid":"a2izctpt2dm","name":"t0ejkkbw0r3","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Chi tiết","x-action":"view","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:view","x-component":"Action.Link","x-component-props":{"openMode":"modal","iconColor":"#1677FF","danger":false},"x-action-context":{"dataSource":"main","collection":"proposes"},"x-decorator":"ACLActionProvider","x-designer-props":{"linkageAction":true}}
7i8vn1nplyc	1cg2zke439f	{"x-uid":"7i8vn1nplyc","name":"1cg2zke439f","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Chỉnh sửa","x-action":"update","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:edit","x-component":"Action.Link","x-component-props":{"openMode":"drawer","iconColor":"#1677FF","danger":false},"x-action-context":{"dataSource":"main","collection":"proposes"},"x-decorator":"ACLActionProvider","x-designer-props":{"linkageAction":true}}
que1e0cmz1z	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Edit\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{}}
wwfnvseziiz	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:common:addBlock"}
6ex1fiqbfa8	2j3z3i8xk2k	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
lm0dfpdoltg	name	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"proposes.name","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
dqssxed8op7	hziod3f5xg7	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
6idlds4jdgv	status	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"proposes.status","x-component":"CollectionField","x-component-props":{"style":{"width":"100%"},"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
bq12jdwqsm7	k0eegrv1nt8	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
mk0btnborli	address	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"proposes.address","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
511oe1h7d0q	xxhk3v4v93a	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
ii9oyxsb8c5	uuzr43fvadq	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
bjya50ieh5c	q8al7jgyowr	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action-props":{"skipScopeCheck":true},"x-acl-action":"proposes:create","x-decorator":"FormBlockProvider","x-use-decorator-props":"useCreateFormBlockDecoratorProps","x-decorator-props":{"dataSource":"main","collection":"proposes"},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:createForm","x-component":"CardItem","x-app-version":"1.3.51"}
qusl2hqi7gk	mm967xi2nmz	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"FormV2","x-use-component-props":"useCreateFormBlockProps","x-app-version":"1.3.51"}
7wvztesg1l9	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"form:configureFields","x-app-version":"1.3.51"}
9lqwydcclbh	upldv76ibuh	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"createForm:configureActions","x-component":"ActionBar","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.51"}
5xc37z6hvd7	p8vjtli8p0h	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
xh6ua2oy0ak	e4ub2f18j5z	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
h12h75lwjjk	name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.name","x-component-props":{},"x-app-version":"1.3.51"}
neokhhxlkag	98my6jt9p4n	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
qam3nz2fvrb	g2u0hu850qu	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
kwi6avb0snz	address	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.address","x-component-props":{},"x-app-version":"1.3.51"}
gf7yu1fk5fu	h10b1gu707v	{"x-uid":"gf7yu1fk5fu","name":"h10b1gu707v","_isJSONSchemaObject":true,"version":"2.0","title":"Xoá bỏ","x-action":"destroy","x-component":"Action.Link","x-use-component-props":"useDestroyActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:delete","x-component-props":{"confirm":{"title":"{{t('Delete record')}}","content":"{{t('Are you sure you want to delete it?')}}"},"refreshDataBlockRequest":true,"iconColor":"#1677FF","danger":false},"x-action-settings":{"triggerWorkflows":[]},"x-decorator":"ACLActionProvider","x-designer-props":{"linkageAction":true},"type":"void"}
v5n63r5xizu	2g9zqjhxmeu	{"x-uid":"v5n63r5xizu","name":"2g9zqjhxmeu","_isJSONSchemaObject":true,"version":"2.0","title":"Lưu","x-action":"submit","x-component":"Action","x-use-component-props":"useCreateActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:createSubmit","x-component-props":{"type":"primary","htmlType":"submit","iconColor":"#1677FF","icon":"saveoutlined","danger":false},"x-action-settings":{"triggerWorkflows":[]},"type":"void","x-app-version":"1.3.51"}
zxh1oe1qx5t	r5yfkbojbyj	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
a7e860jrx5o	pevvd8rma2g	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
pdot2ybyfc0	qrq3ll8it92	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableBlockProvider","x-acl-action":"projects:list","x-use-decorator-props":"useTableBlockDecoratorProps","x-decorator-props":{"collection":"projects","dataSource":"main","action":"list","params":{"pageSize":20},"rowKey":"id","showIndex":true,"dragSort":false},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:table","x-component":"CardItem","x-filter-targets":[],"x-app-version":"1.3.51"}
baqq2v2fong	actions	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"table:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":"var(--nb-spacing)"}},"x-app-version":"1.3.51"}
bbqntpvrcj9	89u317s7z7a	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"editForm:configureActions","x-component":"ActionBar","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.51"}
6ldkeouiqu6	l4lm2dx4mao	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
11v507faua9	q7c0dmgpifl	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
i0bqeajbvwo	6iv66gosfpg	{"_isJSONSchemaObject":true,"version":"2.0","type":"array","x-initializer":"table:configureColumns","x-component":"TableV2","x-use-component-props":"useTableBlockProps","x-component-props":{"rowKey":"id","rowSelection":{"type":"checkbox"}},"x-app-version":"1.3.51"}
galt7hbd78y	d5xui6uxj4s	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"DndContext","x-component":"Space","x-component-props":{"split":"|"},"x-app-version":"1.3.51"}
9udwuhf2o25	actions	{"x-uid":"9udwuhf2o25","name":"actions","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Chức năng","x-action-column":"actions","x-decorator":"TableV2.Column.ActionBar","x-component":"TableV2.Column","x-toolbar":"TableColumnSchemaToolbar","x-initializer":"table:configureItemActions","x-settings":"fieldSettings:TableColumn","x-toolbar-props":{"initializer":"table:configureItemActions"},"x-app-version":"1.3.51"}
a6lzbst8sz6	55lj54g6sou	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
zbn0vslk90o	name	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"projects.name","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
q0et9i0iaar	c3d2z6nrq3e	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
2honxaktv0l	agprpz7n4uu	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
f6or5f1urqn	total_amount	{"x-uid":"f6or5f1urqn","name":"total_amount","_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"projects.total_amount","x-component":"CollectionField","x-component-props":{"formatStyle":"normal","separator":"0.0,00","step":"1","addonAfter":" đ"},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
l3sn84hkipn	address	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"projects.address","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
b7zq62km2nh	w7jceua9e3x	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
ix3eneqbhqt	fund_id	{"x-uid":"ix3eneqbhqt","name":"fund_id","_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"projects.fund_id","x-component":"CollectionField","x-component-props":{"ellipsis":true,"size":"small","fieldNames":{"value":"id","label":"name"}},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
e87ogy2w48b	actions	{"x-uid":"e87ogy2w48b","name":"actions","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Chức năng","x-action-column":"actions","x-decorator":"TableV2.Column.ActionBar","x-component":"TableV2.Column","x-toolbar":"TableColumnSchemaToolbar","x-initializer":"table:configureItemActions","x-settings":"fieldSettings:TableColumn","x-toolbar-props":{"initializer":"table:configureItemActions"},"x-app-version":"1.3.51"}
hg9tvy6yuph	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"View record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"}}
k4kftsn5ht7	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab"}
ebu29iqsaqx	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Details\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{}}
4gdmc9g083s	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:common:addBlock"}
8i28yvimg4p	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Edit record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"}}
muv6h06t8mi	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab"}
ybdxp7v91jn	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Edit\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{}}
9cngdl646v0	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:common:addBlock"}
0m1gm5ozwh9	gwxq2p74eeo	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Filter\\") }}","x-action":"filter","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:filter","x-component":"Filter.Action","x-use-component-props":"useFilterActionProps","x-component-props":{"icon":"FilterOutlined"},"x-align":"left","x-app-version":"1.3.51"}
64hct65otbl	name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.name","x-component-props":{},"x-app-version":"1.3.51"}
xfwxsmz494e	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Add record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"},"x-app-version":"1.3.51"}
3gtgg35z6e8	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab","x-initializer-props":{"gridInitializer":"popup:addNew:addBlock"},"x-app-version":"1.3.51"}
alnwl1ouj3h	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Add new\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{},"x-app-version":"1.3.51"}
adxntkyyx2m	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:addNew:addBlock","x-app-version":"1.3.51"}
vukfpwp37qn	umro5nck6q4	{"x-uid":"vukfpwp37qn","name":"umro5nck6q4","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-action":"create","x-acl-action":"create","title":"Thêm mới","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:addNew","x-component":"Action","x-decorator":"ACLActionProvider","x-component-props":{"openMode":"drawer","type":"primary","component":"CreateRecordAction","icon":"PlusOutlined","iconColor":"#1677FF","danger":false},"x-action-context":{"dataSource":"main","collection":"projects"},"x-align":"right","x-acl-action-props":{"skipScopeCheck":true},"x-app-version":"1.3.51"}
yjzd6s5ccq4	actions	{"x-uid":"yjzd6s5ccq4","name":"actions","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Chức năng","x-action-column":"actions","x-decorator":"TableV2.Column.ActionBar","x-component":"TableV2.Column","x-toolbar":"TableColumnSchemaToolbar","x-initializer":"table:configureItemActions","x-settings":"fieldSettings:TableColumn","x-toolbar-props":{"initializer":"table:configureItemActions"},"x-app-version":"1.3.51"}
xcztu1xwchz	i3hosra3hbv	{"x-uid":"xcztu1xwchz","name":"i3hosra3hbv","_isJSONSchemaObject":true,"version":"2.0","title":"Xoá bỏ","x-action":"destroy","x-component":"Action","x-use-component-props":"useBulkDestroyActionProps","x-component-props":{"icon":"DeleteOutlined","confirm":{"title":"{{t('Delete record')}}","content":"{{t('Are you sure you want to delete it?')}}"},"iconColor":"#1677FF","danger":true,"type":"danger"},"x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:bulkDelete","x-decorator":"ACLActionProvider","x-acl-action-props":{"skipScopeCheck":true},"x-action-settings":{"triggerWorkflows":[]},"x-acl-action":"projects:destroy","x-align":"right","type":"void","x-app-version":"1.3.51"}
bzirblya7qw	2d5bonbo3za	{"x-uid":"bzirblya7qw","name":"2d5bonbo3za","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Chi tiết","x-action":"view","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:view","x-component":"Action.Link","x-component-props":{"openMode":"drawer","iconColor":"#1677FF","danger":false},"x-action-context":{"dataSource":"main","collection":"projects"},"x-decorator":"ACLActionProvider","x-designer-props":{"linkageAction":true}}
gtl3wuwfl32	mw9q0l3421a	{"x-uid":"gtl3wuwfl32","name":"mw9q0l3421a","_isJSONSchemaObject":true,"version":"2.0","title":"Cập nhật dữ liệu","x-action":"refresh","x-component":"Action","x-use-component-props":"useRefreshActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:refresh","x-component-props":{"icon":"ReloadOutlined","iconColor":"#1677FF","danger":false,"type":"default"},"x-align":"right","type":"void","x-app-version":"1.3.51"}
lmgnrgroovk	77ots1dons1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
mmj417nrjpa	fn1exsxa5rt	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
o75drsj41f1	type	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"kafka_topics.type","x-component":"CollectionField","x-component-props":{"style":{"width":"100%"},"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
82ikkgrog2y	dmhl5rxle76	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableBlockProvider","x-acl-action":"funds:list","x-use-decorator-props":"useTableBlockDecoratorProps","x-decorator-props":{"collection":"funds","dataSource":"main","action":"list","params":{"pageSize":20},"rowKey":"id","showIndex":true,"dragSort":false},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:table","x-component":"CardItem","x-filter-targets":[],"x-app-version":"1.3.51"}
6kbk2ko53xi	actions	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"table:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":"var(--nb-spacing)"}},"x-app-version":"1.3.51"}
imrhc9he5on	vw28iyypvz2	{"_isJSONSchemaObject":true,"version":"2.0","type":"array","x-initializer":"table:configureColumns","x-component":"TableV2","x-use-component-props":"useTableBlockProps","x-component-props":{"rowKey":"id","rowSelection":{"type":"checkbox"}},"x-app-version":"1.3.51"}
ji9t3fgnkc0	q2808mxk0pe	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"DndContext","x-component":"Space","x-component-props":{"split":"|"},"x-app-version":"1.3.51"}
e2bz79kfn39	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"View record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"}}
2w360eurk19	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab"}
85c8uxmskwh	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Details\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{}}
eolrwpo9lyf	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:common:addBlock"}
pvmgj00ippd	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Edit record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"}}
zkmofdtbl6m	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab"}
iniy0emerbt	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Edit\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{}}
u4pz1nv2zu7	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:common:addBlock"}
s9lar6nxkb9	45lbr8ny2kh	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
7bgianrailm	aavurbu5jec	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
ykxbmnj3qtf	12r4kfx4fsx	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Filter\\") }}","x-action":"filter","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:filter","x-component":"Filter.Action","x-use-component-props":"useFilterActionProps","x-component-props":{"icon":"FilterOutlined"},"x-align":"left","x-app-version":"1.3.51"}
kxwxa5snxqj	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Add record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"},"x-app-version":"1.3.51"}
kaqxzol2uzz	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab","x-initializer-props":{"gridInitializer":"popup:addNew:addBlock"},"x-app-version":"1.3.51"}
49vizxk9deo	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Add new\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{},"x-app-version":"1.3.51"}
kn2leva9pcs	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:addNew:addBlock","x-app-version":"1.3.51"}
hrottqihhik	w2rvu96kp41	{"x-uid":"hrottqihhik","name":"w2rvu96kp41","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-action":"create","x-acl-action":"create","title":"Thêm mới","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:addNew","x-component":"Action","x-decorator":"ACLActionProvider","x-component-props":{"openMode":"drawer","type":"primary","component":"CreateRecordAction","icon":"PlusOutlined","iconColor":"#1677FF","danger":false},"x-action-context":{"dataSource":"main","collection":"funds"},"x-align":"right","x-acl-action-props":{"skipScopeCheck":true},"x-app-version":"1.3.51"}
y6sl19mjcff	dixr6oerwtq	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
sgipr99uvpy	y90ydq50buw	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
sm99m0bwdty	address	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.address","x-component-props":{},"x-app-version":"1.3.51"}
cjgytsf96xm	oco91esfafe	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
m22ogp0s8dv	k8dnlcgx2mr	{"x-uid":"m22ogp0s8dv","name":"k8dnlcgx2mr","_isJSONSchemaObject":true,"version":"2.0","title":"Xoá bỏ","x-action":"destroy","x-component":"Action","x-use-component-props":"useBulkDestroyActionProps","x-component-props":{"icon":"DeleteOutlined","confirm":{"title":"{{t('Delete record')}}","content":"{{t('Are you sure you want to delete it?')}}"},"iconColor":"#1677FF","danger":true,"type":"danger"},"x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:bulkDelete","x-decorator":"ACLActionProvider","x-acl-action-props":{"skipScopeCheck":true},"x-action-settings":{"triggerWorkflows":[]},"x-acl-action":"funds:destroy","x-align":"right","type":"void","x-app-version":"1.3.51"}
z6frz5xuu4k	x0rzl0t10nj	{"x-uid":"z6frz5xuu4k","name":"x0rzl0t10nj","_isJSONSchemaObject":true,"version":"2.0","title":"Cập nhật dữ liệu","x-action":"refresh","x-component":"Action","x-use-component-props":"useRefreshActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:refresh","x-component-props":{"icon":"ReloadOutlined","iconColor":"#1677FF","danger":false,"type":"default"},"x-align":"right","type":"void","x-app-version":"1.3.51"}
08ul9zdtvmm	06q4p77791h	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
0ykb0dwa7qn	name	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"funds.name","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
2l1dxgil9m0	ojehn0yvsfo	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
2yp2l3a5rvg	nyewwt1gtzp	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
h9b6ss6g5n5	current_amount	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"funds.current_amount","x-component":"CollectionField","x-component-props":{},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
r15lkroggz5	qvbxu7c6bh0	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
bj7dti4exso	project	{"x-uid":"bj7dti4exso","name":"project","_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"funds.project","x-component":"CollectionField","x-component-props":{"ellipsis":true,"size":"small","fieldNames":{"value":"id","label":"name"}},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
6hd31g8yv4w	crh1ir8b003	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
ic7u2lri0wu	3wve3pm9pji	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
4z1o600a2we	dpu1osfq901	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action-props":{"skipScopeCheck":false},"x-acl-action":"proposes:update","x-decorator":"FormBlockProvider","x-use-decorator-props":"useEditFormBlockDecoratorProps","x-decorator-props":{"action":"get","dataSource":"main","collection":"proposes"},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:editForm","x-component":"CardItem","x-app-version":"1.3.51"}
qiff3fagpbp	x010bnbnuxh	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"FormV2","x-use-component-props":"useEditFormBlockProps","x-app-version":"1.3.51"}
j6u3fnp1gf7	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"form:configureFields","x-app-version":"1.3.51"}
7ac5fvdsvhv	status	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.status","x-component-props":{"style":{"width":"100%"}},"x-app-version":"1.3.51"}
34dbxdespfo	91x90j36t5c	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
x747kf9mxwc	wy7yzxl7mk1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
p6s217wf7ct	address	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.address","x-component-props":{},"x-app-version":"1.3.51"}
uhyna377ejo	kqfnftlrx7e	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
uqefruvwdrj	jx4pyf90i5t	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
49du3kw1vk3	1ulbalutbtz	{"x-uid":"49du3kw1vk3","name":"1ulbalutbtz","_isJSONSchemaObject":true,"version":"2.0","title":"Lưu","x-action":"submit","x-component":"Action","x-use-component-props":"useUpdateActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:updateSubmit","x-component-props":{"type":"primary","htmlType":"submit","iconColor":"#1677FF","icon":"saveoutlined","danger":false,"confirm":{}},"x-action-settings":{"triggerWorkflows":[]},"type":"void","x-app-version":"1.3.51"}
7608d2qrms5	rupq83lhexj	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
3wjttvlbvom	vinaz42y392	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
7b0nw7tckru	d1leacdeh0n	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action-props":{"skipScopeCheck":true},"x-acl-action":"projects:create","x-decorator":"FormBlockProvider","x-use-decorator-props":"useCreateFormBlockDecoratorProps","x-decorator-props":{"dataSource":"main","collection":"projects"},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:createForm","x-component":"CardItem","x-app-version":"1.3.51"}
kiub9a1d6kl	exyf4hg8ldb	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"FormV2","x-use-component-props":"useCreateFormBlockProps","x-app-version":"1.3.51"}
3qm94lpqqbi	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"form:configureFields","x-app-version":"1.3.51"}
eb1kzrwxlpo	vzljh30ukq7	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"createForm:configureActions","x-component":"ActionBar","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.51"}
p8r4eqswil9	l7msll9alzy	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
gknyqq41xnt	vqellucd481	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
923mrc3wb4s	name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.name","x-component-props":{},"x-app-version":"1.3.51"}
694yihv1mt2	total_amount	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.total_amount","x-component-props":{},"x-app-version":"1.3.51"}
prfw0qv3j86	qwwqjrnv319	{"x-uid":"prfw0qv3j86","name":"qwwqjrnv319","_isJSONSchemaObject":true,"version":"2.0","title":"Lưu","x-action":"submit","x-component":"Action","x-use-component-props":"useCreateActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:createSubmit","x-component-props":{"type":"primary","htmlType":"submit","iconColor":"#1677FF","icon":"saveoutlined","danger":false},"x-action-settings":{"triggerWorkflows":[]},"type":"void","x-app-version":"1.3.51"}
qu64eoa7amg	eobg71nkffb	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
t1avimtuwpm	2ls8k57yctn	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
9t4p5s7w6b5	qr_code_url	{"x-uid":"9t4p5s7w6b5","name":"qr_code_url","_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"funds.qr_code_url","x-component":"CollectionField","x-component-props":{"component":"Input.Preview","size":"large"},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
2bwco99n47x	d4mud4uha2e	{"x-uid":"2bwco99n47x","name":"d4mud4uha2e","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Chi tiết","x-action":"view","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:view","x-component":"Action.Link","x-component-props":{"openMode":"drawer","iconColor":"#1677FF","danger":false},"x-action-context":{"dataSource":"main","collection":"funds"},"x-decorator":"ACLActionProvider","x-designer-props":{"linkageAction":true}}
w1vttmfcjic	ktpm10m72a3	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Dự án đang kêu gọi","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{"icon":"fundprojectionscreenoutlined"},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}],"x-app-version":"1.3.51"}
833uu3rb1nm	8mnbevqrjyp	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock","x-app-version":"1.3.51"}
ik0zt15yup2	page	{"x-uid":"ik0zt15yup2","name":"page","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page","x-app-version":"1.3.51","x-component-props":{"disablePageHeader":true}}
fvx7g50y58n	jhk2alluia1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
f205ix4mjg8	0zslc75i48k	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
1whdhzzrodk	exus1sgwq1w	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action":"projects:view","x-decorator":"GridCard.Decorator","x-use-decorator-props":"useGridCardBlockDecoratorProps","x-decorator-props":{"collection":"projects","dataSource":"main","readPretty":true,"action":"list","params":{"pageSize":12},"runWhenParamsChanged":true,"rowKey":"id"},"x-component":"BlockItem","x-use-component-props":"useGridCardBlockItemProps","x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:gridCard","x-app-version":"1.3.51"}
f6vhj5hgult	actionBar	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"gridCard:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":"var(--nb-spacing)"}},"x-app-version":"1.3.51"}
09yy6b78jxi	list	{"_isJSONSchemaObject":true,"version":"2.0","type":"array","x-component":"GridCard","x-use-component-props":"useGridCardBlockProps","x-app-version":"1.3.51"}
mqma0oexw7v	item	{"_isJSONSchemaObject":true,"version":"2.0","type":"object","x-component":"GridCard.Item","x-read-pretty":true,"x-use-component-props":"useGridCardItemProps","x-app-version":"1.3.51"}
22pnzqtybji	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"details:configureFields","x-app-version":"1.3.51"}
99wrtdh3vjb	actionBar	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-align":"left","x-initializer":"gridCard:configureItemActions","x-component":"ActionBar","x-use-component-props":"useGridCardActionBarProps","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.51"}
jvsn4hlvp5o	name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.name","x-component-props":{},"x-app-version":"1.3.51"}
e4samnonhij	tr2gblfn7ay	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
nmsro2sp378	fiudpr5topq	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
j6v7p1dgvc9	sub_title	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.sub_title","x-component-props":{},"x-app-version":"1.3.51"}
04nart2ippj	images	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.images","x-component-props":{},"x-use-component-props":"useAttachmentFieldProps","x-app-version":"1.3.51"}
5du82txc6va	km6tw2enmyw	{"x-uid":"5du82txc6va","name":"km6tw2enmyw","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51","x-component-props":{"width":100}}
62kkj5k4vhn	hzuj9h6kur3	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
udmmaahgp9z	4r68wxww90v	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
qujstuiy3k2	vmsy7tvgnx5	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
p3st627y95d	fund_id	{"x-uid":"p3st627y95d","name":"fund_id","_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.fund_id","x-component-props":{"fieldNames":{"value":"id","label":"name"},"enableLink":false},"x-app-version":"1.3.51","x-action-context":{"dataSource":"main","association":"projects.fund_id"}}
lgkny2plcta	eh6mnnzg5yv	{"x-uid":"lgkny2plcta","name":"eh6mnnzg5yv","_isJSONSchemaObject":true,"version":"2.0","title":"Xoá bỏ","x-action":"destroy","x-component":"Action.Link","x-use-component-props":"useDestroyActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:delete","x-component-props":{"confirm":{"title":"{{t('Delete record')}}","content":"{{t('Are you sure you want to delete it?')}}"},"refreshDataBlockRequest":true,"iconColor":"#1677FF","danger":false},"x-action-settings":{"triggerWorkflows":[]},"x-decorator":"ACLActionProvider","x-designer-props":{"linkageAction":true},"type":"void"}
66xqkev137r	98c11tkibc9	{"x-uid":"66xqkev137r","name":"98c11tkibc9","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Chỉnh sửa","x-action":"update","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:edit","x-component":"Action.Link","x-component-props":{"openMode":"modal","iconColor":"#1677FF","danger":false},"x-action-context":{"dataSource":"main","collection":"projects"},"x-decorator":"ACLActionProvider","x-designer-props":{"linkageAction":true}}
jjset43gbyy	yar5i7pvcf9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
e43yauc7npg	progress_images	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"projects.progress_images","x-component":"CollectionField","x-component-props":{"size":"small"},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-use-component-props":"useAttachmentFieldProps","x-app-version":"1.3.51"}
1bwhaq1v3y8	vee2be14vvd	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
jjgq2nh2ik3	images	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"projects.images","x-component":"CollectionField","x-component-props":{"size":"small"},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-use-component-props":"useAttachmentFieldProps","x-app-version":"1.3.51"}
vrwoxsmqz7z	x6bsn3v9vpy	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
5pjzqrzcwxl	sub_title	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"projects.sub_title","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
o8jbt34ilny	gg591whiik9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
u4x9wfxqbko	description	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"projects.description","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
zq78mhjzir3	b4lwgbvrde9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
iibr9bsne2i	pv9o86v5idr	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
22rasa1ixp1	sub_title	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.sub_title","x-component-props":{},"x-app-version":"1.3.51"}
3dk4jf9qcgo	8lrjoqa9i8d	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
0z89q32g4ef	fgxgndhwvjr	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
3e2mxifwrgn	description	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.description","x-component-props":{},"x-app-version":"1.3.51"}
t4dc144nsfl	xmi5vwoictx	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
t216s3mm5pg	0p9uscjy0py	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
ubyg54x0z7j	images	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.images","x-component-props":{},"x-use-component-props":"useAttachmentFieldProps","x-app-version":"1.3.51"}
ckpzj5e9g0l	4u90afvi1z8	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
2hjcaexud97	5tau5u0oghr	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
5idf4nxla3u	total_amount	{"x-uid":"5idf4nxla3u","name":"total_amount","_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.total_amount","x-component-props":{"formatStyle":"normal","separator":"0.0,00","step":"1","addonAfter":" đ"},"x-app-version":"1.3.51"}
cnkf4yhbeb3	address	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.address","x-component-props":{},"x-app-version":"1.3.51"}
sbo1xc9b65s	target_amount	{"x-uid":"sbo1xc9b65s","name":"target_amount","_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"funds.target_amount","x-component":"CollectionField","x-component-props":{"formatStyle":"normal","separator":"0.0,00","step":"1","addonAfter":" đ"},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
sr4x5sl1mby	rqdsabyk9ez	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"View record\\") }}","x-component":"AssociationField.Viewer","x-component-props":{"className":"nb-action-popup"},"x-index":0,"x-app-version":"1.3.51"}
lhhb4d5lz96	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab","x-app-version":"1.3.51"}
mm99ajvazt8	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Details\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{},"x-app-version":"1.3.51"}
yfijfhpa0n1	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:common:addBlock","x-app-version":"1.3.51"}
odmrtfsxjp5	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"View record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"},"x-app-version":"1.3.51"}
fo7g83k4wnw	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab","x-app-version":"1.3.51"}
xaewf0sjo76	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Details\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{},"x-app-version":"1.3.51"}
g4n9eb2icuo	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:common:addBlock","x-app-version":"1.3.51"}
4lk9neaacek	tz4s8sus379	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
5bru92qlyrq	page	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page","x-app-version":"1.3.51"}
i80vemflinb	7ph0kivnyy2	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock","x-app-version":"1.3.51"}
gt78k6uibhm	xm1oktbjr30	{"x-uid":"gt78k6uibhm","name":"xm1oktbjr30","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Chi tiết","x-action":"customize:link","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:link","x-component":"Action.Link","x-use-component-props":"useLinkActionProps","x-app-version":"1.3.51","x-component-props":{"iconColor":"#1677FF","danger":false,"url":"/admin/obl2auujo32","params":[{"name":"id","value":"{{$nRecord.id}}"},{"name":"fund_id","value":"{{$nRecord.fund_id.id}}"}],"openInNewWindow":true}}
alt2km13pi6	psw3evjqwcs	{"x-uid":"alt2km13pi6","name":"psw3evjqwcs","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Đóng góp ngay","x-action":"view","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:view","x-component":"Action.Link","x-component-props":{"openMode":"modal","iconColor":"#1677FF","danger":false,"openSize":"large"},"x-action-context":{"dataSource":"main","collection":"projects"},"x-decorator":"ACLActionProvider","x-align":"left","x-app-version":"1.3.51"}
fzzjta8vefz	7796t9liv6a	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
qea4hkirot0	actionBar	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"list:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":"var(--nb-spacing)"}},"x-app-version":"1.3.51"}
fuhvhiwfe1n	list	{"_isJSONSchemaObject":true,"version":"2.0","type":"array","x-component":"List","x-use-component-props":"useListBlockProps","x-app-version":"1.3.51"}
r9bunptonmc	item	{"_isJSONSchemaObject":true,"version":"2.0","type":"object","x-component":"List.Item","x-read-pretty":true,"x-use-component-props":"useListItemProps","x-app-version":"1.3.51"}
e2breqfve4x	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"details:configureFields","x-app-version":"1.3.51"}
iyimw3a9uc2	actionBar	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-align":"left","x-initializer":"list:configureItemActions","x-component":"ActionBar","x-use-component-props":"useListActionBarProps","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.51"}
ml67mod4ivt	0shlplcajzn	{"x-uid":"ml67mod4ivt","name":"0shlplcajzn","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action":"transactions:view","x-decorator":"List.Decorator","x-use-decorator-props":"useListBlockDecoratorProps","x-decorator-props":{"collection":"transactions","dataSource":"main","readPretty":true,"action":"list","params":{"pageSize":10},"runWhenParamsChanged":true,"rowKey":"id"},"x-component":"CardItem","x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:list","x-app-version":"1.3.51","x-component-props":{"heightMode":"specifyValue","height":450}}
xgcak2lw2iz	12rz8k1re6g	{"x-uid":"xgcak2lw2iz","name":"12rz8k1re6g","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51","x-component-props":{"width":"32.32"}}
wklx0s4mt5t	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:addNew:addBlock","x-app-version":"1.3.51"}
je71b5yiapc	vmm2dgtvtor	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Submit\\") }}","x-action":"submit","x-component":"Action","x-use-component-props":"useCreateActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:createSubmit","x-component-props":{"type":"primary","htmlType":"submit"},"x-action-settings":{"triggerWorkflows":[]},"type":"void","x-app-version":"1.3.51"}
0jc7b0j4ca8	csq9ob0c25v	{"x-uid":"0jc7b0j4ca8","name":"csq9ob0c25v","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-settings":"blockSettings:iframe","x-decorator":"BlockItem","x-decorator-props":{"name":"iframe"},"x-component":"Iframe","x-component-props":{"heightMode":"specifyValue","height":450,"mode":"html","engine":"string","params":[],"htmlId":"y8wo4qdjyby"},"x-app-version":"1.3.51"}
kbm738ecszi	col_wktnsi6ch4a	{"x-uid":"kbm738ecszi","name":"col_wktnsi6ch4a","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-index":1,"x-component-props":{"width":"67.60"}}
0sygad82cqs	row_wx1773xzqj7	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-index":1}
0yu3l905f1t	iix60ebv9ss	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col"}
xkqldchxl9c	row_vjfo12ymuge	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-index":3}
elx91vnsmjj	pu2cldss0h9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col"}
aezmizce5n2	row_sp19u2s8p4h	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-index":1}
slyvobazfq4	cl254bnak8k	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Filter\\") }}","x-action":"filter","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:filter","x-component":"Filter.Action","x-use-component-props":"useFilterActionProps","x-component-props":{"icon":"FilterOutlined"},"x-align":"left","x-app-version":"1.3.51"}
4ta56kbw4tp	row_in4q7blra2x	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-index":1}
k2mxivm0oqa	5qn0eqyp2an	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col"}
41zfs8bogys	fly9kqbi88f	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Kafka config","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{"icon":"bugoutlined"},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}]}
fq548i6jjul	0du3uau7m3w	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock"}
b8e4crdaije	page	{"x-uid":"b8e4crdaije","name":"page","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page","x-component-props":{"hidePageTitle":true}}
wu05wqno6t2	ltf8wyoaf1a	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
3owowmpqg3i	jl58t0i7noi	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
culzjbos9r3	7jw9hs1r616	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableBlockProvider","x-acl-action":"kafka_topics:list","x-use-decorator-props":"useTableBlockDecoratorProps","x-decorator-props":{"collection":"kafka_topics","dataSource":"main","action":"list","params":{"pageSize":20},"rowKey":"id","showIndex":true,"dragSort":false},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:table","x-component":"CardItem","x-filter-targets":[],"x-app-version":"1.3.51"}
tw82t2es2ty	actions	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"table:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":"var(--nb-spacing)"}},"x-app-version":"1.3.51"}
v3o080ka847	d9t9v2jcaiw	{"_isJSONSchemaObject":true,"version":"2.0","type":"array","x-initializer":"table:configureColumns","x-component":"TableV2","x-use-component-props":"useTableBlockProps","x-component-props":{"rowKey":"id","rowSelection":{"type":"checkbox"}},"x-app-version":"1.3.51"}
9vahgw6b2zc	actions	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Actions\\") }}","x-action-column":"actions","x-decorator":"TableV2.Column.ActionBar","x-component":"TableV2.Column","x-toolbar":"TableColumnSchemaToolbar","x-initializer":"table:configureItemActions","x-settings":"fieldSettings:TableColumn","x-toolbar-props":{"initializer":"table:configureItemActions"},"x-app-version":"1.3.51"}
8sehmqjx6y1	4k4hsrg5ssw	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"DndContext","x-component":"Space","x-component-props":{"split":"|"},"x-app-version":"1.3.51"}
dac2j2kt870	mvciqumftzl	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
smd6vh6wzvh	lelbv8wpsdy	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
beq12cybpaz	j0qdtr97vji	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableBlockProvider","x-acl-action":"kafka_configs:list","x-use-decorator-props":"useTableBlockDecoratorProps","x-decorator-props":{"collection":"kafka_configs","dataSource":"main","action":"list","params":{"pageSize":20},"rowKey":"id","showIndex":true,"dragSort":false},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:table","x-component":"CardItem","x-filter-targets":[],"x-app-version":"1.3.51"}
h57ad49xfey	actions	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"table:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":"var(--nb-spacing)"}},"x-app-version":"1.3.51"}
e3eaa6uq9t8	nxi9l2l50r1	{"_isJSONSchemaObject":true,"version":"2.0","type":"array","x-initializer":"table:configureColumns","x-component":"TableV2","x-use-component-props":"useTableBlockProps","x-component-props":{"rowKey":"id","rowSelection":{"type":"checkbox"}},"x-app-version":"1.3.51"}
c8kzc0jfotm	actions	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Actions\\") }}","x-action-column":"actions","x-decorator":"TableV2.Column.ActionBar","x-component":"TableV2.Column","x-toolbar":"TableColumnSchemaToolbar","x-initializer":"table:configureItemActions","x-settings":"fieldSettings:TableColumn","x-toolbar-props":{"initializer":"table:configureItemActions"},"x-app-version":"1.3.51"}
lylp2daxzr6	22q4y5s0cr1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"DndContext","x-component":"Space","x-component-props":{"split":"|"},"x-app-version":"1.3.51"}
dknwg9949yr	7cu6novy6t3	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-action":"create","x-acl-action":"create","title":"{{t('Add new')}}","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:addNew","x-component":"Action","x-decorator":"ACLActionProvider","x-component-props":{"openMode":"drawer","type":"primary","component":"CreateRecordAction","icon":"PlusOutlined"},"x-action-context":{"dataSource":"main","collection":"kafka_topics"},"x-align":"right","x-acl-action-props":{"skipScopeCheck":true},"x-app-version":"1.3.51"}
9c1c2orwoq7	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Add record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"},"x-app-version":"1.3.51"}
826yic3e7bk	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab","x-initializer-props":{"gridInitializer":"popup:addNew:addBlock"},"x-app-version":"1.3.51"}
yt77srlsive	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Add new\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{},"x-app-version":"1.3.51"}
5w0u5l0eba3	zjasrrgzflw	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Delete\\") }}","x-action":"destroy","x-component":"Action","x-use-component-props":"useBulkDestroyActionProps","x-component-props":{"icon":"DeleteOutlined","confirm":{"title":"{{t('Delete record')}}","content":"{{t('Are you sure you want to delete it?')}}"}},"x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:bulkDelete","x-decorator":"ACLActionProvider","x-acl-action-props":{"skipScopeCheck":true},"x-action-settings":{"triggerWorkflows":[]},"x-acl-action":"kafka_topics:destroy","x-align":"right","type":"void","x-app-version":"1.3.51"}
2ziyozcgtvr	xpwfak3bd4k	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Refresh\\") }}","x-action":"refresh","x-component":"Action","x-use-component-props":"useRefreshActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:refresh","x-component-props":{"icon":"ReloadOutlined"},"x-align":"right","type":"void","x-app-version":"1.3.51"}
p9tevlo816p	kqikspnvfrv	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
8kbnum15b1u	yldce01d8xu	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
n9ajlii3rdt	topic_name	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"kafka_topics.topic_name","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
datiyxz3yqb	j5lzl8a038o	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
4nsqtpiaris	broker_host	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"kafka_topics.broker_host","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
uqksfd0oriv	xbho66vyd8n	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
0c9o95n7ckl	group_id	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"kafka_configs.group_id","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
tgg2yk2x7el	s7em4s3k2zw	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
5p4ay8t5i8m	client_id	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"kafka_configs.client_id","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
zsylwgqg56a	ss72s5ixd6t	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
mue77s53ug0	bi0py0f58ta	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
agy55hanha3	lnocczdxhd5	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action-props":{"skipScopeCheck":true},"x-acl-action":"kafka_topics:create","x-decorator":"FormBlockProvider","x-use-decorator-props":"useCreateFormBlockDecoratorProps","x-decorator-props":{"dataSource":"main","collection":"kafka_topics"},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:createForm","x-component":"CardItem","x-app-version":"1.3.51"}
sfa4kawo4ky	zmw07b8ao7s	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"FormV2","x-use-component-props":"useCreateFormBlockProps","x-app-version":"1.3.51"}
4sqtmnjqy3l	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"form:configureFields","x-app-version":"1.3.51"}
eupy33wyahw	7aax1ngr3t4	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"createForm:configureActions","x-component":"ActionBar","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.51"}
8bk7zmz6xb6	dfia52r9qz6	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
n1q88j8ccbz	p1e31nnoxyw	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
nlou4s5aouj	broker_host	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"kafka_topics.broker_host","x-component-props":{},"x-app-version":"1.3.51"}
30afm9j9mof	djyrzsqdn4b	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
3k4d6voqqmv	t358f6ldd3g	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
nk1o1xq6m6v	topic_name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"kafka_topics.topic_name","x-component-props":{},"x-app-version":"1.3.51"}
p75pmr75t0d	g4ylyoivqmz	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
74s44xtfq9i	kwrxyjmf7w7	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
cyqcbe8h8e3	type	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"kafka_topics.type","x-component-props":{"style":{"width":"100%"}},"x-app-version":"1.3.51"}
9261692m4qa	7r5g47kqrfh	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-action":"create","x-acl-action":"create","title":"{{t('Add new')}}","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:addNew","x-component":"Action","x-decorator":"ACLActionProvider","x-component-props":{"openMode":"drawer","type":"primary","component":"CreateRecordAction","icon":"PlusOutlined"},"x-action-context":{"dataSource":"main","collection":"kafka_configs"},"x-align":"right","x-acl-action-props":{"skipScopeCheck":true},"x-app-version":"1.3.51"}
evlfkn2k9ay	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Add record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"},"x-app-version":"1.3.51"}
siizaqdcc7g	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab","x-initializer-props":{"gridInitializer":"popup:addNew:addBlock"},"x-app-version":"1.3.51"}
ziv7xyw0rep	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Add new\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{},"x-app-version":"1.3.51"}
9i5rajl4o7f	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:addNew:addBlock","x-app-version":"1.3.51"}
2is90czs6ox	6a261zxmkia	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Filter\\") }}","x-action":"filter","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:filter","x-component":"Filter.Action","x-use-component-props":"useFilterActionProps","x-component-props":{"icon":"FilterOutlined"},"x-align":"left","x-app-version":"1.3.51"}
hm0dk2bjmly	uk1vt55cyyw	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Delete\\") }}","x-action":"destroy","x-component":"Action","x-use-component-props":"useBulkDestroyActionProps","x-component-props":{"icon":"DeleteOutlined","confirm":{"title":"{{t('Delete record')}}","content":"{{t('Are you sure you want to delete it?')}}"}},"x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:bulkDelete","x-decorator":"ACLActionProvider","x-acl-action-props":{"skipScopeCheck":true},"x-action-settings":{"triggerWorkflows":[]},"x-acl-action":"kafka_configs:destroy","x-align":"right","type":"void","x-app-version":"1.3.51"}
41rxrx9byzc	bafztjgsrly	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Refresh\\") }}","x-action":"refresh","x-component":"Action","x-use-component-props":"useRefreshActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:refresh","x-component-props":{"icon":"ReloadOutlined"},"x-align":"right","type":"void","x-app-version":"1.3.51"}
mk3xa4vi82o	f0lwl32va4r	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
3yn0m2wrfox	fv6jdj6m7e3	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
ydsit0px4rd	jlpflkrb4dv	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action-props":{"skipScopeCheck":true},"x-acl-action":"kafka_configs:create","x-decorator":"FormBlockProvider","x-use-decorator-props":"useCreateFormBlockDecoratorProps","x-decorator-props":{"dataSource":"main","collection":"kafka_configs"},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:createForm","x-component":"CardItem","x-app-version":"1.3.51"}
un4uti49os0	88zwupdypzw	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"FormV2","x-use-component-props":"useCreateFormBlockProps","x-app-version":"1.3.51"}
hhlmur67sro	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"form:configureFields","x-app-version":"1.3.51"}
avdz4ojpjyi	tuldnpysee2	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"createForm:configureActions","x-component":"ActionBar","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.51"}
yze2x2u555p	t77ax7hve8o	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
cagfhzs782w	m1izf9g5jom	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
nua7kket7hz	group_id	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"kafka_configs.group_id","x-component-props":{},"x-app-version":"1.3.51"}
hwdhwy2que9	v908ckr82o5	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
ln1lttr31if	5nnu7ipjnl9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
whfdv9dw36r	client_id	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"kafka_configs.client_id","x-component-props":{},"x-app-version":"1.3.51"}
05ogzmyvz6t	jjgsm9bsewf	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Submit\\") }}","x-action":"submit","x-component":"Action","x-use-component-props":"useCreateActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:createSubmit","x-component-props":{"type":"primary","htmlType":"submit"},"x-action-settings":{"triggerWorkflows":[]},"type":"void","x-app-version":"1.3.51"}
5vjhonzhs45	e0fxy36rrse	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Blockchain config","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{"icon":"codesandboxoutlined"},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}]}
jqr7lgri2e0	page	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page"}
2mxzcpz5cle	0prlg05u4b6	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock"}
wso6s8x6rl8	xuq4kz0gibh	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
ae9oy5f4ysb	jyb701yzhcr	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
n9v4n7uay5t	otcgdzqu17v	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"CardItem","x-decorator":"DataBlockProvider","x-decorator-props":{"solidityeditor":{},"dataSource":"main","collection":"smart_contracts","action":"list"},"x-settings":"blockSettings:solidityeditor","x-toolbar":"BlockSchemaToolbar","x-app-version":"1.3.51"}
7hcdwtkjl53	solidityeditor	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"SolidityEditor","x-use-component-props":"useCodeBlockProps","x-app-version":"1.3.51"}
obl2auujo32	xy11asgyr4p	{"x-uid":"obl2auujo32","name":"xy11asgyr4p","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Chi tiết dự án","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{"icon":"aliwangwangoutlined","hidden":true},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}],"x-app-version":"1.3.51"}
to668yqpfbk	2s0hp9ccddn	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
lnl6ixhbtoa	transaction_code	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"transactions.transaction_code","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
oku0n57sd7x	rn51scs5964	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
oy9b77omeje	carousel	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Carousel","x-use-component-props":"useCarouselBlockProps","x-app-version":"1.3.51"}
hnxlnz7kz6g	tfitjlmc6hi	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
oam5lsqaqw1	qdbg7w5bdby	{"x-uid":"oam5lsqaqw1","name":"qdbg7w5bdby","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"DataBlockProvider","x-component":"FormItem","x-settings":"blockSettings:carousel","x-toolbar":"BlockSchemaToolbar","x-decorator-props":{"carousel":{"height":400},"rowKey":"id","runWhenParamsChanged":true,"readPretty":true,"dataSource":"main","collection":"projects","action":"list","params":{"filter":{"$and":[{"id":{"$eq":"{{$nURLSearchParams.id}}"}}]},"appends":["images"]}},"x-use-decorator-props":"useBlockScopeDecoratorProps","x-app-version":"1.3.51"}
olvl2c3hlpk	20a54iv6yiq	{"x-uid":"olvl2c3hlpk","name":"20a54iv6yiq","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51","x-component-props":{"width":50}}
mi71c1ge6na	p8igwddvx71	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
q5uzs9ydsfq	hn0bytpg4rj	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
zhmd8340u9p	ylvoirp7d2n	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action-props":{"skipScopeCheck":true},"x-acl-action":"transactions:create","x-decorator":"FormBlockProvider","x-use-decorator-props":"useCreateFormBlockDecoratorProps","x-decorator-props":{"dataSource":"main","collection":"transactions"},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:createForm","x-component":"CardItem","x-app-version":"1.3.51"}
269ugsobf0q	r15a3xet0ag	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"FormV2","x-use-component-props":"useCreateFormBlockProps","x-app-version":"1.3.51"}
1zppis56hgq	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"form:configureFields","x-app-version":"1.3.51"}
2734c1npcd3	v3xc7j591od	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"createForm:configureActions","x-component":"ActionBar","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.51"}
lbqrwbc300m	l6qnuppgj7p	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
k8wly6qev2x	rt8p5vz3yul	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
kuzt62annzq	transaction_code	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.transaction_code","x-component-props":{},"x-app-version":"1.3.51"}
1la4yan1f8i	po5szcpamsl	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
o9u7omjfm9v	10y8qhb4a3d	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
3l8rauopr1i	amount	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.amount","x-component-props":{},"x-app-version":"1.3.51"}
vlp8rv3bdrm	fk0y94vbiim	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
rbo4f75swb8	28yyn6um09r	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
xp5thab18zp	direction	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.direction","x-component-props":{"style":{"width":"100%"}},"x-app-version":"1.3.51"}
hu4f6iqkias	epiazjmc24g	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
wf6i0l1rq5h	cfllr35lwr5	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
b19flc450d4	fund	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.fund","x-component-props":{"fieldNames":{"value":"id","label":"id"}},"x-app-version":"1.3.51"}
w8z0t7km6y6	v89lrsuqljj	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
bl5cko9dc2s	u2neu25z50f	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
q8iw0s2gord	from_account_no	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.from_account_no","x-component-props":{},"x-app-version":"1.3.51"}
oppm7g32hpv	rh2lre5vbsq	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
f4w58chv2n1	from_account_name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.from_account_name","x-component-props":{},"x-app-version":"1.3.51"}
k3s1inyl7od	ghkwe4tml2j	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
zhznhya5d4k	j9oa9p5bvff	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
wczmtfqkbe7	from_bank_name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.from_bank_name","x-component-props":{},"x-app-version":"1.3.51"}
2dan6q3aj1j	75wuu4empdc	{"x-uid":"2dan6q3aj1j","name":"75wuu4empdc","_isJSONSchemaObject":true,"version":"2.0","title":"Lưu","x-action":"submit","x-component":"Action","x-use-component-props":"useCreateActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:createSubmit","x-component-props":{"type":"primary","htmlType":"submit","iconColor":"#1677FF","icon":"saveoutlined","danger":false},"x-action-settings":{"triggerWorkflows":[]},"type":"void","x-app-version":"1.3.51"}
br2iml0jo4g	43so4zxpte2	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
x7rtah7eo6m	header picker	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"HeaderPickerBlock","x-app-version":"1.3.51"}
7cqqh5i0a2o	fields	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"info:configureFields","x-app-version":"1.3.51"}
iyip7uhpv5v	l3j2602l0bv	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-collection-field":"name","x-component":"Grid.Row","x-app-version":"1.3.51"}
y1rrkjssybd	b8d6lq5gc13	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
55dw0zjnq5z	rbklp2o13zl	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-collection-field":"sub_title","x-component":"Grid.Row","x-app-version":"1.3.51"}
y5cb9mdp2aj	b8iyfcm0qwb	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
uy8iun5lic9	name	{"x-uid":"uy8iun5lic9","name":"name","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"InfoField","x-component-props":{"name":"name","headerType":"h2"},"x-settings":"fieldSettings:component:header picker","x-decorator":"FormItem","x-app-version":"1.3.51"}
huog9umg369	sub_title	{"x-uid":"huog9umg369","name":"sub_title","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"InfoField","x-component-props":{"name":"sub_title","headerType":"p"},"x-settings":"fieldSettings:component:header picker","x-decorator":"FormItem","x-app-version":"1.3.51"}
kfb8elqjp0o	col_zigb92fkqpw	{"x-uid":"kfb8elqjp0o","name":"col_zigb92fkqpw","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-index":1,"x-component-props":{"width":50}}
h2074c82qcd	e373z3s3xvv	{"x-uid":"h2074c82qcd","name":"e373z3s3xvv","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"DataBlockProvider","x-decorator-props":{"myHeaderPicker":{"height":300},"dataSource":"main","collection":"projects","action":"list"},"x-component":"CardItem","x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:header picker","x-designer":"FormV2.Designer","x-component-props":{"useConfigureFields":true},"x-use-decorator-props":"useBlockScopeDecoratorProps","x-app-version":"1.3.51"}
szv3v13lwap	9klmp3sxg8f	{"x-uid":"szv3v13lwap","name":"9klmp3sxg8f","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Chỉnh sửa","x-action":"update","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:edit","x-component":"Action.Link","x-component-props":{"openMode":"drawer","iconColor":"#1677FF","danger":false},"x-action-context":{"dataSource":"main","collection":"funds"},"x-decorator":"ACLActionProvider","x-designer-props":{"linkageAction":true}}
ugbscwjg6mp	j7l692pcy26	{"x-uid":"ugbscwjg6mp","name":"j7l692pcy26","_isJSONSchemaObject":true,"version":"2.0","title":"Xoá bỏ","x-action":"destroy","x-component":"Action.Link","x-use-component-props":"useDestroyActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:delete","x-component-props":{"confirm":{"title":"{{t('Delete record')}}","content":"{{t('Are you sure you want to delete it?')}}"},"refreshDataBlockRequest":true,"iconColor":"#1677FF","danger":false},"x-action-settings":{"triggerWorkflows":[]},"x-decorator":"ACLActionProvider","x-designer-props":{"linkageAction":true},"type":"void"}
02fwa86zov7	yyujx4o43ri	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
5qaj9xi6q1y	7y4wx5tw1nc	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
bu7t898gulm	3kh18nsa5sq	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action-props":{"skipScopeCheck":false},"x-acl-action":"funds:update","x-decorator":"FormBlockProvider","x-use-decorator-props":"useEditFormBlockDecoratorProps","x-decorator-props":{"action":"get","dataSource":"main","collection":"funds"},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:editForm","x-component":"CardItem","x-app-version":"1.3.51"}
i4n9asspbd4	eumj3wlim8b	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"FormV2","x-use-component-props":"useEditFormBlockProps","x-app-version":"1.3.51"}
5ndh82rjiih	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"form:configureFields","x-app-version":"1.3.51"}
es37ibmvv1x	progress	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Progress","x-use-component-props":"useProgressBlockProps","x-app-version":"1.3.51"}
gfmff5ur0jg	wzcrw2fzqek	{"x-uid":"gfmff5ur0jg","name":"wzcrw2fzqek","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"DataBlockProvider","x-component":"CardItem","x-settings":"blockSettings:progress","x-toolbar":"BlockSchemaToolbar","x-decorator-props":{"progress":{},"rowKey":"id","runWhenParamsChanged":true,"readPretty":true,"dataSource":"main","collection":"funds","action":"list","params":{"filter":{"$and":[{"id":{"$eq":"{{$nURLSearchParams.fund_id}}"}}]}}},"x-use-decorator-props":"useBlockScopeDecoratorProps","x-app-version":"1.3.51"}
kj70yf1en4o	qzzyude2n6v	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"editForm:configureActions","x-component":"ActionBar","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.51"}
bvvdhzo9s04	x8z02s6633s	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
618tdc60kn1	sy39bntzfdh	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
gfqvdpu1eu4	name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"funds.name","x-component-props":{},"x-app-version":"1.3.51"}
8a8q29s3pam	pi2c8jmzqp0	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
g910prz5n6j	zru1uia7q12	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
okqx007j2i9	target_amount	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"funds.target_amount","x-component-props":{},"x-app-version":"1.3.51"}
dxixmathoof	9lmg418ee58	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
cksn73owy57	j36p9jx9k4v	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
3fbm9qpyq34	current_amount	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"funds.current_amount","x-component-props":{},"x-app-version":"1.3.51"}
evtz6ljqxdq	fflbnl6y0bu	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
hinf8z4a0c0	oqa3j6mr3ld	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Details","x-read-pretty":true,"x-use-component-props":"useDetailsWithPaginationProps","x-app-version":"1.3.51"}
efkn3sb524k	aax9e9ofvs9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"details:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":24}},"x-app-version":"1.3.51"}
y2c016sbek0	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"details:configureFields","x-app-version":"1.3.51"}
46hfbluhnm0	pagination	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Pagination","x-use-component-props":"useDetailsPaginationProps","x-app-version":"1.3.51"}
t41h1b5ogjp	3c3ni7zsboe	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
8nro93nzp01	jcnl33qcci6	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
ffgmrwpmg44	description	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.description","x-component-props":{},"x-app-version":"1.3.51"}
idfhxat5qg6	bt6mupq2mdn	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
puz5i9w50bl	c5sx9uz6yuq	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51"}
9kxizfoklw7	ebxsaytv2yv	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableBlockProvider","x-acl-action":"transactions:list","x-use-decorator-props":"useTableBlockDecoratorProps","x-decorator-props":{"collection":"transactions","dataSource":"main","action":"list","params":{"pageSize":20},"rowKey":"id","showIndex":true,"dragSort":false},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:table","x-component":"CardItem","x-filter-targets":[],"x-app-version":"1.3.51"}
am0lmjthjqi	actions	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"table:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":"var(--nb-spacing)"}},"x-app-version":"1.3.51"}
pdtxkxhi0px	0eaq4z5qxui	{"_isJSONSchemaObject":true,"version":"2.0","type":"array","x-initializer":"table:configureColumns","x-component":"TableV2","x-use-component-props":"useTableBlockProps","x-component-props":{"rowKey":"id","rowSelection":{"type":"checkbox"}},"x-app-version":"1.3.51"}
m291sv0y712	7lfdql7u8y9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"DndContext","x-component":"Space","x-component-props":{"split":"|"},"x-app-version":"1.3.51"}
3d4bg9et9gc	actions	{"x-uid":"3d4bg9et9gc","name":"actions","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Chức năng","x-action-column":"actions","x-decorator":"TableV2.Column.ActionBar","x-component":"TableV2.Column","x-toolbar":"TableColumnSchemaToolbar","x-initializer":"table:configureItemActions","x-settings":"fieldSettings:TableColumn","x-toolbar-props":{"initializer":"table:configureItemActions"},"x-app-version":"1.3.51"}
kycuv3ul77x	5g3w4zowsf6	{"x-uid":"kycuv3ul77x","name":"5g3w4zowsf6","_isJSONSchemaObject":true,"version":"2.0","title":"Lưu","x-action":"submit","x-component":"Action","x-use-component-props":"useUpdateActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:updateSubmit","x-component-props":{"type":"primary","htmlType":"submit","iconColor":"#1677FF","icon":"saveoutlined","danger":false},"x-action-settings":{"triggerWorkflows":[]},"type":"void","x-app-version":"1.3.51"}
byou5tpcmg3	9ab6662qw26	{"x-uid":"byou5tpcmg3","name":"9ab6662qw26","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51","x-component-props":{"width":50}}
2r8rihvxbxo	8xnpwon1zgc	{"x-uid":"2r8rihvxbxo","name":"8xnpwon1zgc","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action":"projects:view","x-decorator":"DetailsBlockProvider","x-use-decorator-props":"useDetailsWithPaginationDecoratorProps","x-decorator-props":{"dataSource":"main","collection":"projects","readPretty":true,"action":"list","params":{"pageSize":1,"filter":{"$and":[{"id":{"$eq":"{{$nURLSearchParams.id}}"}}]}}},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:detailsWithPagination","x-component":"CardItem","x-app-version":"1.3.51","x-component-props":{"heightMode":"specifyValue","height":455}}
okedwk5bmwj	n95l12arx1b	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
fyur6k3frte	amount	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"transactions.amount","x-component":"CollectionField","x-component-props":{},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
w6aolvhz2fn	3nqbnmxc4jb	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
xhy05nql4d0	direction	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"transactions.direction","x-component":"CollectionField","x-component-props":{"style":{"width":"100%"},"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
efjsld3xk23	ub6ushaykb2	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.51"}
h6d3ghccgs1	be9uvjl213g	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
nz66cob6vdf	fund	{"x-uid":"nz66cob6vdf","name":"fund","_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"transactions.fund","x-component":"CollectionField","x-component-props":{"fieldNames":{"value":"id","label":"name"},"ellipsis":true,"size":"small"},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.51"}
xz0vx55hcc4	j03i5641uyf	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
5uo2qh1l9qt	actionBar	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"list:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":"var(--nb-spacing)"}},"x-app-version":"1.3.51"}
rsvj3o8613d	list	{"_isJSONSchemaObject":true,"version":"2.0","type":"array","x-component":"List","x-use-component-props":"useListBlockProps","x-app-version":"1.3.51"}
ai8i45ojqri	item	{"_isJSONSchemaObject":true,"version":"2.0","type":"object","x-component":"List.Item","x-read-pretty":true,"x-use-component-props":"useListItemProps","x-app-version":"1.3.51"}
vyxprlubesu	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"details:configureFields","x-app-version":"1.3.51"}
ln3hk72efta	actionBar	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-align":"left","x-initializer":"list:configureItemActions","x-component":"ActionBar","x-use-component-props":"useListActionBarProps","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.51"}
g5s8ryvvhrz	s3cq4ovddyi	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
cpsgd6q8tor	540148rdvfs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
acba1j7epdp	97t1blnuc7y	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
wbf59rpu21x	pgunca9eyoo	{"x-uid":"wbf59rpu21x","name":"pgunca9eyoo","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.51","x-component-props":{"width":20}}
svvvwbieur7	col_4b6kyfbq5c7	{"x-uid":"svvvwbieur7","name":"col_4b6kyfbq5c7","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-index":1,"x-component-props":{"width":20}}
s3eai5hxpps	col_aubgcbtbsyp	{"x-uid":"s3eai5hxpps","name":"col_aubgcbtbsyp","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-index":2,"x-component-props":{"width":20}}
zdule12dho7	transaction_code	{"x-uid":"zdule12dho7","name":"transaction_code","_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.transaction_code","x-component-props":{},"x-app-version":"1.3.51","x-decorator-props":{"showTitle":false}}
w2xb0a6rkey	7pxrva2it2e	{"x-uid":"w2xb0a6rkey","name":"7pxrva2it2e","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action":"transactions:view","x-decorator":"List.Decorator","x-use-decorator-props":"useListBlockDecoratorProps","x-decorator-props":{"collection":"transactions","dataSource":"main","readPretty":true,"action":"list","params":{"pageSize":10,"filter":{"$and":[{"fund":{"id":{"$eq":"{{$nURLSearchParams.fund_id}}"}}}]}},"runWhenParamsChanged":true,"rowKey":"id"},"x-component":"CardItem","x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:list","x-app-version":"1.3.51","x-component-props":{"heightMode":"specifyValue","height":500}}
6rat324pm10	from_account_name	{"x-uid":"6rat324pm10","name":"from_account_name","_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.from_account_name","x-component-props":{},"x-app-version":"1.3.51","x-decorator-props":{"showTitle":false}}
14iywme93h8	from_bank_name	{"x-uid":"14iywme93h8","name":"from_bank_name","_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.from_bank_name","x-component-props":{},"x-app-version":"1.3.51","x-decorator-props":{"showTitle":false}}
mgzf1cosw9o	amount	{"x-uid":"mgzf1cosw9o","name":"amount","_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.amount","x-component-props":{"formatStyle":"normal","separator":"0.0,00","step":"1","addonAfter":" đ"},"x-app-version":"1.3.51","x-decorator-props":{"showTitle":false}}
28b4u7eth02	s5f57j98etm	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Filter\\") }}","x-action":"filter","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:filter","x-component":"Filter.Action","x-use-component-props":"useFilterActionProps","x-component-props":{"icon":"FilterOutlined"},"x-align":"left","x-app-version":"1.3.51"}
82e6meyr33d	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Add record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"},"x-app-version":"1.3.51"}
r0rbal9gwoa	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab","x-initializer-props":{"gridInitializer":"popup:addNew:addBlock"},"x-app-version":"1.3.51"}
dlbotzk5ta3	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Add new\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{},"x-app-version":"1.3.51"}
47lzjhwq4e3	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:addNew:addBlock","x-app-version":"1.3.51"}
h9kgonsr277	j0mpvol7p5d	{"x-uid":"h9kgonsr277","name":"j0mpvol7p5d","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-action":"create","x-acl-action":"create","title":"Thêm mới","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:addNew","x-component":"Action","x-decorator":"ACLActionProvider","x-component-props":{"openMode":"drawer","type":"primary","component":"CreateRecordAction","icon":"PlusOutlined","iconColor":"#1677FF","danger":false},"x-action-context":{"dataSource":"main","collection":"transactions"},"x-align":"right","x-acl-action-props":{"skipScopeCheck":true},"x-app-version":"1.3.51"}
949ol9g4pk3	dni9re4qn7f	{"x-uid":"949ol9g4pk3","name":"dni9re4qn7f","_isJSONSchemaObject":true,"version":"2.0","title":"Xoá bỏ","x-action":"destroy","x-component":"Action","x-use-component-props":"useBulkDestroyActionProps","x-component-props":{"icon":"DeleteOutlined","confirm":{"title":"{{t('Delete record')}}","content":"{{t('Are you sure you want to delete it?')}}"},"iconColor":"#1677FF","danger":true,"type":"danger"},"x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:bulkDelete","x-decorator":"ACLActionProvider","x-acl-action-props":{"skipScopeCheck":true},"x-action-settings":{"triggerWorkflows":[]},"x-acl-action":"transactions:destroy","x-align":"right","type":"void","x-app-version":"1.3.51"}
97jnvf1ludu	5x9uwytpo5o	{"x-uid":"97jnvf1ludu","name":"5x9uwytpo5o","_isJSONSchemaObject":true,"version":"2.0","title":"Cập nhật dữ liệu","x-action":"refresh","x-component":"Action","x-use-component-props":"useRefreshActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:refresh","x-component-props":{"icon":"ReloadOutlined","iconColor":"#1677FF","danger":false,"type":"default"},"x-align":"right","type":"void","x-app-version":"1.3.51"}
rtb84viwmc5	9qw5sf9n3wn	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.51"}
ivd8t19ab1b	col_ln3c1z1tko3	{"x-uid":"ivd8t19ab1b","name":"col_ln3c1z1tko3","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-index":0,"x-component-props":{"width":20}}
kgtaxni455a	col_w6g5r01xvge	{"x-uid":"kgtaxni455a","name":"col_w6g5r01xvge","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-index":3,"x-component-props":{"width":20}}
x8ujxnhlng7	col_3hbcnbiwdbc	{"x-uid":"x8ujxnhlng7","name":"col_3hbcnbiwdbc","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-index":1,"x-component-props":{"width":50}}
ynl1lraa9vt	createdAt	{"x-uid":"ynl1lraa9vt","name":"createdAt","_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.createdAt","x-component-props":{"dateFormat":"DD/MM/YYYY"},"x-read-pretty":true,"x-app-version":"1.3.51","x-decorator-props":{"showTitle":false}}
\.


--
-- TOC entry 3912 (class 0 OID 30816)
-- Dependencies: 287
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, "createdAt", "updatedAt", nickname, username, email, phone, password, "appLang", "resetToken", "systemSettings", sort, "createdById", "updatedById") FROM stdin;
1	2024-12-04 09:18:59.855+00	2024-12-04 09:18:59.855+00	Super Admin	nocobase	admin@nocobase.com	\N	0825501766129c55ad8995f0dcae9519a915a77023debaae2f147951dc0164b4	\N	\N	{}	1	\N	\N
\.


--
-- TOC entry 3913 (class 0 OID 30822)
-- Dependencies: 288
-- Data for Name: usersAuthenticators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."usersAuthenticators" ("createdAt", "updatedAt", authenticator, "userId", uuid, nickname, avatar, meta, "createdById", "updatedById") FROM stdin;
\.


--
-- TOC entry 3915 (class 0 OID 30831)
-- Dependencies: 290
-- Data for Name: users_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_jobs (id, "createdAt", "updatedAt", "jobId", "userId", "executionId", "nodeId", "workflowId", status, result) FROM stdin;
\.


--
-- TOC entry 3917 (class 0 OID 30837)
-- Dependencies: 292
-- Data for Name: verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.verifications (id, "createdAt", "updatedAt", type, receiver, status, "expiresAt", content, "providerId") FROM stdin;
\.


--
-- TOC entry 3918 (class 0 OID 30843)
-- Dependencies: 293
-- Data for Name: verifications_providers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.verifications_providers (id, "createdAt", "updatedAt", title, type, options, "default") FROM stdin;
\.


--
-- TOC entry 3919 (class 0 OID 30848)
-- Dependencies: 294
-- Data for Name: workflows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.workflows (id, "createdAt", "updatedAt", key, title, enabled, description, type, "triggerTitle", config, executed, "allExecuted", current, sync, options) FROM stdin;
6	2024-12-04 13:12:38.844+00	2024-12-04 13:59:31.973+00	j62ztm6t709	Chấp thuận yêu cầu xây dựng	t	\N	collection	\N	{"mode": 2, "appends": ["createdBy", "updatedBy"], "changed": ["status"], "condition": {"$and": [{"status": {"$eq": "APPROVED"}}]}, "collection": "proposes"}	3	3	t	f	{}
2	2024-12-04 12:25:13.117+00	2024-12-04 14:43:51.177+00	htfnmps0m41	Thêm mới dự án	t	\N	collection	Thêm mới dự án	{"mode": 1, "appends": ["createdBy", "updatedBy"], "changed": [], "condition": {"$and": []}, "collection": "projects"}	7	7	t	f	{}
3	2024-12-04 12:25:30.302+00	2024-12-04 14:43:51.208+00	0f9c722cpnx	Thêm mới quỹ dự án	t	\N	collection	\N	{"mode": 1, "appends": ["createdBy", "updatedBy", "project"], "changed": [], "condition": {"$and": []}, "collection": "funds"}	7	7	t	f	{}
7	2024-12-04 13:14:08.983+00	2024-12-04 14:43:51.222+00	31trl35v3w1	Thêm mới quỹ dự án	t	\N	collection	\N	{"mode": 1, "appends": ["createdBy", "updatedBy", "project"], "condition": {"$and": []}, "collection": "funds"}	6	6	t	f	{}
\.


--
-- TOC entry 3968 (class 0 OID 0)
-- Dependencies: 218
-- Name: applicationPlugins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."applicationPlugins_id_seq"', 61, true);


--
-- TOC entry 3969 (class 0 OID 0)
-- Dependencies: 220
-- Name: applicationVersion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."applicationVersion_id_seq"', 7, true);


--
-- TOC entry 3970 (class 0 OID 0)
-- Dependencies: 222
-- Name: attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attachments_id_seq', 13, true);


--
-- TOC entry 3971 (class 0 OID 0)
-- Dependencies: 224
-- Name: authenticators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authenticators_id_seq', 1, true);


--
-- TOC entry 3972 (class 0 OID 0)
-- Dependencies: 227
-- Name: collectionCategories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."collectionCategories_id_seq"', 1, false);


--
-- TOC entry 3973 (class 0 OID 0)
-- Dependencies: 238
-- Name: dataSourcesRolesResourcesActions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."dataSourcesRolesResourcesActions_id_seq"', 1, false);


--
-- TOC entry 3974 (class 0 OID 0)
-- Dependencies: 240
-- Name: dataSourcesRolesResourcesScopes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."dataSourcesRolesResourcesScopes_id_seq"', 2, true);


--
-- TOC entry 3975 (class 0 OID 0)
-- Dependencies: 241
-- Name: dataSourcesRolesResources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."dataSourcesRolesResources_id_seq"', 1, false);


--
-- TOC entry 3976 (class 0 OID 0)
-- Dependencies: 243
-- Name: executions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.executions_id_seq', 25, true);


--
-- TOC entry 3977 (class 0 OID 0)
-- Dependencies: 246
-- Name: flow_nodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.flow_nodes_id_seq', 8, true);


--
-- TOC entry 3978 (class 0 OID 0)
-- Dependencies: 248
-- Name: funds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.funds_id_seq', 7, true);


--
-- TOC entry 3979 (class 0 OID 0)
-- Dependencies: 251
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jobs_id_seq', 25, true);


--
-- TOC entry 3980 (class 0 OID 0)
-- Dependencies: 256
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_id_seq', 8, true);


--
-- TOC entry 3981 (class 0 OID 0)
-- Dependencies: 258
-- Name: proposes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proposes_id_seq', 9, true);


--
-- TOC entry 3982 (class 0 OID 0)
-- Dependencies: 262
-- Name: rolesResourcesActions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."rolesResourcesActions_id_seq"', 1, false);


--
-- TOC entry 3983 (class 0 OID 0)
-- Dependencies: 264
-- Name: rolesResourcesScopes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."rolesResourcesScopes_id_seq"', 1, false);


--
-- TOC entry 3984 (class 0 OID 0)
-- Dependencies: 265
-- Name: rolesResources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."rolesResources_id_seq"', 1, false);


--
-- TOC entry 3985 (class 0 OID 0)
-- Dependencies: 269
-- Name: sequences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sequences_id_seq', 1, false);


--
-- TOC entry 3986 (class 0 OID 0)
-- Dependencies: 272
-- Name: storages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.storages_id_seq', 1, true);


--
-- TOC entry 3987 (class 0 OID 0)
-- Dependencies: 273
-- Name: student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_id_seq', 1, false);


--
-- TOC entry 3988 (class 0 OID 0)
-- Dependencies: 275
-- Name: systemSettings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."systemSettings_id_seq"', 1, true);


--
-- TOC entry 3989 (class 0 OID 0)
-- Dependencies: 279
-- Name: tokenBlacklist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tokenBlacklist_id_seq"', 1, false);


--
-- TOC entry 3990 (class 0 OID 0)
-- Dependencies: 281
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transactions_id_seq', 1, true);


--
-- TOC entry 3991 (class 0 OID 0)
-- Dependencies: 283
-- Name: uiSchemaServerHooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."uiSchemaServerHooks_id_seq"', 1, false);


--
-- TOC entry 3992 (class 0 OID 0)
-- Dependencies: 289
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- TOC entry 3993 (class 0 OID 0)
-- Dependencies: 291
-- Name: users_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_jobs_id_seq', 1, false);


--
-- TOC entry 3994 (class 0 OID 0)
-- Dependencies: 295
-- Name: workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.workflows_id_seq', 7, true);


--
-- TOC entry 3512 (class 2606 OID 30888)
-- Name: kafka-topics kafka-topics_pkey; Type: CONSTRAINT; Schema: KafkaTopic; Owner: postgres
--

ALTER TABLE ONLY "KafkaTopic"."kafka-topics"
    ADD CONSTRAINT "kafka-topics_pkey" PRIMARY KEY (id);


--
-- TOC entry 3514 (class 2606 OID 30890)
-- Name: applicationPlugins applicationPlugins_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationPlugins"
    ADD CONSTRAINT "applicationPlugins_name_key" UNIQUE (name);


--
-- TOC entry 3516 (class 2606 OID 30892)
-- Name: applicationPlugins applicationPlugins_packageName_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationPlugins"
    ADD CONSTRAINT "applicationPlugins_packageName_key" UNIQUE ("packageName");


--
-- TOC entry 3518 (class 2606 OID 30894)
-- Name: applicationPlugins applicationPlugins_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationPlugins"
    ADD CONSTRAINT "applicationPlugins_pkey" PRIMARY KEY (id);


--
-- TOC entry 3520 (class 2606 OID 30896)
-- Name: applicationVersion applicationVersion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationVersion"
    ADD CONSTRAINT "applicationVersion_pkey" PRIMARY KEY (id);


--
-- TOC entry 3523 (class 2606 OID 30898)
-- Name: attachments attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachments
    ADD CONSTRAINT attachments_pkey PRIMARY KEY (id);


--
-- TOC entry 3527 (class 2606 OID 30900)
-- Name: authenticators authenticators_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authenticators
    ADD CONSTRAINT authenticators_name_key UNIQUE (name);


--
-- TOC entry 3529 (class 2606 OID 30902)
-- Name: authenticators authenticators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authenticators
    ADD CONSTRAINT authenticators_pkey PRIMARY KEY (id);


--
-- TOC entry 3531 (class 2606 OID 30904)
-- Name: chinaRegions chinaRegions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."chinaRegions"
    ADD CONSTRAINT "chinaRegions_pkey" PRIMARY KEY (code);


--
-- TOC entry 3534 (class 2606 OID 30906)
-- Name: collectionCategories collectionCategories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."collectionCategories"
    ADD CONSTRAINT "collectionCategories_pkey" PRIMARY KEY (id);


--
-- TOC entry 3536 (class 2606 OID 30908)
-- Name: collectionCategory collectionCategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."collectionCategory"
    ADD CONSTRAINT "collectionCategory_pkey" PRIMARY KEY ("collectionName", "categoryId");


--
-- TOC entry 3539 (class 2606 OID 30910)
-- Name: collections collections_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_name_key UNIQUE (name);


--
-- TOC entry 3541 (class 2606 OID 30912)
-- Name: collections collections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_pkey PRIMARY KEY (key);


--
-- TOC entry 3545 (class 2606 OID 30914)
-- Name: customRequestsRoles customRequestsRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."customRequestsRoles"
    ADD CONSTRAINT "customRequestsRoles_pkey" PRIMARY KEY ("customRequestKey", "roleName");


--
-- TOC entry 3543 (class 2606 OID 30916)
-- Name: customRequests customRequests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."customRequests"
    ADD CONSTRAINT "customRequests_pkey" PRIMARY KEY (key);


--
-- TOC entry 3550 (class 2606 OID 30918)
-- Name: dataSourcesCollections dataSourcesCollections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesCollections"
    ADD CONSTRAINT "dataSourcesCollections_pkey" PRIMARY KEY (key);


--
-- TOC entry 3554 (class 2606 OID 30920)
-- Name: dataSourcesFields dataSourcesFields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesFields"
    ADD CONSTRAINT "dataSourcesFields_pkey" PRIMARY KEY (key);


--
-- TOC entry 3567 (class 2606 OID 30922)
-- Name: dataSourcesRolesResourcesActions dataSourcesRolesResourcesActions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResourcesActions"
    ADD CONSTRAINT "dataSourcesRolesResourcesActions_pkey" PRIMARY KEY (id);


--
-- TOC entry 3571 (class 2606 OID 30924)
-- Name: dataSourcesRolesResourcesScopes dataSourcesRolesResourcesScopes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResourcesScopes"
    ADD CONSTRAINT "dataSourcesRolesResourcesScopes_pkey" PRIMARY KEY (id);


--
-- TOC entry 3563 (class 2606 OID 30926)
-- Name: dataSourcesRolesResources dataSourcesRolesResources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResources"
    ADD CONSTRAINT "dataSourcesRolesResources_pkey" PRIMARY KEY (id);


--
-- TOC entry 3559 (class 2606 OID 30928)
-- Name: dataSourcesRoles dataSourcesRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRoles"
    ADD CONSTRAINT "dataSourcesRoles_pkey" PRIMARY KEY (id);


--
-- TOC entry 3548 (class 2606 OID 30930)
-- Name: dataSources dataSources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSources"
    ADD CONSTRAINT "dataSources_pkey" PRIMARY KEY (key);


--
-- TOC entry 3574 (class 2606 OID 30932)
-- Name: executions executions_eventKey_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.executions
    ADD CONSTRAINT "executions_eventKey_key" UNIQUE ("eventKey");


--
-- TOC entry 3576 (class 2606 OID 30934)
-- Name: executions executions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.executions
    ADD CONSTRAINT executions_pkey PRIMARY KEY (id);


--
-- TOC entry 3581 (class 2606 OID 30936)
-- Name: fields fields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fields
    ADD CONSTRAINT fields_pkey PRIMARY KEY (key);


--
-- TOC entry 3585 (class 2606 OID 30938)
-- Name: flow_nodes flow_nodes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flow_nodes
    ADD CONSTRAINT flow_nodes_pkey PRIMARY KEY (id);


--
-- TOC entry 3590 (class 2606 OID 30940)
-- Name: funds funds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funds
    ADD CONSTRAINT funds_pkey PRIMARY KEY (id);


--
-- TOC entry 3594 (class 2606 OID 30942)
-- Name: iframeHtml iframeHtml_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."iframeHtml"
    ADD CONSTRAINT "iframeHtml_pkey" PRIMARY KEY (id);


--
-- TOC entry 3599 (class 2606 OID 30944)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3602 (class 2606 OID 30946)
-- Name: kafka_configs kafka_configs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kafka_configs
    ADD CONSTRAINT kafka_configs_pkey PRIMARY KEY (id);


--
-- TOC entry 3604 (class 2606 OID 30948)
-- Name: kafka_topics kafka_topics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kafka_topics
    ADD CONSTRAINT kafka_topics_pkey PRIMARY KEY (id);


--
-- TOC entry 3606 (class 2606 OID 30950)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (name);


--
-- TOC entry 3608 (class 2606 OID 30952)
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- TOC entry 3610 (class 2606 OID 30954)
-- Name: proposes proposes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proposes
    ADD CONSTRAINT proposes_pkey PRIMARY KEY (id);


--
-- TOC entry 3619 (class 2606 OID 30956)
-- Name: rolesResourcesActions rolesResourcesActions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResourcesActions"
    ADD CONSTRAINT "rolesResourcesActions_pkey" PRIMARY KEY (id);


--
-- TOC entry 3623 (class 2606 OID 30958)
-- Name: rolesResourcesScopes rolesResourcesScopes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResourcesScopes"
    ADD CONSTRAINT "rolesResourcesScopes_pkey" PRIMARY KEY (id);


--
-- TOC entry 3616 (class 2606 OID 30960)
-- Name: rolesResources rolesResources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResources"
    ADD CONSTRAINT "rolesResources_pkey" PRIMARY KEY (id);


--
-- TOC entry 3625 (class 2606 OID 30962)
-- Name: rolesUischemas rolesUischemas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesUischemas"
    ADD CONSTRAINT "rolesUischemas_pkey" PRIMARY KEY ("roleName", "uiSchemaXUid");


--
-- TOC entry 3628 (class 2606 OID 30964)
-- Name: rolesUsers rolesUsers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesUsers"
    ADD CONSTRAINT "rolesUsers_pkey" PRIMARY KEY ("roleName", "userId");


--
-- TOC entry 3612 (class 2606 OID 30966)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (name);


--
-- TOC entry 3614 (class 2606 OID 30968)
-- Name: roles roles_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_title_key UNIQUE (title);


--
-- TOC entry 3631 (class 2606 OID 30970)
-- Name: sequences sequences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sequences
    ADD CONSTRAINT sequences_pkey PRIMARY KEY (id);


--
-- TOC entry 3633 (class 2606 OID 30972)
-- Name: smart_contracts smart_contracts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.smart_contracts
    ADD CONSTRAINT smart_contracts_pkey PRIMARY KEY (id);


--
-- TOC entry 3635 (class 2606 OID 30974)
-- Name: storages storages_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storages
    ADD CONSTRAINT storages_name_key UNIQUE (name);


--
-- TOC entry 3637 (class 2606 OID 30976)
-- Name: storages storages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storages
    ADD CONSTRAINT storages_pkey PRIMARY KEY (id);


--
-- TOC entry 3639 (class 2606 OID 30978)
-- Name: systemSettings systemSettings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."systemSettings"
    ADD CONSTRAINT "systemSettings_pkey" PRIMARY KEY (id);


--
-- TOC entry 3643 (class 2606 OID 30980)
-- Name: t_1vx9kyb7k1h t_1vx9kyb7k1h_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_1vx9kyb7k1h
    ADD CONSTRAINT t_1vx9kyb7k1h_pkey PRIMARY KEY (f_3gyw0m841j1, f_zvvclxyl9dz);


--
-- TOC entry 3646 (class 2606 OID 30982)
-- Name: t_54opx8rhenu t_54opx8rhenu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_54opx8rhenu
    ADD CONSTRAINT t_54opx8rhenu_pkey PRIMARY KEY (f_jr6kifdk7it, f_ra5knzz1x22);


--
-- TOC entry 3648 (class 2606 OID 30984)
-- Name: tokenBlacklist tokenBlacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tokenBlacklist"
    ADD CONSTRAINT "tokenBlacklist_pkey" PRIMARY KEY (id);


--
-- TOC entry 3653 (class 2606 OID 30986)
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- TOC entry 3656 (class 2606 OID 30988)
-- Name: uiSchemaServerHooks uiSchemaServerHooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemaServerHooks"
    ADD CONSTRAINT "uiSchemaServerHooks_pkey" PRIMARY KEY (id);


--
-- TOC entry 3659 (class 2606 OID 30990)
-- Name: uiSchemaTemplates uiSchemaTemplates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemaTemplates"
    ADD CONSTRAINT "uiSchemaTemplates_pkey" PRIMARY KEY (key);


--
-- TOC entry 3662 (class 2606 OID 30992)
-- Name: uiSchemaTreePath uiSchemaTreePath_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemaTreePath"
    ADD CONSTRAINT "uiSchemaTreePath_pkey" PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 3665 (class 2606 OID 30994)
-- Name: uiSchemas uiSchemas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemas"
    ADD CONSTRAINT "uiSchemas_pkey" PRIMARY KEY ("x-uid");


--
-- TOC entry 3678 (class 2606 OID 30996)
-- Name: usersAuthenticators usersAuthenticators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."usersAuthenticators"
    ADD CONSTRAINT "usersAuthenticators_pkey" PRIMARY KEY (authenticator, "userId");


--
-- TOC entry 3668 (class 2606 OID 30998)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 3683 (class 2606 OID 31000)
-- Name: users_jobs users_jobs_jobId_userId_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_jobs
    ADD CONSTRAINT "users_jobs_jobId_userId_key" UNIQUE ("jobId", "userId");


--
-- TOC entry 3687 (class 2606 OID 31002)
-- Name: users_jobs users_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_jobs
    ADD CONSTRAINT users_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3670 (class 2606 OID 31004)
-- Name: users users_phone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);


--
-- TOC entry 3672 (class 2606 OID 31006)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3674 (class 2606 OID 31008)
-- Name: users users_resetToken_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_resetToken_key" UNIQUE ("resetToken");


--
-- TOC entry 3676 (class 2606 OID 31010)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 3691 (class 2606 OID 31012)
-- Name: verifications verifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verifications
    ADD CONSTRAINT verifications_pkey PRIMARY KEY (id);


--
-- TOC entry 3694 (class 2606 OID 31014)
-- Name: verifications_providers verifications_providers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verifications_providers
    ADD CONSTRAINT verifications_providers_pkey PRIMARY KEY (id);


--
-- TOC entry 3697 (class 2606 OID 31016)
-- Name: workflows workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workflows
    ADD CONSTRAINT workflows_pkey PRIMARY KEY (id);


--
-- TOC entry 3521 (class 1259 OID 31017)
-- Name: attachments_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX attachments_created_by_id ON public.attachments USING btree ("createdById");


--
-- TOC entry 3524 (class 1259 OID 31018)
-- Name: attachments_storage_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX attachments_storage_id ON public.attachments USING btree ("storageId");


--
-- TOC entry 3525 (class 1259 OID 31019)
-- Name: authenticators_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authenticators_created_by_id ON public.authenticators USING btree ("createdById");


--
-- TOC entry 3532 (class 1259 OID 31020)
-- Name: china_regions_parent_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX china_regions_parent_code ON public."chinaRegions" USING btree ("parentCode");


--
-- TOC entry 3537 (class 1259 OID 31021)
-- Name: collection_category_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX collection_category_category_id ON public."collectionCategory" USING btree ("categoryId");


--
-- TOC entry 3546 (class 1259 OID 31022)
-- Name: custom_requests_roles_role_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX custom_requests_roles_role_name ON public."customRequestsRoles" USING btree ("roleName");


--
-- TOC entry 3551 (class 1259 OID 31023)
-- Name: data_sources_collections_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_collections_data_source_key ON public."dataSourcesCollections" USING btree ("dataSourceKey");


--
-- TOC entry 3552 (class 1259 OID 31024)
-- Name: data_sources_collections_name_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX data_sources_collections_name_data_source_key ON public."dataSourcesCollections" USING btree (name, "dataSourceKey");


--
-- TOC entry 3555 (class 1259 OID 31025)
-- Name: data_sources_fields_collection_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_fields_collection_key ON public."dataSourcesFields" USING btree ("collectionKey");


--
-- TOC entry 3556 (class 1259 OID 31026)
-- Name: data_sources_fields_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_fields_data_source_key ON public."dataSourcesFields" USING btree ("dataSourceKey");


--
-- TOC entry 3557 (class 1259 OID 31027)
-- Name: data_sources_fields_name_collection_name_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX data_sources_fields_name_collection_name_data_source_key ON public."dataSourcesFields" USING btree (name, "collectionName", "dataSourceKey");


--
-- TOC entry 3560 (class 1259 OID 31028)
-- Name: data_sources_roles_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_data_source_key ON public."dataSourcesRoles" USING btree ("dataSourceKey");


--
-- TOC entry 3568 (class 1259 OID 31029)
-- Name: data_sources_roles_resources_actions_roles_resource_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_actions_roles_resource_id ON public."dataSourcesRolesResourcesActions" USING btree ("rolesResourceId");


--
-- TOC entry 3569 (class 1259 OID 31030)
-- Name: data_sources_roles_resources_actions_scope_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_actions_scope_id ON public."dataSourcesRolesResourcesActions" USING btree ("scopeId");


--
-- TOC entry 3564 (class 1259 OID 31031)
-- Name: data_sources_roles_resources_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_data_source_key ON public."dataSourcesRolesResources" USING btree ("dataSourceKey");


--
-- TOC entry 3565 (class 1259 OID 31032)
-- Name: data_sources_roles_resources_role_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_role_name ON public."dataSourcesRolesResources" USING btree ("roleName");


--
-- TOC entry 3572 (class 1259 OID 31033)
-- Name: data_sources_roles_resources_scopes_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_scopes_data_source_key ON public."dataSourcesRolesResourcesScopes" USING btree ("dataSourceKey");


--
-- TOC entry 3561 (class 1259 OID 31034)
-- Name: data_sources_roles_role_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_role_name ON public."dataSourcesRoles" USING btree ("roleName");


--
-- TOC entry 3577 (class 1259 OID 31035)
-- Name: executions_workflow_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX executions_workflow_id ON public.executions USING btree ("workflowId");


--
-- TOC entry 3578 (class 1259 OID 31036)
-- Name: fields_collection_name_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX fields_collection_name_name ON public.fields USING btree ("collectionName", name);


--
-- TOC entry 3579 (class 1259 OID 31037)
-- Name: fields_parent_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fields_parent_key ON public.fields USING btree ("parentKey");


--
-- TOC entry 3582 (class 1259 OID 31038)
-- Name: fields_reverse_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fields_reverse_key ON public.fields USING btree ("reverseKey");


--
-- TOC entry 3583 (class 1259 OID 31039)
-- Name: flow_nodes_downstream_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX flow_nodes_downstream_id ON public.flow_nodes USING btree ("downstreamId");


--
-- TOC entry 3586 (class 1259 OID 31040)
-- Name: flow_nodes_upstream_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX flow_nodes_upstream_id ON public.flow_nodes USING btree ("upstreamId");


--
-- TOC entry 3587 (class 1259 OID 31041)
-- Name: flow_nodes_workflow_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX flow_nodes_workflow_id ON public.flow_nodes USING btree ("workflowId");


--
-- TOC entry 3588 (class 1259 OID 31042)
-- Name: funds_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX funds_created_by_id ON public.funds USING btree ("createdById");


--
-- TOC entry 3591 (class 1259 OID 31043)
-- Name: funds_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX funds_project_id ON public.funds USING btree (project_id);


--
-- TOC entry 3592 (class 1259 OID 31044)
-- Name: funds_updated_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX funds_updated_by_id ON public.funds USING btree ("updatedById");


--
-- TOC entry 3595 (class 1259 OID 31045)
-- Name: iframe_html_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX iframe_html_created_by_id ON public."iframeHtml" USING btree ("createdById");


--
-- TOC entry 3596 (class 1259 OID 31046)
-- Name: jobs_execution_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_execution_id ON public.jobs USING btree ("executionId");


--
-- TOC entry 3597 (class 1259 OID 31047)
-- Name: jobs_node_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_node_id ON public.jobs USING btree ("nodeId");


--
-- TOC entry 3600 (class 1259 OID 31048)
-- Name: jobs_upstream_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_upstream_id ON public.jobs USING btree ("upstreamId");


--
-- TOC entry 3620 (class 1259 OID 31049)
-- Name: roles_resources_actions_roles_resource_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX roles_resources_actions_roles_resource_id ON public."rolesResourcesActions" USING btree ("rolesResourceId");


--
-- TOC entry 3621 (class 1259 OID 31050)
-- Name: roles_resources_actions_scope_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX roles_resources_actions_scope_id ON public."rolesResourcesActions" USING btree ("scopeId");


--
-- TOC entry 3617 (class 1259 OID 31051)
-- Name: roles_resources_role_name_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX roles_resources_role_name_name ON public."rolesResources" USING btree ("roleName", name);


--
-- TOC entry 3626 (class 1259 OID 31052)
-- Name: roles_uischemas_ui_schema_x_uid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX roles_uischemas_ui_schema_x_uid ON public."rolesUischemas" USING btree ("uiSchemaXUid");


--
-- TOC entry 3629 (class 1259 OID 31053)
-- Name: roles_users_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX roles_users_user_id ON public."rolesUsers" USING btree ("userId");


--
-- TOC entry 3640 (class 1259 OID 31054)
-- Name: system_settings_logo_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX system_settings_logo_id ON public."systemSettings" USING btree ("logoId");


--
-- TOC entry 3641 (class 1259 OID 31055)
-- Name: t_1vx9kyb7k1h_f_zvvclxyl9dz; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX t_1vx9kyb7k1h_f_zvvclxyl9dz ON public.t_1vx9kyb7k1h USING btree (f_zvvclxyl9dz);


--
-- TOC entry 3644 (class 1259 OID 31056)
-- Name: t_54opx8rhenu_f_ra5knzz1x22; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX t_54opx8rhenu_f_ra5knzz1x22 ON public.t_54opx8rhenu USING btree (f_ra5knzz1x22);


--
-- TOC entry 3649 (class 1259 OID 31057)
-- Name: token_blacklist_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX token_blacklist_token ON public."tokenBlacklist" USING btree (token);


--
-- TOC entry 3650 (class 1259 OID 31058)
-- Name: transactions_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX transactions_created_by_id ON public.transactions USING btree ("createdById");


--
-- TOC entry 3651 (class 1259 OID 31059)
-- Name: transactions_fund_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX transactions_fund_id ON public.transactions USING btree (fund_id);


--
-- TOC entry 3654 (class 1259 OID 31060)
-- Name: transactions_updated_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX transactions_updated_by_id ON public.transactions USING btree ("updatedById");


--
-- TOC entry 3657 (class 1259 OID 31061)
-- Name: ui_schema_server_hooks_uid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ui_schema_server_hooks_uid ON public."uiSchemaServerHooks" USING btree (uid);


--
-- TOC entry 3660 (class 1259 OID 31062)
-- Name: ui_schema_templates_uid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ui_schema_templates_uid ON public."uiSchemaTemplates" USING btree (uid);


--
-- TOC entry 3663 (class 1259 OID 31063)
-- Name: ui_schema_tree_path_descendant; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ui_schema_tree_path_descendant ON public."uiSchemaTreePath" USING btree (descendant);


--
-- TOC entry 3679 (class 1259 OID 31064)
-- Name: users_authenticators_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_authenticators_created_by_id ON public."usersAuthenticators" USING btree ("createdById");


--
-- TOC entry 3680 (class 1259 OID 31065)
-- Name: users_authenticators_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_authenticators_user_id ON public."usersAuthenticators" USING btree ("userId");


--
-- TOC entry 3666 (class 1259 OID 31066)
-- Name: users_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_created_by_id ON public.users USING btree ("createdById");


--
-- TOC entry 3681 (class 1259 OID 31067)
-- Name: users_jobs_execution_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_execution_id ON public.users_jobs USING btree ("executionId");


--
-- TOC entry 3684 (class 1259 OID 31068)
-- Name: users_jobs_job_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_job_id ON public.users_jobs USING btree ("jobId");


--
-- TOC entry 3685 (class 1259 OID 31069)
-- Name: users_jobs_node_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_node_id ON public.users_jobs USING btree ("nodeId");


--
-- TOC entry 3688 (class 1259 OID 31070)
-- Name: users_jobs_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_user_id ON public.users_jobs USING btree ("userId");


--
-- TOC entry 3689 (class 1259 OID 31071)
-- Name: users_jobs_workflow_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_workflow_id ON public.users_jobs USING btree ("workflowId");


--
-- TOC entry 3692 (class 1259 OID 31072)
-- Name: verifications_provider_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX verifications_provider_id ON public.verifications USING btree ("providerId");


--
-- TOC entry 3695 (class 1259 OID 31073)
-- Name: workflows_key_current; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX workflows_key_current ON public.workflows USING btree (key, current);


-- Completed on 2024-12-04 22:00:30 UTC

--
-- PostgreSQL database dump complete
--

