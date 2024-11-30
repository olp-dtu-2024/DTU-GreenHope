--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-11-30 10:07:11 UTC

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
DROP INDEX IF EXISTS public.transactions_user_id;
DROP INDEX IF EXISTS public.transactions_updated_by_id;
DROP INDEX IF EXISTS public.transactions_fund_id;
DROP INDEX IF EXISTS public.transactions_f_e47my4oktv2;
DROP INDEX IF EXISTS public.transactions_created_by_id;
DROP INDEX IF EXISTS public.token_blacklist_token;
DROP INDEX IF EXISTS public.t_s9b2jhcxq9q_f_8o3qqdvq8bk;
DROP INDEX IF EXISTS public.t_ncaek4uddrw_f_9k9506pi4rq;
DROP INDEX IF EXISTS public.t_bzkvdw2a767_f_qxu5av3g0sx;
DROP INDEX IF EXISTS public.system_settings_logo_id;
DROP INDEX IF EXISTS public.roles_users_user_id;
DROP INDEX IF EXISTS public.roles_uischemas_ui_schema_x_uid;
DROP INDEX IF EXISTS public.roles_resources_role_name_name;
DROP INDEX IF EXISTS public.roles_resources_actions_scope_id;
DROP INDEX IF EXISTS public.roles_resources_actions_roles_resource_id;
DROP INDEX IF EXISTS public.proposes_updated_by_id;
DROP INDEX IF EXISTS public.proposes_created_by_id;
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
DROP INDEX IF EXISTS public.api_keys_role_name;
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
ALTER TABLE IF EXISTS ONLY public."themeConfig" DROP CONSTRAINT IF EXISTS "themeConfig_pkey";
ALTER TABLE IF EXISTS ONLY public.t_s9b2jhcxq9q DROP CONSTRAINT IF EXISTS t_s9b2jhcxq9q_pkey;
ALTER TABLE IF EXISTS ONLY public.t_ncaek4uddrw DROP CONSTRAINT IF EXISTS t_ncaek4uddrw_pkey;
ALTER TABLE IF EXISTS ONLY public.t_bzkvdw2a767 DROP CONSTRAINT IF EXISTS t_bzkvdw2a767_pkey;
ALTER TABLE IF EXISTS ONLY public.t_587vrvz0gcb DROP CONSTRAINT IF EXISTS t_587vrvz0gcb_pkey;
ALTER TABLE IF EXISTS ONLY public."systemSettings" DROP CONSTRAINT IF EXISTS "systemSettings_pkey";
ALTER TABLE IF EXISTS ONLY public.storages DROP CONSTRAINT IF EXISTS storages_pkey;
ALTER TABLE IF EXISTS ONLY public.storages DROP CONSTRAINT IF EXISTS storages_name_key;
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
ALTER TABLE IF EXISTS ONLY public.hello DROP CONSTRAINT IF EXISTS hello_pkey;
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
ALTER TABLE IF EXISTS ONLY public."apiKeys" DROP CONSTRAINT IF EXISTS "apiKeys_pkey";
ALTER TABLE IF EXISTS public.workflows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.users_jobs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."uiSchemaServerHooks" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.transactions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."tokenBlacklist" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."themeConfig" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.t_587vrvz0gcb ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."systemSettings" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.storages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.sequences ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."rolesResourcesScopes" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."rolesResourcesActions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."rolesResources" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.proposes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.projects ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.jobs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.images ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.hello ALTER COLUMN id DROP DEFAULT;
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
ALTER TABLE IF EXISTS public."apiKeys" ALTER COLUMN id DROP DEFAULT;
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
DROP SEQUENCE IF EXISTS public."themeConfig_id_seq";
DROP TABLE IF EXISTS public."themeConfig";
DROP TABLE IF EXISTS public.t_s9b2jhcxq9q;
DROP TABLE IF EXISTS public.t_ncaek4uddrw;
DROP TABLE IF EXISTS public.t_bzkvdw2a767;
DROP TABLE IF EXISTS public.t_b3tiaxzyeu3;
DROP SEQUENCE IF EXISTS public.t_587vrvz0gcb_id_seq;
DROP TABLE IF EXISTS public.t_587vrvz0gcb;
DROP SEQUENCE IF EXISTS public."systemSettings_id_seq";
DROP TABLE IF EXISTS public."systemSettings";
DROP SEQUENCE IF EXISTS public.student_id_seq;
DROP SEQUENCE IF EXISTS public.storages_id_seq;
DROP TABLE IF EXISTS public.storages;
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
DROP SEQUENCE IF EXISTS public.images_id_seq;
DROP TABLE IF EXISTS public.images;
DROP TABLE IF EXISTS public."iframeHtml";
DROP SEQUENCE IF EXISTS public.hello_id_seq;
DROP TABLE IF EXISTS public.hello;
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
DROP SEQUENCE IF EXISTS public."apiKeys_id_seq";
DROP TABLE IF EXISTS public."apiKeys";
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 316167)
-- Name: apiKeys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."apiKeys" (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    name character varying(255),
    "roleName" character varying(255),
    "expiresIn" character varying(255),
    token character varying(255),
    sort bigint,
    "createdById" bigint
);


ALTER TABLE public."apiKeys" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 316172)
-- Name: apiKeys_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."apiKeys_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."apiKeys_id_seq" OWNER TO postgres;

--
-- TOC entry 3986 (class 0 OID 0)
-- Dependencies: 216
-- Name: apiKeys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."apiKeys_id_seq" OWNED BY public."apiKeys".id;


--
-- TOC entry 217 (class 1259 OID 316173)
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
-- TOC entry 218 (class 1259 OID 316178)
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
-- TOC entry 3987 (class 0 OID 0)
-- Dependencies: 218
-- Name: applicationPlugins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."applicationPlugins_id_seq" OWNED BY public."applicationPlugins".id;


--
-- TOC entry 219 (class 1259 OID 316179)
-- Name: applicationVersion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."applicationVersion" (
    id bigint NOT NULL,
    value character varying(255)
);


ALTER TABLE public."applicationVersion" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 316182)
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
-- TOC entry 3988 (class 0 OID 0)
-- Dependencies: 220
-- Name: applicationVersion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."applicationVersion_id_seq" OWNED BY public."applicationVersion".id;


--
-- TOC entry 221 (class 1259 OID 316183)
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
-- TOC entry 3989 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN attachments.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.title IS '用户文件名（不含扩展名）';


--
-- TOC entry 3990 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN attachments.filename; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.filename IS '系统文件名（含扩展名）';


--
-- TOC entry 3991 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN attachments.extname; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.extname IS '扩展名（含“.”）';


--
-- TOC entry 3992 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN attachments.size; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.size IS '文件体积（字节）';


--
-- TOC entry 3993 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN attachments.path; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.path IS '相对路径（含“/”前缀）';


--
-- TOC entry 3994 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN attachments.meta; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.meta IS '其他文件信息（如图片的宽高）';


--
-- TOC entry 3995 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN attachments.url; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.attachments.url IS '网络访问地址';


--
-- TOC entry 222 (class 1259 OID 316189)
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
-- TOC entry 3996 (class 0 OID 0)
-- Dependencies: 222
-- Name: attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attachments_id_seq OWNED BY public.attachments.id;


--
-- TOC entry 223 (class 1259 OID 316190)
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
-- TOC entry 224 (class 1259 OID 316198)
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
-- TOC entry 3997 (class 0 OID 0)
-- Dependencies: 224
-- Name: authenticators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authenticators_id_seq OWNED BY public.authenticators.id;


--
-- TOC entry 225 (class 1259 OID 316199)
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
-- TOC entry 226 (class 1259 OID 316204)
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
-- TOC entry 227 (class 1259 OID 316210)
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
-- TOC entry 3998 (class 0 OID 0)
-- Dependencies: 227
-- Name: collectionCategories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."collectionCategories_id_seq" OWNED BY public."collectionCategories".id;


--
-- TOC entry 228 (class 1259 OID 316211)
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
-- TOC entry 229 (class 1259 OID 316214)
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
-- TOC entry 230 (class 1259 OID 316222)
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
-- TOC entry 231 (class 1259 OID 316227)
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
-- TOC entry 232 (class 1259 OID 316232)
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
-- TOC entry 233 (class 1259 OID 316239)
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
-- TOC entry 234 (class 1259 OID 316244)
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
-- TOC entry 235 (class 1259 OID 316250)
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
-- TOC entry 236 (class 1259 OID 316255)
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
-- TOC entry 237 (class 1259 OID 316261)
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
-- TOC entry 238 (class 1259 OID 316267)
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
-- TOC entry 3999 (class 0 OID 0)
-- Dependencies: 238
-- Name: dataSourcesRolesResourcesActions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."dataSourcesRolesResourcesActions_id_seq" OWNED BY public."dataSourcesRolesResourcesActions".id;


--
-- TOC entry 239 (class 1259 OID 316268)
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
-- TOC entry 240 (class 1259 OID 316274)
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
-- TOC entry 4000 (class 0 OID 0)
-- Dependencies: 240
-- Name: dataSourcesRolesResourcesScopes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."dataSourcesRolesResourcesScopes_id_seq" OWNED BY public."dataSourcesRolesResourcesScopes".id;


--
-- TOC entry 241 (class 1259 OID 316275)
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
-- TOC entry 4001 (class 0 OID 0)
-- Dependencies: 241
-- Name: dataSourcesRolesResources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."dataSourcesRolesResources_id_seq" OWNED BY public."dataSourcesRolesResources".id;


--
-- TOC entry 242 (class 1259 OID 316276)
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
-- TOC entry 243 (class 1259 OID 316281)
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
-- TOC entry 4002 (class 0 OID 0)
-- Dependencies: 243
-- Name: executions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.executions_id_seq OWNED BY public.executions.id;


--
-- TOC entry 244 (class 1259 OID 316282)
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
-- TOC entry 245 (class 1259 OID 316288)
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
-- TOC entry 246 (class 1259 OID 316294)
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
-- TOC entry 4003 (class 0 OID 0)
-- Dependencies: 246
-- Name: flow_nodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.flow_nodes_id_seq OWNED BY public.flow_nodes.id;


--
-- TOC entry 247 (class 1259 OID 316295)
-- Name: funds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funds (
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    id bigint NOT NULL,
    "createdById" bigint,
    "updatedById" bigint,
    name character varying(255),
    target_amount double precision,
    current_amount double precision,
    project_id bigint,
    description text,
    is_deleted bigint DEFAULT 0,
    qr_code_url text
);


ALTER TABLE public.funds OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 316301)
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
-- TOC entry 4004 (class 0 OID 0)
-- Dependencies: 248
-- Name: funds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.funds_id_seq OWNED BY public.funds.id;


--
-- TOC entry 249 (class 1259 OID 316302)
-- Name: hello; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hello (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    name character varying(255)
);


ALTER TABLE public.hello OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 316305)
-- Name: hello_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hello_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hello_id_seq OWNER TO postgres;

--
-- TOC entry 4005 (class 0 OID 0)
-- Dependencies: 250
-- Name: hello_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hello_id_seq OWNED BY public.hello.id;


--
-- TOC entry 251 (class 1259 OID 316306)
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
-- TOC entry 252 (class 1259 OID 316311)
-- Name: images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.images (
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    id bigint NOT NULL,
    "createdById" bigint,
    "updatedById" bigint,
    path text,
    project_id bigint
);


ALTER TABLE public.images OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 316316)
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.images_id_seq OWNER TO postgres;

--
-- TOC entry 4006 (class 0 OID 0)
-- Dependencies: 253
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- TOC entry 254 (class 1259 OID 316317)
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
-- TOC entry 255 (class 1259 OID 316322)
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
-- TOC entry 4007 (class 0 OID 0)
-- Dependencies: 255
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- TOC entry 304 (class 1259 OID 365362)
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
-- TOC entry 303 (class 1259 OID 365351)
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
-- TOC entry 256 (class 1259 OID 316323)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    name character varying(255) NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 316326)
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    id bigint NOT NULL,
    "createdById" bigint,
    "updatedById" bigint,
    name character varying(255),
    total_amount double precision DEFAULT '0'::double precision,
    construction_site character varying(255) DEFAULT ''::character varying,
    is_deleted bigint DEFAULT 0,
    sub_title character varying(255),
    description text
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 316334)
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
-- TOC entry 4008 (class 0 OID 0)
-- Dependencies: 258
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- TOC entry 259 (class 1259 OID 316335)
-- Name: proposes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proposes (
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    id bigint NOT NULL,
    "createdById" bigint,
    "updatedById" bigint,
    name character varying(255),
    description text,
    construction_site character varying(255),
    status character varying(255) DEFAULT 'PENDING'::character varying,
    is_deleted bigint DEFAULT 0
);


ALTER TABLE public.proposes OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 316342)
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
-- TOC entry 4009 (class 0 OID 0)
-- Dependencies: 260
-- Name: proposes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proposes_id_seq OWNED BY public.proposes.id;


--
-- TOC entry 261 (class 1259 OID 316343)
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
-- TOC entry 262 (class 1259 OID 316351)
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
-- TOC entry 263 (class 1259 OID 316356)
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
-- TOC entry 264 (class 1259 OID 316362)
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
-- TOC entry 4010 (class 0 OID 0)
-- Dependencies: 264
-- Name: rolesResourcesActions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."rolesResourcesActions_id_seq" OWNED BY public."rolesResourcesActions".id;


--
-- TOC entry 265 (class 1259 OID 316363)
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
-- TOC entry 266 (class 1259 OID 316368)
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
-- TOC entry 4011 (class 0 OID 0)
-- Dependencies: 266
-- Name: rolesResourcesScopes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."rolesResourcesScopes_id_seq" OWNED BY public."rolesResourcesScopes".id;


--
-- TOC entry 267 (class 1259 OID 316369)
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
-- TOC entry 4012 (class 0 OID 0)
-- Dependencies: 267
-- Name: rolesResources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."rolesResources_id_seq" OWNED BY public."rolesResources".id;


--
-- TOC entry 268 (class 1259 OID 316370)
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
-- TOC entry 269 (class 1259 OID 316375)
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
-- TOC entry 270 (class 1259 OID 316378)
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
-- TOC entry 271 (class 1259 OID 316383)
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
-- TOC entry 4013 (class 0 OID 0)
-- Dependencies: 271
-- Name: sequences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sequences_id_seq OWNED BY public.sequences.id;


--
-- TOC entry 272 (class 1259 OID 316384)
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
-- TOC entry 4014 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN storages.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.title IS '存储引擎名称';


--
-- TOC entry 4015 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN storages.type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.type IS '类型标识，如 local/ali-oss 等';


--
-- TOC entry 4016 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN storages.options; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.options IS '配置项';


--
-- TOC entry 4017 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN storages.rules; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.rules IS '文件规则';


--
-- TOC entry 4018 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN storages.path; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages.path IS '存储相对路径模板';


--
-- TOC entry 4019 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN storages."baseUrl"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages."baseUrl" IS '访问地址前缀';


--
-- TOC entry 4020 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN storages."default"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.storages."default" IS '默认引擎';


--
-- TOC entry 273 (class 1259 OID 316395)
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
-- TOC entry 4021 (class 0 OID 0)
-- Dependencies: 273
-- Name: storages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.storages_id_seq OWNED BY public.storages.id;


--
-- TOC entry 274 (class 1259 OID 316396)
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
-- TOC entry 275 (class 1259 OID 316397)
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
-- TOC entry 276 (class 1259 OID 316406)
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
-- TOC entry 4022 (class 0 OID 0)
-- Dependencies: 276
-- Name: systemSettings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."systemSettings_id_seq" OWNED BY public."systemSettings".id;


--
-- TOC entry 277 (class 1259 OID 316407)
-- Name: t_587vrvz0gcb; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_587vrvz0gcb (
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    id bigint NOT NULL,
    "createdById" bigint,
    "updatedById" bigint,
    location_desc text,
    number_of_victims double precision DEFAULT '1'::double precision,
    survival_signs character varying(255),
    latitude character varying(255) DEFAULT ''::character varying,
    longitude character varying(255) DEFAULT ''::character varying
);


ALTER TABLE public.t_587vrvz0gcb OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 316415)
-- Name: t_587vrvz0gcb_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t_587vrvz0gcb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.t_587vrvz0gcb_id_seq OWNER TO postgres;

--
-- TOC entry 4023 (class 0 OID 0)
-- Dependencies: 278
-- Name: t_587vrvz0gcb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t_587vrvz0gcb_id_seq OWNED BY public.t_587vrvz0gcb.id;


--
-- TOC entry 279 (class 1259 OID 316416)
-- Name: t_b3tiaxzyeu3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_b3tiaxzyeu3 (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    f_6v6rqo2fmi1 bigint NOT NULL,
    f_h8ptb1wlp6g bigint NOT NULL
);


ALTER TABLE public.t_b3tiaxzyeu3 OWNER TO postgres;

--
-- TOC entry 280 (class 1259 OID 316419)
-- Name: t_bzkvdw2a767; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_bzkvdw2a767 (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    f_s8php2rxxwe bigint NOT NULL,
    f_qxu5av3g0sx bigint NOT NULL
);


ALTER TABLE public.t_bzkvdw2a767 OWNER TO postgres;

--
-- TOC entry 302 (class 1259 OID 365319)
-- Name: t_ncaek4uddrw; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_ncaek4uddrw (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    f_j72jrq1b0nw bigint NOT NULL,
    f_9k9506pi4rq bigint NOT NULL
);


ALTER TABLE public.t_ncaek4uddrw OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 316422)
-- Name: t_s9b2jhcxq9q; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_s9b2jhcxq9q (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    f_b37rybuw15a bigint NOT NULL,
    f_8o3qqdvq8bk bigint NOT NULL
);


ALTER TABLE public.t_s9b2jhcxq9q OWNER TO postgres;

--
-- TOC entry 282 (class 1259 OID 316425)
-- Name: themeConfig; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."themeConfig" (
    id bigint NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    config json,
    optional boolean,
    "isBuiltIn" boolean,
    uid character varying(255),
    "default" boolean DEFAULT false
);


ALTER TABLE public."themeConfig" OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 316431)
-- Name: themeConfig_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."themeConfig_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."themeConfig_id_seq" OWNER TO postgres;

--
-- TOC entry 4024 (class 0 OID 0)
-- Dependencies: 283
-- Name: themeConfig_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."themeConfig_id_seq" OWNED BY public."themeConfig".id;


--
-- TOC entry 284 (class 1259 OID 316432)
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
-- TOC entry 285 (class 1259 OID 316435)
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
-- TOC entry 4025 (class 0 OID 0)
-- Dependencies: 285
-- Name: tokenBlacklist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tokenBlacklist_id_seq" OWNED BY public."tokenBlacklist".id;


--
-- TOC entry 286 (class 1259 OID 316436)
-- Name: transactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transactions (
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    id bigint NOT NULL,
    "createdById" bigint,
    "updatedById" bigint,
    transaction_code character varying(255),
    amount double precision DEFAULT '0'::double precision,
    description text,
    from_account_no character varying(255),
    from_account_name character varying(255),
    from_bank_name character varying(255) DEFAULT ''::character varying,
    f_e47my4oktv2 bigint,
    user_id bigint,
    fund_id bigint,
    is_deleted bigint DEFAULT 0
);


ALTER TABLE public.transactions OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 316444)
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
-- TOC entry 4026 (class 0 OID 0)
-- Dependencies: 287
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;


--
-- TOC entry 288 (class 1259 OID 316445)
-- Name: uiSchemaServerHooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."uiSchemaServerHooks" (
    id bigint NOT NULL,
    uid character varying(255),
    type character varying(255),
    collection character varying(255),
    field character varying(255),
    method character varying(255),
    params json
);


ALTER TABLE public."uiSchemaServerHooks" OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 316450)
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
-- TOC entry 4027 (class 0 OID 0)
-- Dependencies: 289
-- Name: uiSchemaServerHooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."uiSchemaServerHooks_id_seq" OWNED BY public."uiSchemaServerHooks".id;


--
-- TOC entry 290 (class 1259 OID 316451)
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
-- TOC entry 291 (class 1259 OID 316456)
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
-- TOC entry 4028 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN "uiSchemaTreePath".type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."uiSchemaTreePath".type IS 'type of node';


--
-- TOC entry 4029 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN "uiSchemaTreePath".sort; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."uiSchemaTreePath".sort IS 'sort of node in adjacency';


--
-- TOC entry 292 (class 1259 OID 316461)
-- Name: uiSchemas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."uiSchemas" (
    "x-uid" character varying(255) NOT NULL,
    name character varying(255),
    schema json DEFAULT '{}'::json
);


ALTER TABLE public."uiSchemas" OWNER TO postgres;

--
-- TOC entry 293 (class 1259 OID 316467)
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
-- TOC entry 294 (class 1259 OID 316473)
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
-- TOC entry 295 (class 1259 OID 316481)
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
-- TOC entry 4030 (class 0 OID 0)
-- Dependencies: 295
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 296 (class 1259 OID 316482)
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
-- TOC entry 297 (class 1259 OID 316487)
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
-- TOC entry 4031 (class 0 OID 0)
-- Dependencies: 297
-- Name: users_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_jobs_id_seq OWNED BY public.users_jobs.id;


--
-- TOC entry 298 (class 1259 OID 316488)
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
-- TOC entry 299 (class 1259 OID 316494)
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
-- TOC entry 300 (class 1259 OID 316499)
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
-- TOC entry 301 (class 1259 OID 316511)
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
-- TOC entry 4032 (class 0 OID 0)
-- Dependencies: 301
-- Name: workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.workflows_id_seq OWNED BY public.workflows.id;


--
-- TOC entry 3462 (class 2604 OID 316512)
-- Name: apiKeys id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."apiKeys" ALTER COLUMN id SET DEFAULT nextval('public."apiKeys_id_seq"'::regclass);


--
-- TOC entry 3463 (class 2604 OID 316513)
-- Name: applicationPlugins id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationPlugins" ALTER COLUMN id SET DEFAULT nextval('public."applicationPlugins_id_seq"'::regclass);


--
-- TOC entry 3464 (class 2604 OID 316514)
-- Name: applicationVersion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationVersion" ALTER COLUMN id SET DEFAULT nextval('public."applicationVersion_id_seq"'::regclass);


--
-- TOC entry 3465 (class 2604 OID 316515)
-- Name: attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachments ALTER COLUMN id SET DEFAULT nextval('public.attachments_id_seq'::regclass);


--
-- TOC entry 3467 (class 2604 OID 316516)
-- Name: authenticators id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authenticators ALTER COLUMN id SET DEFAULT nextval('public.authenticators_id_seq'::regclass);


--
-- TOC entry 3471 (class 2604 OID 316517)
-- Name: collectionCategories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."collectionCategories" ALTER COLUMN id SET DEFAULT nextval('public."collectionCategories_id_seq"'::regclass);


--
-- TOC entry 3479 (class 2604 OID 316518)
-- Name: dataSourcesRolesResources id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResources" ALTER COLUMN id SET DEFAULT nextval('public."dataSourcesRolesResources_id_seq"'::regclass);


--
-- TOC entry 3481 (class 2604 OID 316519)
-- Name: dataSourcesRolesResourcesActions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResourcesActions" ALTER COLUMN id SET DEFAULT nextval('public."dataSourcesRolesResourcesActions_id_seq"'::regclass);


--
-- TOC entry 3483 (class 2604 OID 316520)
-- Name: dataSourcesRolesResourcesScopes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResourcesScopes" ALTER COLUMN id SET DEFAULT nextval('public."dataSourcesRolesResourcesScopes_id_seq"'::regclass);


--
-- TOC entry 3485 (class 2604 OID 316521)
-- Name: executions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.executions ALTER COLUMN id SET DEFAULT nextval('public.executions_id_seq'::regclass);


--
-- TOC entry 3487 (class 2604 OID 316522)
-- Name: flow_nodes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flow_nodes ALTER COLUMN id SET DEFAULT nextval('public.flow_nodes_id_seq'::regclass);


--
-- TOC entry 3489 (class 2604 OID 316523)
-- Name: funds id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funds ALTER COLUMN id SET DEFAULT nextval('public.funds_id_seq'::regclass);


--
-- TOC entry 3491 (class 2604 OID 316524)
-- Name: hello id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hello ALTER COLUMN id SET DEFAULT nextval('public.hello_id_seq'::regclass);


--
-- TOC entry 3492 (class 2604 OID 316525)
-- Name: images id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- TOC entry 3493 (class 2604 OID 316526)
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- TOC entry 3494 (class 2604 OID 316527)
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- TOC entry 3498 (class 2604 OID 316528)
-- Name: proposes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proposes ALTER COLUMN id SET DEFAULT nextval('public.proposes_id_seq'::regclass);


--
-- TOC entry 3504 (class 2604 OID 316529)
-- Name: rolesResources id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResources" ALTER COLUMN id SET DEFAULT nextval('public."rolesResources_id_seq"'::regclass);


--
-- TOC entry 3505 (class 2604 OID 316530)
-- Name: rolesResourcesActions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResourcesActions" ALTER COLUMN id SET DEFAULT nextval('public."rolesResourcesActions_id_seq"'::regclass);


--
-- TOC entry 3507 (class 2604 OID 316531)
-- Name: rolesResourcesScopes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResourcesScopes" ALTER COLUMN id SET DEFAULT nextval('public."rolesResourcesScopes_id_seq"'::regclass);


--
-- TOC entry 3508 (class 2604 OID 316532)
-- Name: sequences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sequences ALTER COLUMN id SET DEFAULT nextval('public.sequences_id_seq'::regclass);


--
-- TOC entry 3509 (class 2604 OID 316533)
-- Name: storages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storages ALTER COLUMN id SET DEFAULT nextval('public.storages_id_seq'::regclass);


--
-- TOC entry 3516 (class 2604 OID 316534)
-- Name: systemSettings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."systemSettings" ALTER COLUMN id SET DEFAULT nextval('public."systemSettings_id_seq"'::regclass);


--
-- TOC entry 3521 (class 2604 OID 316535)
-- Name: t_587vrvz0gcb id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_587vrvz0gcb ALTER COLUMN id SET DEFAULT nextval('public.t_587vrvz0gcb_id_seq'::regclass);


--
-- TOC entry 3525 (class 2604 OID 316536)
-- Name: themeConfig id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."themeConfig" ALTER COLUMN id SET DEFAULT nextval('public."themeConfig_id_seq"'::regclass);


--
-- TOC entry 3527 (class 2604 OID 316537)
-- Name: tokenBlacklist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tokenBlacklist" ALTER COLUMN id SET DEFAULT nextval('public."tokenBlacklist_id_seq"'::regclass);


--
-- TOC entry 3528 (class 2604 OID 316538)
-- Name: transactions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);


--
-- TOC entry 3532 (class 2604 OID 316539)
-- Name: uiSchemaServerHooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemaServerHooks" ALTER COLUMN id SET DEFAULT nextval('public."uiSchemaServerHooks_id_seq"'::regclass);


--
-- TOC entry 3534 (class 2604 OID 316540)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3539 (class 2604 OID 316541)
-- Name: users_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_jobs ALTER COLUMN id SET DEFAULT nextval('public.users_jobs_id_seq'::regclass);


--
-- TOC entry 3541 (class 2604 OID 316542)
-- Name: workflows id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workflows ALTER COLUMN id SET DEFAULT nextval('public.workflows_id_seq'::regclass);


--
-- TOC entry 3891 (class 0 OID 316167)
-- Dependencies: 215
-- Data for Name: apiKeys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."apiKeys" (id, "createdAt", name, "roleName", "expiresIn", token, sort, "createdById") FROM stdin;
\.


--
-- TOC entry 3893 (class 0 OID 316173)
-- Dependencies: 217
-- Data for Name: applicationPlugins; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."applicationPlugins" (id, "createdAt", "updatedAt", name, "packageName", version, enabled, installed, "builtIn", options) FROM stdin;
41	2024-11-22 08:42:36.005+00	2024-11-22 08:42:36.005+00	multi-app-manager	@nocobase/plugin-multi-app-manager	1.3.52	\N	\N	\N	\N
42	2024-11-22 08:42:36.055+00	2024-11-22 08:42:36.055+00	map	@nocobase/plugin-map	1.3.52	\N	\N	\N	\N
43	2024-11-22 08:42:36.106+00	2024-11-22 08:42:36.106+00	graph-collection-manager	@nocobase/plugin-graph-collection-manager	1.3.52	\N	\N	\N	\N
44	2024-11-22 08:42:36.158+00	2024-11-22 08:42:36.158+00	mobile	@nocobase/plugin-mobile	1.3.52	\N	\N	\N	\N
46	2024-11-22 08:42:36.255+00	2024-11-22 08:42:36.255+00	localization	@nocobase/plugin-localization	1.3.52	\N	\N	\N	\N
49	2024-11-22 08:42:36.407+00	2024-11-22 08:42:36.407+00	auth-sms	@nocobase/plugin-auth-sms	1.3.52	\N	\N	\N	\N
51	2024-11-22 08:42:36.506+00	2024-11-22 08:42:36.506+00	workflow-mailer	@nocobase/plugin-workflow-mailer	1.3.52	\N	\N	\N	\N
52	2024-11-22 08:42:36.555+00	2024-11-22 08:42:36.555+00	field-m2m-array	@nocobase/plugin-field-m2m-array	1.3.52	\N	\N	\N	\N
53	2024-11-22 08:42:36.605+00	2024-11-22 08:42:36.605+00	backup-restore	@nocobase/plugin-backup-restore	1.3.52	\N	\N	\N	\N
1	2024-11-22 08:42:34.002+00	2024-11-22 08:42:41.439+00	data-source-manager	@nocobase/plugin-data-source-manager	1.3.52	t	t	t	\N
2	2024-11-22 08:42:34.06+00	2024-11-22 08:42:41.485+00	error-handler	@nocobase/plugin-error-handler	1.3.52	t	t	t	\N
3	2024-11-22 08:42:34.109+00	2024-11-22 08:42:41.536+00	data-source-main	@nocobase/plugin-data-source-main	1.3.52	t	t	t	\N
4	2024-11-22 08:42:34.159+00	2024-11-22 08:42:41.586+00	ui-schema-storage	@nocobase/plugin-ui-schema-storage	1.3.52	t	t	t	\N
5	2024-11-22 08:42:34.209+00	2024-11-22 08:42:41.635+00	file-manager	@nocobase/plugin-file-manager	1.3.52	t	t	t	\N
6	2024-11-22 08:42:34.259+00	2024-11-22 08:42:41.686+00	system-settings	@nocobase/plugin-system-settings	1.3.52	t	t	t	\N
7	2024-11-22 08:42:34.308+00	2024-11-22 08:42:41.737+00	field-sequence	@nocobase/plugin-field-sequence	1.3.52	t	t	t	\N
8	2024-11-22 08:42:34.359+00	2024-11-22 08:42:41.786+00	verification	@nocobase/plugin-verification	1.3.52	t	t	t	\N
9	2024-11-22 08:42:34.408+00	2024-11-22 08:42:41.847+00	users	@nocobase/plugin-users	1.3.52	t	t	t	\N
10	2024-11-22 08:42:34.457+00	2024-11-22 08:42:41.897+00	acl	@nocobase/plugin-acl	1.3.52	t	t	t	\N
11	2024-11-22 08:42:34.509+00	2024-11-22 08:42:41.947+00	field-china-region	@nocobase/plugin-field-china-region	1.3.52	t	t	t	\N
12	2024-11-22 08:42:34.558+00	2024-11-22 08:42:41.997+00	workflow	@nocobase/plugin-workflow	1.3.52	t	t	t	\N
13	2024-11-22 08:42:34.607+00	2024-11-22 08:42:42.048+00	workflow-action-trigger	@nocobase/plugin-workflow-action-trigger	1.3.52	t	t	t	\N
14	2024-11-22 08:42:34.658+00	2024-11-22 08:42:42.097+00	workflow-aggregate	@nocobase/plugin-workflow-aggregate	1.3.52	t	t	t	\N
15	2024-11-22 08:42:34.708+00	2024-11-22 08:42:42.147+00	workflow-delay	@nocobase/plugin-workflow-delay	1.3.52	t	t	t	\N
16	2024-11-22 08:42:34.758+00	2024-11-22 08:42:42.196+00	workflow-dynamic-calculation	@nocobase/plugin-workflow-dynamic-calculation	1.3.52	t	t	t	\N
17	2024-11-22 08:42:34.806+00	2024-11-22 08:42:42.247+00	workflow-loop	@nocobase/plugin-workflow-loop	1.3.52	t	t	t	\N
18	2024-11-22 08:42:34.857+00	2024-11-22 08:42:42.297+00	workflow-manual	@nocobase/plugin-workflow-manual	1.3.52	t	t	t	\N
19	2024-11-22 08:42:34.907+00	2024-11-22 08:42:42.345+00	workflow-parallel	@nocobase/plugin-workflow-parallel	1.3.52	t	t	t	\N
20	2024-11-22 08:42:34.958+00	2024-11-22 08:42:42.396+00	workflow-request	@nocobase/plugin-workflow-request	1.3.52	t	t	t	\N
21	2024-11-22 08:42:35.008+00	2024-11-22 08:42:42.445+00	workflow-sql	@nocobase/plugin-workflow-sql	1.3.52	t	t	t	\N
22	2024-11-22 08:42:35.056+00	2024-11-22 08:42:42.497+00	client	@nocobase/plugin-client	1.3.52	t	t	t	\N
23	2024-11-22 08:42:35.107+00	2024-11-22 08:42:42.544+00	action-import	@nocobase/plugin-action-import	1.3.52	t	t	t	\N
24	2024-11-22 08:42:35.158+00	2024-11-22 08:42:42.594+00	action-export	@nocobase/plugin-action-export	1.3.52	t	t	t	\N
25	2024-11-22 08:42:35.207+00	2024-11-22 08:42:42.644+00	block-iframe	@nocobase/plugin-block-iframe	1.3.52	t	t	t	\N
26	2024-11-22 08:42:35.258+00	2024-11-22 08:42:42.695+00	block-workbench	@nocobase/plugin-block-workbench	1.3.52	t	t	t	\N
27	2024-11-22 08:42:35.306+00	2024-11-22 08:42:42.745+00	field-formula	@nocobase/plugin-field-formula	1.3.52	t	t	t	\N
28	2024-11-22 08:42:35.357+00	2024-11-22 08:42:42.795+00	data-visualization	@nocobase/plugin-data-visualization	1.3.52	t	t	t	\N
29	2024-11-22 08:42:35.406+00	2024-11-22 08:42:42.844+00	auth	@nocobase/plugin-auth	1.3.52	t	t	t	\N
30	2024-11-22 08:42:35.456+00	2024-11-22 08:42:42.894+00	logger	@nocobase/plugin-logger	1.3.52	t	t	t	\N
31	2024-11-22 08:42:35.505+00	2024-11-22 08:42:42.945+00	action-custom-request	@nocobase/plugin-action-custom-request	1.3.52	t	t	t	\N
32	2024-11-22 08:42:35.555+00	2024-11-22 08:42:42.995+00	calendar	@nocobase/plugin-calendar	1.3.52	t	t	t	\N
33	2024-11-22 08:42:35.604+00	2024-11-22 08:42:43.045+00	action-bulk-update	@nocobase/plugin-action-bulk-update	1.3.52	t	t	t	\N
34	2024-11-22 08:42:35.655+00	2024-11-22 08:42:43.096+00	action-bulk-edit	@nocobase/plugin-action-bulk-edit	1.3.52	t	t	t	\N
35	2024-11-22 08:42:35.704+00	2024-11-22 08:42:43.146+00	gantt	@nocobase/plugin-gantt	1.3.52	t	t	t	\N
36	2024-11-22 08:42:35.755+00	2024-11-22 08:42:43.197+00	kanban	@nocobase/plugin-kanban	1.3.52	t	t	t	\N
37	2024-11-22 08:42:35.804+00	2024-11-22 08:42:43.247+00	action-duplicate	@nocobase/plugin-action-duplicate	1.3.52	t	t	t	\N
38	2024-11-22 08:42:35.855+00	2024-11-22 08:42:43.296+00	action-print	@nocobase/plugin-action-print	1.3.52	t	t	t	\N
39	2024-11-22 08:42:35.905+00	2024-11-22 08:42:43.345+00	collection-sql	@nocobase/plugin-collection-sql	1.3.52	t	t	t	\N
40	2024-11-22 08:42:35.955+00	2024-11-22 08:42:43.397+00	collection-tree	@nocobase/plugin-collection-tree	1.3.52	t	t	t	\N
55	2024-11-22 11:23:36.527+00	2024-11-22 11:24:17.458+00	@service/rescue_requests	@service/rescue_requests	0.1.0	t	t	\N	\N
48	2024-11-22 08:42:36.355+00	2024-11-23 01:03:38.981+00	api-doc	@nocobase/plugin-api-doc	1.3.52	t	t	\N	\N
47	2024-11-22 08:42:36.304+00	2024-11-22 16:31:39.363+00	theme-editor	@nocobase/plugin-theme-editor	1.3.52	t	t	\N	\N
45	2024-11-22 08:42:36.205+00	2024-11-23 01:04:08.148+00	api-keys	@nocobase/plugin-api-keys	1.3.52	f	t	\N	\N
56	2024-11-23 04:24:07.353+00	2024-11-23 04:24:07.353+00	@olp-dtu-2024/test-thoi-ne	@olp-dtu-2024/test-thoi-ne	\N	\N	\N	\N	\N
58	2024-11-23 12:31:03.183+00	2024-11-23 12:35:31.067+00	@olp-dtu-2024/get-new-transaction	@olp-dtu-2024/get-new-transaction	0.1.0	t	t	\N	\N
60	2024-11-24 02:22:23.996+00	2024-11-24 02:31:01.606+00	@olp-dtu-2024/client-page	@olp-dtu-2024/client-page	0.1.0	t	t	\N	\N
57	2024-11-23 05:14:56.752+00	2024-11-23 05:16:17.712+00	@olp-dtu-2024/qr-donate	@olp-dtu-2024/qr-donate	0.1.0	t	t	\N	\N
50	2024-11-22 08:42:36.455+00	2024-11-24 13:49:14.928+00	field-markdown-vditor	@nocobase/plugin-field-markdown-vditor	1.3.52	f	t	\N	\N
61	2024-11-24 03:34:37.804+00	2024-11-24 03:35:12.479+00	@olp-dtu-2024/ui	@olp-dtu-2024/ui	0.1.0	t	t	\N	\N
59	2024-11-23 15:30:20.12+00	2024-11-25 05:45:43.086+00	@olp-dtu-2024/landing-page	@olp-dtu-2024/landing-page	0.1.0	t	t	\N	\N
54	2024-11-22 08:43:33.991+00	2024-11-28 01:46:15.614+00	@olp-dtu-2024/kafka-nocobase	@olp-dtu-2024/kafka-nocobase	1.0.1	t	t	\N	\N
67	2024-11-29 18:21:11.386+00	2024-11-29 18:23:11.444+00	@olp-dtu-2024/carousel-nocobase	@olp-dtu-2024/carousel-nocobase	0.1.0	t	t	\N	\N
68	2024-11-29 18:40:03.216+00	2024-11-29 18:42:18.26+00	@olp-dtu-2024/header-picker-nocobase	@olp-dtu-2024/header-picker-nocobase	0.1.0	t	t	\N	\N
\.


--
-- TOC entry 3895 (class 0 OID 316179)
-- Dependencies: 219
-- Data for Name: applicationVersion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."applicationVersion" (id, value) FROM stdin;
1	1.3.52
\.


--
-- TOC entry 3897 (class 0 OID 316183)
-- Dependencies: 221
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attachments (id, "createdAt", "updatedAt", title, filename, extname, size, mimetype, "storageId", path, meta, url, "createdById", "updatedById") FROM stdin;
1	2024-11-22 08:42:38.083+00	2024-11-22 08:42:38.083+00	nocobase-logo	041bedb67d37c0b01050d958fe30343a.png	.png	11186	image/png	1		{}	/storage/uploads/041bedb67d37c0b01050d958fe30343a.png	\N	\N
2	2024-11-25 06:09:50.196+00	2024-11-25 06:09:50.196+00	GR	b5f095701799b2b65968a39c3aa2cf7f.png	.png	10908	image/png	1		{}	/storage/uploads/b5f095701799b2b65968a39c3aa2cf7f.png	1	1
3	2024-11-25 06:57:01.789+00	2024-11-25 06:57:01.789+00	Green and Dark Green Minimalist Restoring The Forest Presentation	4d9248ce349b9f57c028a88f86b0cfb7.png	.png	654456	image/png	1		{}	/storage/uploads/4d9248ce349b9f57c028a88f86b0cfb7.png	1	1
4	2024-11-27 00:21:32.666+00	2024-11-27 00:21:32.666+00	ai-la-nguoi-dam-me-nhung-bau-troi-dem-day-sao-dep-den-nao-long-nao	768557c2a7273250dbb89352f3a0db5c.jpg	.jpg	435009	image/jpeg	1		{}	/storage/uploads/768557c2a7273250dbb89352f3a0db5c.jpg	1	1
5	2024-11-27 00:23:28.289+00	2024-11-27 00:23:28.289+00	anh-nen-desktop_956486-1280x720	804aac2c1fa14b4cb4f3b64739bb2c58.jpg	.jpg	71590	image/jpeg	1		{}	/storage/uploads/804aac2c1fa14b4cb4f3b64739bb2c58.jpg	1	1
6	2024-11-27 00:23:28.292+00	2024-11-27 00:23:28.292+00	hinh-nen-4k-dep_050001250-1280x720	f96fb535affa46a057ea5c015b330f2b.jpg	.jpg	222306	image/jpeg	1		{}	/storage/uploads/f96fb535affa46a057ea5c015b330f2b.jpg	1	1
8	2024-11-27 00:23:28.308+00	2024-11-27 00:23:28.308+00	anh-nen-dep-4k-cho-desktop_958397	ef6a055221ce6aa5ee39a20845776757.jpg	.jpg	941848	image/jpeg	1		{}	/storage/uploads/ef6a055221ce6aa5ee39a20845776757.jpg	1	1
7	2024-11-27 00:23:28.306+00	2024-11-27 00:23:28.306+00	ai-la-nguoi-dam-me-nhung-bau-troi-dem-day-sao-dep-den-nao-long-nao	a080c82d9b7d67ea76ee5a04b467490a.jpg	.jpg	435009	image/jpeg	1		{}	/storage/uploads/a080c82d9b7d67ea76ee5a04b467490a.jpg	1	1
9	2024-11-27 03:01:05.065+00	2024-11-27 03:01:05.065+00	anh-nen-desktop_956486-1280x720	a0ef76e6be27430f062c24daafbd481d.jpg	.jpg	71590	image/jpeg	1		{}	/storage/uploads/a0ef76e6be27430f062c24daafbd481d.jpg	1	1
12	2024-11-27 03:01:05.094+00	2024-11-27 03:01:05.094+00	ai-la-nguoi-dam-me-nhung-bau-troi-dem-day-sao-dep-den-nao-long-nao	e8556ad569acfd98c8196de790c41487.jpg	.jpg	435009	image/jpeg	1		{}	/storage/uploads/e8556ad569acfd98c8196de790c41487.jpg	1	1
11	2024-11-27 03:01:05.099+00	2024-11-27 03:01:05.099+00	anh-nen-dep-4k-cho-desktop_958397	53766659e9a87e1328ac818b1c0ce42e.jpg	.jpg	941848	image/jpeg	1		{}	/storage/uploads/53766659e9a87e1328ac818b1c0ce42e.jpg	1	1
10	2024-11-27 03:01:05.093+00	2024-11-27 03:01:05.093+00	hinh-nen-4k-dep_050001250-1280x720	387f610a42dbdfc15e0fd7c4d9b2382c.jpg	.jpg	222306	image/jpeg	1		{}	/storage/uploads/387f610a42dbdfc15e0fd7c4d9b2382c.jpg	1	1
13	2024-11-27 05:12:44.879+00	2024-11-27 05:12:44.879+00	anh-nen-desktop_956486-1280x720	58906414566543e1e9e54a44a48fe7aa.jpg	.jpg	71590	image/jpeg	1		{}	/storage/uploads/58906414566543e1e9e54a44a48fe7aa.jpg	1	1
15	2024-11-27 05:12:44.893+00	2024-11-27 05:12:44.893+00	anh-nen-dep-4k-cho-desktop_958397	8d056e996a9261b26db0172b005b02d2.jpg	.jpg	941848	image/jpeg	1		{}	/storage/uploads/8d056e996a9261b26db0172b005b02d2.jpg	1	1
14	2024-11-27 05:12:44.888+00	2024-11-27 05:12:44.888+00	ai-la-nguoi-dam-me-nhung-bau-troi-dem-day-sao-dep-den-nao-long-nao	2017bd8abbd1121666d857c8f43dc6f0.jpg	.jpg	435009	image/jpeg	1		{}	/storage/uploads/2017bd8abbd1121666d857c8f43dc6f0.jpg	1	1
16	2024-11-27 09:55:44.611+00	2024-11-27 09:55:44.611+00	pexels-jplenio-1103970	3bd23b65c98932c1b0b2c96fb74ce65e.jpg	.jpg	344012	image/jpeg	1		{}	/storage/uploads/3bd23b65c98932c1b0b2c96fb74ce65e.jpg	1	1
17	2024-11-27 09:55:44.638+00	2024-11-27 09:55:44.638+00	pexels-pramodtiwari-14447524	f1a3269960bdd472a0b9fac61f9b8b66.jpg	.jpg	450211	image/jpeg	1		{}	/storage/uploads/f1a3269960bdd472a0b9fac61f9b8b66.jpg	1	1
18	2024-11-27 09:55:44.646+00	2024-11-27 09:55:44.646+00	pexels-rpnickson-2775196	072ebe851cde60218d694d039602de89.jpg	.jpg	1192657	image/jpeg	1		{}	/storage/uploads/072ebe851cde60218d694d039602de89.jpg	1	1
19	2024-11-27 09:55:44.649+00	2024-11-27 09:55:44.649+00	pexels-stywo-1261728	b1529ff8db3038f27aa8b9563803e1d5.jpg	.jpg	1433451	image/jpeg	1		{}	/storage/uploads/b1529ff8db3038f27aa8b9563803e1d5.jpg	1	1
20	2024-11-29 16:15:58.451+00	2024-11-29 16:15:58.451+00	hinh-nen-desktop-cute_004670-1280x720	a35707a7f73abf1fb7c85ec2cb23f120.jpg	.jpg	109242	image/jpeg	1		{}	/storage/uploads/a35707a7f73abf1fb7c85ec2cb23f120.jpg	1	1
21	2024-11-29 16:15:58.457+00	2024-11-29 16:15:58.457+00	pexels-yaroslav-shuraev-1553962	fed82265811b91ac20b0be253113244a.jpg	.jpg	571806	image/jpeg	1		{}	/storage/uploads/fed82265811b91ac20b0be253113244a.jpg	1	1
22	2024-11-29 20:13:56.017+00	2024-11-29 20:13:56.017+00	hinh-nen-may-tinh-chill-4k28	46a194489a72225527567e65c84572d5.jpg	.jpg	190990	image/jpeg	1		{}	/storage/uploads/46a194489a72225527567e65c84572d5.jpg	1	1
23	2024-11-29 20:13:56.031+00	2024-11-29 20:13:56.031+00	hinh-nen-desktop-phong-canh-full-hd	d6ee4a229399d8a7c2172838e3ca3937.jpg	.jpg	686638	image/jpeg	1		{}	/storage/uploads/d6ee4a229399d8a7c2172838e3ca3937.jpg	1	1
24	2024-11-29 20:13:56.037+00	2024-11-29 20:13:56.037+00	pexels-8moments-1323550	9f1ed8f8c46de09614de4103ad02c65f.jpg	.jpg	1247723	image/jpeg	1		{}	/storage/uploads/9f1ed8f8c46de09614de4103ad02c65f.jpg	1	1
\.


--
-- TOC entry 3899 (class 0 OID 316190)
-- Dependencies: 223
-- Data for Name: authenticators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authenticators (id, "createdAt", "updatedAt", name, "authType", title, description, options, enabled, sort, "createdById", "updatedById") FROM stdin;
1	2024-11-22 08:42:41.378+00	2024-11-22 08:42:41.378+00	basic	Email/Password	\N	Sign in with username/email.	{"public":{"allowSignUp":true}}	t	1	\N	\N
\.


--
-- TOC entry 3901 (class 0 OID 316199)
-- Dependencies: 225
-- Data for Name: chinaRegions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."chinaRegions" ("createdAt", "updatedAt", code, name, "parentCode", level) FROM stdin;
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	11	北京市	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	12	天津市	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	13	河北省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	14	山西省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	15	内蒙古自治区	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	21	辽宁省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	22	吉林省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	23	黑龙江省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	31	上海市	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	32	江苏省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	33	浙江省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	34	安徽省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	35	福建省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	36	江西省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	37	山东省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	41	河南省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	42	湖北省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	43	湖南省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	44	广东省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	45	广西壮族自治区	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	46	海南省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	50	重庆市	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	51	四川省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	52	贵州省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	53	云南省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	54	西藏自治区	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	61	陕西省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	62	甘肃省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	63	青海省	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	64	宁夏回族自治区	\N	1
2024-11-22 08:42:41.027+00	2024-11-22 08:42:41.027+00	65	新疆维吾尔自治区	\N	1
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1101	市辖区	11	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1201	市辖区	12	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1301	石家庄市	13	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1302	唐山市	13	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1303	秦皇岛市	13	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1304	邯郸市	13	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1305	邢台市	13	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1306	保定市	13	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1307	张家口市	13	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1308	承德市	13	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1309	沧州市	13	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1310	廊坊市	13	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1311	衡水市	13	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1401	太原市	14	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1402	大同市	14	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1403	阳泉市	14	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1404	长治市	14	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1405	晋城市	14	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1406	朔州市	14	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1407	晋中市	14	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1408	运城市	14	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1409	忻州市	14	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1410	临汾市	14	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1411	吕梁市	14	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1501	呼和浩特市	15	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1502	包头市	15	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1503	乌海市	15	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1504	赤峰市	15	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1505	通辽市	15	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1506	鄂尔多斯市	15	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1507	呼伦贝尔市	15	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1508	巴彦淖尔市	15	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1509	乌兰察布市	15	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1522	兴安盟	15	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1525	锡林郭勒盟	15	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	1529	阿拉善盟	15	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2101	沈阳市	21	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2102	大连市	21	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2103	鞍山市	21	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2104	抚顺市	21	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2105	本溪市	21	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2106	丹东市	21	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2107	锦州市	21	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2108	营口市	21	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2109	阜新市	21	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2110	辽阳市	21	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2111	盘锦市	21	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2112	铁岭市	21	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2113	朝阳市	21	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2114	葫芦岛市	21	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2201	长春市	22	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2202	吉林市	22	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2203	四平市	22	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2204	辽源市	22	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2205	通化市	22	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2206	白山市	22	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2207	松原市	22	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2208	白城市	22	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2224	延边朝鲜族自治州	22	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2301	哈尔滨市	23	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2302	齐齐哈尔市	23	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2303	鸡西市	23	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2304	鹤岗市	23	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2305	双鸭山市	23	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2306	大庆市	23	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2307	伊春市	23	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2308	佳木斯市	23	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2309	七台河市	23	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2310	牡丹江市	23	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2311	黑河市	23	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2312	绥化市	23	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	2327	大兴安岭地区	23	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3101	市辖区	31	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3201	南京市	32	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3202	无锡市	32	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3203	徐州市	32	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3204	常州市	32	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3205	苏州市	32	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3206	南通市	32	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3207	连云港市	32	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3208	淮安市	32	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3209	盐城市	32	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3210	扬州市	32	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3211	镇江市	32	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3212	泰州市	32	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3213	宿迁市	32	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3301	杭州市	33	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3302	宁波市	33	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3303	温州市	33	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3304	嘉兴市	33	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3305	湖州市	33	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3306	绍兴市	33	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3307	金华市	33	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3308	衢州市	33	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3309	舟山市	33	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3310	台州市	33	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3311	丽水市	33	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3401	合肥市	34	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3402	芜湖市	34	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3403	蚌埠市	34	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3404	淮南市	34	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3405	马鞍山市	34	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3406	淮北市	34	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3407	铜陵市	34	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3408	安庆市	34	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3410	黄山市	34	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3411	滁州市	34	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3412	阜阳市	34	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3413	宿州市	34	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3415	六安市	34	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3416	亳州市	34	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3417	池州市	34	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3418	宣城市	34	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3501	福州市	35	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3502	厦门市	35	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3503	莆田市	35	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3504	三明市	35	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3505	泉州市	35	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3506	漳州市	35	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3507	南平市	35	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3508	龙岩市	35	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3509	宁德市	35	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3601	南昌市	36	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3602	景德镇市	36	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3603	萍乡市	36	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3604	九江市	36	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3605	新余市	36	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3606	鹰潭市	36	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3607	赣州市	36	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3608	吉安市	36	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3609	宜春市	36	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3610	抚州市	36	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3611	上饶市	36	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3701	济南市	37	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3702	青岛市	37	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3703	淄博市	37	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3704	枣庄市	37	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3705	东营市	37	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3706	烟台市	37	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3707	潍坊市	37	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3708	济宁市	37	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3709	泰安市	37	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3710	威海市	37	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3711	日照市	37	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3713	临沂市	37	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3714	德州市	37	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3715	聊城市	37	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3716	滨州市	37	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	3717	菏泽市	37	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4101	郑州市	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4102	开封市	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4103	洛阳市	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4104	平顶山市	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4105	安阳市	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4106	鹤壁市	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4107	新乡市	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4108	焦作市	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4109	濮阳市	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4110	许昌市	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4111	漯河市	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4112	三门峡市	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4113	南阳市	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4114	商丘市	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4115	信阳市	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4116	周口市	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4117	驻马店市	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4190	省直辖县级行政区划	41	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4201	武汉市	42	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4202	黄石市	42	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4203	十堰市	42	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4205	宜昌市	42	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4206	襄阳市	42	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4207	鄂州市	42	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4208	荆门市	42	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4209	孝感市	42	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4210	荆州市	42	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4211	黄冈市	42	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4212	咸宁市	42	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4213	随州市	42	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4228	恩施土家族苗族自治州	42	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4290	省直辖县级行政区划	42	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4301	长沙市	43	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4302	株洲市	43	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4303	湘潭市	43	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4304	衡阳市	43	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4305	邵阳市	43	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4306	岳阳市	43	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4307	常德市	43	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4308	张家界市	43	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4309	益阳市	43	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4310	郴州市	43	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4311	永州市	43	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4312	怀化市	43	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4313	娄底市	43	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4331	湘西土家族苗族自治州	43	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4401	广州市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4402	韶关市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4403	深圳市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4404	珠海市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4405	汕头市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4406	佛山市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4407	江门市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4408	湛江市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4409	茂名市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4412	肇庆市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4413	惠州市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4414	梅州市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4415	汕尾市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4416	河源市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4417	阳江市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4418	清远市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4419	东莞市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4420	中山市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4451	潮州市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4452	揭阳市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4453	云浮市	44	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4501	南宁市	45	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4502	柳州市	45	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4503	桂林市	45	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4504	梧州市	45	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4505	北海市	45	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4506	防城港市	45	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4507	钦州市	45	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4508	贵港市	45	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4509	玉林市	45	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4510	百色市	45	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4511	贺州市	45	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4512	河池市	45	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4513	来宾市	45	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4514	崇左市	45	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4601	海口市	46	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4602	三亚市	46	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4603	三沙市	46	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4604	儋州市	46	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	4690	省直辖县级行政区划	46	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5001	市辖区	50	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5002	县	50	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5101	成都市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5103	自贡市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5104	攀枝花市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5105	泸州市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5106	德阳市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5107	绵阳市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5108	广元市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5109	遂宁市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5110	内江市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5111	乐山市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5113	南充市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5114	眉山市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5115	宜宾市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5116	广安市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5117	达州市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5118	雅安市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5119	巴中市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5120	资阳市	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5132	阿坝藏族羌族自治州	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5133	甘孜藏族自治州	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5134	凉山彝族自治州	51	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5201	贵阳市	52	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5202	六盘水市	52	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5203	遵义市	52	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5204	安顺市	52	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5205	毕节市	52	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5206	铜仁市	52	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5223	黔西南布依族苗族自治州	52	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5226	黔东南苗族侗族自治州	52	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5227	黔南布依族苗族自治州	52	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5301	昆明市	53	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5303	曲靖市	53	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5304	玉溪市	53	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5305	保山市	53	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5306	昭通市	53	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5307	丽江市	53	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5308	普洱市	53	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5309	临沧市	53	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5323	楚雄彝族自治州	53	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5325	红河哈尼族彝族自治州	53	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5326	文山壮族苗族自治州	53	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5328	西双版纳傣族自治州	53	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5329	大理白族自治州	53	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5331	德宏傣族景颇族自治州	53	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5333	怒江傈僳族自治州	53	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5334	迪庆藏族自治州	53	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5401	拉萨市	54	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5402	日喀则市	54	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5403	昌都市	54	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5404	林芝市	54	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5405	山南市	54	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5406	那曲市	54	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	5425	阿里地区	54	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6101	西安市	61	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6102	铜川市	61	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6103	宝鸡市	61	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6104	咸阳市	61	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6105	渭南市	61	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6106	延安市	61	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6107	汉中市	61	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6108	榆林市	61	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6109	安康市	61	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6110	商洛市	61	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6201	兰州市	62	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6202	嘉峪关市	62	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6203	金昌市	62	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6204	白银市	62	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6205	天水市	62	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6206	武威市	62	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6207	张掖市	62	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6208	平凉市	62	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6209	酒泉市	62	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6210	庆阳市	62	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6211	定西市	62	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6212	陇南市	62	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6229	临夏回族自治州	62	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6230	甘南藏族自治州	62	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6301	西宁市	63	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6302	海东市	63	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6322	海北藏族自治州	63	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6323	黄南藏族自治州	63	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6325	海南藏族自治州	63	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6326	果洛藏族自治州	63	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6327	玉树藏族自治州	63	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6328	海西蒙古族藏族自治州	63	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6401	银川市	64	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6402	石嘴山市	64	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6403	吴忠市	64	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6404	固原市	64	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6405	中卫市	64	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6501	乌鲁木齐市	65	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6502	克拉玛依市	65	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6504	吐鲁番市	65	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6505	哈密市	65	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6523	昌吉回族自治州	65	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6527	博尔塔拉蒙古自治州	65	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6528	巴音郭楞蒙古自治州	65	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6529	阿克苏地区	65	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6530	克孜勒苏柯尔克孜自治州	65	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6531	喀什地区	65	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6532	和田地区	65	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6540	伊犁哈萨克自治州	65	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6542	塔城地区	65	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6543	阿勒泰地区	65	2
2024-11-22 08:42:41.033+00	2024-11-22 08:42:41.033+00	6590	自治区直辖县级行政区划	65	2
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	110101	东城区	1101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	110102	西城区	1101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	110105	朝阳区	1101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	110106	丰台区	1101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	110107	石景山区	1101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	110108	海淀区	1101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	110109	门头沟区	1101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	110111	房山区	1101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	110112	通州区	1101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	110113	顺义区	1101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	110114	昌平区	1101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	110115	大兴区	1101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	110116	怀柔区	1101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	110117	平谷区	1101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	110118	密云区	1101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	110119	延庆区	1101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	120101	和平区	1201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	120102	河东区	1201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	120103	河西区	1201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	120104	南开区	1201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	120105	河北区	1201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	120106	红桥区	1201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	120110	东丽区	1201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	120111	西青区	1201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	120112	津南区	1201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	120113	北辰区	1201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	120114	武清区	1201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	120115	宝坻区	1201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	120116	滨海新区	1201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	120117	宁河区	1201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	120118	静海区	1201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	120119	蓟州区	1201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130102	长安区	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130104	桥西区	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130105	新华区	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130107	井陉矿区	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130108	裕华区	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130109	藁城区	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130110	鹿泉区	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130111	栾城区	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130121	井陉县	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130123	正定县	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130125	行唐县	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130126	灵寿县	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130127	高邑县	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130128	深泽县	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130129	赞皇县	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130130	无极县	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130131	平山县	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130132	元氏县	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130133	赵县	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130171	石家庄高新技术产业开发区	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130172	石家庄循环化工园区	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130181	辛集市	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130183	晋州市	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130184	新乐市	1301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130202	路南区	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130203	路北区	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130204	古冶区	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130205	开平区	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130207	丰南区	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130208	丰润区	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130209	曹妃甸区	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130224	滦南县	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130225	乐亭县	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130227	迁西县	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130229	玉田县	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130271	河北唐山芦台经济开发区	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130272	唐山市汉沽管理区	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130273	唐山高新技术产业开发区	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130274	河北唐山海港经济开发区	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130281	遵化市	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130283	迁安市	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130284	滦州市	1302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130302	海港区	1303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130303	山海关区	1303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130304	北戴河区	1303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130306	抚宁区	1303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130321	青龙满族自治县	1303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130322	昌黎县	1303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130324	卢龙县	1303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130371	秦皇岛市经济技术开发区	1303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130372	北戴河新区	1303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130402	邯山区	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130403	丛台区	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130404	复兴区	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130406	峰峰矿区	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130407	肥乡区	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130408	永年区	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130423	临漳县	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130424	成安县	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130425	大名县	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130426	涉县	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130427	磁县	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130430	邱县	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130431	鸡泽县	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130432	广平县	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130433	馆陶县	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130434	魏县	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130435	曲周县	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130471	邯郸经济技术开发区	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130473	邯郸冀南新区	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130481	武安市	1304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130502	襄都区	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130503	信都区	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130505	任泽区	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130506	南和区	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130522	临城县	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130523	内丘县	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130524	柏乡县	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130525	隆尧县	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130528	宁晋县	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130529	巨鹿县	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130530	新河县	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130531	广宗县	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130532	平乡县	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130533	威县	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130534	清河县	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130535	临西县	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130571	河北邢台经济开发区	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130581	南宫市	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130582	沙河市	1305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130602	竞秀区	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130606	莲池区	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130607	满城区	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130608	清苑区	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130609	徐水区	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130623	涞水县	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130624	阜平县	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130626	定兴县	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130627	唐县	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130628	高阳县	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130629	容城县	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130630	涞源县	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130631	望都县	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130632	安新县	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130633	易县	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130634	曲阳县	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130635	蠡县	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130636	顺平县	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130637	博野县	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130638	雄县	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130671	保定高新技术产业开发区	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130672	保定白沟新城	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130681	涿州市	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130682	定州市	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130683	安国市	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130684	高碑店市	1306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130702	桥东区	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130703	桥西区	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130705	宣化区	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130706	下花园区	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130708	万全区	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130709	崇礼区	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130722	张北县	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130723	康保县	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130724	沽源县	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130725	尚义县	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130726	蔚县	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130727	阳原县	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130728	怀安县	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130730	怀来县	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130731	涿鹿县	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130732	赤城县	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130771	张家口经济开发区	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130772	张家口市察北管理区	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130773	张家口市塞北管理区	1307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130802	双桥区	1308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130803	双滦区	1308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130804	鹰手营子矿区	1308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130821	承德县	1308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130822	兴隆县	1308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130824	滦平县	1308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130825	隆化县	1308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130826	丰宁满族自治县	1308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130827	宽城满族自治县	1308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130828	围场满族蒙古族自治县	1308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130871	承德高新技术产业开发区	1308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130881	平泉市	1308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130902	新华区	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130903	运河区	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130921	沧县	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130922	青县	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130923	东光县	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130924	海兴县	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130925	盐山县	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130926	肃宁县	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130927	南皮县	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130928	吴桥县	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130929	献县	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130930	孟村回族自治县	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130971	河北沧州经济开发区	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130972	沧州高新技术产业开发区	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130973	沧州渤海新区	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130981	泊头市	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130982	任丘市	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130983	黄骅市	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	130984	河间市	1309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131002	安次区	1310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131003	广阳区	1310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131022	固安县	1310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131023	永清县	1310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131024	香河县	1310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131025	大城县	1310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131026	文安县	1310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131028	大厂回族自治县	1310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131071	廊坊经济技术开发区	1310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131081	霸州市	1310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131082	三河市	1310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131102	桃城区	1311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131103	冀州区	1311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131121	枣强县	1311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131122	武邑县	1311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131123	武强县	1311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131124	饶阳县	1311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131125	安平县	1311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131126	故城县	1311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131127	景县	1311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131128	阜城县	1311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131171	河北衡水高新技术产业开发区	1311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131172	衡水滨湖新区	1311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	131182	深州市	1311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140105	小店区	1401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140106	迎泽区	1401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140107	杏花岭区	1401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140108	尖草坪区	1401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140109	万柏林区	1401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140110	晋源区	1401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140121	清徐县	1401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140122	阳曲县	1401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140123	娄烦县	1401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140171	山西转型综合改革示范区	1401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140181	古交市	1401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140212	新荣区	1402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140213	平城区	1402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140214	云冈区	1402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140215	云州区	1402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140221	阳高县	1402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140222	天镇县	1402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140223	广灵县	1402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140224	灵丘县	1402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140225	浑源县	1402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140226	左云县	1402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140271	山西大同经济开发区	1402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140302	城区	1403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140303	矿区	1403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140311	郊区	1403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140321	平定县	1403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140322	盂县	1403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140403	潞州区	1404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140404	上党区	1404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140405	屯留区	1404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140406	潞城区	1404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140423	襄垣县	1404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140425	平顺县	1404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140426	黎城县	1404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140427	壶关县	1404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140428	长子县	1404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140429	武乡县	1404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140430	沁县	1404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140431	沁源县	1404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140502	城区	1405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140521	沁水县	1405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140522	阳城县	1405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140524	陵川县	1405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140525	泽州县	1405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140581	高平市	1405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140602	朔城区	1406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140603	平鲁区	1406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140621	山阴县	1406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140622	应县	1406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140623	右玉县	1406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140671	山西朔州经济开发区	1406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140681	怀仁市	1406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140702	榆次区	1407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140703	太谷区	1407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140721	榆社县	1407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140722	左权县	1407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140723	和顺县	1407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140724	昔阳县	1407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140725	寿阳县	1407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140727	祁县	1407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140728	平遥县	1407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140729	灵石县	1407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140781	介休市	1407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140802	盐湖区	1408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140821	临猗县	1408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140822	万荣县	1408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140823	闻喜县	1408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140824	稷山县	1408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140825	新绛县	1408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140826	绛县	1408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140827	垣曲县	1408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140828	夏县	1408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140829	平陆县	1408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140830	芮城县	1408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140881	永济市	1408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140882	河津市	1408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140902	忻府区	1409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140921	定襄县	1409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140922	五台县	1409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140923	代县	1409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140924	繁峙县	1409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140925	宁武县	1409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140926	静乐县	1409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140927	神池县	1409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140928	五寨县	1409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140929	岢岚县	1409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140930	河曲县	1409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140931	保德县	1409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140932	偏关县	1409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140971	五台山风景名胜区	1409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	140981	原平市	1409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141002	尧都区	1410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141021	曲沃县	1410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141022	翼城县	1410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141023	襄汾县	1410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141024	洪洞县	1410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141025	古县	1410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141026	安泽县	1410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141027	浮山县	1410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141028	吉县	1410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141029	乡宁县	1410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141030	大宁县	1410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141031	隰县	1410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141032	永和县	1410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141033	蒲县	1410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141034	汾西县	1410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141081	侯马市	1410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141082	霍州市	1410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141102	离石区	1411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141121	文水县	1411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141122	交城县	1411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141123	兴县	1411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141124	临县	1411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141125	柳林县	1411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141126	石楼县	1411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141127	岚县	1411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141128	方山县	1411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141129	中阳县	1411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141130	交口县	1411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141181	孝义市	1411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	141182	汾阳市	1411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150102	新城区	1501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150103	回民区	1501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150104	玉泉区	1501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150105	赛罕区	1501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150121	土默特左旗	1501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150122	托克托县	1501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150123	和林格尔县	1501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150124	清水河县	1501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150125	武川县	1501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150172	呼和浩特经济技术开发区	1501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150202	东河区	1502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150203	昆都仑区	1502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150204	青山区	1502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150205	石拐区	1502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150206	白云鄂博矿区	1502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150207	九原区	1502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150221	土默特右旗	1502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150222	固阳县	1502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150223	达尔罕茂明安联合旗	1502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150271	包头稀土高新技术产业开发区	1502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150302	海勃湾区	1503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150303	海南区	1503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150304	乌达区	1503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150402	红山区	1504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150403	元宝山区	1504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150404	松山区	1504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150421	阿鲁科尔沁旗	1504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150422	巴林左旗	1504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150423	巴林右旗	1504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150424	林西县	1504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150425	克什克腾旗	1504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150426	翁牛特旗	1504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150428	喀喇沁旗	1504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150429	宁城县	1504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150430	敖汉旗	1504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150502	科尔沁区	1505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150521	科尔沁左翼中旗	1505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150522	科尔沁左翼后旗	1505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150523	开鲁县	1505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150524	库伦旗	1505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150525	奈曼旗	1505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150526	扎鲁特旗	1505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150571	通辽经济技术开发区	1505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150581	霍林郭勒市	1505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150602	东胜区	1506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150603	康巴什区	1506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150621	达拉特旗	1506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150622	准格尔旗	1506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150623	鄂托克前旗	1506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150624	鄂托克旗	1506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150625	杭锦旗	1506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150626	乌审旗	1506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150627	伊金霍洛旗	1506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150702	海拉尔区	1507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150703	扎赉诺尔区	1507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150721	阿荣旗	1507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150722	莫力达瓦达斡尔族自治旗	1507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150723	鄂伦春自治旗	1507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150724	鄂温克族自治旗	1507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150725	陈巴尔虎旗	1507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150726	新巴尔虎左旗	1507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150727	新巴尔虎右旗	1507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150781	满洲里市	1507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150782	牙克石市	1507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150783	扎兰屯市	1507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150784	额尔古纳市	1507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150785	根河市	1507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150802	临河区	1508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150821	五原县	1508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150822	磴口县	1508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150823	乌拉特前旗	1508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150824	乌拉特中旗	1508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150825	乌拉特后旗	1508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150826	杭锦后旗	1508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150902	集宁区	1509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150921	卓资县	1509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150922	化德县	1509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150923	商都县	1509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150924	兴和县	1509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150925	凉城县	1509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150926	察哈尔右翼前旗	1509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150927	察哈尔右翼中旗	1509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150928	察哈尔右翼后旗	1509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150929	四子王旗	1509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	150981	丰镇市	1509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152201	乌兰浩特市	1522	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152202	阿尔山市	1522	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152221	科尔沁右翼前旗	1522	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152222	科尔沁右翼中旗	1522	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152223	扎赉特旗	1522	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152224	突泉县	1522	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152501	二连浩特市	1525	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152502	锡林浩特市	1525	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152522	阿巴嘎旗	1525	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152523	苏尼特左旗	1525	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152524	苏尼特右旗	1525	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152525	东乌珠穆沁旗	1525	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152526	西乌珠穆沁旗	1525	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152527	太仆寺旗	1525	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152528	镶黄旗	1525	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152529	正镶白旗	1525	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152530	正蓝旗	1525	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152531	多伦县	1525	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152571	乌拉盖管理区管委会	1525	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152921	阿拉善左旗	1529	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152922	阿拉善右旗	1529	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152923	额济纳旗	1529	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	152971	内蒙古阿拉善高新技术产业开发区	1529	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210102	和平区	2101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210103	沈河区	2101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210104	大东区	2101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210105	皇姑区	2101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210106	铁西区	2101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210111	苏家屯区	2101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210112	浑南区	2101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210113	沈北新区	2101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210114	于洪区	2101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210115	辽中区	2101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210123	康平县	2101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210124	法库县	2101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210181	新民市	2101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210202	中山区	2102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210203	西岗区	2102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210204	沙河口区	2102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210211	甘井子区	2102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210212	旅顺口区	2102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210213	金州区	2102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210214	普兰店区	2102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210224	长海县	2102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210281	瓦房店市	2102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210283	庄河市	2102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210302	铁东区	2103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210303	铁西区	2103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210304	立山区	2103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210311	千山区	2103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210321	台安县	2103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210323	岫岩满族自治县	2103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210381	海城市	2103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210402	新抚区	2104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210403	东洲区	2104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210404	望花区	2104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210411	顺城区	2104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210421	抚顺县	2104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210422	新宾满族自治县	2104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210423	清原满族自治县	2104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210502	平山区	2105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210503	溪湖区	2105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210504	明山区	2105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210505	南芬区	2105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210521	本溪满族自治县	2105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210522	桓仁满族自治县	2105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210602	元宝区	2106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210603	振兴区	2106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210604	振安区	2106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210624	宽甸满族自治县	2106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210681	东港市	2106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210682	凤城市	2106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210702	古塔区	2107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210703	凌河区	2107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210711	太和区	2107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210726	黑山县	2107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210727	义县	2107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210781	凌海市	2107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210782	北镇市	2107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210802	站前区	2108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210803	西市区	2108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210804	鲅鱼圈区	2108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210811	老边区	2108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210881	盖州市	2108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210882	大石桥市	2108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210902	海州区	2109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210903	新邱区	2109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210904	太平区	2109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210905	清河门区	2109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210911	细河区	2109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210921	阜新蒙古族自治县	2109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	210922	彰武县	2109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211002	白塔区	2110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211003	文圣区	2110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211004	宏伟区	2110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211005	弓长岭区	2110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211011	太子河区	2110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211021	辽阳县	2110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211081	灯塔市	2110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211102	双台子区	2111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211103	兴隆台区	2111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211104	大洼区	2111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211122	盘山县	2111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211202	银州区	2112	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211204	清河区	2112	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211221	铁岭县	2112	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211223	西丰县	2112	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211224	昌图县	2112	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211281	调兵山市	2112	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211282	开原市	2112	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211302	双塔区	2113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211303	龙城区	2113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211321	朝阳县	2113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211322	建平县	2113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211324	喀喇沁左翼蒙古族自治县	2113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211381	北票市	2113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211382	凌源市	2113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211402	连山区	2114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211403	龙港区	2114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211404	南票区	2114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211421	绥中县	2114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211422	建昌县	2114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	211481	兴城市	2114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220102	南关区	2201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220103	宽城区	2201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220104	朝阳区	2201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220105	二道区	2201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220106	绿园区	2201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220112	双阳区	2201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220113	九台区	2201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220122	农安县	2201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220171	长春经济技术开发区	2201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220172	长春净月高新技术产业开发区	2201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220173	长春高新技术产业开发区	2201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220174	长春汽车经济技术开发区	2201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220182	榆树市	2201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220183	德惠市	2201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220184	公主岭市	2201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220202	昌邑区	2202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220203	龙潭区	2202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220204	船营区	2202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220211	丰满区	2202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220221	永吉县	2202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220271	吉林经济开发区	2202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220272	吉林高新技术产业开发区	2202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220273	吉林中国新加坡食品区	2202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220281	蛟河市	2202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220282	桦甸市	2202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220283	舒兰市	2202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220284	磐石市	2202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220302	铁西区	2203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220303	铁东区	2203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220322	梨树县	2203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220323	伊通满族自治县	2203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220382	双辽市	2203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220402	龙山区	2204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220403	西安区	2204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220421	东丰县	2204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220422	东辽县	2204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220502	东昌区	2205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220503	二道江区	2205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220521	通化县	2205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220523	辉南县	2205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220524	柳河县	2205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220581	梅河口市	2205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220582	集安市	2205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220602	浑江区	2206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220605	江源区	2206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220621	抚松县	2206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220622	靖宇县	2206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220623	长白朝鲜族自治县	2206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220681	临江市	2206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220702	宁江区	2207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220721	前郭尔罗斯蒙古族自治县	2207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220722	长岭县	2207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220723	乾安县	2207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220771	吉林松原经济开发区	2207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220781	扶余市	2207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220802	洮北区	2208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220821	镇赉县	2208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220822	通榆县	2208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220871	吉林白城经济开发区	2208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220881	洮南市	2208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	220882	大安市	2208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	222401	延吉市	2224	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	222402	图们市	2224	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	222403	敦化市	2224	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	222404	珲春市	2224	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	222405	龙井市	2224	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	222406	和龙市	2224	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	222424	汪清县	2224	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	222426	安图县	2224	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230102	道里区	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230103	南岗区	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230104	道外区	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230108	平房区	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230109	松北区	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230110	香坊区	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230111	呼兰区	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230112	阿城区	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230113	双城区	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230123	依兰县	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230124	方正县	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230125	宾县	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230126	巴彦县	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230127	木兰县	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230128	通河县	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230129	延寿县	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230183	尚志市	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230184	五常市	2301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230202	龙沙区	2302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230203	建华区	2302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230204	铁锋区	2302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230205	昂昂溪区	2302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230206	富拉尔基区	2302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230207	碾子山区	2302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230208	梅里斯达斡尔族区	2302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230221	龙江县	2302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230223	依安县	2302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230224	泰来县	2302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230225	甘南县	2302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230227	富裕县	2302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230229	克山县	2302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230230	克东县	2302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230231	拜泉县	2302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230281	讷河市	2302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230302	鸡冠区	2303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230303	恒山区	2303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230304	滴道区	2303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230305	梨树区	2303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230306	城子河区	2303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230307	麻山区	2303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230321	鸡东县	2303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230381	虎林市	2303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230382	密山市	2303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230402	向阳区	2304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230403	工农区	2304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230404	南山区	2304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230405	兴安区	2304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230406	东山区	2304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230407	兴山区	2304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230421	萝北县	2304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230422	绥滨县	2304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230502	尖山区	2305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230503	岭东区	2305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230505	四方台区	2305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230506	宝山区	2305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230521	集贤县	2305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230522	友谊县	2305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230523	宝清县	2305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230524	饶河县	2305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230602	萨尔图区	2306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230603	龙凤区	2306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230604	让胡路区	2306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230605	红岗区	2306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230606	大同区	2306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230621	肇州县	2306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230622	肇源县	2306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230623	林甸县	2306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230624	杜尔伯特蒙古族自治县	2306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230671	大庆高新技术产业开发区	2306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230717	伊美区	2307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230718	乌翠区	2307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230719	友好区	2307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230722	嘉荫县	2307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230723	汤旺县	2307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230724	丰林县	2307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230725	大箐山县	2307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230726	南岔县	2307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230751	金林区	2307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230781	铁力市	2307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230803	向阳区	2308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230804	前进区	2308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230805	东风区	2308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230811	郊区	2308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230822	桦南县	2308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230826	桦川县	2308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230828	汤原县	2308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230881	同江市	2308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230882	富锦市	2308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230883	抚远市	2308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230902	新兴区	2309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230903	桃山区	2309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230904	茄子河区	2309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	230921	勃利县	2309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231002	东安区	2310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231003	阳明区	2310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231004	爱民区	2310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231005	西安区	2310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231025	林口县	2310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231081	绥芬河市	2310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231083	海林市	2310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231084	宁安市	2310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231085	穆棱市	2310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231086	东宁市	2310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231102	爱辉区	2311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231123	逊克县	2311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231124	孙吴县	2311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231181	北安市	2311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231182	五大连池市	2311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231183	嫩江市	2311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231202	北林区	2312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231221	望奎县	2312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231222	兰西县	2312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231223	青冈县	2312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231224	庆安县	2312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231225	明水县	2312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231226	绥棱县	2312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231281	安达市	2312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231282	肇东市	2312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	231283	海伦市	2312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	232701	漠河市	2327	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	232721	呼玛县	2327	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	232722	塔河县	2327	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	232761	加格达奇区	2327	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	232762	松岭区	2327	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	232763	新林区	2327	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	232764	呼中区	2327	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	310101	黄浦区	3101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	310104	徐汇区	3101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	310105	长宁区	3101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	310106	静安区	3101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	310107	普陀区	3101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	310109	虹口区	3101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	310110	杨浦区	3101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	310112	闵行区	3101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	310113	宝山区	3101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	310114	嘉定区	3101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	310115	浦东新区	3101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	310116	金山区	3101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	310117	松江区	3101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	310118	青浦区	3101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	310120	奉贤区	3101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	310151	崇明区	3101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320102	玄武区	3201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320104	秦淮区	3201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320105	建邺区	3201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320106	鼓楼区	3201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320111	浦口区	3201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320113	栖霞区	3201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320114	雨花台区	3201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320115	江宁区	3201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320116	六合区	3201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320117	溧水区	3201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320118	高淳区	3201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320205	锡山区	3202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320206	惠山区	3202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320211	滨湖区	3202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320213	梁溪区	3202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320214	新吴区	3202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320281	江阴市	3202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320282	宜兴市	3202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320302	鼓楼区	3203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320303	云龙区	3203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320305	贾汪区	3203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320311	泉山区	3203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320312	铜山区	3203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320321	丰县	3203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320322	沛县	3203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320324	睢宁县	3203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320371	徐州经济技术开发区	3203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320381	新沂市	3203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320382	邳州市	3203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320402	天宁区	3204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320404	钟楼区	3204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320411	新北区	3204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320412	武进区	3204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320413	金坛区	3204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320481	溧阳市	3204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320505	虎丘区	3205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320506	吴中区	3205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320507	相城区	3205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320508	姑苏区	3205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320509	吴江区	3205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320576	苏州工业园区	3205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320581	常熟市	3205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320582	张家港市	3205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320583	昆山市	3205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320585	太仓市	3205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320612	通州区	3206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320613	崇川区	3206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320614	海门区	3206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320623	如东县	3206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320671	南通经济技术开发区	3206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320681	启东市	3206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320682	如皋市	3206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320685	海安市	3206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320703	连云区	3207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320706	海州区	3207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320707	赣榆区	3207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320722	东海县	3207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320723	灌云县	3207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320724	灌南县	3207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320771	连云港经济技术开发区	3207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320803	淮安区	3208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320804	淮阴区	3208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320812	清江浦区	3208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320813	洪泽区	3208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320826	涟水县	3208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320830	盱眙县	3208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320831	金湖县	3208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320871	淮安经济技术开发区	3208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320902	亭湖区	3209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320903	盐都区	3209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320904	大丰区	3209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320921	响水县	3209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320922	滨海县	3209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320923	阜宁县	3209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320924	射阳县	3209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320925	建湖县	3209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320971	盐城经济技术开发区	3209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	320981	东台市	3209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321002	广陵区	3210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321003	邗江区	3210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321012	江都区	3210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321023	宝应县	3210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321071	扬州经济技术开发区	3210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321081	仪征市	3210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321084	高邮市	3210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321102	京口区	3211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321111	润州区	3211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321112	丹徒区	3211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321171	镇江新区	3211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321181	丹阳市	3211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321182	扬中市	3211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321183	句容市	3211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321202	海陵区	3212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321203	高港区	3212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321204	姜堰区	3212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321281	兴化市	3212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321282	靖江市	3212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321283	泰兴市	3212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321302	宿城区	3213	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321311	宿豫区	3213	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321322	沭阳县	3213	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321323	泗阳县	3213	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321324	泗洪县	3213	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	321371	宿迁经济技术开发区	3213	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330102	上城区	3301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330105	拱墅区	3301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330106	西湖区	3301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330108	滨江区	3301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330109	萧山区	3301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330110	余杭区	3301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330111	富阳区	3301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330112	临安区	3301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330113	临平区	3301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330114	钱塘区	3301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330122	桐庐县	3301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330127	淳安县	3301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330182	建德市	3301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330203	海曙区	3302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330205	江北区	3302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330206	北仑区	3302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330211	镇海区	3302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330212	鄞州区	3302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330213	奉化区	3302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330225	象山县	3302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330226	宁海县	3302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330281	余姚市	3302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330282	慈溪市	3302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330302	鹿城区	3303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330303	龙湾区	3303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330304	瓯海区	3303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330305	洞头区	3303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330324	永嘉县	3303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330326	平阳县	3303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330327	苍南县	3303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330328	文成县	3303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330329	泰顺县	3303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330381	瑞安市	3303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330382	乐清市	3303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330383	龙港市	3303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330402	南湖区	3304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330411	秀洲区	3304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330421	嘉善县	3304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330424	海盐县	3304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330481	海宁市	3304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330482	平湖市	3304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330483	桐乡市	3304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330502	吴兴区	3305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330503	南浔区	3305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330521	德清县	3305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330522	长兴县	3305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330523	安吉县	3305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330602	越城区	3306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330603	柯桥区	3306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330604	上虞区	3306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330624	新昌县	3306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330681	诸暨市	3306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330683	嵊州市	3306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330702	婺城区	3307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330703	金东区	3307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330723	武义县	3307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330726	浦江县	3307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330727	磐安县	3307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330781	兰溪市	3307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330782	义乌市	3307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330783	东阳市	3307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330784	永康市	3307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330802	柯城区	3308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330803	衢江区	3308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330822	常山县	3308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330824	开化县	3308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330825	龙游县	3308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330881	江山市	3308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330902	定海区	3309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330903	普陀区	3309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330921	岱山县	3309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	330922	嵊泗县	3309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331002	椒江区	3310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331003	黄岩区	3310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331004	路桥区	3310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331022	三门县	3310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331023	天台县	3310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331024	仙居县	3310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331081	温岭市	3310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331082	临海市	3310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331083	玉环市	3310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331102	莲都区	3311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331121	青田县	3311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331122	缙云县	3311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331123	遂昌县	3311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331124	松阳县	3311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331125	云和县	3311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331126	庆元县	3311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331127	景宁畲族自治县	3311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	331181	龙泉市	3311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340102	瑶海区	3401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340103	庐阳区	3401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340104	蜀山区	3401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340111	包河区	3401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340121	长丰县	3401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340122	肥东县	3401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340123	肥西县	3401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340124	庐江县	3401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340176	合肥高新技术产业开发区	3401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340177	合肥经济技术开发区	3401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340178	合肥新站高新技术产业开发区	3401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340181	巢湖市	3401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340202	镜湖区	3402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340207	鸠江区	3402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340209	弋江区	3402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340210	湾沚区	3402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340212	繁昌区	3402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340223	南陵县	3402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340271	芜湖经济技术开发区	3402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340272	安徽芜湖三山经济开发区	3402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340281	无为市	3402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340302	龙子湖区	3403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340303	蚌山区	3403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340304	禹会区	3403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340311	淮上区	3403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340321	怀远县	3403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340322	五河县	3403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340323	固镇县	3403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340371	蚌埠市高新技术开发区	3403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340372	蚌埠市经济开发区	3403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340402	大通区	3404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340403	田家庵区	3404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340404	谢家集区	3404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340405	八公山区	3404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340406	潘集区	3404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340421	凤台县	3404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340422	寿县	3404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340503	花山区	3405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340504	雨山区	3405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340506	博望区	3405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340521	当涂县	3405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340522	含山县	3405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340523	和县	3405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340602	杜集区	3406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340603	相山区	3406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340604	烈山区	3406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340621	濉溪县	3406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340705	铜官区	3407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340706	义安区	3407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340711	郊区	3407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340722	枞阳县	3407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340802	迎江区	3408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340803	大观区	3408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340811	宜秀区	3408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340822	怀宁县	3408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340825	太湖县	3408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340826	宿松县	3408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340827	望江县	3408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340828	岳西县	3408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340871	安徽安庆经济开发区	3408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340881	桐城市	3408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	340882	潜山市	3408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341002	屯溪区	3410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341003	黄山区	3410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341004	徽州区	3410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341021	歙县	3410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341022	休宁县	3410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341023	黟县	3410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341024	祁门县	3410	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341102	琅琊区	3411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341103	南谯区	3411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341122	来安县	3411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341124	全椒县	3411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341125	定远县	3411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341126	凤阳县	3411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341171	中新苏滁高新技术产业开发区	3411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341172	滁州经济技术开发区	3411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341181	天长市	3411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341182	明光市	3411	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341202	颍州区	3412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341203	颍东区	3412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341204	颍泉区	3412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341221	临泉县	3412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341222	太和县	3412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341225	阜南县	3412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341226	颍上县	3412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341271	阜阳合肥现代产业园区	3412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341272	阜阳经济技术开发区	3412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341282	界首市	3412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341302	埇桥区	3413	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341321	砀山县	3413	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341322	萧县	3413	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341323	灵璧县	3413	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341324	泗县	3413	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341371	宿州马鞍山现代产业园区	3413	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341372	宿州经济技术开发区	3413	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341502	金安区	3415	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341503	裕安区	3415	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341504	叶集区	3415	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341522	霍邱县	3415	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341523	舒城县	3415	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341524	金寨县	3415	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341525	霍山县	3415	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341602	谯城区	3416	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341621	涡阳县	3416	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341622	蒙城县	3416	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341623	利辛县	3416	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341702	贵池区	3417	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341721	东至县	3417	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341722	石台县	3417	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341723	青阳县	3417	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341802	宣州区	3418	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341821	郎溪县	3418	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341823	泾县	3418	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341824	绩溪县	3418	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341825	旌德县	3418	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341871	宣城市经济开发区	3418	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341881	宁国市	3418	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	341882	广德市	3418	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350102	鼓楼区	3501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350103	台江区	3501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350104	仓山区	3501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350105	马尾区	3501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350111	晋安区	3501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350112	长乐区	3501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350121	闽侯县	3501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350122	连江县	3501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350123	罗源县	3501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350124	闽清县	3501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350125	永泰县	3501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350128	平潭县	3501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350181	福清市	3501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350203	思明区	3502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350205	海沧区	3502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350206	湖里区	3502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350211	集美区	3502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350212	同安区	3502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350213	翔安区	3502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350302	城厢区	3503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350303	涵江区	3503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350304	荔城区	3503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350305	秀屿区	3503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350322	仙游县	3503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350404	三元区	3504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350405	沙县区	3504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350421	明溪县	3504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350423	清流县	3504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350424	宁化县	3504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350425	大田县	3504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350426	尤溪县	3504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350428	将乐县	3504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350429	泰宁县	3504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350430	建宁县	3504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350481	永安市	3504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350502	鲤城区	3505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350503	丰泽区	3505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350504	洛江区	3505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350505	泉港区	3505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350521	惠安县	3505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350524	安溪县	3505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350525	永春县	3505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350526	德化县	3505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350527	金门县	3505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350581	石狮市	3505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350582	晋江市	3505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350583	南安市	3505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350602	芗城区	3506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350603	龙文区	3506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350604	龙海区	3506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350605	长泰区	3506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350622	云霄县	3506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350623	漳浦县	3506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350624	诏安县	3506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350626	东山县	3506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350627	南靖县	3506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350628	平和县	3506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350629	华安县	3506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350702	延平区	3507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350703	建阳区	3507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350721	顺昌县	3507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350722	浦城县	3507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350723	光泽县	3507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350724	松溪县	3507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350725	政和县	3507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350781	邵武市	3507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350782	武夷山市	3507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350783	建瓯市	3507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350802	新罗区	3508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350803	永定区	3508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350821	长汀县	3508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350823	上杭县	3508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350824	武平县	3508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350825	连城县	3508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350881	漳平市	3508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350902	蕉城区	3509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350921	霞浦县	3509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350922	古田县	3509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350923	屏南县	3509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350924	寿宁县	3509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350925	周宁县	3509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350926	柘荣县	3509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350981	福安市	3509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	350982	福鼎市	3509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360102	东湖区	3601	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360103	西湖区	3601	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360104	青云谱区	3601	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360111	青山湖区	3601	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360112	新建区	3601	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360113	红谷滩区	3601	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360121	南昌县	3601	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360123	安义县	3601	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360124	进贤县	3601	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360202	昌江区	3602	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360203	珠山区	3602	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360222	浮梁县	3602	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360281	乐平市	3602	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360302	安源区	3603	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360313	湘东区	3603	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360321	莲花县	3603	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360322	上栗县	3603	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360323	芦溪县	3603	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360402	濂溪区	3604	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360403	浔阳区	3604	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360404	柴桑区	3604	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360423	武宁县	3604	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360424	修水县	3604	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360425	永修县	3604	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360426	德安县	3604	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360428	都昌县	3604	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360429	湖口县	3604	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360430	彭泽县	3604	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360481	瑞昌市	3604	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360482	共青城市	3604	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360483	庐山市	3604	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360502	渝水区	3605	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360521	分宜县	3605	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360602	月湖区	3606	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360603	余江区	3606	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360681	贵溪市	3606	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360702	章贡区	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360703	南康区	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360704	赣县区	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360722	信丰县	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360723	大余县	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360724	上犹县	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360725	崇义县	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360726	安远县	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360728	定南县	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360729	全南县	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360730	宁都县	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360731	于都县	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360732	兴国县	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360733	会昌县	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360734	寻乌县	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360735	石城县	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360781	瑞金市	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360783	龙南市	3607	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360802	吉州区	3608	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360803	青原区	3608	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360821	吉安县	3608	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360822	吉水县	3608	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360823	峡江县	3608	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360824	新干县	3608	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360825	永丰县	3608	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360826	泰和县	3608	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360827	遂川县	3608	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360828	万安县	3608	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360829	安福县	3608	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360830	永新县	3608	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360881	井冈山市	3608	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360902	袁州区	3609	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360921	奉新县	3609	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360922	万载县	3609	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360923	上高县	3609	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360924	宜丰县	3609	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360925	靖安县	3609	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360926	铜鼓县	3609	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360981	丰城市	3609	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360982	樟树市	3609	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	360983	高安市	3609	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361002	临川区	3610	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361003	东乡区	3610	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361021	南城县	3610	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361022	黎川县	3610	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361023	南丰县	3610	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361024	崇仁县	3610	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361025	乐安县	3610	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361026	宜黄县	3610	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361027	金溪县	3610	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361028	资溪县	3610	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361030	广昌县	3610	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361102	信州区	3611	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361103	广丰区	3611	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361104	广信区	3611	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361123	玉山县	3611	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361124	铅山县	3611	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361125	横峰县	3611	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361126	弋阳县	3611	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361127	余干县	3611	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361128	鄱阳县	3611	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361129	万年县	3611	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361130	婺源县	3611	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	361181	德兴市	3611	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370102	历下区	3701	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370103	市中区	3701	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370104	槐荫区	3701	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370105	天桥区	3701	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370112	历城区	3701	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370113	长清区	3701	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370114	章丘区	3701	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370115	济阳区	3701	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370116	莱芜区	3701	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370117	钢城区	3701	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370124	平阴县	3701	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370126	商河县	3701	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370176	济南高新技术产业开发区	3701	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370202	市南区	3702	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370203	市北区	3702	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370211	黄岛区	3702	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370212	崂山区	3702	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370213	李沧区	3702	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370214	城阳区	3702	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370215	即墨区	3702	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370281	胶州市	3702	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370283	平度市	3702	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370285	莱西市	3702	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370302	淄川区	3703	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370303	张店区	3703	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370304	博山区	3703	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370305	临淄区	3703	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370306	周村区	3703	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370321	桓台县	3703	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370322	高青县	3703	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370323	沂源县	3703	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370402	市中区	3704	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370403	薛城区	3704	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370404	峄城区	3704	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370405	台儿庄区	3704	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370406	山亭区	3704	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370481	滕州市	3704	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370502	东营区	3705	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370503	河口区	3705	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370505	垦利区	3705	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370522	利津县	3705	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370523	广饶县	3705	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370571	东营经济技术开发区	3705	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370572	东营港经济开发区	3705	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370602	芝罘区	3706	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370611	福山区	3706	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370612	牟平区	3706	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370613	莱山区	3706	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370614	蓬莱区	3706	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370671	烟台高新技术产业开发区	3706	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370676	烟台经济技术开发区	3706	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370681	龙口市	3706	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370682	莱阳市	3706	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370683	莱州市	3706	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370685	招远市	3706	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370686	栖霞市	3706	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370687	海阳市	3706	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370702	潍城区	3707	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370703	寒亭区	3707	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370704	坊子区	3707	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370705	奎文区	3707	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370724	临朐县	3707	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370725	昌乐县	3707	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370772	潍坊滨海经济技术开发区	3707	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370781	青州市	3707	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370782	诸城市	3707	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370783	寿光市	3707	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370784	安丘市	3707	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370785	高密市	3707	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370786	昌邑市	3707	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370811	任城区	3708	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370812	兖州区	3708	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370826	微山县	3708	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370827	鱼台县	3708	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370828	金乡县	3708	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370829	嘉祥县	3708	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370830	汶上县	3708	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370831	泗水县	3708	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370832	梁山县	3708	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370871	济宁高新技术产业开发区	3708	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370881	曲阜市	3708	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370883	邹城市	3708	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370902	泰山区	3709	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370911	岱岳区	3709	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370921	宁阳县	3709	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370923	东平县	3709	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370982	新泰市	3709	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	370983	肥城市	3709	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371002	环翠区	3710	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371003	文登区	3710	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371071	威海火炬高技术产业开发区	3710	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371072	威海经济技术开发区	3710	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371073	威海临港经济技术开发区	3710	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371082	荣成市	3710	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371083	乳山市	3710	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371102	东港区	3711	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371103	岚山区	3711	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371121	五莲县	3711	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371122	莒县	3711	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371171	日照经济技术开发区	3711	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371302	兰山区	3713	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371311	罗庄区	3713	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371312	河东区	3713	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371321	沂南县	3713	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371322	郯城县	3713	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371323	沂水县	3713	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371324	兰陵县	3713	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371325	费县	3713	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371326	平邑县	3713	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371327	莒南县	3713	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371328	蒙阴县	3713	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371329	临沭县	3713	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371371	临沂高新技术产业开发区	3713	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371402	德城区	3714	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371403	陵城区	3714	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371422	宁津县	3714	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371423	庆云县	3714	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371424	临邑县	3714	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371425	齐河县	3714	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371426	平原县	3714	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371427	夏津县	3714	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371428	武城县	3714	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371471	德州天衢新区	3714	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371481	乐陵市	3714	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371482	禹城市	3714	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371502	东昌府区	3715	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371503	茌平区	3715	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371521	阳谷县	3715	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371522	莘县	3715	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371524	东阿县	3715	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371525	冠县	3715	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371526	高唐县	3715	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371581	临清市	3715	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371602	滨城区	3716	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371603	沾化区	3716	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371621	惠民县	3716	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371622	阳信县	3716	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371623	无棣县	3716	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371625	博兴县	3716	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371681	邹平市	3716	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371702	牡丹区	3717	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371703	定陶区	3717	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371721	曹县	3717	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371722	单县	3717	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371723	成武县	3717	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371724	巨野县	3717	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371725	郓城县	3717	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371726	鄄城县	3717	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371728	东明县	3717	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371771	菏泽经济技术开发区	3717	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	371772	菏泽高新技术开发区	3717	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410102	中原区	4101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410103	二七区	4101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410104	管城回族区	4101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410105	金水区	4101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410106	上街区	4101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410108	惠济区	4101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410122	中牟县	4101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410171	郑州经济技术开发区	4101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410172	郑州高新技术产业开发区	4101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410173	郑州航空港经济综合实验区	4101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410181	巩义市	4101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410182	荥阳市	4101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410183	新密市	4101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410184	新郑市	4101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410185	登封市	4101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410202	龙亭区	4102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410203	顺河回族区	4102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410204	鼓楼区	4102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410205	禹王台区	4102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410212	祥符区	4102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410221	杞县	4102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410222	通许县	4102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410223	尉氏县	4102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410225	兰考县	4102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410302	老城区	4103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410303	西工区	4103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410304	瀍河回族区	4103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410305	涧西区	4103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410307	偃师区	4103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410308	孟津区	4103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410311	洛龙区	4103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410323	新安县	4103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410324	栾川县	4103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410325	嵩县	4103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410326	汝阳县	4103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410327	宜阳县	4103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410328	洛宁县	4103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410329	伊川县	4103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410371	洛阳高新技术产业开发区	4103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410402	新华区	4104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410403	卫东区	4104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410404	石龙区	4104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410411	湛河区	4104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410421	宝丰县	4104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410422	叶县	4104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410423	鲁山县	4104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410425	郏县	4104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410471	平顶山高新技术产业开发区	4104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410472	平顶山市城乡一体化示范区	4104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410481	舞钢市	4104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410482	汝州市	4104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410502	文峰区	4105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410503	北关区	4105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410505	殷都区	4105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410506	龙安区	4105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410522	安阳县	4105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410523	汤阴县	4105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410526	滑县	4105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410527	内黄县	4105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410571	安阳高新技术产业开发区	4105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410581	林州市	4105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410602	鹤山区	4106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410603	山城区	4106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410611	淇滨区	4106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410621	浚县	4106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410622	淇县	4106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410671	鹤壁经济技术开发区	4106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410702	红旗区	4107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410703	卫滨区	4107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410704	凤泉区	4107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410711	牧野区	4107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410721	新乡县	4107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410724	获嘉县	4107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410725	原阳县	4107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410726	延津县	4107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410727	封丘县	4107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410771	新乡高新技术产业开发区	4107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410772	新乡经济技术开发区	4107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410773	新乡市平原城乡一体化示范区	4107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410781	卫辉市	4107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410782	辉县市	4107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410783	长垣市	4107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410802	解放区	4108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410803	中站区	4108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410804	马村区	4108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410811	山阳区	4108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410821	修武县	4108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410822	博爱县	4108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410823	武陟县	4108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410825	温县	4108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410871	焦作城乡一体化示范区	4108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410882	沁阳市	4108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410883	孟州市	4108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410902	华龙区	4109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410922	清丰县	4109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410923	南乐县	4109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410926	范县	4109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410927	台前县	4109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410928	濮阳县	4109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410971	河南濮阳工业园区	4109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	410972	濮阳经济技术开发区	4109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411002	魏都区	4110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411003	建安区	4110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411024	鄢陵县	4110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411025	襄城县	4110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411071	许昌经济技术开发区	4110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411081	禹州市	4110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411082	长葛市	4110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411102	源汇区	4111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411103	郾城区	4111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411104	召陵区	4111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411121	舞阳县	4111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411122	临颍县	4111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411171	漯河经济技术开发区	4111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411202	湖滨区	4112	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411203	陕州区	4112	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411221	渑池县	4112	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411224	卢氏县	4112	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411271	河南三门峡经济开发区	4112	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411281	义马市	4112	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411282	灵宝市	4112	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411302	宛城区	4113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411303	卧龙区	4113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411321	南召县	4113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411322	方城县	4113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411323	西峡县	4113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411324	镇平县	4113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411325	内乡县	4113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411326	淅川县	4113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411327	社旗县	4113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411328	唐河县	4113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411329	新野县	4113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411330	桐柏县	4113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411371	南阳高新技术产业开发区	4113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411372	南阳市城乡一体化示范区	4113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411381	邓州市	4113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411402	梁园区	4114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411403	睢阳区	4114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411421	民权县	4114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411422	睢县	4114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411423	宁陵县	4114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411424	柘城县	4114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411425	虞城县	4114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411426	夏邑县	4114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411471	豫东综合物流产业聚集区	4114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411472	河南商丘经济开发区	4114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411481	永城市	4114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411502	浉河区	4115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411503	平桥区	4115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411521	罗山县	4115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411522	光山县	4115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411523	新县	4115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411524	商城县	4115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411525	固始县	4115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411526	潢川县	4115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411527	淮滨县	4115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411528	息县	4115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411571	信阳高新技术产业开发区	4115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411602	川汇区	4116	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411603	淮阳区	4116	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411621	扶沟县	4116	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411622	西华县	4116	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411623	商水县	4116	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411624	沈丘县	4116	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411625	郸城县	4116	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411627	太康县	4116	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411628	鹿邑县	4116	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411671	周口临港开发区	4116	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411681	项城市	4116	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411702	驿城区	4117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411721	西平县	4117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411722	上蔡县	4117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411723	平舆县	4117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411724	正阳县	4117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411725	确山县	4117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411726	泌阳县	4117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411727	汝南县	4117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411728	遂平县	4117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411729	新蔡县	4117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	411771	河南驻马店经济开发区	4117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	419001	济源市	4190	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420102	江岸区	4201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420103	江汉区	4201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420104	硚口区	4201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420105	汉阳区	4201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420106	武昌区	4201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420107	青山区	4201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420111	洪山区	4201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420112	东西湖区	4201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420113	汉南区	4201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420114	蔡甸区	4201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420115	江夏区	4201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420116	黄陂区	4201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420117	新洲区	4201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420202	黄石港区	4202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420203	西塞山区	4202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420204	下陆区	4202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420205	铁山区	4202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420222	阳新县	4202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420281	大冶市	4202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420302	茅箭区	4203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420303	张湾区	4203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420304	郧阳区	4203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420322	郧西县	4203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420323	竹山县	4203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420324	竹溪县	4203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420325	房县	4203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420381	丹江口市	4203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420502	西陵区	4205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420503	伍家岗区	4205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420504	点军区	4205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420505	猇亭区	4205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420506	夷陵区	4205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420525	远安县	4205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420526	兴山县	4205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420527	秭归县	4205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420528	长阳土家族自治县	4205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420529	五峰土家族自治县	4205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420581	宜都市	4205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420582	当阳市	4205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420583	枝江市	4205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420602	襄城区	4206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420606	樊城区	4206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420607	襄州区	4206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420624	南漳县	4206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420625	谷城县	4206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420626	保康县	4206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420682	老河口市	4206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420683	枣阳市	4206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420684	宜城市	4206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420702	梁子湖区	4207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420703	华容区	4207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420704	鄂城区	4207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420802	东宝区	4208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420804	掇刀区	4208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420822	沙洋县	4208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420881	钟祥市	4208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420882	京山市	4208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420902	孝南区	4209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420921	孝昌县	4209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420922	大悟县	4209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420923	云梦县	4209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420981	应城市	4209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420982	安陆市	4209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	420984	汉川市	4209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421002	沙市区	4210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421003	荆州区	4210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421022	公安县	4210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421024	江陵县	4210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421071	荆州经济技术开发区	4210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421081	石首市	4210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421083	洪湖市	4210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421087	松滋市	4210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421088	监利市	4210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421102	黄州区	4211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421121	团风县	4211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421122	红安县	4211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421123	罗田县	4211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421124	英山县	4211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421125	浠水县	4211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421126	蕲春县	4211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421127	黄梅县	4211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421171	龙感湖管理区	4211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421181	麻城市	4211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421182	武穴市	4211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421202	咸安区	4212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421221	嘉鱼县	4212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421222	通城县	4212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421223	崇阳县	4212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421224	通山县	4212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421281	赤壁市	4212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421303	曾都区	4213	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421321	随县	4213	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	421381	广水市	4213	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	422801	恩施市	4228	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	422802	利川市	4228	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	422822	建始县	4228	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	422823	巴东县	4228	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	422825	宣恩县	4228	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	422826	咸丰县	4228	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	422827	来凤县	4228	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	422828	鹤峰县	4228	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	429004	仙桃市	4290	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	429005	潜江市	4290	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	429006	天门市	4290	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	429021	神农架林区	4290	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430102	芙蓉区	4301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430103	天心区	4301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430104	岳麓区	4301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430105	开福区	4301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430111	雨花区	4301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430112	望城区	4301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430121	长沙县	4301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430181	浏阳市	4301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430182	宁乡市	4301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430202	荷塘区	4302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430203	芦淞区	4302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430204	石峰区	4302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430211	天元区	4302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430212	渌口区	4302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430223	攸县	4302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430224	茶陵县	4302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430225	炎陵县	4302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430281	醴陵市	4302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430302	雨湖区	4303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430304	岳塘区	4303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430321	湘潭县	4303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430371	湖南湘潭高新技术产业园区	4303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430372	湘潭昭山示范区	4303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430373	湘潭九华示范区	4303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430381	湘乡市	4303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430382	韶山市	4303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430405	珠晖区	4304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430406	雁峰区	4304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430407	石鼓区	4304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430408	蒸湘区	4304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430412	南岳区	4304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430421	衡阳县	4304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430422	衡南县	4304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430423	衡山县	4304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430424	衡东县	4304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430426	祁东县	4304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430473	湖南衡阳松木经济开发区	4304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430476	湖南衡阳高新技术产业园区	4304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430481	耒阳市	4304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430482	常宁市	4304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430502	双清区	4305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430503	大祥区	4305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430511	北塔区	4305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430522	新邵县	4305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430523	邵阳县	4305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430524	隆回县	4305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430525	洞口县	4305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430527	绥宁县	4305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430528	新宁县	4305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430529	城步苗族自治县	4305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430581	武冈市	4305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430582	邵东市	4305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430602	岳阳楼区	4306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430603	云溪区	4306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430611	君山区	4306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430621	岳阳县	4306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430623	华容县	4306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430624	湘阴县	4306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430626	平江县	4306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430671	岳阳市屈原管理区	4306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430681	汨罗市	4306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430682	临湘市	4306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430702	武陵区	4307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430703	鼎城区	4307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430721	安乡县	4307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430722	汉寿县	4307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430723	澧县	4307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430724	临澧县	4307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430725	桃源县	4307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430726	石门县	4307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430771	常德市西洞庭管理区	4307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430781	津市市	4307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430802	永定区	4308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430811	武陵源区	4308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430821	慈利县	4308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430822	桑植县	4308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430902	资阳区	4309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430903	赫山区	4309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430921	南县	4309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430922	桃江县	4309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430923	安化县	4309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430971	益阳市大通湖管理区	4309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430972	湖南益阳高新技术产业园区	4309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	430981	沅江市	4309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431002	北湖区	4310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431003	苏仙区	4310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431021	桂阳县	4310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431022	宜章县	4310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431023	永兴县	4310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431024	嘉禾县	4310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431025	临武县	4310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431026	汝城县	4310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431027	桂东县	4310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431028	安仁县	4310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431081	资兴市	4310	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431102	零陵区	4311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431103	冷水滩区	4311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431122	东安县	4311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431123	双牌县	4311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431124	道县	4311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431125	江永县	4311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431126	宁远县	4311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431127	蓝山县	4311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431128	新田县	4311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431129	江华瑶族自治县	4311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431171	永州经济技术开发区	4311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431173	永州市回龙圩管理区	4311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431181	祁阳市	4311	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431202	鹤城区	4312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431221	中方县	4312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431222	沅陵县	4312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431223	辰溪县	4312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431224	溆浦县	4312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431225	会同县	4312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431226	麻阳苗族自治县	4312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431227	新晃侗族自治县	4312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431228	芷江侗族自治县	4312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431229	靖州苗族侗族自治县	4312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431230	通道侗族自治县	4312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431271	怀化市洪江管理区	4312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431281	洪江市	4312	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431302	娄星区	4313	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431321	双峰县	4313	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431322	新化县	4313	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431381	冷水江市	4313	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	431382	涟源市	4313	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	433101	吉首市	4331	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	433122	泸溪县	4331	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	433123	凤凰县	4331	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	433124	花垣县	4331	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	433125	保靖县	4331	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	433126	古丈县	4331	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	433127	永顺县	4331	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	433130	龙山县	4331	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440103	荔湾区	4401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440104	越秀区	4401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440105	海珠区	4401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440106	天河区	4401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440111	白云区	4401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440112	黄埔区	4401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440113	番禺区	4401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440114	花都区	4401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440115	南沙区	4401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440117	从化区	4401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440118	增城区	4401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440203	武江区	4402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440204	浈江区	4402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440205	曲江区	4402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440222	始兴县	4402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440224	仁化县	4402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440229	翁源县	4402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440232	乳源瑶族自治县	4402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440233	新丰县	4402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440281	乐昌市	4402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440282	南雄市	4402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440303	罗湖区	4403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440304	福田区	4403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440305	南山区	4403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440306	宝安区	4403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440307	龙岗区	4403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440308	盐田区	4403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440309	龙华区	4403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440310	坪山区	4403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440311	光明区	4403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440402	香洲区	4404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440403	斗门区	4404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440404	金湾区	4404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440507	龙湖区	4405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440511	金平区	4405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440512	濠江区	4405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440513	潮阳区	4405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440514	潮南区	4405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440515	澄海区	4405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440523	南澳县	4405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440604	禅城区	4406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440605	南海区	4406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440606	顺德区	4406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440607	三水区	4406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440608	高明区	4406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440703	蓬江区	4407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440704	江海区	4407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440705	新会区	4407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440781	台山市	4407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440783	开平市	4407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440784	鹤山市	4407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440785	恩平市	4407	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440802	赤坎区	4408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440803	霞山区	4408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440804	坡头区	4408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440811	麻章区	4408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440823	遂溪县	4408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440825	徐闻县	4408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440881	廉江市	4408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440882	雷州市	4408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440883	吴川市	4408	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440902	茂南区	4409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440904	电白区	4409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440981	高州市	4409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440982	化州市	4409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	440983	信宜市	4409	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441202	端州区	4412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441203	鼎湖区	4412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441204	高要区	4412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441223	广宁县	4412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441224	怀集县	4412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441225	封开县	4412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441226	德庆县	4412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441284	四会市	4412	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441302	惠城区	4413	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441303	惠阳区	4413	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441322	博罗县	4413	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441323	惠东县	4413	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441324	龙门县	4413	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441402	梅江区	4414	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441403	梅县区	4414	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441422	大埔县	4414	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441423	丰顺县	4414	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441424	五华县	4414	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441426	平远县	4414	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441427	蕉岭县	4414	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441481	兴宁市	4414	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441502	城区	4415	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441521	海丰县	4415	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441523	陆河县	4415	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441581	陆丰市	4415	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441602	源城区	4416	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441621	紫金县	4416	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441622	龙川县	4416	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441623	连平县	4416	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441624	和平县	4416	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441625	东源县	4416	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441702	江城区	4417	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441704	阳东区	4417	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441721	阳西县	4417	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441781	阳春市	4417	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441802	清城区	4418	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441803	清新区	4418	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441821	佛冈县	4418	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441823	阳山县	4418	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441825	连山壮族瑶族自治县	4418	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441826	连南瑶族自治县	4418	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441881	英德市	4418	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441882	连州市	4418	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	441900	东莞市	4419	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	442000	中山市	4420	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	445102	湘桥区	4451	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	445103	潮安区	4451	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	445122	饶平县	4451	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	445202	榕城区	4452	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	445203	揭东区	4452	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	445222	揭西县	4452	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	445224	惠来县	4452	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	445281	普宁市	4452	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	445302	云城区	4453	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	445303	云安区	4453	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	445321	新兴县	4453	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	445322	郁南县	4453	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	445381	罗定市	4453	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450102	兴宁区	4501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450103	青秀区	4501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450105	江南区	4501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450107	西乡塘区	4501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450108	良庆区	4501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450109	邕宁区	4501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450110	武鸣区	4501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450123	隆安县	4501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450124	马山县	4501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450125	上林县	4501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450126	宾阳县	4501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450181	横州市	4501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450202	城中区	4502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450203	鱼峰区	4502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450204	柳南区	4502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450205	柳北区	4502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450206	柳江区	4502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450222	柳城县	4502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450223	鹿寨县	4502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450224	融安县	4502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450225	融水苗族自治县	4502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450226	三江侗族自治县	4502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450302	秀峰区	4503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450303	叠彩区	4503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450304	象山区	4503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450305	七星区	4503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450311	雁山区	4503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450312	临桂区	4503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450321	阳朔县	4503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450323	灵川县	4503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450324	全州县	4503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450325	兴安县	4503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450326	永福县	4503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450327	灌阳县	4503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450328	龙胜各族自治县	4503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450329	资源县	4503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450330	平乐县	4503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450332	恭城瑶族自治县	4503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450381	荔浦市	4503	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450403	万秀区	4504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450405	长洲区	4504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450406	龙圩区	4504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450421	苍梧县	4504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450422	藤县	4504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450423	蒙山县	4504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450481	岑溪市	4504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450502	海城区	4505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450503	银海区	4505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450512	铁山港区	4505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450521	合浦县	4505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450602	港口区	4506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450603	防城区	4506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450621	上思县	4506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450681	东兴市	4506	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450702	钦南区	4507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450703	钦北区	4507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450721	灵山县	4507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450722	浦北县	4507	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450802	港北区	4508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450803	港南区	4508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450804	覃塘区	4508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450821	平南县	4508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450881	桂平市	4508	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450902	玉州区	4509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450903	福绵区	4509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450921	容县	4509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450922	陆川县	4509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450923	博白县	4509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450924	兴业县	4509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	450981	北流市	4509	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451002	右江区	4510	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451003	田阳区	4510	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451022	田东县	4510	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451024	德保县	4510	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451026	那坡县	4510	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451027	凌云县	4510	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451028	乐业县	4510	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451029	田林县	4510	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451030	西林县	4510	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451031	隆林各族自治县	4510	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451081	靖西市	4510	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451082	平果市	4510	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451102	八步区	4511	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451103	平桂区	4511	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451121	昭平县	4511	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451122	钟山县	4511	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451123	富川瑶族自治县	4511	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451202	金城江区	4512	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451203	宜州区	4512	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451221	南丹县	4512	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451222	天峨县	4512	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451223	凤山县	4512	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451224	东兰县	4512	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451225	罗城仫佬族自治县	4512	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451226	环江毛南族自治县	4512	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451227	巴马瑶族自治县	4512	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451228	都安瑶族自治县	4512	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451229	大化瑶族自治县	4512	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451302	兴宾区	4513	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451321	忻城县	4513	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451322	象州县	4513	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451323	武宣县	4513	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451324	金秀瑶族自治县	4513	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451381	合山市	4513	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451402	江州区	4514	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451421	扶绥县	4514	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451422	宁明县	4514	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451423	龙州县	4514	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451424	大新县	4514	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451425	天等县	4514	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	451481	凭祥市	4514	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	460105	秀英区	4601	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	460106	龙华区	4601	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	460107	琼山区	4601	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	460108	美兰区	4601	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	460202	海棠区	4602	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	460203	吉阳区	4602	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	460204	天涯区	4602	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	460205	崖州区	4602	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	460321	西沙群岛	4603	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	460322	南沙群岛	4603	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	460323	中沙群岛的岛礁及其海域	4603	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	460400	儋州市	4604	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	469001	五指山市	4690	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	469002	琼海市	4690	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	469005	文昌市	4690	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	469006	万宁市	4690	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	469007	东方市	4690	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	469021	定安县	4690	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	469022	屯昌县	4690	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	469023	澄迈县	4690	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	469024	临高县	4690	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	469025	白沙黎族自治县	4690	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	469026	昌江黎族自治县	4690	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	469027	乐东黎族自治县	4690	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	469028	陵水黎族自治县	4690	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	469029	保亭黎族苗族自治县	4690	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	469030	琼中黎族苗族自治县	4690	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500101	万州区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500102	涪陵区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500103	渝中区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500104	大渡口区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500105	江北区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500106	沙坪坝区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500107	九龙坡区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500108	南岸区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500109	北碚区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500110	綦江区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500111	大足区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500112	渝北区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500113	巴南区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500114	黔江区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500115	长寿区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500116	江津区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500117	合川区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500118	永川区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500119	南川区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500120	璧山区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500151	铜梁区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500152	潼南区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500153	荣昌区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500154	开州区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500155	梁平区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500156	武隆区	5001	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500229	城口县	5002	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500230	丰都县	5002	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500231	垫江县	5002	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500233	忠县	5002	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500235	云阳县	5002	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500236	奉节县	5002	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500237	巫山县	5002	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500238	巫溪县	5002	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500240	石柱土家族自治县	5002	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500241	秀山土家族苗族自治县	5002	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500242	酉阳土家族苗族自治县	5002	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	500243	彭水苗族土家族自治县	5002	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510104	锦江区	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510105	青羊区	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510106	金牛区	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510107	武侯区	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510108	成华区	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510112	龙泉驿区	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510113	青白江区	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510114	新都区	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510115	温江区	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510116	双流区	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510117	郫都区	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510118	新津区	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510121	金堂县	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510129	大邑县	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510131	蒲江县	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510181	都江堰市	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510182	彭州市	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510183	邛崃市	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510184	崇州市	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510185	简阳市	5101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510302	自流井区	5103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510303	贡井区	5103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510304	大安区	5103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510311	沿滩区	5103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510321	荣县	5103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510322	富顺县	5103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510402	东区	5104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510403	西区	5104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510411	仁和区	5104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510421	米易县	5104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510422	盐边县	5104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510502	江阳区	5105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510503	纳溪区	5105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510504	龙马潭区	5105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510521	泸县	5105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510522	合江县	5105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510524	叙永县	5105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510525	古蔺县	5105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510603	旌阳区	5106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510604	罗江区	5106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510623	中江县	5106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510681	广汉市	5106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510682	什邡市	5106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510683	绵竹市	5106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510703	涪城区	5107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510704	游仙区	5107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510705	安州区	5107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510722	三台县	5107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510723	盐亭县	5107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510725	梓潼县	5107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510726	北川羌族自治县	5107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510727	平武县	5107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510781	江油市	5107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510802	利州区	5108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510811	昭化区	5108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510812	朝天区	5108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510821	旺苍县	5108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510822	青川县	5108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510823	剑阁县	5108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510824	苍溪县	5108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510903	船山区	5109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510904	安居区	5109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510921	蓬溪县	5109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510923	大英县	5109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	510981	射洪市	5109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511002	市中区	5110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511011	东兴区	5110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511024	威远县	5110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511025	资中县	5110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511083	隆昌市	5110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511102	市中区	5111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511111	沙湾区	5111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511112	五通桥区	5111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511113	金口河区	5111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511123	犍为县	5111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511124	井研县	5111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511126	夹江县	5111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511129	沐川县	5111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511132	峨边彝族自治县	5111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511133	马边彝族自治县	5111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511181	峨眉山市	5111	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511302	顺庆区	5113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511303	高坪区	5113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511304	嘉陵区	5113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511321	南部县	5113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511322	营山县	5113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511323	蓬安县	5113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511324	仪陇县	5113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511325	西充县	5113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511381	阆中市	5113	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511402	东坡区	5114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511403	彭山区	5114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511421	仁寿县	5114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511423	洪雅县	5114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511424	丹棱县	5114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511425	青神县	5114	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511502	翠屏区	5115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511503	南溪区	5115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511504	叙州区	5115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511523	江安县	5115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511524	长宁县	5115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511525	高县	5115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511526	珙县	5115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511527	筠连县	5115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511528	兴文县	5115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511529	屏山县	5115	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511602	广安区	5116	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511603	前锋区	5116	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511621	岳池县	5116	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511622	武胜县	5116	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511623	邻水县	5116	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511681	华蓥市	5116	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511702	通川区	5117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511703	达川区	5117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511722	宣汉县	5117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511723	开江县	5117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511724	大竹县	5117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511725	渠县	5117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511781	万源市	5117	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511802	雨城区	5118	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511803	名山区	5118	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511822	荥经县	5118	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511823	汉源县	5118	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511824	石棉县	5118	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511825	天全县	5118	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511826	芦山县	5118	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511827	宝兴县	5118	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511902	巴州区	5119	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511903	恩阳区	5119	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511921	通江县	5119	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511922	南江县	5119	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	511923	平昌县	5119	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	512002	雁江区	5120	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	512021	安岳县	5120	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	512022	乐至县	5120	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513201	马尔康市	5132	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513221	汶川县	5132	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513222	理县	5132	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513223	茂县	5132	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513224	松潘县	5132	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513225	九寨沟县	5132	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513226	金川县	5132	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513227	小金县	5132	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513228	黑水县	5132	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513230	壤塘县	5132	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513231	阿坝县	5132	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513232	若尔盖县	5132	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513233	红原县	5132	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513301	康定市	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513322	泸定县	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513323	丹巴县	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513324	九龙县	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513325	雅江县	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513326	道孚县	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513327	炉霍县	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513328	甘孜县	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513329	新龙县	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513330	德格县	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513331	白玉县	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513332	石渠县	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513333	色达县	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513334	理塘县	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513335	巴塘县	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513336	乡城县	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513337	稻城县	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513338	得荣县	5133	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513401	西昌市	5134	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513402	会理市	5134	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513422	木里藏族自治县	5134	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513423	盐源县	5134	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513424	德昌县	5134	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513426	会东县	5134	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513427	宁南县	5134	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513428	普格县	5134	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513429	布拖县	5134	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513430	金阳县	5134	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513431	昭觉县	5134	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513432	喜德县	5134	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513433	冕宁县	5134	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513434	越西县	5134	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513435	甘洛县	5134	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513436	美姑县	5134	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	513437	雷波县	5134	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520102	南明区	5201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520103	云岩区	5201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520111	花溪区	5201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520112	乌当区	5201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520113	白云区	5201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520115	观山湖区	5201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520121	开阳县	5201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520122	息烽县	5201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520123	修文县	5201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520181	清镇市	5201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520201	钟山区	5202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520203	六枝特区	5202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520204	水城区	5202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520281	盘州市	5202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520302	红花岗区	5203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520303	汇川区	5203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520304	播州区	5203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520322	桐梓县	5203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520323	绥阳县	5203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520324	正安县	5203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520325	道真仡佬族苗族自治县	5203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520326	务川仡佬族苗族自治县	5203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520327	凤冈县	5203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520328	湄潭县	5203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520329	余庆县	5203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520330	习水县	5203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520381	赤水市	5203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520382	仁怀市	5203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520402	西秀区	5204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520403	平坝区	5204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520422	普定县	5204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520423	镇宁布依族苗族自治县	5204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520424	关岭布依族苗族自治县	5204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520425	紫云苗族布依族自治县	5204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520502	七星关区	5205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520521	大方县	5205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520523	金沙县	5205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520524	织金县	5205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520525	纳雍县	5205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520526	威宁彝族回族苗族自治县	5205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520527	赫章县	5205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520581	黔西市	5205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520602	碧江区	5206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520603	万山区	5206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520621	江口县	5206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520622	玉屏侗族自治县	5206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520623	石阡县	5206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520624	思南县	5206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520625	印江土家族苗族自治县	5206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520626	德江县	5206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520627	沿河土家族自治县	5206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	520628	松桃苗族自治县	5206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522301	兴义市	5223	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522302	兴仁市	5223	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522323	普安县	5223	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522324	晴隆县	5223	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522325	贞丰县	5223	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522326	望谟县	5223	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522327	册亨县	5223	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522328	安龙县	5223	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522601	凯里市	5226	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522622	黄平县	5226	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522623	施秉县	5226	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522624	三穗县	5226	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522625	镇远县	5226	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522626	岑巩县	5226	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522627	天柱县	5226	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522628	锦屏县	5226	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522629	剑河县	5226	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522630	台江县	5226	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522631	黎平县	5226	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522632	榕江县	5226	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522633	从江县	5226	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522634	雷山县	5226	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522635	麻江县	5226	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522636	丹寨县	5226	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522701	都匀市	5227	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522702	福泉市	5227	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522722	荔波县	5227	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522723	贵定县	5227	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522725	瓮安县	5227	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522726	独山县	5227	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522727	平塘县	5227	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522728	罗甸县	5227	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522729	长顺县	5227	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522730	龙里县	5227	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522731	惠水县	5227	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	522732	三都水族自治县	5227	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530102	五华区	5301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530103	盘龙区	5301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530111	官渡区	5301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530112	西山区	5301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530113	东川区	5301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530114	呈贡区	5301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530115	晋宁区	5301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530124	富民县	5301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530125	宜良县	5301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530126	石林彝族自治县	5301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530127	嵩明县	5301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530128	禄劝彝族苗族自治县	5301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530129	寻甸回族彝族自治县	5301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530181	安宁市	5301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530302	麒麟区	5303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530303	沾益区	5303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530304	马龙区	5303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530322	陆良县	5303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530323	师宗县	5303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530324	罗平县	5303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530325	富源县	5303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530326	会泽县	5303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530381	宣威市	5303	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530402	红塔区	5304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530403	江川区	5304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530423	通海县	5304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530424	华宁县	5304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530425	易门县	5304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530426	峨山彝族自治县	5304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530427	新平彝族傣族自治县	5304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530428	元江哈尼族彝族傣族自治县	5304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530481	澄江市	5304	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530502	隆阳区	5305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530521	施甸县	5305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530523	龙陵县	5305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530524	昌宁县	5305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530581	腾冲市	5305	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530602	昭阳区	5306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530621	鲁甸县	5306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530622	巧家县	5306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530623	盐津县	5306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530624	大关县	5306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530625	永善县	5306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530626	绥江县	5306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530627	镇雄县	5306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530628	彝良县	5306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530629	威信县	5306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530681	水富市	5306	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530702	古城区	5307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530721	玉龙纳西族自治县	5307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530722	永胜县	5307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530723	华坪县	5307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530724	宁蒗彝族自治县	5307	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530802	思茅区	5308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530821	宁洱哈尼族彝族自治县	5308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530822	墨江哈尼族自治县	5308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530823	景东彝族自治县	5308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530824	景谷傣族彝族自治县	5308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530825	镇沅彝族哈尼族拉祜族自治县	5308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530826	江城哈尼族彝族自治县	5308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530827	孟连傣族拉祜族佤族自治县	5308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530828	澜沧拉祜族自治县	5308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530829	西盟佤族自治县	5308	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530902	临翔区	5309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530921	凤庆县	5309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530922	云县	5309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530923	永德县	5309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530924	镇康县	5309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530925	双江拉祜族佤族布朗族傣族自治县	5309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530926	耿马傣族佤族自治县	5309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	530927	沧源佤族自治县	5309	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532301	楚雄市	5323	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532302	禄丰市	5323	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532322	双柏县	5323	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532323	牟定县	5323	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532324	南华县	5323	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532325	姚安县	5323	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532326	大姚县	5323	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532327	永仁县	5323	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532328	元谋县	5323	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532329	武定县	5323	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532501	个旧市	5325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532502	开远市	5325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532503	蒙自市	5325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532504	弥勒市	5325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532523	屏边苗族自治县	5325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532524	建水县	5325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532525	石屏县	5325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532527	泸西县	5325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532528	元阳县	5325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532529	红河县	5325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532530	金平苗族瑶族傣族自治县	5325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532531	绿春县	5325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532532	河口瑶族自治县	5325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532601	文山市	5326	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532622	砚山县	5326	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532623	西畴县	5326	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532624	麻栗坡县	5326	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532625	马关县	5326	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532626	丘北县	5326	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532627	广南县	5326	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532628	富宁县	5326	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532801	景洪市	5328	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532822	勐海县	5328	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532823	勐腊县	5328	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532901	大理市	5329	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532922	漾濞彝族自治县	5329	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532923	祥云县	5329	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532924	宾川县	5329	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532925	弥渡县	5329	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532926	南涧彝族自治县	5329	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532927	巍山彝族回族自治县	5329	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532928	永平县	5329	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532929	云龙县	5329	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532930	洱源县	5329	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532931	剑川县	5329	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	532932	鹤庆县	5329	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	533102	瑞丽市	5331	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	533103	芒市	5331	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	533122	梁河县	5331	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	533123	盈江县	5331	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	533124	陇川县	5331	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	533301	泸水市	5333	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	533323	福贡县	5333	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	533324	贡山独龙族怒族自治县	5333	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	533325	兰坪白族普米族自治县	5333	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	533401	香格里拉市	5334	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	533422	德钦县	5334	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	533423	维西傈僳族自治县	5334	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540102	城关区	5401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540103	堆龙德庆区	5401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540104	达孜区	5401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540121	林周县	5401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540122	当雄县	5401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540123	尼木县	5401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540124	曲水县	5401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540127	墨竹工卡县	5401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540171	格尔木藏青工业园区	5401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540172	拉萨经济技术开发区	5401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540173	西藏文化旅游创意园区	5401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540174	达孜工业园区	5401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540202	桑珠孜区	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540221	南木林县	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540222	江孜县	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540223	定日县	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540224	萨迦县	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540225	拉孜县	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540226	昂仁县	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540227	谢通门县	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540228	白朗县	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540229	仁布县	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540230	康马县	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540231	定结县	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540232	仲巴县	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540233	亚东县	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540234	吉隆县	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540235	聂拉木县	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540236	萨嘎县	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540237	岗巴县	5402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540302	卡若区	5403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540321	江达县	5403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540322	贡觉县	5403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540323	类乌齐县	5403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540324	丁青县	5403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540325	察雅县	5403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540326	八宿县	5403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540327	左贡县	5403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540328	芒康县	5403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540329	洛隆县	5403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540330	边坝县	5403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540402	巴宜区	5404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540421	工布江达县	5404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540423	墨脱县	5404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540424	波密县	5404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540425	察隅县	5404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540426	朗县	5404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540481	米林市	5404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540502	乃东区	5405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540521	扎囊县	5405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540522	贡嘎县	5405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540523	桑日县	5405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540524	琼结县	5405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540525	曲松县	5405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540526	措美县	5405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540527	洛扎县	5405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540528	加查县	5405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540529	隆子县	5405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540531	浪卡子县	5405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540581	错那市	5405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540602	色尼区	5406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540621	嘉黎县	5406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540622	比如县	5406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540623	聂荣县	5406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540624	安多县	5406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540625	申扎县	5406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540626	索县	5406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540627	班戈县	5406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540628	巴青县	5406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540629	尼玛县	5406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	540630	双湖县	5406	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	542521	普兰县	5425	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	542522	札达县	5425	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	542523	噶尔县	5425	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	542524	日土县	5425	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	542525	革吉县	5425	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	542526	改则县	5425	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	542527	措勤县	5425	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610102	新城区	6101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610103	碑林区	6101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610104	莲湖区	6101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610111	灞桥区	6101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610112	未央区	6101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610113	雁塔区	6101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610114	阎良区	6101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610115	临潼区	6101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610116	长安区	6101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610117	高陵区	6101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610118	鄠邑区	6101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610122	蓝田县	6101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610124	周至县	6101	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610202	王益区	6102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610203	印台区	6102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610204	耀州区	6102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610222	宜君县	6102	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610302	渭滨区	6103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610303	金台区	6103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610304	陈仓区	6103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610305	凤翔区	6103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610323	岐山县	6103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610324	扶风县	6103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610326	眉县	6103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610327	陇县	6103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610328	千阳县	6103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610329	麟游县	6103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610330	凤县	6103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610331	太白县	6103	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610402	秦都区	6104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610403	杨陵区	6104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610404	渭城区	6104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610422	三原县	6104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610423	泾阳县	6104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610424	乾县	6104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610425	礼泉县	6104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610426	永寿县	6104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610428	长武县	6104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610429	旬邑县	6104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610430	淳化县	6104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610431	武功县	6104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610481	兴平市	6104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610482	彬州市	6104	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610502	临渭区	6105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610503	华州区	6105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610522	潼关县	6105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610523	大荔县	6105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610524	合阳县	6105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610525	澄城县	6105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610526	蒲城县	6105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610527	白水县	6105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610528	富平县	6105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610581	韩城市	6105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610582	华阴市	6105	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610602	宝塔区	6106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610603	安塞区	6106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610621	延长县	6106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610622	延川县	6106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610625	志丹县	6106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610626	吴起县	6106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610627	甘泉县	6106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610628	富县	6106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610629	洛川县	6106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610630	宜川县	6106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610631	黄龙县	6106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610632	黄陵县	6106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610681	子长市	6106	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610702	汉台区	6107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610703	南郑区	6107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610722	城固县	6107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610723	洋县	6107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610724	西乡县	6107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610725	勉县	6107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610726	宁强县	6107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610727	略阳县	6107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610728	镇巴县	6107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610729	留坝县	6107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610730	佛坪县	6107	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610802	榆阳区	6108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610803	横山区	6108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610822	府谷县	6108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610824	靖边县	6108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610825	定边县	6108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610826	绥德县	6108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610827	米脂县	6108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610828	佳县	6108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610829	吴堡县	6108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610830	清涧县	6108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610831	子洲县	6108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610881	神木市	6108	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610902	汉滨区	6109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610921	汉阴县	6109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610922	石泉县	6109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610923	宁陕县	6109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610924	紫阳县	6109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610925	岚皋县	6109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610926	平利县	6109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610927	镇坪县	6109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610929	白河县	6109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	610981	旬阳市	6109	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	611002	商州区	6110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	611021	洛南县	6110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	611022	丹凤县	6110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	611023	商南县	6110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	611024	山阳县	6110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	611025	镇安县	6110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	611026	柞水县	6110	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620102	城关区	6201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620103	七里河区	6201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620104	西固区	6201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620105	安宁区	6201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620111	红古区	6201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620121	永登县	6201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620122	皋兰县	6201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620123	榆中县	6201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620171	兰州新区	6201	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620201	嘉峪关市	6202	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620302	金川区	6203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620321	永昌县	6203	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620402	白银区	6204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620403	平川区	6204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620421	靖远县	6204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620422	会宁县	6204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620423	景泰县	6204	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620502	秦州区	6205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620503	麦积区	6205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620521	清水县	6205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620522	秦安县	6205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620523	甘谷县	6205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620524	武山县	6205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620525	张家川回族自治县	6205	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620602	凉州区	6206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620621	民勤县	6206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620622	古浪县	6206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620623	天祝藏族自治县	6206	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620702	甘州区	6207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620721	肃南裕固族自治县	6207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620722	民乐县	6207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620723	临泽县	6207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620724	高台县	6207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620725	山丹县	6207	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620802	崆峒区	6208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620821	泾川县	6208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620822	灵台县	6208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620823	崇信县	6208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620825	庄浪县	6208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620826	静宁县	6208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620881	华亭市	6208	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620902	肃州区	6209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620921	金塔县	6209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620922	瓜州县	6209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620923	肃北蒙古族自治县	6209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620924	阿克塞哈萨克族自治县	6209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620981	玉门市	6209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	620982	敦煌市	6209	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621002	西峰区	6210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621021	庆城县	6210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621022	环县	6210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621023	华池县	6210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621024	合水县	6210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621025	正宁县	6210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621026	宁县	6210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621027	镇原县	6210	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621102	安定区	6211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621121	通渭县	6211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621122	陇西县	6211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621123	渭源县	6211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621124	临洮县	6211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621125	漳县	6211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621126	岷县	6211	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621202	武都区	6212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621221	成县	6212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621222	文县	6212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621223	宕昌县	6212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621224	康县	6212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621225	西和县	6212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621226	礼县	6212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621227	徽县	6212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	621228	两当县	6212	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	622901	临夏市	6229	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	622921	临夏县	6229	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	622922	康乐县	6229	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	622923	永靖县	6229	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	622924	广河县	6229	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	622925	和政县	6229	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	622926	东乡族自治县	6229	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	622927	积石山保安族东乡族撒拉族自治县	6229	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	623001	合作市	6230	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	623021	临潭县	6230	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	623022	卓尼县	6230	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	623023	舟曲县	6230	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	623024	迭部县	6230	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	623025	玛曲县	6230	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	623026	碌曲县	6230	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	623027	夏河县	6230	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	630102	城东区	6301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	630103	城中区	6301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	630104	城西区	6301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	630105	城北区	6301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	630106	湟中区	6301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	630121	大通回族土族自治县	6301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	630123	湟源县	6301	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	630202	乐都区	6302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	630203	平安区	6302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	630222	民和回族土族自治县	6302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	630223	互助土族自治县	6302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	630224	化隆回族自治县	6302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	630225	循化撒拉族自治县	6302	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632221	门源回族自治县	6322	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632222	祁连县	6322	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632223	海晏县	6322	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632224	刚察县	6322	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632301	同仁市	6323	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632322	尖扎县	6323	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632323	泽库县	6323	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632324	河南蒙古族自治县	6323	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632521	共和县	6325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632522	同德县	6325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632523	贵德县	6325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632524	兴海县	6325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632525	贵南县	6325	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632621	玛沁县	6326	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632622	班玛县	6326	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632623	甘德县	6326	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632624	达日县	6326	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632625	久治县	6326	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632626	玛多县	6326	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632701	玉树市	6327	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632722	杂多县	6327	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632723	称多县	6327	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632724	治多县	6327	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632725	囊谦县	6327	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632726	曲麻莱县	6327	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632801	格尔木市	6328	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632802	德令哈市	6328	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632803	茫崖市	6328	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632821	乌兰县	6328	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632822	都兰县	6328	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632823	天峻县	6328	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	632857	大柴旦行政委员会	6328	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640104	兴庆区	6401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640105	西夏区	6401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640106	金凤区	6401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640121	永宁县	6401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640122	贺兰县	6401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640181	灵武市	6401	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640202	大武口区	6402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640205	惠农区	6402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640221	平罗县	6402	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640302	利通区	6403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640303	红寺堡区	6403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640323	盐池县	6403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640324	同心县	6403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640381	青铜峡市	6403	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640402	原州区	6404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640422	西吉县	6404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640423	隆德县	6404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640424	泾源县	6404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640425	彭阳县	6404	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640502	沙坡头区	6405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640521	中宁县	6405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	640522	海原县	6405	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650102	天山区	6501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650103	沙依巴克区	6501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650104	新市区	6501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650105	水磨沟区	6501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650106	头屯河区	6501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650107	达坂城区	6501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650109	米东区	6501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650121	乌鲁木齐县	6501	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650202	独山子区	6502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650203	克拉玛依区	6502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650204	白碱滩区	6502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650205	乌尔禾区	6502	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650402	高昌区	6504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650421	鄯善县	6504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650422	托克逊县	6504	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650502	伊州区	6505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650521	巴里坤哈萨克自治县	6505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	650522	伊吾县	6505	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652301	昌吉市	6523	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652302	阜康市	6523	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652323	呼图壁县	6523	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652324	玛纳斯县	6523	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652325	奇台县	6523	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652327	吉木萨尔县	6523	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652328	木垒哈萨克自治县	6523	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652701	博乐市	6527	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652702	阿拉山口市	6527	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652722	精河县	6527	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652723	温泉县	6527	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652801	库尔勒市	6528	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652822	轮台县	6528	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652823	尉犁县	6528	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652824	若羌县	6528	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652825	且末县	6528	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652826	焉耆回族自治县	6528	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652827	和静县	6528	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652828	和硕县	6528	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652829	博湖县	6528	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652901	阿克苏市	6529	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652902	库车市	6529	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652922	温宿县	6529	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652924	沙雅县	6529	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652925	新和县	6529	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652926	拜城县	6529	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652927	乌什县	6529	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652928	阿瓦提县	6529	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	652929	柯坪县	6529	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653001	阿图什市	6530	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653022	阿克陶县	6530	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653023	阿合奇县	6530	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653024	乌恰县	6530	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653101	喀什市	6531	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653121	疏附县	6531	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653122	疏勒县	6531	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653123	英吉沙县	6531	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653124	泽普县	6531	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653125	莎车县	6531	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653126	叶城县	6531	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653127	麦盖提县	6531	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653128	岳普湖县	6531	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653129	伽师县	6531	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653130	巴楚县	6531	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653131	塔什库尔干塔吉克自治县	6531	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653201	和田市	6532	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653221	和田县	6532	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653222	墨玉县	6532	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653223	皮山县	6532	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653224	洛浦县	6532	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653225	策勒县	6532	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653226	于田县	6532	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	653227	民丰县	6532	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654002	伊宁市	6540	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654003	奎屯市	6540	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654004	霍尔果斯市	6540	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654021	伊宁县	6540	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654022	察布查尔锡伯自治县	6540	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654023	霍城县	6540	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654024	巩留县	6540	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654025	新源县	6540	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654026	昭苏县	6540	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654027	特克斯县	6540	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654028	尼勒克县	6540	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654201	塔城市	6542	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654202	乌苏市	6542	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654203	沙湾市	6542	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654221	额敏县	6542	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654224	托里县	6542	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654225	裕民县	6542	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654226	和布克赛尔蒙古自治县	6542	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654301	阿勒泰市	6543	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654321	布尔津县	6543	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654322	富蕴县	6543	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654323	福海县	6543	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654324	哈巴河县	6543	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654325	青河县	6543	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	654326	吉木乃县	6543	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	659001	石河子市	6590	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	659002	阿拉尔市	6590	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	659003	图木舒克市	6590	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	659004	五家渠市	6590	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	659005	北屯市	6590	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	659006	铁门关市	6590	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	659007	双河市	6590	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	659008	可克达拉市	6590	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	659009	昆玉市	6590	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	659010	胡杨河市	6590	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	659011	新星市	6590	3
2024-11-22 08:42:41.108+00	2024-11-22 08:42:41.108+00	659012	白杨市	6590	3
\.


--
-- TOC entry 3902 (class 0 OID 316204)
-- Dependencies: 226
-- Data for Name: collectionCategories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."collectionCategories" (id, "createdAt", "updatedAt", name, color, sort) FROM stdin;
\.


--
-- TOC entry 3904 (class 0 OID 316211)
-- Dependencies: 228
-- Data for Name: collectionCategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."collectionCategory" ("createdAt", "updatedAt", "collectionName", "categoryId") FROM stdin;
\.


--
-- TOC entry 3905 (class 0 OID 316214)
-- Dependencies: 229
-- Data for Name: collections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.collections (key, name, title, inherit, hidden, options, description, sort) FROM stdin;
dkiy3rdaj0p	users	{{t("Users")}}	f	f	{"origin":"@nocobase/plugin-users","dumpRules":{"group":"user"},"sortable":"sort","model":"UserModel","createdBy":true,"updatedBy":true,"logging":true,"shared":true,"from":"db2cm"}	\N	1
wocsivd17h4	roles	{{t("Roles")}}	f	f	{"origin":"@nocobase/plugin-acl","dumpRules":"required","autoGenId":false,"model":"RoleModel","filterTargetKey":"name","sortable":true,"from":"db2cm"}	\N	2
b4qy9da9jew	transactions	Transactions	f	f	{"logging":true,"autoGenId":false,"createdAt":true,"createdBy":true,"updatedAt":true,"updatedBy":true,"template":"general","view":false,"schema":"public","titleField":"id","filterTargetKey":"id","unavailableActions":[],"simplePaginate":true}	\N	3
s8tqzphff7e	funds	Funds	f	f	{"logging":true,"autoGenId":false,"createdAt":true,"createdBy":true,"updatedAt":true,"updatedBy":true,"template":"general","view":false,"inherits":[],"simplePaginate":true,"schema":"public"}	\N	5
p2kkcq3rhn8	proposes	Proposes	f	f	{"logging":true,"autoGenId":false,"createdAt":true,"createdBy":true,"updatedAt":true,"updatedBy":true,"template":"general","view":false,"schema":"public"}	Các đề xuất xây dựng từ người dùng	6
zoq5dq360w9	projects	Dự án	f	f	{"logging":true,"autoGenId":false,"createdAt":true,"createdBy":true,"updatedAt":true,"updatedBy":true,"template":"general","view":false,"simplePaginate":true,"schema":"public","filterTargetKey":"id","unavailableActions":[]}	\N	4
z7a2ikzf0c6	kafka_topics	Kafka Topics	f	f	{"actions":[{"name":"create","type":"create","title":"Create Kafka Topic","viewName":"form"},{"name":"view","type":"view","title":"View","viewName":"form"},{"name":"edit","type":"edit","title":"Edit","viewName":"form"},{"name":"destroy","type":"destroy","title":"Delete"}],"schema":"public"}	\N	7
wnpw5lzo0se	kafka_configs	Kafka Configs	f	f	{"actions":[{"name":"create","type":"create","title":"Create Kafka Config","viewName":"form"},{"name":"view","type":"view","title":"View","viewName":"form"},{"name":"edit","type":"edit","title":"Edit","viewName":"form"},{"name":"destroy","type":"destroy","title":"Delete"}],"schema":"public"}	\N	8
\.


--
-- TOC entry 3906 (class 0 OID 316222)
-- Dependencies: 230
-- Data for Name: customRequests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."customRequests" ("createdAt", "updatedAt", key, options) FROM stdin;
2024-11-23 01:59:46.079+00	2024-11-23 01:59:46.079+00	1rbc3ev5u6t	\N
2024-11-23 06:53:08.205+00	2024-11-23 06:53:08.205+00	czjegm2lg25	\N
2024-11-23 07:22:48.57+00	2024-11-23 07:22:48.57+00	gp09x5o5sjp	\N
2024-11-25 07:06:57.65+00	2024-11-25 07:06:57.65+00	jcne950cz9g	\N
\.


--
-- TOC entry 3907 (class 0 OID 316227)
-- Dependencies: 231
-- Data for Name: customRequestsRoles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."customRequestsRoles" ("createdAt", "updatedAt", "customRequestKey", "roleName") FROM stdin;
\.


--
-- TOC entry 3908 (class 0 OID 316232)
-- Dependencies: 232
-- Data for Name: dataSources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSources" ("createdAt", "updatedAt", key, "displayName", type, options, enabled, fixed) FROM stdin;
2024-11-22 08:42:37.857+00	2024-11-22 08:42:37.857+00	main	{{t("Main")}}	main	{}	t	t
\.


--
-- TOC entry 3909 (class 0 OID 316239)
-- Dependencies: 233
-- Data for Name: dataSourcesCollections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesCollections" (key, name, options, "dataSourceKey") FROM stdin;
\.


--
-- TOC entry 3910 (class 0 OID 316244)
-- Dependencies: 234
-- Data for Name: dataSourcesFields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesFields" (key, name, "collectionName", interface, description, "uiSchema", "collectionKey", options, "dataSourceKey") FROM stdin;
\.


--
-- TOC entry 3911 (class 0 OID 316250)
-- Dependencies: 235
-- Data for Name: dataSourcesRoles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesRoles" (id, strategy, "dataSourceKey", "roleName") FROM stdin;
1nme47yrtqr	\N	main	root
xn2poxqjg9f	{"actions":["create","view","update","destroy","importXlsx","export"]}	main	admin
ll8p0bi0re5	{"actions":["view","update:own","destroy:own","create","importXlsx","export"]}	main	member
nlk3ipx1f9e	\N	main	guest
\.


--
-- TOC entry 3912 (class 0 OID 316255)
-- Dependencies: 236
-- Data for Name: dataSourcesRolesResources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesRolesResources" (id, "createdAt", "updatedAt", "dataSourceKey", name, "usingActionsConfig", "roleName") FROM stdin;
\.


--
-- TOC entry 3913 (class 0 OID 316261)
-- Dependencies: 237
-- Data for Name: dataSourcesRolesResourcesActions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesRolesResourcesActions" (id, "createdAt", "updatedAt", name, fields, "scopeId", "rolesResourceId") FROM stdin;
\.


--
-- TOC entry 3915 (class 0 OID 316268)
-- Dependencies: 239
-- Data for Name: dataSourcesRolesResourcesScopes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataSourcesRolesResourcesScopes" (id, "createdAt", "updatedAt", key, "dataSourceKey", name, "resourceName", scope) FROM stdin;
1	2024-11-22 08:42:38.572+00	2024-11-22 08:42:38.572+00	all	main	{{t("All records")}}	\N	{}
2	2024-11-22 08:42:38.616+00	2024-11-22 08:42:38.616+00	own	main	{{t("Own records")}}	\N	{"createdById":"{{ ctx.state.currentUser.id }}"}
\.


--
-- TOC entry 3918 (class 0 OID 316276)
-- Dependencies: 242
-- Data for Name: executions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.executions (id, "createdAt", "updatedAt", key, "eventKey", context, status, "workflowId") FROM stdin;
1	2024-11-22 17:44:25.5+00	2024-11-22 17:44:25.768+00	a7t0othjyrq	fe002260-4ab1-485f-bb28-b3e46447758d	{"data":{"createdAt":"2024-11-22T17:44:25.425Z","updatedAt":"2024-11-22T17:44:25.425Z","id":2,"name":"Xây cầu","construction_site":"Sơn La","actual_expenditures":null,"total_amount":500000000,"createdById":1,"updatedById":1,"fund_id":null}}	1	3
5	2024-11-23 01:53:43.268+00	2024-11-23 01:53:43.709+00	kxxtvzffijy	ac05f671-9282-4d16-b7df-c9c4dc36889f	{"data":{"createdAt":"2024-11-22T20:20:02.107Z","updatedAt":"2024-11-23T01:53:43.177Z","name":"fsaf","description":"3e3ererger","construction_site":"ểgsertwegrwegerge","id":5,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	1	8
2	2024-11-22 18:10:46.3+00	2024-11-22 18:10:46.574+00	zlkl9y3z4ny	5cde9e54-afff-4bb2-b3a7-457ca366647b	{"data":{"createdAt":"2024-11-22T18:10:46.232Z","updatedAt":"2024-11-22T18:10:46.232Z","id":3,"name":"Xây nhà cho dân","construction_site":"Làng Nũ","actual_expenditures":[{"name":"Chi phí thiết kế","amount":15000.5,"currency":"VND","description":"Thanh toán cho công ty thiết kế nội thất."},{"name":"Chi phí thi công","amount":50000,"currency":"VND","description":"Chi phí vật liệu xây dựng và nhân công."},{"name":"Chi phí vận chuyển","amount":7000,"currency":"VND","description":"Vận chuyển vật liệu đến công trường."}],"total_amount":6500000000,"createdById":1,"updatedById":1,"fund_id":null}}	1	4
3	2024-11-22 20:15:39.741+00	2024-11-22 20:15:40.167+00	kxxtvzffijy	eba9cbfa-d557-41f0-9e4d-18017fab1823	{"data":{"createdAt":"2024-11-22T20:15:15.050Z","updatedAt":"2024-11-22T20:15:39.677Z","id":4,"createdById":1,"updatedById":1,"name":"sdfsdfa","description":"ử3rwe`23`231214","construction_site":"2423ehgtedasfws","status":"APPROVED","createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	1	8
23	2024-11-23 11:29:13.437+00	2024-11-23 11:29:14.09+00	vacy1jqunhh	3b956c65-0f7f-43c3-a66d-693e5ae64ff2	{"data":{"createdAt":"2024-11-23T11:28:57.753Z","updatedAt":"2024-11-23T11:29:13.366Z","name":"sdf2efwefe","description":"fwerfsgw","construction_site":"rfwegwege","id":13,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	1	21
4	2024-11-22 20:15:40.008+00	2024-11-22 20:15:40.377+00	zlkl9y3z4ny	c636f54f-00b5-4ea6-85bc-d4758700b916	{"data":{"createdAt":"2024-11-22T20:15:39.950Z","updatedAt":"2024-11-22T20:15:39.950Z","id":4,"name":"sdfsdfa","construction_site":"2423ehgtedasfws","actual_expenditures":null,"total_amount":0,"createdById":null,"updatedById":null,"fund_id":null},"stack":[3]}	1	4
6	2024-11-23 08:02:29.279+00	2024-11-23 08:02:29.551+00	iib4y9voya1	7b625c42-dbad-41bf-946a-186c969376ae	{"data":{"createdAt":"2024-11-23T01:53:43.496Z","updatedAt":"2024-11-23T08:02:29.206Z","id":5,"name":"aaaaa","construction_site":"dfsdfsdfsdsdf","actual_expenditures":null,"total_amount":50000000,"is_deleted":0,"createdById":null,"updatedById":1,"updatedBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null},"fund_id":{"createdAt":"2024-11-23T01:53:43.613Z","updatedAt":"2024-11-23T03:34:08.048Z","name":"fsaf","target_amount":0,"current_amount":0,"description":null,"project_id":5,"id":6,"is_deleted":0,"qrContent":"QR","qrCodeUrl":"https://i.imgur.com/tO6ae8i.png","createdById":null,"updatedById":1},"createdBy":null}}	1	11
7	2024-11-23 08:02:48.115+00	2024-11-23 08:02:48.329+00	iib4y9voya1	b6b0406e-b87a-49f7-97de-c338b4e59b13	{"data":{"createdAt":"2024-11-23T01:53:43.496Z","updatedAt":"2024-11-23T08:02:48.045Z","id":5,"name":"aaaaa","construction_site":"dfsdfsdfsdsdf","actual_expenditures":null,"total_amount":50000000,"is_deleted":1,"createdById":null,"updatedById":1,"updatedBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null},"fund_id":{"createdAt":"2024-11-23T01:53:43.613Z","updatedAt":"2024-11-23T08:02:29.450Z","name":"fsaf","target_amount":0,"current_amount":0,"description":null,"project_id":5,"id":6,"is_deleted":1,"qrContent":"QR","qrCodeUrl":"https://i.imgur.com/tO6ae8i.png","createdById":null,"updatedById":1},"createdBy":null}}	1	11
19	2024-11-23 10:44:46.761+00	2024-11-23 10:44:47.926+00	ew3unr68bn1	e6f4ea8d-4352-4552-a23a-f3ae1a198517	{"data":{"createdAt":"2024-11-23T10:44:05.704Z","updatedAt":"2024-11-23T10:44:46.561Z","name":"dseww","description":"sdgdsfgwvsfgs","construction_site":"fwef","id":9,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	1	17
27	2024-11-23 12:00:19.758+00	2024-11-23 12:00:20.374+00	07lrf76z5ab	f27692b5-f6da-4fbd-ae77-2a023e5e5325	{"data":{"createdAt":"2024-11-23T12:00:10.883Z","updatedAt":"2024-11-23T12:00:19.685Z","name":"fterterargaed","description":"rweteret","construction_site":"yy364yt","id":17,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	1	22
8	2024-11-23 08:03:02.759+00	2024-11-23 08:03:02.988+00	iib4y9voya1	c89766b5-9a21-4024-a111-7d791549afdf	{"data":{"createdAt":"2024-11-23T01:53:43.496Z","updatedAt":"2024-11-23T08:03:02.681Z","id":5,"name":"aaaaa","construction_site":"dfsdfsdfsdsdf","actual_expenditures":null,"total_amount":50000000,"is_deleted":0,"createdById":null,"updatedById":1,"updatedBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null},"fund_id":{"createdAt":"2024-11-23T01:53:43.613Z","updatedAt":"2024-11-23T08:02:29.450Z","name":"fsaf","target_amount":0,"current_amount":0,"description":null,"project_id":5,"id":6,"is_deleted":1,"qrContent":"QR","qrCodeUrl":"https://i.imgur.com/tO6ae8i.png","createdById":null,"updatedById":1},"createdBy":null}}	1	11
21	2024-11-23 10:58:26.145+00	2024-11-23 10:58:26.759+00	keklzmdtgx0	23b323cc-5a16-42de-a1fb-48ce45cc1170	{"data":{"createdAt":"2024-11-23T10:58:12.793Z","updatedAt":"2024-11-23T10:58:26.084Z","name":"fgdfsg","description":"adf","construction_site":"dfsaf1qwfsdf","id":11,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	1	19
9	2024-11-23 08:06:00.052+00	2024-11-23 08:06:00.309+00	iib4y9voya1	edce095a-b87f-4ceb-961f-f8708ed9c775	{"data":{"createdAt":"2024-11-23T01:53:43.496Z","updatedAt":"2024-11-23T08:05:59.993Z","id":5,"name":"aaaaa","construction_site":"dfsdfsdfsdsdf","actual_expenditures":null,"total_amount":50000000,"is_deleted":1,"createdById":null,"updatedById":1,"updatedBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null},"fund_id":{"createdAt":"2024-11-23T01:53:43.613Z","updatedAt":"2024-11-23T08:03:20.776Z","name":"fsaf","target_amount":0,"current_amount":0,"description":null,"project_id":5,"id":6,"is_deleted":0,"qrContent":"QR","qrCodeUrl":"https://i.imgur.com/tO6ae8i.png","createdById":null,"updatedById":1},"createdBy":null}}	1	11
24	2024-11-23 11:33:22.671+00	2024-11-23 11:33:23.3+00	vacy1jqunhh	0b7c1c40-e8e5-4307-a52f-71eab83f2320	{"data":{"createdAt":"2024-11-23T11:33:13.491Z","updatedAt":"2024-11-23T11:33:22.608Z","name":"sdfsasafhg","description":"gẻgefsdgs","construction_site":"werg2524w34t","id":14,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	1	21
28	2024-11-23 12:01:25.944+00	2024-11-23 12:01:26.543+00	07lrf76z5ab	dd354b12-01d2-4d9a-9ecc-7f8f7c133690	{"data":{"createdAt":"2024-11-23T12:01:04.813Z","updatedAt":"2024-11-23T12:01:25.885Z","name":"sdegrgre","description":"wf3erwefw","construction_site":"erfgfedfg","id":18,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	1	22
30	2024-11-23 14:32:54.76+00	2024-11-23 14:32:55.405+00	07lrf76z5ab	70889de6-5280-4e35-9573-0a0039608d16	{"data":{"createdAt":"2024-11-23T14:32:40.645Z","updatedAt":"2024-11-23T14:32:54.689Z","name":"Xây cầu","description":null,"construction_site":"Sơn La","id":20,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	1	22
32	2024-11-24 02:43:58.312+00	2024-11-24 02:43:58.938+00	07lrf76z5ab	b32f6460-c949-416d-90fa-857189c103c0	{"data":{"createdAt":"2024-11-24T02:43:51.285Z","updatedAt":"2024-11-24T02:43:58.247Z","name":"bbbbdf","description":"fdf","construction_site":"fd","id":22,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	1	22
10	2024-11-23 08:06:39.882+00	2024-11-23 08:06:40.139+00	iib4y9voya1	e42ab6e7-f044-4436-b721-862e22811dac	{"data":{"createdAt":"2024-11-23T01:53:43.496Z","updatedAt":"2024-11-23T08:06:39.817Z","id":5,"name":"aaaaa","construction_site":"dfsdfsdfsdsdf","actual_expenditures":null,"total_amount":50000000,"is_deleted":0,"createdById":null,"updatedById":1,"updatedBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null},"fund_id":{"createdAt":"2024-11-23T01:53:43.613Z","updatedAt":"2024-11-23T08:06:25.968Z","name":"fsaf","target_amount":0,"current_amount":0,"description":null,"project_id":5,"id":6,"is_deleted":0,"qrContent":"QR","qrCodeUrl":"https://i.imgur.com/tO6ae8i.png","createdById":null,"updatedById":1},"createdBy":null}}	1	11
11	2024-11-23 08:07:09.982+00	2024-11-23 08:07:10.198+00	iib4y9voya1	58634dfc-6471-4a9e-8148-ec282e4a82f1	{"data":{"createdAt":"2024-11-23T01:53:43.496Z","updatedAt":"2024-11-23T08:07:09.916Z","id":5,"name":"aaaaa","construction_site":"dfsdfsdfsdsdf","actual_expenditures":null,"total_amount":50000000,"is_deleted":1,"createdById":null,"updatedById":1,"updatedBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null},"fund_id":{"createdAt":"2024-11-23T01:53:43.613Z","updatedAt":"2024-11-23T08:06:40.036Z","name":"fsaf","target_amount":0,"current_amount":0,"description":null,"project_id":5,"id":6,"is_deleted":1,"qrContent":"QR","qrCodeUrl":"https://i.imgur.com/tO6ae8i.png","createdById":null,"updatedById":1},"createdBy":null}}	1	11
22	2024-11-23 11:22:35.078+00	2024-11-23 11:22:35.701+00	t5rc039s0cc	84cdb9c1-0b7f-476d-9f5b-c7e14283457a	{"data":{"createdAt":"2024-11-23T11:21:48.364Z","updatedAt":"2024-11-23T11:22:35.011Z","name":"dfg5ter","description":"fghrtygg","construction_site":"6346tehryuafgeg","id":12,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	1	20
25	2024-11-23 11:51:25.751+00	2024-11-23 11:51:26.297+00	07lrf76z5ab	81f361cb-c7be-4ce3-b8ca-6f13ddf94832	{"data":{"createdAt":"2024-11-23T11:51:14.557Z","updatedAt":"2024-11-23T11:51:25.684Z","name":"f43gu4thrt","description":"fdwy35y","construction_site":"fg","id":15,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	1	22
29	2024-11-23 12:14:07.971+00	2024-11-23 12:14:08.618+00	07lrf76z5ab	b3582c82-5c3f-4d66-be16-d1c58f6ba500	{"data":{"createdAt":"2024-11-23T12:13:54.413Z","updatedAt":"2024-11-23T12:14:07.902Z","name":"Xây nhà cho tui","description":"","construction_site":"Hoà Xuân, Cẩm Lệ, Đà Nẵng","id":19,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	1	22
26	2024-11-23 11:52:49.548+00	2024-11-23 11:52:50.067+00	07lrf76z5ab	4882f818-20b7-4f78-ab18-176580b20956	{"data":{"createdAt":"2024-11-23T11:52:34.903Z","updatedAt":"2024-11-23T11:52:49.488Z","name":"dfdffg","description":"fqeggrrefgfdfsdf","construction_site":"dsfsfwe","id":16,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	-1	22
31	2024-11-24 02:36:50.942+00	2024-11-24 02:36:51.611+00	07lrf76z5ab	2f3022af-acc2-4760-9b6c-4b88b196e50a	{"data":{"createdAt":"2024-11-24T02:36:39.231Z","updatedAt":"2024-11-24T02:36:50.863Z","name":"AAAA","description":"fdfd","construction_site":"Hà Nội","id":21,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	1	22
12	2024-11-23 09:07:30.482+00	2024-11-23 09:07:30.748+00	okdlz4mlk8m	2c529ec7-d8e6-4577-8c7e-30e2b59ddd66	{"data":{"createdAt":"2024-11-23T01:53:43.496Z","updatedAt":"2024-11-23T09:07:30.399Z","id":5,"name":"aaaaa","construction_site":"dfsdfsdfsdsdf","actual_expenditures":[{"name":"Cát xây dựng","amount":15000000,"description":"Mua cát vàng để đổ móng và xây tường."},{"name":"Xi măng","amount":20000000,"description":"Dùng để trộn bê tông và xây tường."},{"name":"Thép xây dựng","amount":50000000,"description":"Thép cây 10mm dùng cho móng và dầm."}],"total_amount":50000000,"is_deleted":0,"createdById":null,"updatedById":1,"fund_id":{"createdAt":"2024-11-23T01:53:43.613Z","updatedAt":"2024-11-23T08:12:49.324Z","name":"fsaf","target_amount":5000000,"current_amount":500000,"description":null,"project_id":5,"id":6,"is_deleted":0,"qrContent":"QR","qrCodeUrl":"https://i.imgur.com/tO6ae8i.png","createdById":null,"updatedById":1}}}	1	12
13	2024-11-23 09:08:33.431+00	2024-11-23 09:08:33.688+00	okdlz4mlk8m	68a71f4e-51a9-42c4-94e5-3d5d01dc159b	{"data":{"createdAt":"2024-11-23T01:53:43.496Z","updatedAt":"2024-11-23T09:08:33.365Z","id":5,"name":"aaaaa","construction_site":"dfsdfsdfsdsdf","actual_expenditures":[{"name":"Cát xây dựng","amount":15000000,"description":"Mua cát vàng để đổ móng và xây tường."},{"name":"Xi măng","amount":20000000,"description":"Dùng để trộn bê tông và xây tường."},{"name":"Thép xây dựng","amount":50000000,"description":"Thép cây 10mm dùng cho móng và dầm."}],"total_amount":50000000,"is_deleted":0,"createdById":null,"updatedById":1,"fund_id":{"createdAt":"2024-11-23T01:53:43.613Z","updatedAt":"2024-11-23T08:12:49.324Z","name":"fsaf","target_amount":5000000,"current_amount":500000,"description":null,"project_id":5,"id":6,"is_deleted":0,"qrContent":"QR","qrCodeUrl":"https://i.imgur.com/tO6ae8i.png","createdById":null,"updatedById":1}}}	1	12
15	2024-11-23 10:17:39.57+00	2024-11-23 10:17:40.159+00	08idt6hd4b9	e0cf7791-d386-4ea5-a25f-4ef3bc2601e3	{"data":{"createdAt":"2024-11-23T06:51:51.907Z","updatedAt":"2024-11-23T10:17:39.500Z","name":"Xây nhà cho em","description":"Xây nhà cửa cho các giá đình bạn nhỏ ở Vùng núi Lào Cai","construction_site":"Làng..., Lào Cai","id":6,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	-1	15
14	2024-11-23 09:09:45.212+00	2024-11-23 09:09:45.458+00	okdlz4mlk8m	e076a9b2-a285-4572-8c1a-8498020ec45f	{"data":{"createdAt":"2024-11-23T01:53:43.496Z","updatedAt":"2024-11-23T09:09:45.152Z","id":5,"name":"aaaaa","construction_site":"dfsdfsdfsdsdf","actual_expenditures":[{"name":"Cát xây dựng","amount":15000000,"description":"Mua cát vàng để đổ móng và xây tường."},{"name":"Xi măng","amount":20000000,"description":"Dùng để trộn bê tông và xây tường."},{"name":"Thép xây dựng","amount":50000000,"description":"Thép cây 10mm dùng cho móng và dầm."}],"total_amount":50000000,"is_deleted":0,"createdById":null,"updatedById":1,"fund_id":{"createdAt":"2024-11-23T01:53:43.613Z","updatedAt":"2024-11-23T08:12:49.324Z","name":"fsaf","target_amount":5000000,"current_amount":500000,"description":null,"project_id":5,"id":6,"is_deleted":0,"qrContent":"QR","qrCodeUrl":"https://i.imgur.com/tO6ae8i.png","createdById":null,"updatedById":1}}}	1	12
16	2024-11-23 10:20:33.459+00	2024-11-23 10:20:34.007+00	08idt6hd4b9	e6160a0e-d487-4a29-a332-869bb63573f2	{"data":{"createdAt":"2024-11-23T10:20:07.438Z","updatedAt":"2024-11-23T10:20:33.397Z","name":"Xây nhà cho người dân tộc","description":"Xây nhà cho người dân tộc Thanh ở Điện Biên","construction_site":"Vùng núi Điện Biên","id":7,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	-1	15
17	2024-11-23 10:24:00.423+00	2024-11-23 10:24:00.978+00	tbhf0n5k4ba	ab79f6e1-ac48-462d-8b05-36dcec598ad3	{"data":{"createdAt":"2024-11-23T10:22:50.823Z","updatedAt":"2024-11-23T10:24:00.357Z","name":"aaaaa","description":"dfdfdsfdsfsdf","construction_site":"Cao Bằng","id":8,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	-1	16
18	2024-11-23 10:44:46.637+00	2024-11-23 10:44:47.756+00	tbhf0n5k4ba	6f57b07a-a6b3-4f6f-8e8e-f6477b04971f	{"data":{"createdAt":"2024-11-23T10:44:05.704Z","updatedAt":"2024-11-23T10:44:46.561Z","name":"dseww","description":"sdgdsfgwvsfgs","construction_site":"fwef","id":9,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	-1	16
20	2024-11-23 10:53:47.76+00	2024-11-23 10:53:48.421+00	gyc7yynd5w0	aa670944-d977-428f-9c7b-00884090fb80	{"data":{"createdAt":"2024-11-23T10:53:32.680Z","updatedAt":"2024-11-23T10:53:47.700Z","name":"dfsf3qwrqwe","description":"dsfdsgđsfa","construction_site":"3e3qfsdfasdvas","id":10,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-22T08:42:38.679Z","sort":1,"createdById":null,"updatedById":null}}}	1	18
33	2024-11-29 20:13:20.368+00	2024-11-29 20:13:20.994+00	07lrf76z5ab	af22db29-536f-461a-91c0-79d18ec8c9c0	{"data":{"createdAt":"2024-11-29T20:13:03.294Z","updatedAt":"2024-11-29T20:13:20.272Z","name":"fdfggdfg","description":null,"construction_site":"gfdsdfg","id":23,"status":"APPROVED","is_deleted":0,"createdById":1,"updatedById":1,"createdBy":{"id":1,"nickname":"Super Admin","username":"nocobase","email":"admin@nocobase.com","phone":null,"password":"cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8","appLang":null,"resetToken":null,"systemSettings":{"themeId":5},"createdAt":"2024-11-22T08:42:38.679Z","updatedAt":"2024-11-25T06:09:25.389Z","sort":1,"createdById":null,"updatedById":null}}}	1	22
\.


--
-- TOC entry 3920 (class 0 OID 316282)
-- Dependencies: 244
-- Data for Name: fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fields (key, name, type, interface, description, "collectionName", "parentKey", "reverseKey", options, sort) FROM stdin;
tqpezhv04dv	id	bigInt	id	\N	users	\N	\N	{"autoIncrement":true,"primaryKey":true,"allowNull":false,"uiSchema":{"type":"number","title":"{{t(\\"ID\\")}}","x-component":"InputNumber","x-read-pretty":true}}	1
bogramj5vny	nickname	string	input	\N	users	\N	\N	{"uiSchema":{"type":"string","title":"{{t(\\"Nickname\\")}}","x-component":"Input"}}	2
j7enbkqtbwt	username	string	input	\N	users	\N	\N	{"unique":true,"uiSchema":{"type":"string","title":"{{t(\\"Username\\")}}","x-component":"Input","x-validator":{"username":true},"required":true}}	3
u516sd87z37	email	string	email	\N	users	\N	\N	{"unique":true,"uiSchema":{"type":"string","title":"{{t(\\"Email\\")}}","x-component":"Input","x-validator":"email","required":true}}	4
18jifcevvd3	phone	string	input	\N	users	\N	\N	{"unique":true,"uiSchema":{"type":"string","title":"{{t(\\"Phone\\")}}","x-component":"Input","required":true}}	5
1a5s8gs63lt	password	password	password	\N	users	\N	\N	{"hidden":true,"uiSchema":{"type":"string","title":"{{t(\\"Password\\")}}","x-component":"Password"}}	6
mues9zjprsm	appLang	string	\N	\N	users	\N	\N	{}	7
fk2c4zg5qnb	resetToken	string	\N	\N	users	\N	\N	{"unique":true,"hidden":true}	8
cuhwu3sc3ki	systemSettings	json	\N	\N	users	\N	\N	{"defaultValue":{}}	9
hboh84mge2y	createdAt	date	createdAt	\N	users	\N	\N	{"uiSchema":{"x-component-props":{"dateFormat":"YYYY-MM-DD"},"type":"datetime","title":"{{t(\\"Created at\\")}}","x-component":"DatePicker","x-read-pretty":true},"field":"createdAt"}	10
l9w2948lxfi	updatedAt	date	updatedAt	\N	users	\N	\N	{"uiSchema":{"x-component-props":{"dateFormat":"YYYY-MM-DD"},"type":"datetime","title":"{{t(\\"Last updated at\\")}}","x-component":"DatePicker","x-read-pretty":true},"field":"updatedAt"}	11
3orbp8al1v8	sort	sort	\N	\N	users	\N	\N	{"hidden":true}	12
e5rnmrj6wxt	createdBy	belongsTo	createdBy	\N	users	\N	\N	{"target":"users","foreignKey":"createdById","targetKey":"id","uiSchema":{"type":"object","title":"{{t(\\"Created by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true}}	13
gjndxvxtk5y	createdById	context	\N	\N	users	\N	\N	{"dataType":"bigInt","dataIndex":"state.currentUser.id","createOnly":true,"visible":true,"index":true}	14
5c2jg7m5qc5	updatedBy	belongsTo	updatedBy	\N	users	\N	\N	{"target":"users","foreignKey":"updatedById","targetKey":"id","uiSchema":{"type":"object","title":"{{t(\\"Last updated by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true}}	15
vfna6tycg1i	updatedById	context	\N	\N	users	\N	\N	{"dataType":"bigInt","dataIndex":"state.currentUser.id","visible":true,"index":true}	16
517arf11gow	roles	belongsToMany	m2m	\N	users	\N	\N	{"target":"roles","foreignKey":"userId","otherKey":"roleName","onDelete":"CASCADE","sourceKey":"id","targetKey":"name","through":"rolesUsers","uiSchema":{"type":"array","title":"{{t(\\"Roles\\")}}","x-component":"AssociationField","x-component-props":{"multiple":true,"fieldNames":{"label":"title","value":"name"}}}}	17
xr0qo5c22ao	jobs	belongsToMany	\N	\N	users	\N	\N	{"through":"users_jobs","foreignKey":"userId","sourceKey":"id","otherKey":"jobId","targetKey":"id","target":"jobs"}	18
xzxyzi3uv1n	usersJobs	hasMany	\N	\N	users	\N	\N	{"target":"users_jobs","foreignKey":"userId","sourceKey":"id","targetKey":"id"}	19
xw206vb1yxt	name	uid	input	\N	roles	\N	\N	{"prefix":"r_","primaryKey":true,"uiSchema":{"type":"string","title":"{{t(\\"Role UID\\")}}","x-component":"Input"}}	1
t06b94a0ton	title	string	input	\N	roles	\N	\N	{"unique":true,"uiSchema":{"type":"string","title":"{{t(\\"Role name\\")}}","x-component":"Input"},"translation":true}	2
eywinjmt3ca	description	string	\N	\N	roles	\N	\N	{}	3
rcgkmw6zzun	strategy	json	\N	\N	roles	\N	\N	{}	4
b0f6twdul1t	default	boolean	\N	\N	roles	\N	\N	{"defaultValue":false}	5
aerjg63rl8y	hidden	boolean	\N	\N	roles	\N	\N	{"defaultValue":false}	6
i8lm31u1dq4	allowConfigure	boolean	\N	\N	roles	\N	\N	{}	7
qlrl2xo4alw	allowNewMenu	boolean	\N	\N	roles	\N	\N	{}	8
zkqxg2itpb9	menuUiSchemas	belongsToMany	\N	\N	roles	\N	\N	{"target":"uiSchemas","targetKey":"x-uid","foreignKey":"roleName","sourceKey":"name","otherKey":"uiSchemaXUid","through":"rolesUischemas"}	9
es0xqu6pqgp	resources	hasMany	\N	\N	roles	\N	\N	{"target":"dataSourcesRolesResources","sourceKey":"name","foreignKey":"roleName","targetKey":"id"}	10
a5b4mm4gica	snippets	set	\N	\N	roles	\N	\N	{"defaultValue":["!ui.*","!pm","!pm.*"]}	11
kgxt1ykue2a	users	belongsToMany	\N	\N	roles	\N	\N	{"target":"users","foreignKey":"roleName","otherKey":"userId","onDelete":"CASCADE","sourceKey":"name","targetKey":"id","through":"rolesUsers"}	12
ximco9qebu3	sort	sort	\N	\N	roles	\N	\N	{"hidden":true}	13
8yrj4yqic3a	createdAt	date	createdAt	\N	transactions	\N	\N	{"field":"createdAt","uiSchema":{"type":"datetime","title":"{{t(\\"Created at\\")}}","x-component":"DatePicker","x-component-props":{},"x-read-pretty":true}}	2
pws73gxpwcg	createdBy	belongsTo	createdBy	\N	transactions	\N	\N	{"target":"users","foreignKey":"createdById","uiSchema":{"type":"object","title":"{{t(\\"Created by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true},"targetKey":"id"}	3
dl6pzlzkk5h	updatedAt	date	updatedAt	\N	transactions	\N	\N	{"field":"updatedAt","uiSchema":{"type":"string","title":"{{t(\\"Last updated at\\")}}","x-component":"DatePicker","x-component-props":{},"x-read-pretty":true}}	4
umeb7ib8m4h	updatedBy	belongsTo	updatedBy	\N	transactions	\N	\N	{"target":"users","foreignKey":"updatedById","uiSchema":{"type":"object","title":"{{t(\\"Last updated by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true},"targetKey":"id"}	5
r1qo69t7sg3	transaction_code	string	input	Mã giao dịch lấy từ ngân hàng	transactions	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"Transaction Code"}}	6
4vgth5i51jt	amount	double	number	\N	transactions	\N	\N	{"uiSchema":{"x-component-props":{"step":"0.0001","stringMode":true},"type":"number","x-component":"InputNumber","title":"Amount"},"defaultValue":0}	7
a4kclngwlca	description	text	textarea	Nội dung chuyển khoản	transactions	\N	\N	{"uiSchema":{"type":"string","x-component":"Input.TextArea","title":"Description"}}	8
4uja8blcp7a	from_account_no	string	input	Số tài khoản chuyển tiền	transactions	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"From Account No"}}	9
9750bll7zf1	from_account_name	string	input	Từ người dùng ngân hàng	transactions	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"From Account Name"}}	10
idmynqpyyb7	from_bank_name	string	input	Từ ngân hàng	transactions	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"From Bank Name"},"defaultValue":""}	11
ypu1487b0x4	createdAt	date	createdAt	\N	funds	\N	\N	{"field":"createdAt","uiSchema":{"type":"datetime","title":"{{t(\\"Created at\\")}}","x-component":"DatePicker","x-component-props":{},"x-read-pretty":true}}	2
agdtp5gi2k1	id	bigInt	integer	\N	transactions	\N	\N	{"autoIncrement":true,"primaryKey":true,"allowNull":false,"uiSchema":{"type":"number","title":"{{t(\\"ID\\")}}","x-component":"InputNumber","x-read-pretty":true}}	0
sdrunyy84in	createdBy	belongsTo	createdBy	\N	funds	\N	\N	{"target":"users","foreignKey":"createdById","uiSchema":{"type":"object","title":"{{t(\\"Created by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true},"targetKey":"id"}	3
hrgdhmht2tn	updatedAt	date	updatedAt	\N	funds	\N	\N	{"field":"updatedAt","uiSchema":{"type":"string","title":"{{t(\\"Last updated at\\")}}","x-component":"DatePicker","x-component-props":{},"x-read-pretty":true}}	4
e2vktuo1n39	updatedBy	belongsTo	updatedBy	\N	funds	\N	\N	{"target":"users","foreignKey":"updatedById","uiSchema":{"type":"object","title":"{{t(\\"Last updated by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true},"targetKey":"id"}	5
ljbqcvusiiz	name	string	input	\N	funds	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"Name"}}	6
d5a7xyctgrt	user	belongsTo	m2o	\N	transactions	\N	\N	{"foreignKey":"user_id","onDelete":"SET NULL","uiSchema":{"x-component":"AssociationField","x-component-props":{"multiple":false},"title":"User"},"target":"users","targetKey":"id"}	13
h0lj3ttgk97	user_id	bigInt	integer	\N	transactions	\N	\N	{"uiSchema":{"type":"number","x-component":"InputNumber","x-component-props":{"stringMode":true,"step":"1"},"x-validator":"integer","title":"User Id"},"isForeignKey":true}	1
fmtgbzqzs72	id	bigInt	integer	\N	projects	\N	\N	{"autoIncrement":true,"primaryKey":true,"allowNull":false,"uiSchema":{"type":"number","title":"{{t(\\"ID\\")}}","x-component":"InputNumber","x-read-pretty":true}}	1
q9o748vg4ve	createdAt	date	createdAt	\N	projects	\N	\N	{"field":"createdAt","uiSchema":{"type":"datetime","title":"{{t(\\"Created at\\")}}","x-component":"DatePicker","x-component-props":{},"x-read-pretty":true}}	2
6t9rflv76yl	createdBy	belongsTo	createdBy	\N	projects	\N	\N	{"target":"users","foreignKey":"createdById","uiSchema":{"type":"object","title":"{{t(\\"Created by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true},"targetKey":"id"}	3
h1hhea0z4wp	updatedAt	date	updatedAt	\N	projects	\N	\N	{"field":"updatedAt","uiSchema":{"type":"string","title":"{{t(\\"Last updated at\\")}}","x-component":"DatePicker","x-component-props":{},"x-read-pretty":true}}	4
bh0xstx09p0	updatedBy	belongsTo	updatedBy	\N	projects	\N	\N	{"target":"users","foreignKey":"updatedById","uiSchema":{"type":"object","title":"{{t(\\"Last updated by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true},"targetKey":"id"}	5
pm3gc0fxe88	target_amount	double	number	\N	funds	\N	\N	{"uiSchema":{"x-component-props":{"step":"0.0001","stringMode":true},"type":"number","x-component":"InputNumber","title":"Target Amount"}}	7
7t4prqwojgq	current_amount	double	number	\N	funds	\N	\N	{"uiSchema":{"x-component-props":{"step":"0.0001","stringMode":true},"type":"number","x-component":"InputNumber","title":"Current Amount"}}	8
crmmbnj9ia7	description	text	textarea	\N	funds	\N	\N	{"uiSchema":{"type":"string","x-component":"Input.TextArea","title":"Description"}}	10
mcpxp767mdx	fund_id	hasOne	oho	\N	projects	\N	\N	{"foreignKey":"project_id","onDelete":"SET NULL","sourceKey":"id","uiSchema":{"x-component":"AssociationField","x-component-props":{"multiple":false},"title":"Fund"},"target":"funds"}	10
riptrzaibu0	project_id	bigInt	integer	\N	funds	\N	\N	{"uiSchema":{"type":"number","x-component":"InputNumber","x-component-props":{"stringMode":true,"step":"1"},"x-validator":"integer","title":"Project Id"},"isForeignKey":true}	1
3lfgj9ez30w	id	bigInt	integer	\N	funds	\N	\N	{"autoIncrement":true,"primaryKey":true,"allowNull":false,"uiSchema":{"type":"number","title":"{{t(\\"ID\\")}}","x-component":"InputNumber","x-read-pretty":true}}	0
794btmq0r1n	fund	belongsTo	m2o	\N	transactions	\N	\N	{"foreignKey":"fund_id","onDelete":"SET NULL","uiSchema":{"x-component":"AssociationField","x-component-props":{"multiple":false},"title":"Fund"},"target":"funds","targetKey":"id"}	15
9ituv9qpwo7	fund_id	bigInt	integer	\N	transactions	\N	\N	{"uiSchema":{"type":"number","x-component":"InputNumber","x-component-props":{"stringMode":true,"step":"1"},"x-validator":"integer","title":"Fund Id"},"isForeignKey":true}	1
k4ze0oui121	createdAt	date	createdAt	\N	proposes	\N	\N	{"field":"createdAt","uiSchema":{"type":"datetime","title":"{{t(\\"Created at\\")}}","x-component":"DatePicker","x-component-props":{},"x-read-pretty":true}}	2
k4s253h4fad	createdBy	belongsTo	createdBy	\N	proposes	\N	\N	{"target":"users","foreignKey":"createdById","uiSchema":{"type":"object","title":"{{t(\\"Created by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true},"targetKey":"id"}	3
tzy47exti0g	updatedAt	date	updatedAt	\N	proposes	\N	\N	{"field":"updatedAt","uiSchema":{"type":"string","title":"{{t(\\"Last updated at\\")}}","x-component":"DatePicker","x-component-props":{},"x-read-pretty":true}}	4
5at105y2t0o	name	string	input	\N	projects	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"Tên dự án"}}	6
ykb24ar817i	total_amount	double	number	\N	projects	\N	\N	{"uiSchema":{"x-component-props":{"step":"0.01","stringMode":true},"type":"number","x-component":"InputNumber","title":"Tổng giá trị kêu gọi"},"defaultValue":0}	7
vij0hmgifiy	construction_site	string	input	vị trí xây dựng	projects	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"Địa chỉ"},"defaultValue":""}	8
0hdowlzoiq4	updatedBy	belongsTo	updatedBy	\N	proposes	\N	\N	{"target":"users","foreignKey":"updatedById","uiSchema":{"type":"object","title":"{{t(\\"Last updated by\\")}}","x-component":"AssociationField","x-component-props":{"fieldNames":{"value":"id","label":"nickname"}},"x-read-pretty":true},"targetKey":"id"}	5
ah71xru1cxt	name	string	input	\N	proposes	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"Name"}}	6
ooz5o3qokja	description	text	textarea	\N	proposes	\N	\N	{"uiSchema":{"type":"string","x-component":"Input.TextArea","title":"Description"}}	7
0cntyow9ua4	construction_site	string	input	\N	proposes	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"Construction Site"}}	8
jbr10i6w65e	id	bigInt	integer	\N	proposes	\N	\N	{"autoIncrement":true,"primaryKey":true,"allowNull":false,"uiSchema":{"type":"number","title":"{{t(\\"ID\\")}}","x-component":"InputNumber","x-read-pretty":true}}	0
hj6jry6qsbn	status	string	select	\N	proposes	\N	\N	{"uiSchema":{"enum":[{"value":"PENDING","label":"Pending","color":"orange"},{"value":"APPROVED","label":"Approved","color":"blue"},{"value":"REJECTED","label":"Rejected","color":"red"}],"type":"string","x-component":"Select","title":"Status"},"defaultValue":"PENDING"}	11
u46cbv8opy6	is_deleted	bigInt	integer	\N	projects	\N	\N	{"uiSchema":{"type":"number","x-component":"InputNumber","x-component-props":{"stringMode":true,"step":"1"},"x-validator":"integer","title":"Is Deleted"},"defaultValue":0}	11
r0faff22n1u	is_deleted	bigInt	integer	\N	funds	\N	\N	{"uiSchema":{"type":"number","x-component":"InputNumber","x-component-props":{"stringMode":true,"step":"1"},"x-validator":"integer","title":"Is Deleted"},"defaultValue":0}	11
84x5qxxvd3e	is_deleted	bigInt	integer	\N	proposes	\N	\N	{"uiSchema":{"type":"number","x-component":"InputNumber","x-component-props":{"stringMode":true,"step":"1"},"x-validator":"integer","title":"Is Deleted"},"defaultValue":0}	12
py2pvrrxk3n	is_deleted	bigInt	integer	\N	transactions	\N	\N	{"uiSchema":{"type":"number","x-component":"InputNumber","x-component-props":{"stringMode":true,"step":"1"},"x-validator":"integer","title":"Is Deleted"},"defaultValue":0}	16
k2m3hzx00cm	qr_code_url	text	url	\N	funds	\N	\N	{"uiSchema":{"type":"string","x-component":"Input.URL","title":"QR Code Url"}}	12
htj0x3vc2hp	images	belongsToMany	attachment	\N	projects	\N	\N	{"uiSchema":{"x-component-props":{"multiple":true,"accept":"image/*"},"type":"array","x-component":"Upload.Attachment","x-use-component-props":"useAttachmentFieldProps","title":"Hình ảnh"},"target":"attachments","storage":"local","through":"t_bzkvdw2a767","foreignKey":"f_s8php2rxxwe","otherKey":"f_qxu5av3g0sx","targetKey":"id","sourceKey":"id"}	12
q5ty0c42q5t	sub_title	string	input	\N	projects	\N	\N	{"uiSchema":{"type":"string","x-component":"Input","title":"Mô tả ngắn"}}	13
saiotft86cb	id	uuid	input	\N	kafka_topics	\N	\N	{"primaryKey":true,"autoIncrement":false,"uiSchema":{"type":"string","title":"ID","x-component":"Input","required":true}}	1
969zz3odpcx	broker_host	string	input	\N	kafka_topics	\N	\N	{"uiSchema":{"type":"string","title":"Broker Host","x-component":"Input","required":true}}	2
3el51vwparp	topic_name	string	input	\N	kafka_topics	\N	\N	{"uiSchema":{"type":"string","title":"Topic Name","x-component":"Input","required":true}}	3
0jgap03o46r	type	string	select	\N	kafka_topics	\N	\N	{"uiSchema":{"type":"string","title":"Type","x-component":"Select","x-component-props":{"options":[{"label":"Producer","value":"producer"},{"label":"Consumer","value":"consumer"}]},"required":true}}	4
wneudei1j9h	id	uuid	input	\N	kafka_configs	\N	\N	{"primaryKey":true,"autoIncrement":false,"uiSchema":{"type":"string","title":"ID","x-component":"Input","required":true}}	1
hion733k0k3	group_id	string	input	\N	kafka_configs	\N	\N	{"uiSchema":{"type":"string","title":"Group Id","x-component":"Input","required":true}}	2
unjp623888f	client_id	string	input	\N	kafka_configs	\N	\N	{"uiSchema":{"type":"string","title":"Client Id","x-component":"Input","required":true}}	3
ataartdxovv	description	text	richText	\N	projects	\N	\N	{"uiSchema":{"type":"string","x-component":"RichText","title":"Mô tả"}}	14
\.


--
-- TOC entry 3921 (class 0 OID 316288)
-- Dependencies: 245
-- Data for Name: flow_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flow_nodes (id, "createdAt", "updatedAt", key, title, "upstreamId", "branchIndex", "downstreamId", type, config, "workflowId") FROM stdin;
71	2024-11-23 11:49:36.437+00	2024-11-23 11:50:39.181+00	dryirmt6df0	Generate qr code	68	\N	\N	request	{"method":"POST","contentType":"application/json","headers":[],"params":[],"data":{"fund_id":"{{$jobsMapByNodeKey.purpjsbvaog.id}}","fund_name":"{{$jobsMapByNodeKey.purpjsbvaog.name}}","user_id":""},"url":"http://localhost:13000/api/qr-donate"}	22
66	2024-11-23 11:49:01.687+00	2024-11-23 11:49:01.935+00	dl3c184o658	Check status	\N	\N	67	condition	{"rejectOnFalse":true,"engine":"basic","calculation":{"group":{"type":"and","calculations":[{"calculator":"equal","operands":["{{$context.data.status}}","APPROVED"]}]}}}	22
67	2024-11-23 11:49:01.736+00	2024-11-23 11:49:01.986+00	mf435tyq0zj	Create project	66	\N	68	create	{"usingAssignFormSchema":true,"assignFormSchema":{"_isJSONSchemaObject":true,"version":"2.0","name":"pdzv5ee5idc","type":"void","x-component":"Grid","x-initializer":"assignFieldValuesForm:configureFields","properties":{"tbd0t9ft2n7":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","properties":{"18j7rimhoc4":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","properties":{"name":{"_isJSONSchemaObject":true,"version":"2.0","type":"string","name":"name","title":"Name","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"AssignedField","x-decorator":"FormItem","x-collection-field":"projects.name"}},"name":"18j7rimhoc4"}},"name":"tbd0t9ft2n7"},"b8m81khiyhr":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","properties":{"msdyyo08bl0":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","properties":{"total_amount":{"_isJSONSchemaObject":true,"version":"2.0","type":"string","name":"total_amount","title":"Total Amount","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"AssignedField","x-decorator":"FormItem","x-collection-field":"projects.total_amount"}},"name":"msdyyo08bl0"}},"name":"b8m81khiyhr"},"33mpuj9wnod":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","properties":{"vq00s4dnakv":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","properties":{"construction_site":{"_isJSONSchemaObject":true,"version":"2.0","type":"string","name":"construction_site","title":"Construction Site","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"AssignedField","x-decorator":"FormItem","x-collection-field":"projects.construction_site"}},"name":"vq00s4dnakv"}},"name":"33mpuj9wnod"}}},"params":{"appends":["createdBy","fund_id"],"values":{"name":"{{$context.data.name}}","total_amount":0,"construction_site":"{{$context.data.construction_site}}"}},"collection":"projects"}	22
25	2024-11-23 08:50:42.3+00	2024-11-23 09:02:41.086+00	r5gw63gryqb	Current amount > 0	\N	\N	\N	condition	{"rejectOnFalse":false,"engine":"basic","calculation":{"group":{"type":"and","calculations":[{"calculator":"gt","operands":["{{$context.data.fund_id.current_amount}}","0"]}]}}}	12
22	2024-11-23 07:09:28.189+00	2024-11-23 07:11:50.235+00	59xues1luod	Delete Fund	\N	\N	\N	update	{"usingAssignFormSchema":true,"assignFormSchema":{"_isJSONSchemaObject":true,"version":"2.0","name":"cfanqz0jnqz","type":"void","x-component":"Grid","x-initializer":"assignFieldValuesForm:configureFields","properties":{"vn1ippegc5b":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","properties":{"732ktdyq2ye":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","properties":{"is_deleted":{"_isJSONSchemaObject":true,"version":"2.0","type":"string","name":"is_deleted","title":"Is Deleted","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"AssignedField","x-decorator":"FormItem","x-collection-field":"funds.is_deleted"}},"name":"732ktdyq2ye"}},"name":"vn1ippegc5b"}}},"collection":"funds","params":{"individualHooks":true,"filter":{"$and":[{"project_id":{"$eq":"{{$context.data.id}}"}},{"is_deleted":{"$eq":0}}]},"values":{"is_deleted":1}}}	11
26	2024-11-23 08:53:00.505+00	2024-11-23 08:53:11.168+00	te6q822kw5e	End process	25	1	\N	end	{"endStatus":1}	12
27	2024-11-23 08:54:27.892+00	2024-11-23 08:55:13.534+00	dn5iqbtbwd4	Remove fund	25	0	\N	update	{"usingAssignFormSchema":true,"assignFormSchema":{"_isJSONSchemaObject":true,"version":"2.0","name":"xecle3n2xvd","type":"void","x-component":"Grid","x-initializer":"assignFieldValuesForm:configureFields","properties":{"aupus6n8r3y":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","properties":{"jn3mo4nmu09":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","properties":{"is_deleted":{"_isJSONSchemaObject":true,"version":"2.0","type":"string","name":"is_deleted","title":"Is Deleted","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"AssignedField","x-decorator":"FormItem","x-collection-field":"funds.is_deleted"}},"name":"jn3mo4nmu09"}},"name":"aupus6n8r3y"}}},"collection":"funds","params":{"individualHooks":true,"filter":{"$and":[{"project_id":{"$eq":"{{$context.data.id}}"}}]},"values":{"is_deleted":1}}}	12
68	2024-11-23 11:49:01.785+00	2024-11-23 11:49:36.487+00	purpjsbvaog	Create fund	67	\N	71	create	{"usingAssignFormSchema":true,"assignFormSchema":{"_isJSONSchemaObject":true,"version":"2.0","name":"2fcwh8d0l3c","type":"void","x-component":"Grid","x-initializer":"assignFieldValuesForm:configureFields","properties":{"2ltibv1bx5v":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","properties":{"s7kkrfihznn":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","properties":{"name":{"_isJSONSchemaObject":true,"version":"2.0","type":"string","name":"name","title":"Name","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"AssignedField","x-decorator":"FormItem","x-collection-field":"funds.name","x-index":0},"fhtouzmspla":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","properties":{"6n02063v8qx":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","properties":{"project_id":{"_isJSONSchemaObject":true,"version":"2.0","type":"string","name":"project_id","title":"Project Id","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"AssignedField","x-decorator":"FormItem","x-collection-field":"funds.project_id"}},"name":"6n02063v8qx"}},"name":"fhtouzmspla","x-index":1}},"name":"s7kkrfihznn"}},"name":"2ltibv1bx5v"},"52ts0a2g245":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","properties":{"6buhul8vdyy":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","properties":{"target_amount":{"_isJSONSchemaObject":true,"version":"2.0","type":"string","name":"target_amount","title":"Target Amount","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"AssignedField","x-decorator":"FormItem","x-collection-field":"funds.target_amount"}},"name":"6buhul8vdyy"}},"name":"52ts0a2g245"},"pgy6guxls8j":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","properties":{"r70ysqihrv6":{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","properties":{"current_amount":{"_isJSONSchemaObject":true,"version":"2.0","type":"string","name":"current_amount","title":"Current Amount","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"AssignedField","x-decorator":"FormItem","x-collection-field":"funds.current_amount"}},"name":"r70ysqihrv6"}},"name":"pgy6guxls8j"}}},"params":{"appends":[],"values":{"name":"{{$jobsMapByNodeKey.mf435tyq0zj.name}}","project_id":"{{$jobsMapByNodeKey.mf435tyq0zj.id}}","target_amount":"{{$jobsMapByNodeKey.mf435tyq0zj.total_amount}}","current_amount":0}},"collection":"funds"}	22
\.


--
-- TOC entry 3923 (class 0 OID 316295)
-- Dependencies: 247
-- Data for Name: funds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.funds ("createdAt", "updatedAt", id, "createdById", "updatedById", name, target_amount, current_amount, project_id, description, is_deleted, qr_code_url) FROM stdin;
2024-11-23 12:14:08.318+00	2024-11-25 06:56:35.051+00	21	\N	1	Xây nhà cho tui	500000000	0	\N	\N	0	https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=X%C3%A2y%20nh%C3%A0%20cho%20tui
2024-11-23 14:32:55.113+00	2024-11-25 06:56:35.053+00	22	\N	\N	Xây cầu	0	0	\N	\N	0	https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=Dong%20gop%20quyX%C3%A2y%20c%E1%BA%A7u
2024-11-24 02:36:51.286+00	2024-11-25 06:56:35.055+00	23	\N	\N	AAAA	0	0	\N	\N	0	https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=Dong%20gop%20quyAAAA
2024-11-24 02:43:58.661+00	2024-11-25 06:56:35.056+00	24	\N	\N	bbbbdf	0	0	\N	\N	0	https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=Dong%20gop%20quy%20bbbbdf
2024-11-29 20:13:20.707+00	2024-11-29 20:13:20.886+00	25	\N	\N	fdfggdfg	0	0	27	\N	0	https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=Dong%20gop%20quy%20fdfggdfg
\.


--
-- TOC entry 3925 (class 0 OID 316302)
-- Dependencies: 249
-- Data for Name: hello; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hello (id, "createdAt", "updatedAt", name) FROM stdin;
\.


--
-- TOC entry 3927 (class 0 OID 316306)
-- Dependencies: 251
-- Data for Name: iframeHtml; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."iframeHtml" (id, "createdAt", "updatedAt", html, "createdById", "updatedById") FROM stdin;
8411zu1034t	2024-11-23 03:18:27.009+00	2024-11-23 12:08:00.692+00	<!DOCTYPE html>\n<html lang="en">\n<head>\n  <meta charset="UTF-8">\n  <meta name="viewport" content="width=device-width, initial-scale=1.0">\n  <title>QR Code with Padding</title>\n  <style>\n    body {\n      margin: 0;\n      display: flex;\n      justify-content: center;\n      align-items: center;\n      height: 100vh; /* Chiều cao toàn màn hình */\n      background: linear-gradient(135deg, #e0eafc, #cfdef3); /* Nền gradient */\n    }\n    .container {\n      display: flex;\n      flex-direction: column;\n      align-items: center;\n      justify-content: center;\n      background: #fff; /* Nền trắng */\n      padding: 40px; /* Khoảng cách viền tổng thể */\n      border-radius: 30px; /* Bo góc nền tổng */\n      box-shadow: 0px 8px 30px rgba(0, 0, 0, 0.2); /* Bóng đổ để nổi bật */\n    }\n    img {\n      width: 90%; /* Chiếm 80% chiều rộng của khung nền */\n      max-width: 230px; /* Giới hạn kích thước lớn nhất */\n      height: auto; /* Tự động điều chỉnh chiều cao theo tỷ lệ */\n      object-fit: contain; /* Đảm bảo hình ảnh giữ đúng tỷ lệ */\n      margin-bottom: 20px; /* Khoảng cách giữa hình ảnh và nền nhỏ */\n    }\n    .text-background {\n      background-color: #f1f5f9; /* Nền nhỏ bên dưới */\n      padding: 10px 20px; /* Khoảng cách bên trong */\n      border-radius: 10px; /* Bo góc nền nhỏ */\n      font-size: 16px; /* Kích thước chữ */\n      color: #333; /* Màu chữ */\n      user-select: none;\n      text-align: center; /* Canh giữa nội dung */\n    }\n  </style>\n</head>\n<body>\n  <div class="container">\n    <!-- Hình ảnh QR Code -->\n    <img src="{{$nPopupRecord.qr_code_url}}" alt="QR Code">\n    <!-- Nền nhỏ bên dưới -->\n    <div class="text-background">Quét mã để đóng góp</div>\n  </div>\n</body>\n</html>	1	1
j4k0yp6pcp0	2024-11-29 20:30:44.581+00	2024-11-29 20:30:44.581+00	<!DOCTYPE html>\n<html lang="vi">\n<head>\n  <meta charset="UTF-8">\n  <meta name="viewport" content="width=device-width, initial-scale=1.0">\n  <title>Nút Progress</title>\n  <style>\n    * {\n      box-sizing: border-box;\n      margin: 0;\n      padding: 0;\n    }\n\n    body {\n      font-family: Arial, sans-serif;\n      display: flex;\n      justify-content: center;\n      align-items: center;\n      height: 100vh;\n      background-color: #f4f4f4;\n    }\n\n    .button-container {\n      position: relative;\n      display: flex;\n      justify-content: center;\n      align-items: center;\n    }\n\n    .progress-button {\n      position: relative;\n      padding: 15px 30px;\n      font-size: 16px;\n      font-weight: bold;\n      color: white;\n      background-color: #4caf50;\n      border: none;\n      border-radius: 30px;\n      cursor: pointer;\n      outline: none;\n      overflow: hidden;\n      text-align: center;\n    }\n\n    .progress-button .button-text {\n      position: relative;\n      z-index: 1;\n    }\n\n    .progress-bar {\n      position: absolute;\n      bottom: 0;\n      left: 0;\n      width: 100%;\n      height: 5px;\n      background-color: #ddd;\n    }\n\n    .progress {\n      width: 0;\n      height: 100%;\n      background-color: #76c7c0;\n      transition: width 0.25s ease;\n    }\n  </style>\n</head>\n<body>\n\n  <div class="button-container">\n    <button id="progress-button" class="progress-button">\n      <span class="button-text">Tải về</span>\n      <div class="progress-bar">\n        <div class="progress" id="progress"></div>\n      </div>\n    </button>\n  </div>\n\n  <script>\n    document.getElementById('progress-button').addEventListener('click', function() {\n      var progress = document.getElementById('progress');\n      var width = 0;\n      \n      // Set interval để cập nhật tiến trình\n      var interval = setInterval(function() {\n        if (width >= 100) {\n          clearInterval(interval);  // Dừng tiến trình khi đạt 100%\n        } else {\n          width++;  // Tăng giá trị width\n          progress.style.width = width + '%';  // Cập nhật thanh tiến trình\n        }\n      }, 50);  // Thời gian để hoàn thành 100% (50ms mỗi lần)\n    });\n  </script>\n\n</body>\n</html>\n	1	1
kfrlwu4mh96	2024-11-29 20:33:49.455+00	2024-11-29 20:40:51.633+00	<!DOCTYPE html>\n<html lang="en">\n<head>\n    <meta charset="UTF-8">\n    <meta name="viewport" content="width=device-width, initial-scale=1.0">\n    <title>Fundraising Progress Bar</title>\n    <style>\n        .progress-container {\n            width: 765px;\n            background-color: #f3f3f3;\n            border-radius: 10px;\n            padding: 10px;\n            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);\n        }\n        .progress-bar {\n            width: 13%;\n            height: 20px;\n            background-color: #4caf50;\n            border-radius: 15px;\n        }\n        .progress-info {\n            display: flex;\n            justify-content: space-between;\n            align-items: center;\n            margin-top: 10px;\n        }\n        .progress-info div {\n            font-size: 14px;\n        }\n        .progress-info .amount {\n            font-weight: bold;\n        }\n        .progress-info .countdown {\n            font-weight: bold;\n        }\n    </style>\n</head>\n<body>\n    <div class="progress-container">\n        <div class="progress-bar"></div>\n        <div class="progress-info">\n            <div class="amount">12,500,000 VND</div>\n            <div>18% của 100,000,000 VND</div>\n        </div>\n    </div>\n</body>\n</html>\n	1	1
\.


--
-- TOC entry 3928 (class 0 OID 316311)
-- Dependencies: 252
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.images ("createdAt", "updatedAt", id, "createdById", "updatedById", path, project_id) FROM stdin;
2024-11-26 07:15:01.065+00	2024-11-26 07:15:01.065+00	1	1	1	https://upload.wikimedia.org/wikipedia/commons/4/47/C%C3%B4ng_tr%C3%ACnh_d%C3%A2n_d%E1%BB%A5ng.JPG	25
2024-11-26 07:15:25.9+00	2024-11-26 07:15:25.9+00	2	1	1	https://cdn.thuvienphapluat.vn/uploads/tintuc/2021/08/24/cong-trinh-xay-dung.jpg	25
\.


--
-- TOC entry 3930 (class 0 OID 316317)
-- Dependencies: 254
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jobs (id, "createdAt", "updatedAt", "executionId", "nodeId", "nodeKey", "upstreamId", status, result) FROM stdin;
1	2024-11-22 17:44:25.719+00	2024-11-22 17:44:25.719+00	1	5	twt0xfjpvhp	\N	1	{"id":2,"project_id":2,"name":"Xây cầu","target_amount":0,"current_amount":0,"updatedAt":"2024-11-22T17:44:25.668Z","createdAt":"2024-11-22T17:44:25.668Z","createdById":null,"updatedById":null,"description":null}
2	2024-11-22 18:10:46.52+00	2024-11-22 18:10:46.52+00	2	6	twt0xfjpvhp	\N	1	{"createdAt":"2024-11-22T18:10:46.460Z","updatedAt":"2024-11-22T18:10:46.460Z","name":"Xây nhà cho dân","target_amount":6500000000,"current_amount":0,"description":null,"project_id":3,"id":3,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null}
3	2024-11-22 20:15:39.894+00	2024-11-22 20:15:39.894+00	3	14	dl3c184o658	\N	1	true
4	2024-11-22 20:15:40.01+00	2024-11-22 20:15:40.01+00	3	15	mf435tyq0zj	3	1	{"createdAt":"2024-11-22T20:15:39.950Z","updatedAt":"2024-11-22T20:15:39.950Z","id":4,"name":"sdfsdfa","construction_site":"2423ehgtedasfws","actual_expenditures":null,"total_amount":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
5	2024-11-22 20:15:40.12+00	2024-11-22 20:15:40.12+00	3	16	purpjsbvaog	4	1	{"id":4,"name":"sdfsdfa","project_id":4,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-22T20:15:40.065Z","createdAt":"2024-11-22T20:15:40.065Z","createdById":null,"updatedById":null,"description":null}
6	2024-11-22 20:15:40.331+00	2024-11-22 20:15:40.331+00	4	6	twt0xfjpvhp	\N	1	{"createdAt":"2024-11-22T20:15:40.283Z","updatedAt":"2024-11-22T20:15:40.283Z","name":"sdfsdfa","target_amount":0,"current_amount":0,"description":null,"project_id":4,"id":5,"createdById":null,"updatedById":null,"createdBy":null,"updatedBy":null}
7	2024-11-23 01:53:43.444+00	2024-11-23 01:53:43.444+00	5	14	dl3c184o658	\N	1	true
8	2024-11-23 01:53:43.555+00	2024-11-23 01:53:43.555+00	5	15	mf435tyq0zj	7	1	{"createdAt":"2024-11-23T01:53:43.496Z","updatedAt":"2024-11-23T01:53:43.496Z","id":5,"name":"fsaf","construction_site":"ểgsertwegrwegerge","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
9	2024-11-23 01:53:43.662+00	2024-11-23 01:53:43.662+00	5	16	purpjsbvaog	8	1	{"is_deleted":0,"id":6,"name":"fsaf","project_id":5,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-23T01:53:43.613Z","createdAt":"2024-11-23T01:53:43.613Z","createdById":null,"updatedById":null,"description":null,"qrContent":null,"qrCodeUrl":null}
10	2024-11-23 08:02:29.499+00	2024-11-23 08:02:29.499+00	6	22	59xues1luod	\N	1	1
11	2024-11-23 08:02:48.277+00	2024-11-23 08:02:48.277+00	7	22	59xues1luod	\N	1	0
12	2024-11-23 08:03:02.937+00	2024-11-23 08:03:02.937+00	8	22	59xues1luod	\N	1	0
13	2024-11-23 08:06:00.259+00	2024-11-23 08:06:00.259+00	9	22	59xues1luod	\N	1	1
14	2024-11-23 08:06:40.089+00	2024-11-23 08:06:40.089+00	10	22	59xues1luod	\N	1	1
15	2024-11-23 08:07:10.145+00	2024-11-23 08:07:10.145+00	11	22	59xues1luod	\N	1	0
16	2024-11-23 09:07:30.649+00	2024-11-23 09:07:30.649+00	12	25	r5gw63gryqb	\N	1	true
17	2024-11-23 09:07:30.702+00	2024-11-23 09:07:30.702+00	12	26	te6q822kw5e	16	1	\N
18	2024-11-23 09:08:33.585+00	2024-11-23 09:08:33.585+00	13	25	r5gw63gryqb	\N	1	true
19	2024-11-23 09:08:33.639+00	2024-11-23 09:08:33.639+00	13	26	te6q822kw5e	18	1	\N
20	2024-11-23 09:09:45.362+00	2024-11-23 09:09:45.362+00	14	25	r5gw63gryqb	\N	1	true
21	2024-11-23 09:09:45.408+00	2024-11-23 09:09:45.408+00	14	26	te6q822kw5e	20	1	\N
22	2024-11-23 10:17:39.747+00	2024-11-23 10:17:39.747+00	15	28	dl3c184o658	\N	1	true
23	2024-11-23 10:17:39.874+00	2024-11-23 10:17:39.874+00	15	29	mf435tyq0zj	22	1	{"createdAt":"2024-11-23T10:17:39.803Z","updatedAt":"2024-11-23T10:17:39.803Z","id":6,"name":"Xây nhà cho em","construction_site":"Làng..., Lào Cai","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
24	2024-11-23 10:17:39.989+00	2024-11-23 10:17:39.989+00	15	30	purpjsbvaog	23	1	{"is_deleted":0,"id":7,"name":"Xây nhà cho em","project_id":6,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-23T10:17:39.934Z","createdAt":"2024-11-23T10:17:39.934Z","createdById":null,"updatedById":null,"description":null,"qrContent":null,"qrCodeUrl":null}
25	2024-11-23 10:17:40.04+00	2024-11-23 10:17:40.11+00	15	33	5r4ycyw5knp	24	-1	{"message":"connect ECONNREFUSED ::1:80","name":"Error","stack":"Error: connect ECONNREFUSED ::1:80\\n    at TCPConnectWrap.afterConnect [as oncomplete] (node:net:1607:16)","config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":57},"url":"/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":7,\\"fund_name\\":\\"Xây nhà cho em\\",\\"user_id\\":\\"\\"}"},"code":"ECONNREFUSED","status":null}
26	2024-11-23 10:20:33.616+00	2024-11-23 10:20:33.616+00	16	28	dl3c184o658	\N	1	true
27	2024-11-23 10:20:33.723+00	2024-11-23 10:20:33.723+00	16	29	mf435tyq0zj	26	1	{"createdAt":"2024-11-23T10:20:33.670Z","updatedAt":"2024-11-23T10:20:33.670Z","id":7,"name":"Xây nhà cho người dân tộc","construction_site":"Vùng núi Điện Biên","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
28	2024-11-23 10:20:33.828+00	2024-11-23 10:20:33.828+00	16	30	purpjsbvaog	27	1	{"is_deleted":0,"id":8,"name":"Xây nhà cho người dân tộc","project_id":7,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-23T10:20:33.780Z","createdAt":"2024-11-23T10:20:33.780Z","createdById":null,"updatedById":null,"description":null,"qrContent":null,"qrCodeUrl":null}
29	2024-11-23 10:20:33.888+00	2024-11-23 10:20:33.954+00	16	33	5r4ycyw5knp	28	-1	{"message":"connect ECONNREFUSED ::1:80","name":"Error","stack":"Error: connect ECONNREFUSED ::1:80\\n    at TCPConnectWrap.afterConnect [as oncomplete] (node:net:1607:16)","config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":74},"url":"/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":8,\\"fund_name\\":\\"Xây nhà cho người dân tộc\\",\\"user_id\\":\\"\\"}"},"code":"ECONNREFUSED","status":null}
30	2024-11-23 10:24:00.594+00	2024-11-23 10:24:00.594+00	17	35	dl3c184o658	\N	1	true
31	2024-11-23 10:24:00.702+00	2024-11-23 10:24:00.702+00	17	36	mf435tyq0zj	30	1	{"createdAt":"2024-11-23T10:24:00.650Z","updatedAt":"2024-11-23T10:24:00.650Z","id":8,"name":"aaaaa","construction_site":"Cao Bằng","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
62	2024-11-23 11:29:14.04+00	2024-11-23 11:29:14.04+00	23	65	a85uw3ggalc	61	1	1
32	2024-11-23 10:24:00.808+00	2024-11-23 10:24:00.808+00	17	37	purpjsbvaog	31	1	{"is_deleted":0,"id":9,"name":"aaaaa","project_id":8,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-23T10:24:00.759Z","createdAt":"2024-11-23T10:24:00.759Z","createdById":null,"updatedById":null,"description":null,"qrContent":null,"qrCodeUrl":null}
33	2024-11-23 10:24:00.86+00	2024-11-23 10:24:00.925+00	17	38	5r4ycyw5knp	32	-1	{"message":"timeout of 1ms exceeded","name":"Error","stack":"Error: timeout of 1ms exceeded\\n    at createError (G:\\\\DTU-OLP-2024\\\\node_modules\\\\axios\\\\lib\\\\core\\\\createError.js:16:15)\\n    at RedirectableRequest.handleRequestTimeout (G:\\\\DTU-OLP-2024\\\\node_modules\\\\axios\\\\lib\\\\adapters\\\\http.js:369:16)\\n    at RedirectableRequest.emit (node:events:519:28)\\n    at RedirectableRequest.emit (node:domain:488:12)\\n    at Timeout.<anonymous> (G:\\\\DTU-OLP-2024\\\\node_modules\\\\follow-redirects\\\\index.js:221:12)\\n    at listOnTimeout (node:internal/timers:581:17)\\n    at process.processTimers (node:internal/timers:519:7)","config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":1,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":46},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":9,\\"fund_name\\":\\"aaaaa\\",\\"user_id\\":\\"\\"}"},"code":"ECONNABORTED","status":null}
34	2024-11-23 10:44:46.937+00	2024-11-23 10:44:46.937+00	18	35	dl3c184o658	\N	1	true
35	2024-11-23 10:44:47.058+00	2024-11-23 10:44:47.058+00	18	36	mf435tyq0zj	34	1	{"createdAt":"2024-11-23T10:44:46.992Z","updatedAt":"2024-11-23T10:44:46.992Z","id":9,"name":"dseww","construction_site":"fwef","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
36	2024-11-23 10:44:47.166+00	2024-11-23 10:44:47.166+00	18	37	purpjsbvaog	35	1	{"is_deleted":0,"id":10,"name":"dseww","project_id":9,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-23T10:44:47.109Z","createdAt":"2024-11-23T10:44:47.109Z","createdById":null,"updatedById":null,"description":null,"qr_code_url":null,"qr_code_content":null}
38	2024-11-23 10:44:47.371+00	2024-11-23 10:44:47.371+00	19	40	dl3c184o658	\N	1	true
39	2024-11-23 10:44:47.492+00	2024-11-23 10:44:47.492+00	19	41	mf435tyq0zj	38	1	{"createdAt":"2024-11-23T10:44:47.429Z","updatedAt":"2024-11-23T10:44:47.429Z","id":10,"name":"dseww","construction_site":"fwef","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
40	2024-11-23 10:44:47.596+00	2024-11-23 10:44:47.596+00	19	42	purpjsbvaog	39	1	{"is_deleted":0,"id":11,"name":"dseww","project_id":10,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-23T10:44:47.548Z","createdAt":"2024-11-23T10:44:47.548Z","createdById":null,"updatedById":null,"description":null,"qr_code_url":null,"qr_code_content":null}
37	2024-11-23 10:44:47.219+00	2024-11-23 10:44:47.707+00	18	38	5r4ycyw5knp	36	-1	{"message":"timeout of 1ms exceeded","name":"Error","stack":"Error: timeout of 1ms exceeded\\n    at createError (G:\\\\DTU-OLP-2024\\\\node_modules\\\\axios\\\\lib\\\\core\\\\createError.js:16:15)\\n    at RedirectableRequest.handleRequestTimeout (G:\\\\DTU-OLP-2024\\\\node_modules\\\\axios\\\\lib\\\\adapters\\\\http.js:369:16)\\n    at RedirectableRequest.emit (node:events:519:28)\\n    at RedirectableRequest.emit (node:domain:488:12)\\n    at Timeout.<anonymous> (G:\\\\DTU-OLP-2024\\\\node_modules\\\\follow-redirects\\\\index.js:221:12)\\n    at listOnTimeout (node:internal/timers:581:17)\\n    at process.processTimers (node:internal/timers:519:7)","config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":1,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":47},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":10,\\"fund_name\\":\\"dseww\\",\\"user_id\\":\\"\\"}"},"code":"ECONNABORTED","status":null}
41	2024-11-23 10:44:47.646+00	2024-11-23 10:44:47.813+00	19	43	5r4ycyw5knp	40	1	{"status":200,"statusText":"OK","headers":{"x-powered-by":"Express","vary":"Origin, Accept-Encoding","access-control-allow-credentials":"true","x-request-id":"2031286d-242c-4b5c-9ae8-87083dd77a77","content-type":"application/json; charset=utf-8","content-length":"219","date":"Sat, 23 Nov 2024 10:44:47 GMT","connection":"close","x-real-url":"http://127.0.0.1:13001/api/qr-donate"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":47},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":11,\\"fund_name\\":\\"dseww\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":{"qr_code_url":"https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=dseww","qr_code_content":"Chuyen tien dong gop quy dseww"}}}
42	2024-11-23 10:44:47.877+00	2024-11-23 10:44:47.877+00	19	44	a85uw3ggalc	41	1	1
43	2024-11-23 10:53:47.915+00	2024-11-23 10:53:47.915+00	20	45	dl3c184o658	\N	1	true
44	2024-11-23 10:53:48.04+00	2024-11-23 10:53:48.04+00	20	46	mf435tyq0zj	43	1	{"createdAt":"2024-11-23T10:53:47.974Z","updatedAt":"2024-11-23T10:53:47.974Z","id":11,"name":"dfsf3qwrqwe","construction_site":"3e3qfsdfasdvas","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
45	2024-11-23 10:53:48.14+00	2024-11-23 10:53:48.14+00	20	47	purpjsbvaog	44	1	{"is_deleted":0,"id":12,"name":"dfsf3qwrqwe","project_id":11,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-23T10:53:48.093Z","createdAt":"2024-11-23T10:53:48.093Z","createdById":null,"updatedById":null,"description":null,"qr_code_url":null,"qr_code_content":null}
64	2024-11-23 11:33:22.945+00	2024-11-23 11:33:22.945+00	24	62	mf435tyq0zj	63	1	{"createdAt":"2024-11-23T11:33:22.892Z","updatedAt":"2024-11-23T11:33:22.892Z","id":15,"name":"sdfsasafhg","construction_site":"werg2524w34t","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
65	2024-11-23 11:33:23.061+00	2024-11-23 11:33:23.061+00	24	63	purpjsbvaog	64	1	{"is_deleted":0,"id":16,"name":"sdfsasafhg","project_id":15,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-23T11:33:23.003Z","createdAt":"2024-11-23T11:33:23.003Z","createdById":null,"updatedById":null,"description":null,"qr_code_url":null}
46	2024-11-23 10:53:48.192+00	2024-11-23 10:53:48.265+00	20	48	5r4ycyw5knp	45	1	{"status":200,"statusText":"OK","headers":{"x-powered-by":"Express","vary":"Origin, Accept-Encoding","access-control-allow-credentials":"true","x-request-id":"d910266b-a354-4635-af27-6f32d1c635a6","content-type":"application/json; charset=utf-8","content-length":"231","date":"Sat, 23 Nov 2024 10:53:48 GMT","connection":"close","x-real-url":"http://127.0.0.1:13001/api/qr-donate"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":53},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":12,\\"fund_name\\":\\"dfsf3qwrqwe\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":{"qr_code_url":"https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=dfsf3qwrqwe","qr_code_content":"Chuyen tien dong gop quy dfsf3qwrqwe"}}}
47	2024-11-23 10:53:48.371+00	2024-11-23 10:53:48.371+00	20	49	a85uw3ggalc	46	1	1
48	2024-11-23 10:58:26.305+00	2024-11-23 10:58:26.305+00	21	50	dl3c184o658	\N	1	true
49	2024-11-23 10:58:26.416+00	2024-11-23 10:58:26.416+00	21	51	mf435tyq0zj	48	1	{"createdAt":"2024-11-23T10:58:26.361Z","updatedAt":"2024-11-23T10:58:26.361Z","id":12,"name":"fgdfsg","construction_site":"dfsaf1qwfsdf","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
50	2024-11-23 10:58:26.52+00	2024-11-23 10:58:26.52+00	21	52	purpjsbvaog	49	1	{"is_deleted":0,"id":13,"name":"fgdfsg","project_id":12,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-23T10:58:26.472Z","createdAt":"2024-11-23T10:58:26.472Z","createdById":null,"updatedById":null,"description":null,"qr_code_url":null,"qr_code_content":null}
51	2024-11-23 10:58:26.569+00	2024-11-23 10:58:26.644+00	21	53	5r4ycyw5knp	50	1	{"status":200,"statusText":"OK","headers":{"x-powered-by":"Express","vary":"Origin, Accept-Encoding","access-control-allow-credentials":"true","x-request-id":"9ca49866-1087-4335-bff1-b5d73e61a3a0","content-type":"application/json; charset=utf-8","content-length":"221","date":"Sat, 23 Nov 2024 10:58:26 GMT","connection":"close","x-real-url":"http://127.0.0.1:13001/api/qr-donate"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":48},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":13,\\"fund_name\\":\\"fgdfsg\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":{"qr_code_url":"https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=fgdfsg","qr_code_content":"Chuyen tien dong gop quy fgdfsg"}}}
52	2024-11-23 10:58:26.706+00	2024-11-23 10:58:26.706+00	21	54	a85uw3ggalc	51	1	1
53	2024-11-23 11:22:35.238+00	2024-11-23 11:22:35.238+00	22	55	dl3c184o658	\N	1	true
54	2024-11-23 11:22:35.357+00	2024-11-23 11:22:35.357+00	22	56	mf435tyq0zj	53	1	{"createdAt":"2024-11-23T11:22:35.295Z","updatedAt":"2024-11-23T11:22:35.295Z","id":13,"name":"dfg5ter","construction_site":"6346tehryuafgeg","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
55	2024-11-23 11:22:35.461+00	2024-11-23 11:22:35.461+00	22	57	purpjsbvaog	54	1	{"is_deleted":0,"id":14,"name":"dfg5ter","project_id":13,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-23T11:22:35.413Z","createdAt":"2024-11-23T11:22:35.413Z","createdById":null,"updatedById":null,"description":null,"qr_code_url":null}
56	2024-11-23 11:22:35.511+00	2024-11-23 11:22:35.588+00	22	58	5r4ycyw5knp	55	1	{"status":200,"statusText":"OK","headers":{"x-powered-by":"Express","vary":"Origin, Accept-Encoding","access-control-allow-credentials":"true","x-request-id":"009450ee-7dce-44cd-a3f7-198f46fc97c8","content-type":"application/json; charset=utf-8","content-length":"154","date":"Sat, 23 Nov 2024 11:22:35 GMT","connection":"close","x-real-url":"http://127.0.0.1:13001/api/qr-donate"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":49},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":14,\\"fund_name\\":\\"dfg5ter\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":"https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=dfg5ter"}}
57	2024-11-23 11:22:35.647+00	2024-11-23 11:22:35.647+00	22	59	a85uw3ggalc	56	1	1
58	2024-11-23 11:29:13.606+00	2024-11-23 11:29:13.606+00	23	61	dl3c184o658	\N	1	true
59	2024-11-23 11:29:13.738+00	2024-11-23 11:29:13.738+00	23	62	mf435tyq0zj	58	1	{"createdAt":"2024-11-23T11:29:13.664Z","updatedAt":"2024-11-23T11:29:13.664Z","id":14,"name":"sdf2efwefe","construction_site":"rfwegwege","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
60	2024-11-23 11:29:13.85+00	2024-11-23 11:29:13.85+00	23	63	purpjsbvaog	59	1	{"is_deleted":0,"id":15,"name":"sdf2efwefe","project_id":14,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-23T11:29:13.794Z","createdAt":"2024-11-23T11:29:13.794Z","createdById":null,"updatedById":null,"description":null,"qr_code_url":null}
61	2024-11-23 11:29:13.901+00	2024-11-23 11:29:13.983+00	23	64	5r4ycyw5knp	60	1	{"status":200,"statusText":"OK","headers":{"x-powered-by":"Express","vary":"Origin, Accept-Encoding","access-control-allow-credentials":"true","x-request-id":"a97acb16-d8f3-4f24-866d-c0081fb4761a","content-type":"application/json; charset=utf-8","content-length":"157","date":"Sat, 23 Nov 2024 11:29:13 GMT","connection":"close","x-real-url":"http://127.0.0.1:13001/api/qr-donate"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":52},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":15,\\"fund_name\\":\\"sdf2efwefe\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":"https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=sdf2efwefe"}}
63	2024-11-23 11:33:22.838+00	2024-11-23 11:33:22.838+00	24	61	dl3c184o658	\N	1	true
66	2024-11-23 11:33:23.11+00	2024-11-23 11:33:23.192+00	24	64	5r4ycyw5knp	65	1	{"status":200,"statusText":"OK","headers":{"x-powered-by":"Express","vary":"Origin, Accept-Encoding","access-control-allow-credentials":"true","x-request-id":"440dfe2a-ccc7-40f7-b861-a43219e3f879","content-type":"application/json; charset=utf-8","content-length":"219","date":"Sat, 23 Nov 2024 11:33:23 GMT","connection":"close","x-real-url":"http://127.0.0.1:13001/api/qr-donate"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":52},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":16,\\"fund_name\\":\\"sdfsasafhg\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":"https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=sdfsasafhg","meta":{"fund_id":16,"fund_name":"sdfsasafhg","user_id":null}}}
67	2024-11-23 11:33:23.247+00	2024-11-23 11:33:23.247+00	24	65	a85uw3ggalc	66	1	1
68	2024-11-23 11:51:25.906+00	2024-11-23 11:51:25.906+00	25	66	dl3c184o658	\N	1	true
69	2024-11-23 11:51:26.015+00	2024-11-23 11:51:26.015+00	25	67	mf435tyq0zj	68	1	{"createdAt":"2024-11-23T11:51:25.961Z","updatedAt":"2024-11-23T11:51:25.961Z","id":16,"name":"f43gu4thrt","construction_site":"fg","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
70	2024-11-23 11:51:26.117+00	2024-11-23 11:51:26.117+00	25	68	purpjsbvaog	69	1	{"is_deleted":0,"id":17,"name":"f43gu4thrt","project_id":16,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-23T11:51:26.070Z","createdAt":"2024-11-23T11:51:26.070Z","createdById":null,"updatedById":null,"description":null,"qr_code_url":null}
71	2024-11-23 11:51:26.169+00	2024-11-23 11:51:26.248+00	25	71	dryirmt6df0	70	1	{"status":200,"statusText":"OK","headers":{"x-powered-by":"Express","vary":"Origin, Accept-Encoding","access-control-allow-credentials":"true","x-request-id":"d94e5c81-1a1c-44f8-8b28-7ab37d980ddb","content-type":"application/json; charset=utf-8","content-length":"219","date":"Sat, 23 Nov 2024 11:51:26 GMT","connection":"close","x-real-url":"http://127.0.0.1:13001/api/qr-donate"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":52},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":17,\\"fund_name\\":\\"f43gu4thrt\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":"https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=f43gu4thrt","meta":{"fund_id":17,"fund_name":"f43gu4thrt","user_id":null}}}
72	2024-11-23 11:52:49.702+00	2024-11-23 11:52:49.702+00	26	66	dl3c184o658	\N	1	true
73	2024-11-23 11:52:49.806+00	2024-11-23 11:52:49.806+00	26	67	mf435tyq0zj	72	1	{"createdAt":"2024-11-23T11:52:49.750Z","updatedAt":"2024-11-23T11:52:49.750Z","id":17,"name":"dfdffg","construction_site":"dsfsfwe","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
74	2024-11-23 11:52:49.907+00	2024-11-23 11:52:49.907+00	26	68	purpjsbvaog	73	1	{"id":18,"updatedAt":"2024-11-23T11:52:49.860Z","createdAt":"2024-11-23T11:52:49.860Z"}
75	2024-11-23 11:52:49.958+00	2024-11-23 11:52:50.022+00	26	71	dryirmt6df0	74	-1	{"message":"Request failed with status code 400","stack":"Error: Request failed with status code 400\\n    at createError (G:\\\\DTU-OLP-2024\\\\node_modules\\\\axios\\\\lib\\\\core\\\\createError.js:16:15)\\n    at settle (G:\\\\DTU-OLP-2024\\\\node_modules\\\\axios\\\\lib\\\\core\\\\settle.js:17:12)\\n    at IncomingMessage.handleStreamEnd (G:\\\\DTU-OLP-2024\\\\node_modules\\\\axios\\\\lib\\\\adapters\\\\http.js:322:11)\\n    at IncomingMessage.emit (node:events:531:35)\\n    at IncomingMessage.emit (node:domain:488:12)\\n    at endReadableNT (node:internal/streams/readable:1696:12)\\n    at process.processTicksAndRejections (node:internal/process/task_queues:82:21)","status":400,"statusText":"Bad Request","headers":{"x-powered-by":"Express","vary":"Origin, Accept-Encoding","access-control-allow-credentials":"true","x-request-id":"b93d063a-55c9-4c37-a337-77e8d371dca5","content-type":"application/json; charset=utf-8","content-length":"122","date":"Sat, 23 Nov 2024 11:52:50 GMT","connection":"close","x-real-url":"http://127.0.0.1:13001/api/qr-donate"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":27},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":18,\\"user_id\\":\\"\\"}"},"data":{"success":false,"message":"Vui lòng cung cấp đầy đủ thông tin: id quỹ và tên quỹ.","data":null,"meta":{}}}
76	2024-11-23 12:00:19.932+00	2024-11-23 12:00:19.932+00	27	66	dl3c184o658	\N	1	true
77	2024-11-23 12:00:20.053+00	2024-11-23 12:00:20.053+00	27	67	mf435tyq0zj	76	1	{"createdAt":"2024-11-23T12:00:19.989Z","updatedAt":"2024-11-23T12:00:19.989Z","id":18,"name":"fterterargaed","construction_site":"yy364yt","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
78	2024-11-23 12:00:20.157+00	2024-11-23 12:00:20.157+00	27	68	purpjsbvaog	77	1	{"is_deleted":0,"id":19,"name":"fterterargaed","project_id":18,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-23T12:00:20.108Z","createdAt":"2024-11-23T12:00:20.108Z","createdById":null,"updatedById":null,"description":null,"qr_code_url":null}
94	2024-11-24 02:36:51.342+00	2024-11-24 02:36:51.342+00	31	68	purpjsbvaog	93	1	{"is_deleted":0,"id":23,"name":"AAAA","project_id":22,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-24T02:36:51.286Z","createdAt":"2024-11-24T02:36:51.286Z","createdById":null,"updatedById":null,"description":null,"qr_code_url":null}
79	2024-11-23 12:00:20.205+00	2024-11-23 12:00:20.328+00	27	71	dryirmt6df0	78	1	{"status":200,"statusText":"OK","headers":{"x-powered-by":"Express","vary":"Origin, Accept-Encoding","access-control-allow-credentials":"true","x-request-id":"9881c653-d635-42a5-a9fd-15b1132c8949","content-type":"application/json; charset=utf-8","content-length":"225","date":"Sat, 23 Nov 2024 12:00:20 GMT","connection":"close","x-real-url":"http://127.0.0.1:13001/api/qr-donate"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":55},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":19,\\"fund_name\\":\\"fterterargaed\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":"https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=fterterargaed","meta":{"fund_id":19,"fund_name":"fterterargaed","user_id":null}}}
80	2024-11-23 12:01:26.113+00	2024-11-23 12:01:26.113+00	28	66	dl3c184o658	\N	1	true
81	2024-11-23 12:01:26.223+00	2024-11-23 12:01:26.223+00	28	67	mf435tyq0zj	80	1	{"createdAt":"2024-11-23T12:01:26.167Z","updatedAt":"2024-11-23T12:01:26.167Z","id":19,"name":"sdegrgre","construction_site":"erfgfedfg","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
82	2024-11-23 12:01:26.324+00	2024-11-23 12:01:26.324+00	28	68	purpjsbvaog	81	1	{"is_deleted":0,"id":20,"name":"sdegrgre","project_id":19,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-23T12:01:26.277Z","createdAt":"2024-11-23T12:01:26.277Z","createdById":null,"updatedById":null,"description":null,"qr_code_url":null}
83	2024-11-23 12:01:26.374+00	2024-11-23 12:01:26.49+00	28	71	dryirmt6df0	82	1	{"status":200,"statusText":"OK","headers":{"x-powered-by":"Express","vary":"Origin, Accept-Encoding","access-control-allow-credentials":"true","x-request-id":"3ae797e5-f7b9-4291-89cb-c1bc9a91291d","content-type":"application/json; charset=utf-8","content-length":"215","date":"Sat, 23 Nov 2024 12:01:26 GMT","connection":"close","x-real-url":"http://127.0.0.1:13001/api/qr-donate"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":50},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":20,\\"fund_name\\":\\"sdegrgre\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":"https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=sdegrgre","meta":{"fund_id":20,"fund_name":"sdegrgre","user_id":null}}}
84	2024-11-23 12:14:08.133+00	2024-11-23 12:14:08.133+00	29	66	dl3c184o658	\N	1	true
85	2024-11-23 12:14:08.252+00	2024-11-23 12:14:08.252+00	29	67	mf435tyq0zj	84	1	{"createdAt":"2024-11-23T12:14:08.189Z","updatedAt":"2024-11-23T12:14:08.189Z","id":20,"name":"Xây nhà cho tui","construction_site":"Hoà Xuân, Cẩm Lệ, Đà Nẵng","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
86	2024-11-23 12:14:08.384+00	2024-11-23 12:14:08.384+00	29	68	purpjsbvaog	85	1	{"is_deleted":0,"id":21,"name":"Xây nhà cho tui","project_id":20,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-23T12:14:08.318Z","createdAt":"2024-11-23T12:14:08.318Z","createdById":null,"updatedById":null,"description":null,"qr_code_url":null}
87	2024-11-23 12:14:08.445+00	2024-11-23 12:14:08.569+00	29	71	dryirmt6df0	86	1	{"status":200,"statusText":"OK","headers":{"x-powered-by":"Express","vary":"Origin, Accept-Encoding","access-control-allow-credentials":"true","x-request-id":"2728d01a-137a-4d18-a83c-053fbda68c66","content-type":"application/json; charset=utf-8","content-length":"247","date":"Sat, 23 Nov 2024 12:14:08 GMT","connection":"close","x-real-url":"http://127.0.0.1:13001/api/qr-donate"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":59},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":21,\\"fund_name\\":\\"Xây nhà cho tui\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":"https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=X%C3%A2y%20nh%C3%A0%20cho%20tui","meta":{"fund_id":21,"fund_name":"Xây nhà cho tui","user_id":null}}}
88	2024-11-23 14:32:54.935+00	2024-11-23 14:32:54.935+00	30	66	dl3c184o658	\N	1	true
89	2024-11-23 14:32:55.057+00	2024-11-23 14:32:55.057+00	30	67	mf435tyq0zj	88	1	{"createdAt":"2024-11-23T14:32:54.990Z","updatedAt":"2024-11-23T14:32:54.990Z","id":21,"name":"Xây cầu","construction_site":"Sơn La","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
90	2024-11-23 14:32:55.166+00	2024-11-23 14:32:55.166+00	30	68	purpjsbvaog	89	1	{"is_deleted":0,"id":22,"name":"Xây cầu","project_id":21,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-23T14:32:55.113Z","createdAt":"2024-11-23T14:32:55.113Z","createdById":null,"updatedById":null,"description":null,"qr_code_url":null}
91	2024-11-23 14:32:55.215+00	2024-11-23 14:32:55.353+00	30	71	dryirmt6df0	90	1	{"status":200,"statusText":"OK","headers":{"x-powered-by":"Express","vary":"Origin, Accept-Encoding","access-control-allow-credentials":"true","x-request-id":"34cde6d2-450b-4eda-8f77-3fbd8e6ad506","content-type":"application/json; charset=utf-8","content-length":"247","date":"Sat, 23 Nov 2024 14:32:55 GMT","connection":"close","x-real-url":"http://127.0.0.1:13001/api/qr-donate"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":52},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":22,\\"fund_name\\":\\"Xây cầu\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":"https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=Dong%20gop%20quyX%C3%A2y%20c%E1%BA%A7u","meta":{"fund_id":22,"fund_name":"Xây cầu","user_id":null}}}
92	2024-11-24 02:36:51.111+00	2024-11-24 02:36:51.111+00	31	66	dl3c184o658	\N	1	true
93	2024-11-24 02:36:51.228+00	2024-11-24 02:36:51.228+00	31	67	mf435tyq0zj	92	1	{"createdAt":"2024-11-24T02:36:51.167Z","updatedAt":"2024-11-24T02:36:51.167Z","id":22,"name":"AAAA","construction_site":"Hà Nội","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
95	2024-11-24 02:36:51.392+00	2024-11-24 02:36:51.556+00	31	71	dryirmt6df0	94	1	{"status":200,"statusText":"OK","headers":{"x-powered-by":"Express","vary":"Origin, Accept-Encoding","access-control-allow-credentials":"true","x-request-id":"ca3dc9b5-1082-476e-9608-0a8680a55a1e","content-type":"application/json; charset=utf-8","content-length":"223","date":"Sun, 24 Nov 2024 02:36:51 GMT","connection":"close","x-real-url":"http://127.0.0.1:13001/api/qr-donate"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":46},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":23,\\"fund_name\\":\\"AAAA\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":"https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=Dong%20gop%20quyAAAA","meta":{"fund_id":23,"fund_name":"AAAA","user_id":null}}}
96	2024-11-24 02:43:58.486+00	2024-11-24 02:43:58.486+00	32	66	dl3c184o658	\N	1	true
97	2024-11-24 02:43:58.608+00	2024-11-24 02:43:58.608+00	32	67	mf435tyq0zj	96	1	{"createdAt":"2024-11-24T02:43:58.543Z","updatedAt":"2024-11-24T02:43:58.543Z","id":23,"name":"bbbbdf","construction_site":"fd","actual_expenditures":null,"total_amount":0,"is_deleted":0,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
98	2024-11-24 02:43:58.72+00	2024-11-24 02:43:58.72+00	32	68	purpjsbvaog	97	1	{"is_deleted":0,"id":24,"name":"bbbbdf","project_id":23,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-24T02:43:58.661Z","createdAt":"2024-11-24T02:43:58.661Z","createdById":null,"updatedById":null,"description":null,"qr_code_url":null}
99	2024-11-24 02:43:58.769+00	2024-11-24 02:43:58.891+00	32	71	dryirmt6df0	98	1	{"status":200,"statusText":"OK","headers":{"x-powered-by":"Express","vary":"Origin, Accept-Encoding","access-control-allow-credentials":"true","x-request-id":"cc8d49dd-3947-4e01-a20c-d6b473e28e39","content-type":"application/json; charset=utf-8","content-length":"230","date":"Sun, 24 Nov 2024 02:43:58 GMT","connection":"close","x-real-url":"http://127.0.0.1:13001/api/qr-donate"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":48},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":24,\\"fund_name\\":\\"bbbbdf\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":"https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=Dong%20gop%20quy%20bbbbdf","meta":{"fund_id":24,"fund_name":"bbbbdf","user_id":null}}}
100	2024-11-29 20:13:20.537+00	2024-11-29 20:13:20.537+00	33	66	dl3c184o658	\N	1	true
101	2024-11-29 20:13:20.652+00	2024-11-29 20:13:20.652+00	33	67	mf435tyq0zj	100	1	{"createdAt":"2024-11-29T20:13:20.591Z","updatedAt":"2024-11-29T20:13:20.591Z","id":27,"name":"fdfggdfg","total_amount":0,"construction_site":"gfdsdfg","is_deleted":0,"sub_title":null,"createdById":null,"updatedById":null,"createdBy":null,"fund_id":null}
102	2024-11-29 20:13:20.756+00	2024-11-29 20:13:20.756+00	33	68	purpjsbvaog	101	1	{"is_deleted":0,"id":25,"name":"fdfggdfg","project_id":27,"target_amount":0,"current_amount":0,"updatedAt":"2024-11-29T20:13:20.707Z","createdAt":"2024-11-29T20:13:20.707Z","createdById":null,"updatedById":null,"description":null,"qr_code_url":null}
103	2024-11-29 20:13:20.806+00	2024-11-29 20:13:20.949+00	33	71	dryirmt6df0	102	1	{"status":200,"statusText":"OK","headers":{"x-powered-by":"Express","vary":"Origin, Accept-Encoding","access-control-allow-credentials":"true","x-request-id":"c19149e9-891d-4215-8494-86eff649b0f9","content-type":"application/json; charset=utf-8","content-length":"234","date":"Fri, 29 Nov 2024 20:13:20 GMT","connection":"close","x-real-url":"http://127.0.0.1:13001/api/qr-donate"},"config":{"transitional":{"silentJSONParsing":true,"forcedJSONParsing":true,"clarifyTimeoutError":false},"transformRequest":[null],"transformResponse":[null],"timeout":5000,"xsrfCookieName":"XSRF-TOKEN","xsrfHeaderName":"X-XSRF-TOKEN","maxContentLength":-1,"maxBodyLength":-1,"headers":{"Accept":"application/json, text/plain, */*","Content-Type":"application/json","User-Agent":"axios/0.26.1","Content-Length":50},"url":"http://localhost:13000/api/qr-donate","method":"post","params":{},"data":"{\\"fund_id\\":25,\\"fund_name\\":\\"fdfggdfg\\",\\"user_id\\":\\"\\"}"},"data":{"success":true,"message":"Tạo mã QR chuyển tiền thành công.","data":"https://img.vietqr.io/image/970436-1017142420-FFiaBLN.jpg?addInfo=Dong%20gop%20quy%20fdfggdfg","meta":{"fund_id":25,"fund_name":"fdfggdfg","user_id":null}}}
\.


--
-- TOC entry 3980 (class 0 OID 365362)
-- Dependencies: 304
-- Data for Name: kafka_configs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kafka_configs (id, "createdAt", "updatedAt", group_id, client_id) FROM stdin;
\.


--
-- TOC entry 3979 (class 0 OID 365351)
-- Dependencies: 303
-- Data for Name: kafka_topics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kafka_topics (id, "createdAt", "updatedAt", broker_host, topic_name, type) FROM stdin;
\.


--
-- TOC entry 3932 (class 0 OID 316323)
-- Dependencies: 256
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (name) FROM stdin;
20240613222612-fix-assign-field-config/@nocobase/plugin-workflow
20240613110121-fix-schema-in-field/@nocobase/plugin-file-manager
\.


--
-- TOC entry 3933 (class 0 OID 316326)
-- Dependencies: 257
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects ("createdAt", "updatedAt", id, "createdById", "updatedById", name, total_amount, construction_site, is_deleted, sub_title, description) FROM stdin;
2024-11-27 05:12:46.906+00	2024-11-27 05:12:46.906+00	26	1	1	Dự án 2	20000000	HCM	0	\N	\N
2024-11-25 06:57:02.948+00	2024-11-25 07:08:32.343+00	25	1	1	Dự án 1	1000000	Đà Nẵng	0	\N	\N
2024-11-29 20:13:20.591+00	2024-11-30 07:51:05.245+00	27	\N	1	Xây dựng cầu treo	0	gfdsdfg	0	Theo lãnh đạo xã Trà Tập, đợt mưa trước đó đã gây sạt lở ta-luy dương sau trường. Do đó, chính quyền địa phương đã cho đóng cửa điểm trường trên, dời lớp học ...	<p><strong>Thông tin chi tiết</strong></p><p>Theo lãnh đạo xã Trà Tập, đợt mưa trước đó đã gây sạt lở ta-luy dương sau trường. Do đó, chính quyền địa phương đã cho đóng cửa điểm trường trên, dời lớp học về điểm trường cũ (bằng gỗ), chờ phương án xây dựng kè phía sau. Tuy nhiên, đợt mưa này tiếp tục gây sạt lở khiến điểm trường bị sập.</p><p><br></p><p>Được biết, điểm trường Răng Chuối mới khánh thành hồi tháng 9 với tổng kinh phí xây dựng hơn 1,4 tỉ đồng, do một nhà tài trợ tại TP HCM hỗ trợ toàn bộ chi phí.</p><p><br></p><p>Công trình có tổng diện tích gần 200m², tường xây kiên cố, 2 phòng học, 1 phòng ở tập thể, bếp ăn, khu vệ sinh, sân chơi, tường rào.</p><p><br></p><p>Điểm trường có 35 học sinh mầm non và tiểu học. Ngôi trường mới đưa vào sử dụng thay thế điểm trường tạm vốn đã xuống cấp.</p><p><br></p><p>Ngoài điểm trường Răng Chuối bị thiệt hại, tại huyện Nam Trà My những ngày qua trời mưa lớn kéo dài khiến nhiều điểm sạt lở tuyến đường bị đứt gãy, hư hỏng nặng.</p><p><br></p><p>Huyện Nam Trà My đã chỉ đạo các địa phương cắm biển báo nguy hiểm và cắm biển cấm xe tải trọng lớn, chỉ đạo đơn vị duy tu bảo vệ kè tạm để đảm bảo giao thông xe tải nhỏ và xe ô tô con lưu thông.</p>
\.


--
-- TOC entry 3935 (class 0 OID 316335)
-- Dependencies: 259
-- Data for Name: proposes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proposes ("createdAt", "updatedAt", id, "createdById", "updatedById", name, description, construction_site, status, is_deleted) FROM stdin;
2024-11-23 12:13:54.413+00	2024-11-23 12:14:07.902+00	19	1	1	Xây nhà cho tui		Hoà Xuân, Cẩm Lệ, Đà Nẵng	APPROVED	0
2024-11-23 14:32:40.645+00	2024-11-23 14:32:54.689+00	20	1	1	Xây cầu	\N	Sơn La	APPROVED	0
2024-11-24 02:36:39.231+00	2024-11-24 02:36:50.863+00	21	1	1	AAAA	fdfd	Hà Nội	APPROVED	0
2024-11-24 02:43:51.285+00	2024-11-24 02:43:58.247+00	22	1	1	bbbbdf	fdf	fd	APPROVED	0
2024-11-29 20:13:03.294+00	2024-11-29 20:13:20.272+00	23	1	1	fdfggdfg	\N	gfdsdfg	APPROVED	0
\.


--
-- TOC entry 3937 (class 0 OID 316343)
-- Dependencies: 261
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles ("createdAt", "updatedAt", name, title, description, strategy, "default", hidden, "allowConfigure", "allowNewMenu", snippets, sort) FROM stdin;
2024-11-22 08:42:38.212+00	2024-11-22 08:42:38.212+00	root	{{t("Root")}}	\N	\N	f	t	\N	\N	["pm", "pm.*", "ui.*"]	1
2024-11-22 08:42:38.325+00	2024-11-22 08:42:43.785+00	admin	{{t("Admin")}}	\N	{"actions":["create","view","update","destroy","importXlsx","export"]}	f	f	t	t	["pm", "pm.*", "ui.*"]	2
2024-11-22 08:42:38.442+00	2024-11-22 08:42:43.916+00	member	{{t("Member")}}	\N	{"actions":["view","update:own","destroy:own","create","importXlsx","export"]}	t	f	\N	t	["!pm", "!pm.*", "!ui.*"]	3
2024-11-22 18:33:40.883+00	2024-11-22 18:33:40.883+00	guest	Guest	\N	\N	f	f	\N	\N	["!pm", "!pm.*", "!ui.*"]	4
\.


--
-- TOC entry 3938 (class 0 OID 316351)
-- Dependencies: 262
-- Data for Name: rolesResources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesResources" (id, "createdAt", "updatedAt", "roleName", name, "usingActionsConfig") FROM stdin;
\.


--
-- TOC entry 3939 (class 0 OID 316356)
-- Dependencies: 263
-- Data for Name: rolesResourcesActions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesResourcesActions" (id, "createdAt", "updatedAt", "rolesResourceId", name, fields, "scopeId") FROM stdin;
\.


--
-- TOC entry 3941 (class 0 OID 316363)
-- Dependencies: 265
-- Data for Name: rolesResourcesScopes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesResourcesScopes" (id, "createdAt", "updatedAt", key, name, "resourceName", scope) FROM stdin;
\.


--
-- TOC entry 3944 (class 0 OID 316370)
-- Dependencies: 268
-- Data for Name: rolesUischemas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesUischemas" ("createdAt", "updatedAt", "roleName", "uiSchemaXUid") FROM stdin;
2024-11-22 14:57:45.845+00	2024-11-22 14:57:45.845+00	admin	ex4kv25u9tl
2024-11-22 14:58:09.671+00	2024-11-22 14:58:09.671+00	admin	m8tds8osehk
2024-11-22 14:58:34.785+00	2024-11-22 14:58:34.785+00	admin	swxvjglsevf
2024-11-22 14:58:50.133+00	2024-11-22 14:58:50.133+00	admin	493pimn830r
2024-11-22 16:42:02.811+00	2024-11-22 16:42:02.811+00	admin	dj0sjaykwlz
2024-11-22 16:43:59.372+00	2024-11-22 16:43:59.372+00	admin	2pxeagifr5k
2024-11-22 16:44:22.524+00	2024-11-22 16:44:22.524+00	admin	eo22qyo3qq3
2024-11-22 16:44:31.395+00	2024-11-22 16:44:31.395+00	admin	u1is4ado76a
2024-11-22 16:47:08.921+00	2024-11-22 16:47:08.921+00	admin	mwrnryoju9y
2024-11-22 16:47:29.059+00	2024-11-22 16:47:29.059+00	admin	63aby9t5qmb
2024-11-22 18:26:15.492+00	2024-11-22 18:26:15.492+00	admin	4im9rfhfhw9
2024-11-22 19:20:45.83+00	2024-11-22 19:20:45.83+00	admin	we414l1saan
2024-11-22 19:21:01.831+00	2024-11-22 19:21:01.831+00	admin	2pij3wiepc4
2024-11-25 05:04:30.879+00	2024-11-25 05:04:30.879+00	admin	eo4w9kfjmdp
2024-11-25 05:17:59.543+00	2024-11-25 05:17:59.543+00	admin	7t974q1g32g
2024-11-25 05:17:59.552+00	2024-11-25 05:17:59.552+00	member	7t974q1g32g
2024-11-25 05:18:19.801+00	2024-11-25 05:18:19.801+00	guest	7t974q1g32g
2024-11-25 05:55:21.147+00	2024-11-25 05:55:21.147+00	admin	8k1zlpvo9rl
2024-11-25 05:55:21.162+00	2024-11-25 05:55:21.162+00	member	8k1zlpvo9rl
2024-11-25 06:17:48.135+00	2024-11-25 06:17:48.135+00	admin	zgciwl9z5bw
2024-11-25 06:17:48.142+00	2024-11-25 06:17:48.142+00	member	zgciwl9z5bw
2024-11-26 23:04:41.91+00	2024-11-26 23:04:41.91+00	admin	cf54cbykv3x
2024-11-26 23:04:41.917+00	2024-11-26 23:04:41.917+00	member	cf54cbykv3x
2024-11-26 23:50:07.825+00	2024-11-26 23:50:07.825+00	admin	hmft2ujv1uf
2024-11-26 23:50:07.838+00	2024-11-26 23:50:07.838+00	member	hmft2ujv1uf
\.


--
-- TOC entry 3945 (class 0 OID 316375)
-- Dependencies: 269
-- Data for Name: rolesUsers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."rolesUsers" ("createdAt", "updatedAt", "default", "roleName", "userId") FROM stdin;
2024-11-22 08:42:39.973+00	2024-11-28 09:13:37.854+00	f	root	1
2024-11-22 08:42:38.779+00	2024-11-29 05:36:12.584+00	f	member	1
2024-11-22 08:42:39.974+00	2024-11-29 05:36:12.638+00	t	admin	1
\.


--
-- TOC entry 3946 (class 0 OID 316378)
-- Dependencies: 270
-- Data for Name: sequences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sequences (id, "createdAt", "updatedAt", collection, field, key, current, "lastGeneratedAt") FROM stdin;
\.


--
-- TOC entry 3948 (class 0 OID 316384)
-- Dependencies: 272
-- Data for Name: storages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.storages (id, "createdAt", "updatedAt", title, name, type, options, rules, path, "baseUrl", "default", paranoid) FROM stdin;
1	2024-11-22 08:42:37.91+00	2024-11-22 08:42:37.91+00	Local storage	local	local	{"documentRoot": "storage/uploads"}	{"size": 20971520}		/storage/uploads	t	f
\.


--
-- TOC entry 3951 (class 0 OID 316397)
-- Dependencies: 275
-- Data for Name: systemSettings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."systemSettings" (id, "createdAt", "updatedAt", title, "showLogoOnly", "allowSignUp", "smsAuthEnabled", "logoId", "enabledLanguages", "appLang", options) FROM stdin;
1	2024-11-22 08:42:38.148+00	2024-11-25 06:10:09.67+00	Green Hope - Hi vọng xanh	\N	t	f	2	["vi-VN"]	en-US	{}
\.


--
-- TOC entry 3953 (class 0 OID 316407)
-- Dependencies: 277
-- Data for Name: t_587vrvz0gcb; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_587vrvz0gcb ("createdAt", "updatedAt", id, "createdById", "updatedById", location_desc, number_of_victims, survival_signs, latitude, longitude) FROM stdin;
2024-11-22 10:01:25.298+00	2024-11-22 10:01:25.298+00	2	1	1	Đà Nẵng	3	Sống	40.712776	-74.005974
\.


--
-- TOC entry 3955 (class 0 OID 316416)
-- Dependencies: 279
-- Data for Name: t_b3tiaxzyeu3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_b3tiaxzyeu3 ("createdAt", "updatedAt", f_6v6rqo2fmi1, f_h8ptb1wlp6g) FROM stdin;
2024-11-26 10:29:13.136+00	2024-11-26 10:29:13.136+00	25	16
2024-11-26 10:29:13.136+00	2024-11-26 10:29:13.136+00	25	15
2024-11-26 10:29:13.136+00	2024-11-26 10:29:13.136+00	25	18
2024-11-26 10:29:13.136+00	2024-11-26 10:29:13.136+00	25	19
2024-11-26 10:29:13.136+00	2024-11-26 10:29:13.136+00	25	17
2024-11-26 10:29:47.192+00	2024-11-26 10:29:47.192+00	28	21
2024-11-26 10:29:47.193+00	2024-11-26 10:29:47.193+00	28	20
2024-11-26 10:29:47.193+00	2024-11-26 10:29:47.193+00	28	22
\.


--
-- TOC entry 3956 (class 0 OID 316419)
-- Dependencies: 280
-- Data for Name: t_bzkvdw2a767; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_bzkvdw2a767 ("createdAt", "updatedAt", f_s8php2rxxwe, f_qxu5av3g0sx) FROM stdin;
2024-11-27 05:12:46.988+00	2024-11-27 05:12:46.988+00	26	15
2024-11-27 05:12:46.988+00	2024-11-27 05:12:46.988+00	26	13
2024-11-27 05:12:46.989+00	2024-11-27 05:12:46.989+00	26	14
2024-11-27 09:55:46.611+00	2024-11-27 09:55:46.611+00	25	16
2024-11-27 09:55:46.611+00	2024-11-27 09:55:46.611+00	25	17
2024-11-27 09:55:46.611+00	2024-11-27 09:55:46.611+00	25	18
2024-11-27 09:55:46.611+00	2024-11-27 09:55:46.611+00	25	19
2024-11-29 20:13:57.157+00	2024-11-29 20:13:57.157+00	27	23
2024-11-29 20:13:57.158+00	2024-11-29 20:13:57.158+00	27	22
2024-11-29 20:13:57.158+00	2024-11-29 20:13:57.158+00	27	24
\.


--
-- TOC entry 3978 (class 0 OID 365319)
-- Dependencies: 302
-- Data for Name: t_ncaek4uddrw; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_ncaek4uddrw ("createdAt", "updatedAt", f_j72jrq1b0nw, f_9k9506pi4rq) FROM stdin;
2024-11-29 16:16:00.387+00	2024-11-29 16:16:00.387+00	22	20
2024-11-29 16:16:00.387+00	2024-11-29 16:16:00.387+00	22	21
\.


--
-- TOC entry 3957 (class 0 OID 316422)
-- Dependencies: 281
-- Data for Name: t_s9b2jhcxq9q; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_s9b2jhcxq9q ("createdAt", "updatedAt", f_b37rybuw15a, f_8o3qqdvq8bk) FROM stdin;
2024-11-25 06:57:03.002+00	2024-11-25 06:57:03.002+00	25	3
\.


--
-- TOC entry 3958 (class 0 OID 316425)
-- Dependencies: 282
-- Data for Name: themeConfig; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."themeConfig" (id, "createdAt", "updatedAt", config, optional, "isBuiltIn", uid, "default") FROM stdin;
3	2024-11-22 16:31:39.254+00	2024-11-22 16:31:39.254+00	{"name":"Compact","algorithm":"compactAlgorithm","token":{"fontSize":16}}	t	t	compact	f
4	2024-11-22 16:31:39.304+00	2024-11-22 16:31:39.304+00	{"name":"Compact dark","algorithm":["compactAlgorithm","darkAlgorithm"],"token":{"fontSize":16}}	t	t	compact_dark	f
2	2024-11-22 16:31:39.205+00	2024-11-22 16:40:27.886+00	{"name":"Dark","algorithm":"darkAlgorithm"}	t	t	dark	f
1	2024-11-22 16:31:39.1+00	2024-11-25 06:16:19.781+00	{"name":"Default"}	t	t	default	f
5	2024-11-25 06:09:25.194+00	2024-11-25 06:19:51.669+00	{"name":"Default","token":{"colorPrimaryHeader":"#001529","colorBgHeader":"#232121","colorBgHeaderMenuHover":"#ffffff1a","colorBgHeaderMenuActive":"#ffffff1a","colorTextHeaderMenu":"#ffffff","colorTextHeaderMenuHover":"#52C41A","colorTextHeaderMenuActive":"#A0D911","colorSettings":"#F18B62","colorBgSettingsHover":"rgba(241, 139, 98, 0.06)","colorBorderSettingsHover":"rgba(241, 139, 98, 0.3)","motionUnit":0.03,"motion":true,"colorPrimary":"#52C41A","fontSize":15,"borderRadius":8}}	t	f	b25k2dz5d1m	t
\.


--
-- TOC entry 3960 (class 0 OID 316432)
-- Dependencies: 284
-- Data for Name: tokenBlacklist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tokenBlacklist" (id, "createdAt", "updatedAt", token, expiration) FROM stdin;
\.


--
-- TOC entry 3962 (class 0 OID 316436)
-- Dependencies: 286
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transactions ("createdAt", "updatedAt", id, "createdById", "updatedById", transaction_code, amount, description, from_account_no, from_account_name, from_bank_name, f_e47my4oktv2, user_id, fund_id, is_deleted) FROM stdin;
2024-11-29 20:11:28.381+00	2024-11-29 20:18:31.562+00	3	1	1	2	2	2	2	2	2	\N	\N	25	0
2024-11-29 20:11:17.505+00	2024-11-29 20:18:36.783+00	2	1	1	1	1	1	1	1	1	\N	\N	25	0
2024-11-29 20:26:28.741+00	2024-11-29 20:26:39.241+00	4	1	1	45342546456673	400000	\N	1017142420	TRAN NGUYEN DUY KHANH	VCB - Ngân hàng ngoại thương Việt Nam	\N	1	25	0
\.


--
-- TOC entry 3964 (class 0 OID 316445)
-- Dependencies: 288
-- Data for Name: uiSchemaServerHooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."uiSchemaServerHooks" (id, uid, type, collection, field, method, params) FROM stdin;
\.


--
-- TOC entry 3966 (class 0 OID 316451)
-- Dependencies: 290
-- Data for Name: uiSchemaTemplates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."uiSchemaTemplates" ("createdAt", "updatedAt", key, name, "componentName", "associationName", "resourceName", "collectionName", "dataSourceKey", uid) FROM stdin;
2024-11-29 02:21:31.537+00	2024-11-29 02:21:31.537+00	773g40dyl79	Dự án_Details	Details	\N	\N	projects	main	v0hdkdeyzrd
2024-11-29 02:22:20.76+00	2024-11-29 02:22:20.76+00	x4aatqdb9qp	Dự án_Details	Details	\N	\N	projects	main	eoz95qtwix6
\.


--
-- TOC entry 3967 (class 0 OID 316456)
-- Dependencies: 291
-- Data for Name: uiSchemaTreePath; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."uiSchemaTreePath" (ancestor, descendant, depth, async, type, sort) FROM stdin;
nocobase-admin-menu	nocobase-admin-menu	0	f	\N	\N
qeotrvptuc2	qeotrvptuc2	0	f	properties	\N
pxcipvysrb8	qeotrvptuc2	1	\N	\N	1
1oxe2et0fqk	1oxe2et0fqk	0	f	properties	\N
qeotrvptuc2	1oxe2et0fqk	1	\N	\N	1
pxcipvysrb8	1oxe2et0fqk	2	\N	\N	1
xus25o42nmo	xus25o42nmo	0	f	properties	\N
1oxe2et0fqk	xus25o42nmo	1	\N	\N	1
qeotrvptuc2	xus25o42nmo	2	\N	\N	1
pxcipvysrb8	xus25o42nmo	3	\N	\N	1
gfead56fb65	gfead56fb65	0	f	properties	\N
xus25o42nmo	gfead56fb65	1	\N	\N	1
fqae3xzvq38	fqae3xzvq38	0	f	properties	\N
ofsyyzcz0jq	fqae3xzvq38	1	\N	\N	1
9azfkzbvd2t	9azfkzbvd2t	0	f	properties	\N
fqae3xzvq38	9azfkzbvd2t	1	\N	\N	1
ofsyyzcz0jq	9azfkzbvd2t	2	\N	\N	1
8ko2451l30w	8ko2451l30w	0	f	properties	\N
9azfkzbvd2t	8ko2451l30w	1	\N	\N	1
fqae3xzvq38	8ko2451l30w	2	\N	\N	1
ofsyyzcz0jq	8ko2451l30w	3	\N	\N	1
6htbvgte0tk	6htbvgte0tk	0	f	properties	\N
i0lnhtci4u6	i0lnhtci4u6	0	t	properties	\N
swxvjglsevf	i0lnhtci4u6	1	\N	\N	1
sptin92gm5m	sptin92gm5m	0	f	properties	\N
i0lnhtci4u6	sptin92gm5m	1	\N	\N	1
swxvjglsevf	sptin92gm5m	2	\N	\N	1
1oxe2et0fqk	gfead56fb65	2	\N	\N	1
nocobase-admin-menu	i0lnhtci4u6	2	\N	\N	\N
nocobase-admin-menu	sptin92gm5m	3	\N	\N	\N
swxvjglsevf	swxvjglsevf	0	f	properties	\N
8ko2451l30w	6htbvgte0tk	1	\N	\N	1
vs0l89adzhc	vs0l89adzhc	0	t	properties	\N
493pimn830r	vs0l89adzhc	1	\N	\N	1
q4dinm52meb	q4dinm52meb	0	f	properties	\N
vs0l89adzhc	q4dinm52meb	1	\N	\N	1
493pimn830r	q4dinm52meb	2	\N	\N	1
nocobase-admin-menu	vs0l89adzhc	2	\N	\N	\N
nocobase-admin-menu	q4dinm52meb	3	\N	\N	\N
493pimn830r	493pimn830r	0	f	properties	\N
9azfkzbvd2t	6htbvgte0tk	2	\N	\N	1
fqae3xzvq38	6htbvgte0tk	3	\N	\N	1
ofsyyzcz0jq	6htbvgte0tk	4	\N	\N	1
q8kb3rudliu	q8kb3rudliu	0	f	properties	\N
8ko2451l30w	q8kb3rudliu	1	\N	\N	2
9azfkzbvd2t	q8kb3rudliu	2	\N	\N	2
fqae3xzvq38	q8kb3rudliu	3	\N	\N	2
ofsyyzcz0jq	q8kb3rudliu	4	\N	\N	2
3i3tciuj9cf	6htbvgte0tk	5	\N	\N	\N
bws6e7i5xki	6htbvgte0tk	6	\N	\N	\N
08elwnxsu63	6htbvgte0tk	7	\N	\N	\N
mwjoqz5w6cn	6htbvgte0tk	8	\N	\N	\N
b3d6kcz2ih3	6htbvgte0tk	9	\N	\N	\N
sioow55xwz6	6htbvgte0tk	10	\N	\N	\N
ozzmhtdpth4	6htbvgte0tk	11	\N	\N	\N
b8mogqkr3um	6htbvgte0tk	12	\N	\N	\N
b56io1plq44	6htbvgte0tk	13	\N	\N	\N
13qbrfhlbny	6htbvgte0tk	14	\N	\N	\N
oqsecaif6am	6htbvgte0tk	15	\N	\N	\N
63aby9t5qmb	6htbvgte0tk	16	\N	\N	\N
mwrnryoju9y	6htbvgte0tk	17	\N	\N	\N
nocobase-admin-menu	6htbvgte0tk	18	\N	\N	\N
3i3tciuj9cf	8ko2451l30w	4	\N	\N	\N
bws6e7i5xki	8ko2451l30w	5	\N	\N	\N
08elwnxsu63	8ko2451l30w	6	\N	\N	\N
mwjoqz5w6cn	8ko2451l30w	7	\N	\N	\N
b3d6kcz2ih3	8ko2451l30w	8	\N	\N	\N
sioow55xwz6	8ko2451l30w	9	\N	\N	\N
ozzmhtdpth4	8ko2451l30w	10	\N	\N	\N
b8mogqkr3um	8ko2451l30w	11	\N	\N	\N
b56io1plq44	8ko2451l30w	12	\N	\N	\N
13qbrfhlbny	8ko2451l30w	13	\N	\N	\N
oqsecaif6am	8ko2451l30w	14	\N	\N	\N
63aby9t5qmb	8ko2451l30w	15	\N	\N	\N
mwrnryoju9y	8ko2451l30w	16	\N	\N	\N
nocobase-admin-menu	8ko2451l30w	17	\N	\N	\N
3i3tciuj9cf	9azfkzbvd2t	3	\N	\N	\N
bws6e7i5xki	9azfkzbvd2t	4	\N	\N	\N
08elwnxsu63	9azfkzbvd2t	5	\N	\N	\N
mwjoqz5w6cn	9azfkzbvd2t	6	\N	\N	\N
b3d6kcz2ih3	9azfkzbvd2t	7	\N	\N	\N
sioow55xwz6	9azfkzbvd2t	8	\N	\N	\N
ozzmhtdpth4	9azfkzbvd2t	9	\N	\N	\N
b8mogqkr3um	9azfkzbvd2t	10	\N	\N	\N
b56io1plq44	9azfkzbvd2t	11	\N	\N	\N
13qbrfhlbny	9azfkzbvd2t	12	\N	\N	\N
oqsecaif6am	9azfkzbvd2t	13	\N	\N	\N
63aby9t5qmb	9azfkzbvd2t	14	\N	\N	\N
mwrnryoju9y	9azfkzbvd2t	15	\N	\N	\N
nocobase-admin-menu	9azfkzbvd2t	16	\N	\N	\N
3i3tciuj9cf	fqae3xzvq38	2	\N	\N	\N
bws6e7i5xki	fqae3xzvq38	3	\N	\N	\N
08elwnxsu63	fqae3xzvq38	4	\N	\N	\N
mwjoqz5w6cn	fqae3xzvq38	5	\N	\N	\N
b3d6kcz2ih3	fqae3xzvq38	6	\N	\N	\N
sioow55xwz6	fqae3xzvq38	7	\N	\N	\N
ozzmhtdpth4	fqae3xzvq38	8	\N	\N	\N
b8mogqkr3um	fqae3xzvq38	9	\N	\N	\N
b56io1plq44	fqae3xzvq38	10	\N	\N	\N
13qbrfhlbny	fqae3xzvq38	11	\N	\N	\N
oqsecaif6am	fqae3xzvq38	12	\N	\N	\N
63aby9t5qmb	fqae3xzvq38	13	\N	\N	\N
mwrnryoju9y	fqae3xzvq38	14	\N	\N	\N
nocobase-admin-menu	fqae3xzvq38	15	\N	\N	\N
nc92u2m878d	t4v2kcudvg5	2	\N	\N	\N
bws6e7i5xki	ofsyyzcz0jq	2	\N	\N	\N
08elwnxsu63	ofsyyzcz0jq	3	\N	\N	\N
mwjoqz5w6cn	ofsyyzcz0jq	4	\N	\N	\N
b3d6kcz2ih3	ofsyyzcz0jq	5	\N	\N	\N
sioow55xwz6	ofsyyzcz0jq	6	\N	\N	\N
ozzmhtdpth4	ofsyyzcz0jq	7	\N	\N	\N
b8mogqkr3um	ofsyyzcz0jq	8	\N	\N	\N
b56io1plq44	ofsyyzcz0jq	9	\N	\N	\N
13qbrfhlbny	ofsyyzcz0jq	10	\N	\N	\N
oqsecaif6am	ofsyyzcz0jq	11	\N	\N	\N
63aby9t5qmb	ofsyyzcz0jq	12	\N	\N	\N
mwrnryoju9y	ofsyyzcz0jq	13	\N	\N	\N
nocobase-admin-menu	ofsyyzcz0jq	14	\N	\N	\N
3i3tciuj9cf	q8kb3rudliu	5	\N	\N	\N
bws6e7i5xki	q8kb3rudliu	6	\N	\N	\N
08elwnxsu63	q8kb3rudliu	7	\N	\N	\N
mwjoqz5w6cn	q8kb3rudliu	8	\N	\N	\N
b3d6kcz2ih3	q8kb3rudliu	9	\N	\N	\N
sioow55xwz6	q8kb3rudliu	10	\N	\N	\N
ozzmhtdpth4	q8kb3rudliu	11	\N	\N	\N
b8mogqkr3um	q8kb3rudliu	12	\N	\N	\N
b56io1plq44	q8kb3rudliu	13	\N	\N	\N
13qbrfhlbny	q8kb3rudliu	14	\N	\N	\N
oqsecaif6am	q8kb3rudliu	15	\N	\N	\N
63aby9t5qmb	q8kb3rudliu	16	\N	\N	\N
mwrnryoju9y	q8kb3rudliu	17	\N	\N	\N
nocobase-admin-menu	q8kb3rudliu	18	\N	\N	\N
ofsyyzcz0jq	ofsyyzcz0jq	0	f	properties	\N
3i3tciuj9cf	ofsyyzcz0jq	1	\N	\N	1
0rkqjpoxqsl	0rkqjpoxqsl	0	f	properties	\N
f2okp6we9r4	0rkqjpoxqsl	1	\N	\N	1
4v9tbohv1d0	4v9tbohv1d0	0	f	properties	\N
0rkqjpoxqsl	4v9tbohv1d0	1	\N	\N	1
f2okp6we9r4	4v9tbohv1d0	2	\N	\N	1
6htbvgte0tk	0rkqjpoxqsl	2	\N	\N	\N
8ko2451l30w	0rkqjpoxqsl	3	\N	\N	\N
9azfkzbvd2t	0rkqjpoxqsl	4	\N	\N	\N
fqae3xzvq38	0rkqjpoxqsl	5	\N	\N	\N
ofsyyzcz0jq	0rkqjpoxqsl	6	\N	\N	\N
3i3tciuj9cf	0rkqjpoxqsl	7	\N	\N	\N
bws6e7i5xki	0rkqjpoxqsl	8	\N	\N	\N
08elwnxsu63	0rkqjpoxqsl	9	\N	\N	\N
mwjoqz5w6cn	0rkqjpoxqsl	10	\N	\N	\N
b3d6kcz2ih3	0rkqjpoxqsl	11	\N	\N	\N
sioow55xwz6	0rkqjpoxqsl	12	\N	\N	\N
ozzmhtdpth4	0rkqjpoxqsl	13	\N	\N	\N
b8mogqkr3um	0rkqjpoxqsl	14	\N	\N	\N
b56io1plq44	0rkqjpoxqsl	15	\N	\N	\N
13qbrfhlbny	0rkqjpoxqsl	16	\N	\N	\N
oqsecaif6am	0rkqjpoxqsl	17	\N	\N	\N
63aby9t5qmb	0rkqjpoxqsl	18	\N	\N	\N
mwrnryoju9y	0rkqjpoxqsl	19	\N	\N	\N
nocobase-admin-menu	0rkqjpoxqsl	20	\N	\N	\N
6htbvgte0tk	4v9tbohv1d0	3	\N	\N	\N
8ko2451l30w	4v9tbohv1d0	4	\N	\N	\N
9azfkzbvd2t	4v9tbohv1d0	5	\N	\N	\N
fqae3xzvq38	4v9tbohv1d0	6	\N	\N	\N
ofsyyzcz0jq	4v9tbohv1d0	7	\N	\N	\N
3i3tciuj9cf	4v9tbohv1d0	8	\N	\N	\N
bws6e7i5xki	4v9tbohv1d0	9	\N	\N	\N
08elwnxsu63	4v9tbohv1d0	10	\N	\N	\N
mwjoqz5w6cn	4v9tbohv1d0	11	\N	\N	\N
b3d6kcz2ih3	4v9tbohv1d0	12	\N	\N	\N
sioow55xwz6	4v9tbohv1d0	13	\N	\N	\N
ozzmhtdpth4	4v9tbohv1d0	14	\N	\N	\N
b8mogqkr3um	4v9tbohv1d0	15	\N	\N	\N
b56io1plq44	4v9tbohv1d0	16	\N	\N	\N
13qbrfhlbny	4v9tbohv1d0	17	\N	\N	\N
oqsecaif6am	4v9tbohv1d0	18	\N	\N	\N
63aby9t5qmb	4v9tbohv1d0	19	\N	\N	\N
mwrnryoju9y	4v9tbohv1d0	20	\N	\N	\N
nocobase-admin-menu	4v9tbohv1d0	21	\N	\N	\N
8ko2451l30w	f2okp6we9r4	2	\N	\N	\N
9azfkzbvd2t	f2okp6we9r4	3	\N	\N	\N
fqae3xzvq38	f2okp6we9r4	4	\N	\N	\N
ofsyyzcz0jq	f2okp6we9r4	5	\N	\N	\N
3i3tciuj9cf	f2okp6we9r4	6	\N	\N	\N
bws6e7i5xki	f2okp6we9r4	7	\N	\N	\N
08elwnxsu63	f2okp6we9r4	8	\N	\N	\N
mwjoqz5w6cn	f2okp6we9r4	9	\N	\N	\N
b3d6kcz2ih3	f2okp6we9r4	10	\N	\N	\N
sioow55xwz6	f2okp6we9r4	11	\N	\N	\N
ozzmhtdpth4	f2okp6we9r4	12	\N	\N	\N
b8mogqkr3um	f2okp6we9r4	13	\N	\N	\N
b56io1plq44	f2okp6we9r4	14	\N	\N	\N
13qbrfhlbny	f2okp6we9r4	15	\N	\N	\N
oqsecaif6am	f2okp6we9r4	16	\N	\N	\N
63aby9t5qmb	f2okp6we9r4	17	\N	\N	\N
mwrnryoju9y	f2okp6we9r4	18	\N	\N	\N
nocobase-admin-menu	f2okp6we9r4	19	\N	\N	\N
f2okp6we9r4	f2okp6we9r4	0	f	properties	\N
6htbvgte0tk	f2okp6we9r4	1	\N	\N	1
ldouqmsxpff	ldouqmsxpff	0	f	properties	\N
3pk8qjxsfbs	ldouqmsxpff	1	\N	\N	1
hmvf7nbobg9	hmvf7nbobg9	0	f	properties	\N
ldouqmsxpff	hmvf7nbobg9	1	\N	\N	1
3pk8qjxsfbs	hmvf7nbobg9	2	\N	\N	1
8ko2451l30w	3pk8qjxsfbs	2	\N	\N	\N
9azfkzbvd2t	3pk8qjxsfbs	3	\N	\N	\N
fqae3xzvq38	3pk8qjxsfbs	4	\N	\N	\N
ofsyyzcz0jq	3pk8qjxsfbs	5	\N	\N	\N
3i3tciuj9cf	3pk8qjxsfbs	6	\N	\N	\N
bws6e7i5xki	3pk8qjxsfbs	7	\N	\N	\N
08elwnxsu63	3pk8qjxsfbs	8	\N	\N	\N
mwjoqz5w6cn	3pk8qjxsfbs	9	\N	\N	\N
b3d6kcz2ih3	3pk8qjxsfbs	10	\N	\N	\N
sioow55xwz6	3pk8qjxsfbs	11	\N	\N	\N
ozzmhtdpth4	3pk8qjxsfbs	12	\N	\N	\N
b8mogqkr3um	3pk8qjxsfbs	13	\N	\N	\N
b56io1plq44	3pk8qjxsfbs	14	\N	\N	\N
13qbrfhlbny	3pk8qjxsfbs	15	\N	\N	\N
oqsecaif6am	3pk8qjxsfbs	16	\N	\N	\N
3pk8qjxsfbs	3pk8qjxsfbs	0	f	properties	\N
6htbvgte0tk	3pk8qjxsfbs	1	\N	\N	2
qlc8gbizzyo	qlc8gbizzyo	0	f	properties	\N
jiq42lrek0j	q9zjnv8mc9j	2	\N	\N	\N
4dgysxrfq7o	4dgysxrfq7o	0	f	properties	\N
sf8fl742bgm	4dgysxrfq7o	1	\N	\N	1
xa635tbvi5c	xa635tbvi5c	0	f	properties	\N
4dgysxrfq7o	xa635tbvi5c	1	\N	\N	1
sf8fl742bgm	xa635tbvi5c	2	\N	\N	1
4bi35t1c7vh	4bi35t1c7vh	0	f	properties	\N
xa635tbvi5c	4bi35t1c7vh	1	\N	\N	1
4dgysxrfq7o	4bi35t1c7vh	2	\N	\N	1
sf8fl742bgm	4bi35t1c7vh	3	\N	\N	1
44890jxlzup	44890jxlzup	0	f	properties	\N
xa635tbvi5c	44890jxlzup	1	\N	\N	2
4dgysxrfq7o	44890jxlzup	2	\N	\N	2
sf8fl742bgm	44890jxlzup	3	\N	\N	2
i0lnhtci4u6	sf8fl742bgm	2	\N	\N	\N
swxvjglsevf	sf8fl742bgm	3	\N	\N	\N
nocobase-admin-menu	sf8fl742bgm	4	\N	\N	\N
sptin92gm5m	4dgysxrfq7o	2	\N	\N	\N
i0lnhtci4u6	4dgysxrfq7o	3	\N	\N	\N
swxvjglsevf	4dgysxrfq7o	4	\N	\N	\N
nocobase-admin-menu	4dgysxrfq7o	5	\N	\N	\N
sptin92gm5m	xa635tbvi5c	3	\N	\N	\N
i0lnhtci4u6	xa635tbvi5c	4	\N	\N	\N
swxvjglsevf	xa635tbvi5c	5	\N	\N	\N
nocobase-admin-menu	xa635tbvi5c	6	\N	\N	\N
sptin92gm5m	4bi35t1c7vh	4	\N	\N	\N
i0lnhtci4u6	4bi35t1c7vh	5	\N	\N	\N
swxvjglsevf	4bi35t1c7vh	6	\N	\N	\N
nocobase-admin-menu	4bi35t1c7vh	7	\N	\N	\N
sptin92gm5m	44890jxlzup	4	\N	\N	\N
i0lnhtci4u6	44890jxlzup	5	\N	\N	\N
swxvjglsevf	44890jxlzup	6	\N	\N	\N
nocobase-admin-menu	44890jxlzup	7	\N	\N	\N
sf8fl742bgm	sf8fl742bgm	0	f	properties	\N
sptin92gm5m	sf8fl742bgm	1	\N	\N	1
6mfoefonzd3	6mfoefonzd3	0	f	properties	\N
ycrd44g95eb	6mfoefonzd3	1	\N	\N	1
44890jxlzup	6mfoefonzd3	2	\N	\N	\N
xa635tbvi5c	ycrd44g95eb	2	\N	\N	\N
xa635tbvi5c	6mfoefonzd3	3	\N	\N	\N
477zuqkignt	477zuqkignt	0	f	properties	\N
63aby9t5qmb	3pk8qjxsfbs	17	\N	\N	\N
mwrnryoju9y	3pk8qjxsfbs	18	\N	\N	\N
nocobase-admin-menu	3pk8qjxsfbs	19	\N	\N	\N
6htbvgte0tk	hmvf7nbobg9	3	\N	\N	\N
8ko2451l30w	hmvf7nbobg9	4	\N	\N	\N
9azfkzbvd2t	hmvf7nbobg9	5	\N	\N	\N
fqae3xzvq38	hmvf7nbobg9	6	\N	\N	\N
ofsyyzcz0jq	hmvf7nbobg9	7	\N	\N	\N
3i3tciuj9cf	hmvf7nbobg9	8	\N	\N	\N
bws6e7i5xki	hmvf7nbobg9	9	\N	\N	\N
08elwnxsu63	hmvf7nbobg9	10	\N	\N	\N
mwjoqz5w6cn	hmvf7nbobg9	11	\N	\N	\N
b3d6kcz2ih3	hmvf7nbobg9	12	\N	\N	\N
sioow55xwz6	hmvf7nbobg9	13	\N	\N	\N
ozzmhtdpth4	hmvf7nbobg9	14	\N	\N	\N
b8mogqkr3um	hmvf7nbobg9	15	\N	\N	\N
b56io1plq44	hmvf7nbobg9	16	\N	\N	\N
13qbrfhlbny	hmvf7nbobg9	17	\N	\N	\N
oqsecaif6am	hmvf7nbobg9	18	\N	\N	\N
63aby9t5qmb	hmvf7nbobg9	19	\N	\N	\N
mwrnryoju9y	hmvf7nbobg9	20	\N	\N	\N
nocobase-admin-menu	hmvf7nbobg9	21	\N	\N	\N
6htbvgte0tk	ldouqmsxpff	2	\N	\N	\N
8ko2451l30w	ldouqmsxpff	3	\N	\N	\N
9azfkzbvd2t	ldouqmsxpff	4	\N	\N	\N
fqae3xzvq38	ldouqmsxpff	5	\N	\N	\N
ofsyyzcz0jq	ldouqmsxpff	6	\N	\N	\N
3i3tciuj9cf	ldouqmsxpff	7	\N	\N	\N
bws6e7i5xki	ldouqmsxpff	8	\N	\N	\N
08elwnxsu63	ldouqmsxpff	9	\N	\N	\N
mwjoqz5w6cn	ldouqmsxpff	10	\N	\N	\N
b3d6kcz2ih3	ldouqmsxpff	11	\N	\N	\N
sioow55xwz6	ldouqmsxpff	12	\N	\N	\N
ozzmhtdpth4	ldouqmsxpff	13	\N	\N	\N
b8mogqkr3um	ldouqmsxpff	14	\N	\N	\N
b56io1plq44	ldouqmsxpff	15	\N	\N	\N
13qbrfhlbny	ldouqmsxpff	16	\N	\N	\N
oqsecaif6am	ldouqmsxpff	17	\N	\N	\N
sioow55xwz6	477zuqkignt	1	\N	\N	1
0oc8hgh9w2v	0oc8hgh9w2v	0	f	properties	\N
ozzmhtdpth4	0oc8hgh9w2v	2	\N	\N	\N
b8mogqkr3um	0oc8hgh9w2v	3	\N	\N	\N
b56io1plq44	0oc8hgh9w2v	4	\N	\N	\N
13qbrfhlbny	0oc8hgh9w2v	5	\N	\N	\N
ozzmhtdpth4	477zuqkignt	2	\N	\N	\N
b8mogqkr3um	477zuqkignt	3	\N	\N	\N
b56io1plq44	477zuqkignt	4	\N	\N	\N
13qbrfhlbny	477zuqkignt	5	\N	\N	\N
oqsecaif6am	477zuqkignt	6	\N	\N	\N
63aby9t5qmb	477zuqkignt	7	\N	\N	\N
mwrnryoju9y	477zuqkignt	8	\N	\N	\N
nocobase-admin-menu	477zuqkignt	9	\N	\N	\N
oqsecaif6am	0oc8hgh9w2v	6	\N	\N	\N
63aby9t5qmb	0oc8hgh9w2v	7	\N	\N	\N
mwrnryoju9y	0oc8hgh9w2v	8	\N	\N	\N
nocobase-admin-menu	0oc8hgh9w2v	9	\N	\N	\N
sioow55xwz6	0oc8hgh9w2v	1	\N	\N	2
n6ymieugvwp	n6ymieugvwp	0	f	properties	\N
ozzmhtdpth4	n6ymieugvwp	2	\N	\N	\N
b8mogqkr3um	n6ymieugvwp	3	\N	\N	\N
b56io1plq44	n6ymieugvwp	4	\N	\N	\N
13qbrfhlbny	n6ymieugvwp	5	\N	\N	\N
oqsecaif6am	n6ymieugvwp	6	\N	\N	\N
63aby9t5qmb	n6ymieugvwp	7	\N	\N	\N
mwrnryoju9y	n6ymieugvwp	8	\N	\N	\N
nocobase-admin-menu	n6ymieugvwp	9	\N	\N	\N
sioow55xwz6	n6ymieugvwp	1	\N	\N	3
mwjoqz5w6cn	mwjoqz5w6cn	0	f	properties	\N
b3d6kcz2ih3	mwjoqz5w6cn	1	\N	\N	1
08elwnxsu63	08elwnxsu63	0	f	properties	\N
mwjoqz5w6cn	08elwnxsu63	1	\N	\N	1
b3d6kcz2ih3	08elwnxsu63	2	\N	\N	1
bws6e7i5xki	bws6e7i5xki	0	f	properties	\N
08elwnxsu63	bws6e7i5xki	1	\N	\N	1
mwjoqz5w6cn	bws6e7i5xki	2	\N	\N	1
b3d6kcz2ih3	bws6e7i5xki	3	\N	\N	1
3i3tciuj9cf	3i3tciuj9cf	0	f	properties	\N
bws6e7i5xki	3i3tciuj9cf	1	\N	\N	1
08elwnxsu63	3i3tciuj9cf	2	\N	\N	1
mwjoqz5w6cn	3i3tciuj9cf	3	\N	\N	1
b3d6kcz2ih3	3i3tciuj9cf	4	\N	\N	1
sioow55xwz6	08elwnxsu63	3	\N	\N	\N
ozzmhtdpth4	08elwnxsu63	4	\N	\N	\N
b8mogqkr3um	08elwnxsu63	5	\N	\N	\N
b56io1plq44	08elwnxsu63	6	\N	\N	\N
13qbrfhlbny	08elwnxsu63	7	\N	\N	\N
oqsecaif6am	08elwnxsu63	8	\N	\N	\N
63aby9t5qmb	08elwnxsu63	9	\N	\N	\N
mwrnryoju9y	08elwnxsu63	10	\N	\N	\N
nocobase-admin-menu	08elwnxsu63	11	\N	\N	\N
sioow55xwz6	3i3tciuj9cf	5	\N	\N	\N
ozzmhtdpth4	3i3tciuj9cf	6	\N	\N	\N
b8mogqkr3um	3i3tciuj9cf	7	\N	\N	\N
b56io1plq44	3i3tciuj9cf	8	\N	\N	\N
13qbrfhlbny	3i3tciuj9cf	9	\N	\N	\N
oqsecaif6am	3i3tciuj9cf	10	\N	\N	\N
63aby9t5qmb	3i3tciuj9cf	11	\N	\N	\N
mwrnryoju9y	3i3tciuj9cf	12	\N	\N	\N
nocobase-admin-menu	3i3tciuj9cf	13	\N	\N	\N
ozzmhtdpth4	b3d6kcz2ih3	2	\N	\N	\N
b8mogqkr3um	b3d6kcz2ih3	3	\N	\N	\N
b56io1plq44	b3d6kcz2ih3	4	\N	\N	\N
13qbrfhlbny	b3d6kcz2ih3	5	\N	\N	\N
oqsecaif6am	b3d6kcz2ih3	6	\N	\N	\N
63aby9t5qmb	b3d6kcz2ih3	7	\N	\N	\N
mwrnryoju9y	b3d6kcz2ih3	8	\N	\N	\N
nocobase-admin-menu	b3d6kcz2ih3	9	\N	\N	\N
sioow55xwz6	bws6e7i5xki	4	\N	\N	\N
ozzmhtdpth4	bws6e7i5xki	5	\N	\N	\N
b8mogqkr3um	bws6e7i5xki	6	\N	\N	\N
b56io1plq44	bws6e7i5xki	7	\N	\N	\N
13qbrfhlbny	bws6e7i5xki	8	\N	\N	\N
oqsecaif6am	bws6e7i5xki	9	\N	\N	\N
63aby9t5qmb	bws6e7i5xki	10	\N	\N	\N
mwrnryoju9y	bws6e7i5xki	11	\N	\N	\N
nocobase-admin-menu	bws6e7i5xki	12	\N	\N	\N
sioow55xwz6	mwjoqz5w6cn	2	\N	\N	\N
ozzmhtdpth4	mwjoqz5w6cn	3	\N	\N	\N
b8mogqkr3um	mwjoqz5w6cn	4	\N	\N	\N
b56io1plq44	mwjoqz5w6cn	5	\N	\N	\N
13qbrfhlbny	mwjoqz5w6cn	6	\N	\N	\N
oqsecaif6am	mwjoqz5w6cn	7	\N	\N	\N
63aby9t5qmb	mwjoqz5w6cn	8	\N	\N	\N
mwrnryoju9y	mwjoqz5w6cn	9	\N	\N	\N
nocobase-admin-menu	mwjoqz5w6cn	10	\N	\N	\N
b3d6kcz2ih3	b3d6kcz2ih3	0	f	properties	\N
sioow55xwz6	b3d6kcz2ih3	1	\N	\N	4
4dgysxrfq7o	ycrd44g95eb	3	\N	\N	\N
4dgysxrfq7o	6mfoefonzd3	4	\N	\N	\N
sf8fl742bgm	ycrd44g95eb	4	\N	\N	\N
sf8fl742bgm	6mfoefonzd3	5	\N	\N	\N
sptin92gm5m	ycrd44g95eb	5	\N	\N	\N
sptin92gm5m	6mfoefonzd3	6	\N	\N	\N
i0lnhtci4u6	ycrd44g95eb	6	\N	\N	\N
i0lnhtci4u6	6mfoefonzd3	7	\N	\N	\N
swxvjglsevf	ycrd44g95eb	7	\N	\N	\N
swxvjglsevf	6mfoefonzd3	8	\N	\N	\N
nocobase-admin-menu	ycrd44g95eb	8	\N	\N	\N
nocobase-admin-menu	6mfoefonzd3	9	\N	\N	\N
ycrd44g95eb	ycrd44g95eb	0	f	properties	\N
44890jxlzup	ycrd44g95eb	1	\N	\N	2
gdup67jb4ev	gdup67jb4ev	0	f	properties	\N
p44o4tgbok2	gdup67jb4ev	1	\N	\N	1
44890jxlzup	gdup67jb4ev	2	\N	\N	\N
xa635tbvi5c	gdup67jb4ev	3	\N	\N	\N
xa635tbvi5c	p44o4tgbok2	2	\N	\N	\N
4dgysxrfq7o	gdup67jb4ev	4	\N	\N	\N
4dgysxrfq7o	p44o4tgbok2	3	\N	\N	\N
sf8fl742bgm	gdup67jb4ev	5	\N	\N	\N
sf8fl742bgm	p44o4tgbok2	4	\N	\N	\N
sptin92gm5m	gdup67jb4ev	6	\N	\N	\N
sptin92gm5m	p44o4tgbok2	5	\N	\N	\N
i0lnhtci4u6	gdup67jb4ev	7	\N	\N	\N
i0lnhtci4u6	p44o4tgbok2	6	\N	\N	\N
swxvjglsevf	gdup67jb4ev	8	\N	\N	\N
swxvjglsevf	p44o4tgbok2	7	\N	\N	\N
nocobase-admin-menu	gdup67jb4ev	9	\N	\N	\N
nocobase-admin-menu	p44o4tgbok2	8	\N	\N	\N
p44o4tgbok2	p44o4tgbok2	0	f	properties	\N
44890jxlzup	p44o4tgbok2	1	\N	\N	3
n6clrt61fg7	n6clrt61fg7	0	f	properties	\N
qk4a3nsuk92	n6clrt61fg7	1	\N	\N	1
44890jxlzup	n6clrt61fg7	2	\N	\N	\N
xa635tbvi5c	n6clrt61fg7	3	\N	\N	\N
xa635tbvi5c	qk4a3nsuk92	2	\N	\N	\N
4dgysxrfq7o	n6clrt61fg7	4	\N	\N	\N
4dgysxrfq7o	qk4a3nsuk92	3	\N	\N	\N
sf8fl742bgm	n6clrt61fg7	5	\N	\N	\N
sf8fl742bgm	qk4a3nsuk92	4	\N	\N	\N
sptin92gm5m	n6clrt61fg7	6	\N	\N	\N
sptin92gm5m	qk4a3nsuk92	5	\N	\N	\N
i0lnhtci4u6	n6clrt61fg7	7	\N	\N	\N
i0lnhtci4u6	qk4a3nsuk92	6	\N	\N	\N
swxvjglsevf	n6clrt61fg7	8	\N	\N	\N
swxvjglsevf	qk4a3nsuk92	7	\N	\N	\N
nocobase-admin-menu	n6clrt61fg7	9	\N	\N	\N
nocobase-admin-menu	qk4a3nsuk92	8	\N	\N	\N
qk4a3nsuk92	qk4a3nsuk92	0	f	properties	\N
44890jxlzup	qk4a3nsuk92	1	\N	\N	4
uewsbd9z1kr	uewsbd9z1kr	0	f	properties	\N
gdl25xyq69l	uewsbd9z1kr	1	\N	\N	1
44890jxlzup	uewsbd9z1kr	2	\N	\N	\N
xa635tbvi5c	gdl25xyq69l	2	\N	\N	\N
xa635tbvi5c	uewsbd9z1kr	3	\N	\N	\N
4dgysxrfq7o	gdl25xyq69l	3	\N	\N	\N
4dgysxrfq7o	uewsbd9z1kr	4	\N	\N	\N
sf8fl742bgm	gdl25xyq69l	4	\N	\N	\N
sf8fl742bgm	uewsbd9z1kr	5	\N	\N	\N
sptin92gm5m	gdl25xyq69l	5	\N	\N	\N
sptin92gm5m	uewsbd9z1kr	6	\N	\N	\N
i0lnhtci4u6	gdl25xyq69l	6	\N	\N	\N
i0lnhtci4u6	uewsbd9z1kr	7	\N	\N	\N
swxvjglsevf	gdl25xyq69l	7	\N	\N	\N
swxvjglsevf	uewsbd9z1kr	8	\N	\N	\N
nocobase-admin-menu	gdl25xyq69l	8	\N	\N	\N
nocobase-admin-menu	uewsbd9z1kr	9	\N	\N	\N
gdl25xyq69l	gdl25xyq69l	0	f	properties	\N
44890jxlzup	gdl25xyq69l	1	\N	\N	5
bwbd6lebhkb	bwbd6lebhkb	0	f	properties	\N
m8tbcrs4z9t	bwbd6lebhkb	1	\N	\N	1
ao2a67rjlld	ao2a67rjlld	0	f	properties	\N
bwbd6lebhkb	ao2a67rjlld	1	\N	\N	1
m8tbcrs4z9t	ao2a67rjlld	2	\N	\N	1
yc5x6qvg4mh	yc5x6qvg4mh	0	f	properties	\N
ao2a67rjlld	yc5x6qvg4mh	1	\N	\N	1
bwbd6lebhkb	yc5x6qvg4mh	2	\N	\N	1
m8tbcrs4z9t	yc5x6qvg4mh	3	\N	\N	1
ugc9ztt4hb4	ugc9ztt4hb4	0	f	properties	\N
ao2a67rjlld	ugc9ztt4hb4	1	\N	\N	2
bwbd6lebhkb	ugc9ztt4hb4	2	\N	\N	2
m8tbcrs4z9t	ugc9ztt4hb4	3	\N	\N	2
q4dinm52meb	ao2a67rjlld	3	\N	\N	\N
vs0l89adzhc	ao2a67rjlld	4	\N	\N	\N
493pimn830r	ao2a67rjlld	5	\N	\N	\N
nocobase-admin-menu	ao2a67rjlld	6	\N	\N	\N
q4dinm52meb	bwbd6lebhkb	2	\N	\N	\N
vs0l89adzhc	bwbd6lebhkb	3	\N	\N	\N
493pimn830r	bwbd6lebhkb	4	\N	\N	\N
nocobase-admin-menu	bwbd6lebhkb	5	\N	\N	\N
vs0l89adzhc	m8tbcrs4z9t	2	\N	\N	\N
493pimn830r	m8tbcrs4z9t	3	\N	\N	\N
nocobase-admin-menu	m8tbcrs4z9t	4	\N	\N	\N
q4dinm52meb	ugc9ztt4hb4	4	\N	\N	\N
vs0l89adzhc	ugc9ztt4hb4	5	\N	\N	\N
493pimn830r	ugc9ztt4hb4	6	\N	\N	\N
nocobase-admin-menu	ugc9ztt4hb4	7	\N	\N	\N
q4dinm52meb	yc5x6qvg4mh	4	\N	\N	\N
vs0l89adzhc	yc5x6qvg4mh	5	\N	\N	\N
493pimn830r	yc5x6qvg4mh	6	\N	\N	\N
nocobase-admin-menu	yc5x6qvg4mh	7	\N	\N	\N
m8tbcrs4z9t	m8tbcrs4z9t	0	f	properties	\N
q4dinm52meb	m8tbcrs4z9t	1	\N	\N	1
63aby9t5qmb	ldouqmsxpff	18	\N	\N	\N
mwrnryoju9y	ldouqmsxpff	19	\N	\N	\N
nocobase-admin-menu	ldouqmsxpff	20	\N	\N	\N
kjig4l36dxf	qlc8gbizzyo	1	\N	\N	1
8wsfz8fbwev	8wsfz8fbwev	0	f	properties	\N
x2xf38d0owf	8wsfz8fbwev	1	\N	\N	1
e84mi71anac	e84mi71anac	0	f	properties	\N
8wsfz8fbwev	e84mi71anac	1	\N	\N	1
x2xf38d0owf	e84mi71anac	2	\N	\N	1
h0dmilgg31n	h0dmilgg31n	0	f	properties	\N
bzk49nzivdu	h0dmilgg31n	1	\N	\N	1
ugc9ztt4hb4	h0dmilgg31n	2	\N	\N	\N
ao2a67rjlld	bzk49nzivdu	2	\N	\N	\N
ao2a67rjlld	h0dmilgg31n	3	\N	\N	\N
bwbd6lebhkb	bzk49nzivdu	3	\N	\N	\N
bwbd6lebhkb	h0dmilgg31n	4	\N	\N	\N
m8tbcrs4z9t	bzk49nzivdu	4	\N	\N	\N
m8tbcrs4z9t	h0dmilgg31n	5	\N	\N	\N
q4dinm52meb	bzk49nzivdu	5	\N	\N	\N
q4dinm52meb	h0dmilgg31n	6	\N	\N	\N
vs0l89adzhc	bzk49nzivdu	6	\N	\N	\N
vs0l89adzhc	h0dmilgg31n	7	\N	\N	\N
493pimn830r	bzk49nzivdu	7	\N	\N	\N
493pimn830r	h0dmilgg31n	8	\N	\N	\N
nocobase-admin-menu	bzk49nzivdu	8	\N	\N	\N
nocobase-admin-menu	h0dmilgg31n	9	\N	\N	\N
bzk49nzivdu	bzk49nzivdu	0	f	properties	\N
8kgds5aufmv	8kgds5aufmv	0	f	properties	\N
pfhb8ncb652	8kgds5aufmv	1	\N	\N	1
ugc9ztt4hb4	8kgds5aufmv	2	\N	\N	\N
ao2a67rjlld	8kgds5aufmv	3	\N	\N	\N
ao2a67rjlld	pfhb8ncb652	2	\N	\N	\N
bwbd6lebhkb	8kgds5aufmv	4	\N	\N	\N
bwbd6lebhkb	pfhb8ncb652	3	\N	\N	\N
m8tbcrs4z9t	8kgds5aufmv	5	\N	\N	\N
m8tbcrs4z9t	pfhb8ncb652	4	\N	\N	\N
q4dinm52meb	8kgds5aufmv	6	\N	\N	\N
q4dinm52meb	pfhb8ncb652	5	\N	\N	\N
vs0l89adzhc	8kgds5aufmv	7	\N	\N	\N
vs0l89adzhc	pfhb8ncb652	6	\N	\N	\N
493pimn830r	8kgds5aufmv	8	\N	\N	\N
493pimn830r	pfhb8ncb652	7	\N	\N	\N
nocobase-admin-menu	8kgds5aufmv	9	\N	\N	\N
nocobase-admin-menu	pfhb8ncb652	8	\N	\N	\N
pfhb8ncb652	pfhb8ncb652	0	f	properties	\N
pbpsju21w1y	pbpsju21w1y	0	f	properties	\N
4l7u09ydsdg	4l7u09ydsdg	0	f	properties	\N
ainrki9f600	4l7u09ydsdg	1	\N	\N	1
ugc9ztt4hb4	4l7u09ydsdg	2	\N	\N	\N
ao2a67rjlld	4l7u09ydsdg	3	\N	\N	\N
ao2a67rjlld	ainrki9f600	2	\N	\N	\N
bwbd6lebhkb	4l7u09ydsdg	4	\N	\N	\N
bwbd6lebhkb	ainrki9f600	3	\N	\N	\N
m8tbcrs4z9t	4l7u09ydsdg	5	\N	\N	\N
m8tbcrs4z9t	ainrki9f600	4	\N	\N	\N
q4dinm52meb	4l7u09ydsdg	6	\N	\N	\N
q4dinm52meb	ainrki9f600	5	\N	\N	\N
vs0l89adzhc	4l7u09ydsdg	7	\N	\N	\N
vs0l89adzhc	ainrki9f600	6	\N	\N	\N
493pimn830r	4l7u09ydsdg	8	\N	\N	\N
493pimn830r	ainrki9f600	7	\N	\N	\N
nocobase-admin-menu	4l7u09ydsdg	9	\N	\N	\N
nocobase-admin-menu	ainrki9f600	8	\N	\N	\N
ainrki9f600	ainrki9f600	0	f	properties	\N
hvx8jvtqk6e	hvx8jvtqk6e	0	f	properties	\N
oae1g24te1h	hvx8jvtqk6e	1	\N	\N	1
ugc9ztt4hb4	hvx8jvtqk6e	2	\N	\N	\N
ao2a67rjlld	hvx8jvtqk6e	3	\N	\N	\N
ao2a67rjlld	oae1g24te1h	2	\N	\N	\N
bwbd6lebhkb	hvx8jvtqk6e	4	\N	\N	\N
bwbd6lebhkb	oae1g24te1h	3	\N	\N	\N
m8tbcrs4z9t	hvx8jvtqk6e	5	\N	\N	\N
m8tbcrs4z9t	oae1g24te1h	4	\N	\N	\N
q4dinm52meb	hvx8jvtqk6e	6	\N	\N	\N
q4dinm52meb	oae1g24te1h	5	\N	\N	\N
vs0l89adzhc	hvx8jvtqk6e	7	\N	\N	\N
vs0l89adzhc	oae1g24te1h	6	\N	\N	\N
493pimn830r	hvx8jvtqk6e	8	\N	\N	\N
493pimn830r	oae1g24te1h	7	\N	\N	\N
nocobase-admin-menu	hvx8jvtqk6e	9	\N	\N	\N
nocobase-admin-menu	oae1g24te1h	8	\N	\N	\N
oae1g24te1h	oae1g24te1h	0	f	properties	\N
52h8j6knyh0	pbpsju21w1y	2	\N	\N	\N
ct41p5st7f6	ct41p5st7f6	0	f	properties	\N
z4nqlth7kk8	ct41p5st7f6	1	\N	\N	1
ugc9ztt4hb4	ct41p5st7f6	2	\N	\N	\N
ao2a67rjlld	ct41p5st7f6	3	\N	\N	\N
ao2a67rjlld	z4nqlth7kk8	2	\N	\N	\N
bwbd6lebhkb	ct41p5st7f6	4	\N	\N	\N
bwbd6lebhkb	z4nqlth7kk8	3	\N	\N	\N
m8tbcrs4z9t	ct41p5st7f6	5	\N	\N	\N
m8tbcrs4z9t	z4nqlth7kk8	4	\N	\N	\N
q4dinm52meb	ct41p5st7f6	6	\N	\N	\N
q4dinm52meb	z4nqlth7kk8	5	\N	\N	\N
vs0l89adzhc	ct41p5st7f6	7	\N	\N	\N
vs0l89adzhc	z4nqlth7kk8	6	\N	\N	\N
493pimn830r	ct41p5st7f6	8	\N	\N	\N
493pimn830r	z4nqlth7kk8	7	\N	\N	\N
nocobase-admin-menu	ct41p5st7f6	9	\N	\N	\N
nocobase-admin-menu	z4nqlth7kk8	8	\N	\N	\N
z4nqlth7kk8	z4nqlth7kk8	0	f	properties	\N
5v81x55p2nk	pbpsju21w1y	3	\N	\N	\N
zwjfadzxpj5	zwjfadzxpj5	0	f	properties	\N
hswwx0lxpac	zwjfadzxpj5	1	\N	\N	1
ugc9ztt4hb4	zwjfadzxpj5	2	\N	\N	\N
ao2a67rjlld	hswwx0lxpac	2	\N	\N	\N
ao2a67rjlld	zwjfadzxpj5	3	\N	\N	\N
bwbd6lebhkb	hswwx0lxpac	3	\N	\N	\N
bwbd6lebhkb	zwjfadzxpj5	4	\N	\N	\N
m8tbcrs4z9t	hswwx0lxpac	4	\N	\N	\N
m8tbcrs4z9t	zwjfadzxpj5	5	\N	\N	\N
q4dinm52meb	hswwx0lxpac	5	\N	\N	\N
q4dinm52meb	zwjfadzxpj5	6	\N	\N	\N
vs0l89adzhc	hswwx0lxpac	6	\N	\N	\N
vs0l89adzhc	zwjfadzxpj5	7	\N	\N	\N
493pimn830r	hswwx0lxpac	7	\N	\N	\N
493pimn830r	zwjfadzxpj5	8	\N	\N	\N
nocobase-admin-menu	hswwx0lxpac	8	\N	\N	\N
nocobase-admin-menu	zwjfadzxpj5	9	\N	\N	\N
hswwx0lxpac	hswwx0lxpac	0	f	properties	\N
9bxpugcgkui	pbpsju21w1y	4	\N	\N	\N
hxeqe8wc2b5	hxeqe8wc2b5	0	f	properties	\N
s2txozhh9f0	hxeqe8wc2b5	1	\N	\N	1
ugc9ztt4hb4	hxeqe8wc2b5	2	\N	\N	\N
ao2a67rjlld	hxeqe8wc2b5	3	\N	\N	\N
ao2a67rjlld	s2txozhh9f0	2	\N	\N	\N
bwbd6lebhkb	hxeqe8wc2b5	4	\N	\N	\N
bwbd6lebhkb	s2txozhh9f0	3	\N	\N	\N
m8tbcrs4z9t	hxeqe8wc2b5	5	\N	\N	\N
m8tbcrs4z9t	s2txozhh9f0	4	\N	\N	\N
q4dinm52meb	hxeqe8wc2b5	6	\N	\N	\N
q4dinm52meb	s2txozhh9f0	5	\N	\N	\N
vs0l89adzhc	hxeqe8wc2b5	7	\N	\N	\N
vs0l89adzhc	s2txozhh9f0	6	\N	\N	\N
493pimn830r	hxeqe8wc2b5	8	\N	\N	\N
493pimn830r	s2txozhh9f0	7	\N	\N	\N
nocobase-admin-menu	hxeqe8wc2b5	9	\N	\N	\N
nocobase-admin-menu	s2txozhh9f0	8	\N	\N	\N
s2txozhh9f0	s2txozhh9f0	0	f	properties	\N
7poa6levyva	pbpsju21w1y	5	\N	\N	\N
se2q3viuytu	se2q3viuytu	0	f	properties	\N
fb0lajxibgu	se2q3viuytu	1	\N	\N	1
ugc9ztt4hb4	se2q3viuytu	2	\N	\N	\N
ao2a67rjlld	fb0lajxibgu	2	\N	\N	\N
ao2a67rjlld	se2q3viuytu	3	\N	\N	\N
bwbd6lebhkb	fb0lajxibgu	3	\N	\N	\N
bwbd6lebhkb	se2q3viuytu	4	\N	\N	\N
m8tbcrs4z9t	fb0lajxibgu	4	\N	\N	\N
m8tbcrs4z9t	se2q3viuytu	5	\N	\N	\N
q4dinm52meb	fb0lajxibgu	5	\N	\N	\N
q4dinm52meb	se2q3viuytu	6	\N	\N	\N
vs0l89adzhc	fb0lajxibgu	6	\N	\N	\N
vs0l89adzhc	se2q3viuytu	7	\N	\N	\N
493pimn830r	fb0lajxibgu	7	\N	\N	\N
493pimn830r	se2q3viuytu	8	\N	\N	\N
nocobase-admin-menu	fb0lajxibgu	8	\N	\N	\N
nocobase-admin-menu	se2q3viuytu	9	\N	\N	\N
fb0lajxibgu	fb0lajxibgu	0	f	properties	\N
fe7kgdo55ax	pbpsju21w1y	6	\N	\N	\N
quxu2mc9wp8	quxu2mc9wp8	0	f	properties	\N
xa635tbvi5c	quxu2mc9wp8	2	\N	\N	\N
4dgysxrfq7o	quxu2mc9wp8	3	\N	\N	\N
sf8fl742bgm	quxu2mc9wp8	4	\N	\N	\N
sptin92gm5m	quxu2mc9wp8	5	\N	\N	\N
i0lnhtci4u6	quxu2mc9wp8	6	\N	\N	\N
swxvjglsevf	quxu2mc9wp8	7	\N	\N	\N
nocobase-admin-menu	quxu2mc9wp8	8	\N	\N	\N
4bi35t1c7vh	quxu2mc9wp8	1	\N	\N	1
b1i4rvkf4kb	b1i4rvkf4kb	0	f	properties	\N
xa635tbvi5c	b1i4rvkf4kb	2	\N	\N	\N
4dgysxrfq7o	b1i4rvkf4kb	3	\N	\N	\N
sf8fl742bgm	b1i4rvkf4kb	4	\N	\N	\N
sptin92gm5m	b1i4rvkf4kb	5	\N	\N	\N
i0lnhtci4u6	b1i4rvkf4kb	6	\N	\N	\N
swxvjglsevf	b1i4rvkf4kb	7	\N	\N	\N
nocobase-admin-menu	b1i4rvkf4kb	8	\N	\N	\N
6htbvgte0tk	8wsfz8fbwev	2	\N	\N	\N
s1cwhtqw32h	s1cwhtqw32h	0	f	properties	\N
xa635tbvi5c	s1cwhtqw32h	2	\N	\N	\N
4dgysxrfq7o	s1cwhtqw32h	3	\N	\N	\N
sf8fl742bgm	s1cwhtqw32h	4	\N	\N	\N
sptin92gm5m	s1cwhtqw32h	5	\N	\N	\N
i0lnhtci4u6	s1cwhtqw32h	6	\N	\N	\N
swxvjglsevf	s1cwhtqw32h	7	\N	\N	\N
nocobase-admin-menu	s1cwhtqw32h	8	\N	\N	\N
8ko2451l30w	8wsfz8fbwev	3	\N	\N	\N
5qlc1z95ykr	5qlc1z95ykr	0	f	properties	\N
h7gipxths0w	5qlc1z95ykr	1	\N	\N	1
201yvs0pndu	201yvs0pndu	0	f	properties	\N
5qlc1z95ykr	201yvs0pndu	1	\N	\N	1
h7gipxths0w	201yvs0pndu	2	\N	\N	1
pyia20ca1id	pyia20ca1id	0	f	properties	\N
201yvs0pndu	pyia20ca1id	1	\N	\N	1
5qlc1z95ykr	pyia20ca1id	2	\N	\N	1
h7gipxths0w	pyia20ca1id	3	\N	\N	1
ieq8aso0l50	ieq8aso0l50	0	f	properties	\N
pyia20ca1id	ieq8aso0l50	1	\N	\N	1
201yvs0pndu	ieq8aso0l50	2	\N	\N	1
5qlc1z95ykr	ieq8aso0l50	3	\N	\N	1
h7gipxths0w	ieq8aso0l50	4	\N	\N	1
9azfkzbvd2t	8wsfz8fbwev	4	\N	\N	\N
fqae3xzvq38	8wsfz8fbwev	5	\N	\N	\N
ofsyyzcz0jq	8wsfz8fbwev	6	\N	\N	\N
3i3tciuj9cf	8wsfz8fbwev	7	\N	\N	\N
bws6e7i5xki	8wsfz8fbwev	8	\N	\N	\N
08elwnxsu63	8wsfz8fbwev	9	\N	\N	\N
mwjoqz5w6cn	8wsfz8fbwev	10	\N	\N	\N
b3d6kcz2ih3	8wsfz8fbwev	11	\N	\N	\N
sioow55xwz6	8wsfz8fbwev	12	\N	\N	\N
ozzmhtdpth4	8wsfz8fbwev	13	\N	\N	\N
b8mogqkr3um	8wsfz8fbwev	14	\N	\N	\N
b56io1plq44	8wsfz8fbwev	15	\N	\N	\N
13qbrfhlbny	8wsfz8fbwev	16	\N	\N	\N
oqsecaif6am	8wsfz8fbwev	17	\N	\N	\N
63aby9t5qmb	8wsfz8fbwev	18	\N	\N	\N
mwrnryoju9y	8wsfz8fbwev	19	\N	\N	\N
nocobase-admin-menu	8wsfz8fbwev	20	\N	\N	\N
6htbvgte0tk	e84mi71anac	3	\N	\N	\N
8ko2451l30w	e84mi71anac	4	\N	\N	\N
9azfkzbvd2t	e84mi71anac	5	\N	\N	\N
fqae3xzvq38	e84mi71anac	6	\N	\N	\N
ofsyyzcz0jq	e84mi71anac	7	\N	\N	\N
3i3tciuj9cf	e84mi71anac	8	\N	\N	\N
bws6e7i5xki	e84mi71anac	9	\N	\N	\N
08elwnxsu63	e84mi71anac	10	\N	\N	\N
mwjoqz5w6cn	e84mi71anac	11	\N	\N	\N
b3d6kcz2ih3	e84mi71anac	12	\N	\N	\N
sioow55xwz6	e84mi71anac	13	\N	\N	\N
ozzmhtdpth4	e84mi71anac	14	\N	\N	\N
b8mogqkr3um	e84mi71anac	15	\N	\N	\N
b56io1plq44	e84mi71anac	16	\N	\N	\N
13qbrfhlbny	e84mi71anac	17	\N	\N	\N
oqsecaif6am	e84mi71anac	18	\N	\N	\N
63aby9t5qmb	e84mi71anac	19	\N	\N	\N
mwrnryoju9y	e84mi71anac	20	\N	\N	\N
nocobase-admin-menu	e84mi71anac	21	\N	\N	\N
w4ciktesp5j	kjig4l36dxf	4	\N	\N	\N
8ko2451l30w	x2xf38d0owf	2	\N	\N	\N
9azfkzbvd2t	x2xf38d0owf	3	\N	\N	\N
fqae3xzvq38	x2xf38d0owf	4	\N	\N	\N
ofsyyzcz0jq	x2xf38d0owf	5	\N	\N	\N
3i3tciuj9cf	x2xf38d0owf	6	\N	\N	\N
g8idtoqr1fo	g8idtoqr1fo	0	f	properties	\N
kdcbf9y1icj	g8idtoqr1fo	1	\N	\N	1
9ayo1a8z8f1	9ayo1a8z8f1	0	f	properties	\N
g8idtoqr1fo	9ayo1a8z8f1	1	\N	\N	1
kdcbf9y1icj	9ayo1a8z8f1	2	\N	\N	1
ke60pjxuu9p	ke60pjxuu9p	0	f	properties	\N
9ayo1a8z8f1	ke60pjxuu9p	1	\N	\N	1
g8idtoqr1fo	ke60pjxuu9p	2	\N	\N	1
kdcbf9y1icj	ke60pjxuu9p	3	\N	\N	1
95272w6sxpp	95272w6sxpp	0	f	properties	\N
ke60pjxuu9p	95272w6sxpp	1	\N	\N	1
9ayo1a8z8f1	95272w6sxpp	2	\N	\N	1
g8idtoqr1fo	95272w6sxpp	3	\N	\N	1
kdcbf9y1icj	95272w6sxpp	4	\N	\N	1
kzelz9rby9p	kzelz9rby9p	0	f	properties	\N
ke60pjxuu9p	kzelz9rby9p	1	\N	\N	2
kdcbf9y1icj	kdcbf9y1icj	0	f	properties	\N
bws6e7i5xki	x2xf38d0owf	7	\N	\N	\N
08elwnxsu63	x2xf38d0owf	8	\N	\N	\N
mwjoqz5w6cn	x2xf38d0owf	9	\N	\N	\N
b3d6kcz2ih3	x2xf38d0owf	10	\N	\N	\N
sioow55xwz6	x2xf38d0owf	11	\N	\N	\N
h7gipxths0w	h7gipxths0w	0	f	properties	\N
4bi35t1c7vh	b1i4rvkf4kb	1	\N	\N	3
4bi35t1c7vh	s1cwhtqw32h	1	\N	\N	4
9ayo1a8z8f1	kzelz9rby9p	2	\N	\N	2
g8idtoqr1fo	kzelz9rby9p	3	\N	\N	2
kdcbf9y1icj	kzelz9rby9p	4	\N	\N	2
ieq8aso0l50	95272w6sxpp	5	\N	\N	\N
ieq8aso0l50	9ayo1a8z8f1	3	\N	\N	\N
ieq8aso0l50	g8idtoqr1fo	2	\N	\N	\N
ieq8aso0l50	ke60pjxuu9p	4	\N	\N	\N
ieq8aso0l50	kzelz9rby9p	5	\N	\N	\N
pyia20ca1id	95272w6sxpp	6	\N	\N	\N
pyia20ca1id	9ayo1a8z8f1	4	\N	\N	\N
pyia20ca1id	g8idtoqr1fo	3	\N	\N	\N
pyia20ca1id	kdcbf9y1icj	2	\N	\N	\N
pyia20ca1id	ke60pjxuu9p	5	\N	\N	\N
pyia20ca1id	kzelz9rby9p	6	\N	\N	\N
201yvs0pndu	95272w6sxpp	7	\N	\N	\N
201yvs0pndu	9ayo1a8z8f1	5	\N	\N	\N
201yvs0pndu	g8idtoqr1fo	4	\N	\N	\N
201yvs0pndu	kdcbf9y1icj	3	\N	\N	\N
201yvs0pndu	ke60pjxuu9p	6	\N	\N	\N
201yvs0pndu	kzelz9rby9p	7	\N	\N	\N
5qlc1z95ykr	95272w6sxpp	8	\N	\N	\N
5qlc1z95ykr	9ayo1a8z8f1	6	\N	\N	\N
5qlc1z95ykr	g8idtoqr1fo	5	\N	\N	\N
5qlc1z95ykr	kdcbf9y1icj	4	\N	\N	\N
5qlc1z95ykr	ke60pjxuu9p	7	\N	\N	\N
5qlc1z95ykr	kzelz9rby9p	8	\N	\N	\N
h7gipxths0w	95272w6sxpp	9	\N	\N	\N
h7gipxths0w	9ayo1a8z8f1	7	\N	\N	\N
h7gipxths0w	g8idtoqr1fo	6	\N	\N	\N
h7gipxths0w	kdcbf9y1icj	5	\N	\N	\N
h7gipxths0w	ke60pjxuu9p	8	\N	\N	\N
h7gipxths0w	kzelz9rby9p	9	\N	\N	\N
ozzmhtdpth4	x2xf38d0owf	12	\N	\N	\N
b8mogqkr3um	x2xf38d0owf	13	\N	\N	\N
b56io1plq44	x2xf38d0owf	14	\N	\N	\N
13qbrfhlbny	x2xf38d0owf	15	\N	\N	\N
oqsecaif6am	x2xf38d0owf	16	\N	\N	\N
63aby9t5qmb	x2xf38d0owf	17	\N	\N	\N
mwrnryoju9y	x2xf38d0owf	18	\N	\N	\N
nocobase-admin-menu	x2xf38d0owf	19	\N	\N	\N
x2xf38d0owf	x2xf38d0owf	0	f	properties	\N
6htbvgte0tk	x2xf38d0owf	1	\N	\N	3
w4ciktesp5j	qlc8gbizzyo	5	\N	\N	\N
kd1zqe8fefe	kd1zqe8fefe	0	f	properties	\N
tg2hn64ei8t	kjig4l36dxf	5	\N	\N	\N
mwrnryoju9y	mwrnryoju9y	0	f	properties	\N
qeotrvptuc2	gfead56fb65	3	\N	\N	1
tg2hn64ei8t	qlc8gbizzyo	6	\N	\N	\N
44890jxlzup	kjig4l36dxf	6	\N	\N	\N
44890jxlzup	qlc8gbizzyo	7	\N	\N	\N
xa635tbvi5c	kjig4l36dxf	7	\N	\N	\N
xa635tbvi5c	qlc8gbizzyo	8	\N	\N	\N
46p5wcng6sm	qlc8gbizzyo	2	\N	\N	\N
r3e9s9hvz53	kjig4l36dxf	2	\N	\N	\N
r3e9s9hvz53	qlc8gbizzyo	3	\N	\N	\N
ylyr9dd0a50	kjig4l36dxf	3	\N	\N	\N
ylyr9dd0a50	qlc8gbizzyo	4	\N	\N	\N
4dgysxrfq7o	kjig4l36dxf	8	\N	\N	\N
4dgysxrfq7o	qlc8gbizzyo	9	\N	\N	\N
sf8fl742bgm	kjig4l36dxf	9	\N	\N	\N
sf8fl742bgm	qlc8gbizzyo	10	\N	\N	\N
sptin92gm5m	kjig4l36dxf	10	\N	\N	\N
sptin92gm5m	qlc8gbizzyo	11	\N	\N	\N
i0lnhtci4u6	kjig4l36dxf	11	\N	\N	\N
i0lnhtci4u6	qlc8gbizzyo	12	\N	\N	\N
swxvjglsevf	kjig4l36dxf	12	\N	\N	\N
swxvjglsevf	qlc8gbizzyo	13	\N	\N	\N
nocobase-admin-menu	kjig4l36dxf	13	\N	\N	\N
nocobase-admin-menu	qlc8gbizzyo	14	\N	\N	\N
kjig4l36dxf	kjig4l36dxf	0	f	properties	\N
46p5wcng6sm	kjig4l36dxf	1	\N	\N	2
w4ciktesp5j	a62axznlu5x	4	\N	\N	\N
tg2hn64ei8t	a62axznlu5x	5	\N	\N	\N
44890jxlzup	a62axznlu5x	6	\N	\N	\N
xa635tbvi5c	a62axznlu5x	7	\N	\N	\N
r3e9s9hvz53	a62axznlu5x	2	\N	\N	\N
ylyr9dd0a50	a62axznlu5x	3	\N	\N	\N
ieq8aso0l50	kdcbf9y1icj	1	\N	\N	1
4dgysxrfq7o	a62axznlu5x	8	\N	\N	\N
tmd3tr2ug71	tmd3tr2ug71	0	f	properties	\N
u2jpfjneg59	tmd3tr2ug71	1	\N	\N	1
i41kv6nughv	i41kv6nughv	0	f	properties	\N
tmd3tr2ug71	i41kv6nughv	1	\N	\N	1
u2jpfjneg59	i41kv6nughv	2	\N	\N	1
95272w6sxpp	i41kv6nughv	3	\N	\N	\N
95272w6sxpp	tmd3tr2ug71	2	\N	\N	\N
ke60pjxuu9p	i41kv6nughv	4	\N	\N	\N
ke60pjxuu9p	tmd3tr2ug71	3	\N	\N	\N
ke60pjxuu9p	u2jpfjneg59	2	\N	\N	\N
9ayo1a8z8f1	i41kv6nughv	5	\N	\N	\N
9ayo1a8z8f1	tmd3tr2ug71	4	\N	\N	\N
9ayo1a8z8f1	u2jpfjneg59	3	\N	\N	\N
g8idtoqr1fo	i41kv6nughv	6	\N	\N	\N
g8idtoqr1fo	tmd3tr2ug71	5	\N	\N	\N
g8idtoqr1fo	u2jpfjneg59	4	\N	\N	\N
kdcbf9y1icj	i41kv6nughv	7	\N	\N	\N
kdcbf9y1icj	tmd3tr2ug71	6	\N	\N	\N
kdcbf9y1icj	u2jpfjneg59	5	\N	\N	\N
ieq8aso0l50	i41kv6nughv	8	\N	\N	\N
ieq8aso0l50	tmd3tr2ug71	7	\N	\N	\N
ieq8aso0l50	u2jpfjneg59	6	\N	\N	\N
pyia20ca1id	i41kv6nughv	9	\N	\N	\N
pyia20ca1id	tmd3tr2ug71	8	\N	\N	\N
pyia20ca1id	u2jpfjneg59	7	\N	\N	\N
201yvs0pndu	i41kv6nughv	10	\N	\N	\N
201yvs0pndu	tmd3tr2ug71	9	\N	\N	\N
201yvs0pndu	u2jpfjneg59	8	\N	\N	\N
5qlc1z95ykr	i41kv6nughv	11	\N	\N	\N
5qlc1z95ykr	tmd3tr2ug71	10	\N	\N	\N
5qlc1z95ykr	u2jpfjneg59	9	\N	\N	\N
h7gipxths0w	i41kv6nughv	12	\N	\N	\N
h7gipxths0w	tmd3tr2ug71	11	\N	\N	\N
h7gipxths0w	u2jpfjneg59	10	\N	\N	\N
zwh6db27axk	ys27uzlmxsy	2	\N	\N	\N
sf8fl742bgm	a62axznlu5x	9	\N	\N	\N
sptin92gm5m	a62axznlu5x	10	\N	\N	\N
i0lnhtci4u6	a62axznlu5x	11	\N	\N	\N
swxvjglsevf	a62axznlu5x	12	\N	\N	\N
nocobase-admin-menu	a62axznlu5x	13	\N	\N	\N
w4ciktesp5j	ndgk36ztoyy	5	\N	\N	\N
tg2hn64ei8t	ndgk36ztoyy	6	\N	\N	\N
5b0fu481dm6	ys27uzlmxsy	3	\N	\N	\N
44890jxlzup	ndgk36ztoyy	7	\N	\N	\N
xa635tbvi5c	ndgk36ztoyy	8	\N	\N	\N
46p5wcng6sm	ndgk36ztoyy	2	\N	\N	\N
r3e9s9hvz53	ndgk36ztoyy	3	\N	\N	\N
ylyr9dd0a50	ndgk36ztoyy	4	\N	\N	\N
4dgysxrfq7o	ndgk36ztoyy	9	\N	\N	\N
46p5wcng6sm	a62axznlu5x	1	\N	\N	3
95272w6sxpp	u2jpfjneg59	1	\N	\N	1
mqaicqp9non	kd1zqe8fefe	1	\N	\N	1
pa54y3l77ck	pa54y3l77ck	0	f	properties	\N
kd1zqe8fefe	pa54y3l77ck	1	\N	\N	1
mqaicqp9non	pa54y3l77ck	2	\N	\N	1
6htbvgte0tk	kd1zqe8fefe	2	\N	\N	\N
8ko2451l30w	kd1zqe8fefe	3	\N	\N	\N
9azfkzbvd2t	kd1zqe8fefe	4	\N	\N	\N
fqae3xzvq38	kd1zqe8fefe	5	\N	\N	\N
ofsyyzcz0jq	kd1zqe8fefe	6	\N	\N	\N
3i3tciuj9cf	kd1zqe8fefe	7	\N	\N	\N
u2jpfjneg59	u2jpfjneg59	0	f	properties	\N
d6p3jlzlzul	d6p3jlzlzul	0	f	properties	\N
rmad1x9kyzg	d6p3jlzlzul	1	\N	\N	1
fvd5i7hod1p	fvd5i7hod1p	0	f	properties	\N
d6p3jlzlzul	fvd5i7hod1p	1	\N	\N	1
rmad1x9kyzg	fvd5i7hod1p	2	\N	\N	1
95272w6sxpp	d6p3jlzlzul	2	\N	\N	\N
95272w6sxpp	fvd5i7hod1p	3	\N	\N	\N
ke60pjxuu9p	d6p3jlzlzul	3	\N	\N	\N
ke60pjxuu9p	fvd5i7hod1p	4	\N	\N	\N
ke60pjxuu9p	rmad1x9kyzg	2	\N	\N	\N
9ayo1a8z8f1	d6p3jlzlzul	4	\N	\N	\N
9ayo1a8z8f1	fvd5i7hod1p	5	\N	\N	\N
9ayo1a8z8f1	rmad1x9kyzg	3	\N	\N	\N
g8idtoqr1fo	d6p3jlzlzul	5	\N	\N	\N
g8idtoqr1fo	fvd5i7hod1p	6	\N	\N	\N
g8idtoqr1fo	rmad1x9kyzg	4	\N	\N	\N
kdcbf9y1icj	d6p3jlzlzul	6	\N	\N	\N
kdcbf9y1icj	fvd5i7hod1p	7	\N	\N	\N
kdcbf9y1icj	rmad1x9kyzg	5	\N	\N	\N
ieq8aso0l50	d6p3jlzlzul	7	\N	\N	\N
ieq8aso0l50	fvd5i7hod1p	8	\N	\N	\N
ieq8aso0l50	rmad1x9kyzg	6	\N	\N	\N
pyia20ca1id	d6p3jlzlzul	8	\N	\N	\N
pyia20ca1id	fvd5i7hod1p	9	\N	\N	\N
pyia20ca1id	rmad1x9kyzg	7	\N	\N	\N
201yvs0pndu	d6p3jlzlzul	9	\N	\N	\N
201yvs0pndu	fvd5i7hod1p	10	\N	\N	\N
201yvs0pndu	rmad1x9kyzg	8	\N	\N	\N
5qlc1z95ykr	d6p3jlzlzul	10	\N	\N	\N
5qlc1z95ykr	fvd5i7hod1p	11	\N	\N	\N
5qlc1z95ykr	rmad1x9kyzg	9	\N	\N	\N
h7gipxths0w	d6p3jlzlzul	11	\N	\N	\N
h7gipxths0w	fvd5i7hod1p	12	\N	\N	\N
h7gipxths0w	rmad1x9kyzg	10	\N	\N	\N
bws6e7i5xki	kd1zqe8fefe	8	\N	\N	\N
08elwnxsu63	kd1zqe8fefe	9	\N	\N	\N
mwjoqz5w6cn	kd1zqe8fefe	10	\N	\N	\N
b3d6kcz2ih3	kd1zqe8fefe	11	\N	\N	\N
sioow55xwz6	kd1zqe8fefe	12	\N	\N	\N
ozzmhtdpth4	kd1zqe8fefe	13	\N	\N	\N
b8mogqkr3um	kd1zqe8fefe	14	\N	\N	\N
b56io1plq44	kd1zqe8fefe	15	\N	\N	\N
13qbrfhlbny	kd1zqe8fefe	16	\N	\N	\N
oqsecaif6am	kd1zqe8fefe	17	\N	\N	\N
63aby9t5qmb	kd1zqe8fefe	18	\N	\N	\N
rmad1x9kyzg	rmad1x9kyzg	0	f	properties	\N
95272w6sxpp	rmad1x9kyzg	1	\N	\N	2
ffa1o1vwibc	ffa1o1vwibc	0	f	properties	\N
n3l4en2z9cr	ffa1o1vwibc	1	\N	\N	1
zocsd5mcji4	zocsd5mcji4	0	f	properties	\N
ffa1o1vwibc	zocsd5mcji4	1	\N	\N	1
n3l4en2z9cr	zocsd5mcji4	2	\N	\N	1
95272w6sxpp	ffa1o1vwibc	2	\N	\N	\N
95272w6sxpp	zocsd5mcji4	3	\N	\N	\N
ke60pjxuu9p	ffa1o1vwibc	3	\N	\N	\N
ke60pjxuu9p	n3l4en2z9cr	2	\N	\N	\N
ke60pjxuu9p	zocsd5mcji4	4	\N	\N	\N
9ayo1a8z8f1	ffa1o1vwibc	4	\N	\N	\N
9ayo1a8z8f1	n3l4en2z9cr	3	\N	\N	\N
9ayo1a8z8f1	zocsd5mcji4	5	\N	\N	\N
g8idtoqr1fo	ffa1o1vwibc	5	\N	\N	\N
g8idtoqr1fo	n3l4en2z9cr	4	\N	\N	\N
g8idtoqr1fo	zocsd5mcji4	6	\N	\N	\N
kdcbf9y1icj	ffa1o1vwibc	6	\N	\N	\N
kdcbf9y1icj	n3l4en2z9cr	5	\N	\N	\N
kdcbf9y1icj	zocsd5mcji4	7	\N	\N	\N
ieq8aso0l50	ffa1o1vwibc	7	\N	\N	\N
ieq8aso0l50	n3l4en2z9cr	6	\N	\N	\N
ieq8aso0l50	zocsd5mcji4	8	\N	\N	\N
pyia20ca1id	ffa1o1vwibc	8	\N	\N	\N
pyia20ca1id	n3l4en2z9cr	7	\N	\N	\N
pyia20ca1id	zocsd5mcji4	9	\N	\N	\N
201yvs0pndu	ffa1o1vwibc	9	\N	\N	\N
201yvs0pndu	n3l4en2z9cr	8	\N	\N	\N
201yvs0pndu	zocsd5mcji4	10	\N	\N	\N
5qlc1z95ykr	ffa1o1vwibc	10	\N	\N	\N
5qlc1z95ykr	n3l4en2z9cr	9	\N	\N	\N
5qlc1z95ykr	zocsd5mcji4	11	\N	\N	\N
h7gipxths0w	ffa1o1vwibc	11	\N	\N	\N
h7gipxths0w	n3l4en2z9cr	10	\N	\N	\N
h7gipxths0w	zocsd5mcji4	12	\N	\N	\N
n3l4en2z9cr	n3l4en2z9cr	0	f	properties	\N
95272w6sxpp	n3l4en2z9cr	1	\N	\N	3
a9s5surx189	a9s5surx189	0	f	properties	\N
cik9oe1yhz2	a9s5surx189	1	\N	\N	1
cik9oe1yhz2	cik9oe1yhz2	0	f	properties	\N
oqsecaif6am	oqsecaif6am	0	t	properties	\N
63aby9t5qmb	oqsecaif6am	1	\N	\N	1
13qbrfhlbny	13qbrfhlbny	0	f	properties	\N
oqsecaif6am	13qbrfhlbny	1	\N	\N	1
63aby9t5qmb	13qbrfhlbny	2	\N	\N	1
mwrnryoju9y	13qbrfhlbny	3	\N	\N	\N
nocobase-admin-menu	13qbrfhlbny	4	\N	\N	\N
nocobase-admin-menu	63aby9t5qmb	2	\N	\N	\N
mwrnryoju9y	oqsecaif6am	2	\N	\N	\N
nocobase-admin-menu	oqsecaif6am	3	\N	\N	\N
63aby9t5qmb	63aby9t5qmb	0	f	properties	\N
mwrnryoju9y	63aby9t5qmb	1	\N	\N	1
b8mogqkr3um	b8mogqkr3um	0	f	properties	\N
b56io1plq44	b8mogqkr3um	1	\N	\N	1
ozzmhtdpth4	ozzmhtdpth4	0	f	properties	\N
b8mogqkr3um	ozzmhtdpth4	1	\N	\N	1
b56io1plq44	ozzmhtdpth4	2	\N	\N	1
sioow55xwz6	sioow55xwz6	0	f	properties	\N
ozzmhtdpth4	sioow55xwz6	1	\N	\N	1
b8mogqkr3um	sioow55xwz6	2	\N	\N	1
b56io1plq44	sioow55xwz6	3	\N	\N	1
o9klwv4nzei	o9klwv4nzei	0	f	properties	\N
ozzmhtdpth4	o9klwv4nzei	1	\N	\N	2
b8mogqkr3um	o9klwv4nzei	2	\N	\N	2
b56io1plq44	o9klwv4nzei	3	\N	\N	2
oqsecaif6am	b56io1plq44	2	\N	\N	\N
63aby9t5qmb	b56io1plq44	3	\N	\N	\N
mwrnryoju9y	b56io1plq44	4	\N	\N	\N
nocobase-admin-menu	b56io1plq44	5	\N	\N	\N
13qbrfhlbny	b8mogqkr3um	2	\N	\N	\N
oqsecaif6am	b8mogqkr3um	3	\N	\N	\N
63aby9t5qmb	b8mogqkr3um	4	\N	\N	\N
mwrnryoju9y	b8mogqkr3um	5	\N	\N	\N
nocobase-admin-menu	b8mogqkr3um	6	\N	\N	\N
b56io1plq44	b56io1plq44	0	f	properties	\N
z150jbdrf5z	z150jbdrf5z	0	f	properties	\N
a9s5surx189	z150jbdrf5z	1	\N	\N	1
cik9oe1yhz2	z150jbdrf5z	2	\N	\N	1
95272w6sxpp	a9s5surx189	2	\N	\N	\N
95272w6sxpp	z150jbdrf5z	3	\N	\N	\N
ke60pjxuu9p	a9s5surx189	3	\N	\N	\N
ke60pjxuu9p	cik9oe1yhz2	2	\N	\N	\N
ke60pjxuu9p	z150jbdrf5z	4	\N	\N	\N
9ayo1a8z8f1	a9s5surx189	4	\N	\N	\N
9ayo1a8z8f1	cik9oe1yhz2	3	\N	\N	\N
9ayo1a8z8f1	z150jbdrf5z	5	\N	\N	\N
g8idtoqr1fo	a9s5surx189	5	\N	\N	\N
g8idtoqr1fo	cik9oe1yhz2	4	\N	\N	\N
g8idtoqr1fo	z150jbdrf5z	6	\N	\N	\N
kdcbf9y1icj	a9s5surx189	6	\N	\N	\N
kdcbf9y1icj	cik9oe1yhz2	5	\N	\N	\N
kdcbf9y1icj	z150jbdrf5z	7	\N	\N	\N
ieq8aso0l50	a9s5surx189	7	\N	\N	\N
ieq8aso0l50	cik9oe1yhz2	6	\N	\N	\N
ieq8aso0l50	z150jbdrf5z	8	\N	\N	\N
pyia20ca1id	a9s5surx189	8	\N	\N	\N
pyia20ca1id	cik9oe1yhz2	7	\N	\N	\N
pyia20ca1id	z150jbdrf5z	9	\N	\N	\N
201yvs0pndu	a9s5surx189	9	\N	\N	\N
201yvs0pndu	cik9oe1yhz2	8	\N	\N	\N
201yvs0pndu	z150jbdrf5z	10	\N	\N	\N
5qlc1z95ykr	a9s5surx189	10	\N	\N	\N
5qlc1z95ykr	cik9oe1yhz2	9	\N	\N	\N
5qlc1z95ykr	z150jbdrf5z	11	\N	\N	\N
h7gipxths0w	a9s5surx189	11	\N	\N	\N
h7gipxths0w	cik9oe1yhz2	10	\N	\N	\N
h7gipxths0w	z150jbdrf5z	12	\N	\N	\N
mwrnryoju9y	kd1zqe8fefe	19	\N	\N	\N
3cjgaszqe4s	3cjgaszqe4s	0	f	properties	\N
nocobase-admin-menu	kd1zqe8fefe	20	\N	\N	\N
o9klwv4nzei	3cjgaszqe4s	1	\N	\N	2
sf8fl742bgm	ndgk36ztoyy	10	\N	\N	\N
8ko2451l30w	mqaicqp9non	2	\N	\N	\N
9azfkzbvd2t	mqaicqp9non	3	\N	\N	\N
fqae3xzvq38	mqaicqp9non	4	\N	\N	\N
ofsyyzcz0jq	mqaicqp9non	5	\N	\N	\N
13qbrfhlbny	o9klwv4nzei	4	\N	\N	\N
oqsecaif6am	o9klwv4nzei	5	\N	\N	\N
63aby9t5qmb	o9klwv4nzei	6	\N	\N	\N
mwrnryoju9y	o9klwv4nzei	7	\N	\N	\N
nocobase-admin-menu	o9klwv4nzei	8	\N	\N	\N
13qbrfhlbny	ozzmhtdpth4	3	\N	\N	\N
oqsecaif6am	ozzmhtdpth4	4	\N	\N	\N
63aby9t5qmb	ozzmhtdpth4	5	\N	\N	\N
mwrnryoju9y	ozzmhtdpth4	6	\N	\N	\N
nocobase-admin-menu	ozzmhtdpth4	7	\N	\N	\N
13qbrfhlbny	sioow55xwz6	4	\N	\N	\N
oqsecaif6am	sioow55xwz6	5	\N	\N	\N
63aby9t5qmb	sioow55xwz6	6	\N	\N	\N
mwrnryoju9y	sioow55xwz6	7	\N	\N	\N
95272w6sxpp	cik9oe1yhz2	1	\N	\N	4
ihbsljjbzpc	ihbsljjbzpc	0	f	properties	\N
ier7nfy9ohr	ihbsljjbzpc	1	\N	\N	1
axen9h3vgvx	axen9h3vgvx	0	f	properties	\N
ihbsljjbzpc	axen9h3vgvx	1	\N	\N	1
ier7nfy9ohr	axen9h3vgvx	2	\N	\N	1
95272w6sxpp	axen9h3vgvx	3	\N	\N	\N
95272w6sxpp	ihbsljjbzpc	2	\N	\N	\N
ke60pjxuu9p	axen9h3vgvx	4	\N	\N	\N
ke60pjxuu9p	ier7nfy9ohr	2	\N	\N	\N
ke60pjxuu9p	ihbsljjbzpc	3	\N	\N	\N
9ayo1a8z8f1	axen9h3vgvx	5	\N	\N	\N
9ayo1a8z8f1	ier7nfy9ohr	3	\N	\N	\N
9ayo1a8z8f1	ihbsljjbzpc	4	\N	\N	\N
g8idtoqr1fo	axen9h3vgvx	6	\N	\N	\N
g8idtoqr1fo	ier7nfy9ohr	4	\N	\N	\N
g8idtoqr1fo	ihbsljjbzpc	5	\N	\N	\N
kdcbf9y1icj	axen9h3vgvx	7	\N	\N	\N
kdcbf9y1icj	ier7nfy9ohr	5	\N	\N	\N
kdcbf9y1icj	ihbsljjbzpc	6	\N	\N	\N
ieq8aso0l50	axen9h3vgvx	8	\N	\N	\N
ieq8aso0l50	ier7nfy9ohr	6	\N	\N	\N
ieq8aso0l50	ihbsljjbzpc	7	\N	\N	\N
pyia20ca1id	axen9h3vgvx	9	\N	\N	\N
pyia20ca1id	ier7nfy9ohr	7	\N	\N	\N
pyia20ca1id	ihbsljjbzpc	8	\N	\N	\N
201yvs0pndu	axen9h3vgvx	10	\N	\N	\N
201yvs0pndu	ier7nfy9ohr	8	\N	\N	\N
201yvs0pndu	ihbsljjbzpc	9	\N	\N	\N
5qlc1z95ykr	axen9h3vgvx	11	\N	\N	\N
5qlc1z95ykr	ier7nfy9ohr	9	\N	\N	\N
5qlc1z95ykr	ihbsljjbzpc	10	\N	\N	\N
h7gipxths0w	axen9h3vgvx	12	\N	\N	\N
h7gipxths0w	ier7nfy9ohr	10	\N	\N	\N
h7gipxths0w	ihbsljjbzpc	11	\N	\N	\N
nocobase-admin-menu	sioow55xwz6	8	\N	\N	\N
13qbrfhlbny	b56io1plq44	1	\N	\N	1
7fjcdlzesft	7fjcdlzesft	0	f	properties	\N
3cjgaszqe4s	7fjcdlzesft	1	\N	\N	1
ozzmhtdpth4	3cjgaszqe4s	2	\N	\N	\N
b8mogqkr3um	3cjgaszqe4s	3	\N	\N	\N
b56io1plq44	3cjgaszqe4s	4	\N	\N	\N
13qbrfhlbny	3cjgaszqe4s	5	\N	\N	\N
oqsecaif6am	3cjgaszqe4s	6	\N	\N	\N
63aby9t5qmb	3cjgaszqe4s	7	\N	\N	\N
mwrnryoju9y	3cjgaszqe4s	8	\N	\N	\N
nocobase-admin-menu	3cjgaszqe4s	9	\N	\N	\N
o9klwv4nzei	7fjcdlzesft	2	\N	\N	\N
ozzmhtdpth4	7fjcdlzesft	3	\N	\N	\N
b8mogqkr3um	7fjcdlzesft	4	\N	\N	\N
b56io1plq44	7fjcdlzesft	5	\N	\N	\N
13qbrfhlbny	7fjcdlzesft	6	\N	\N	\N
oqsecaif6am	7fjcdlzesft	7	\N	\N	\N
63aby9t5qmb	7fjcdlzesft	8	\N	\N	\N
mwrnryoju9y	7fjcdlzesft	9	\N	\N	\N
nocobase-admin-menu	7fjcdlzesft	10	\N	\N	\N
ier7nfy9ohr	ier7nfy9ohr	0	f	properties	\N
95272w6sxpp	ier7nfy9ohr	1	\N	\N	5
pvnx4ocbmqu	pvnx4ocbmqu	0	f	properties	\N
6o0xla43m1w	6o0xla43m1w	0	f	properties	\N
ke60pjxuu9p	pvnx4ocbmqu	2	\N	\N	\N
9ayo1a8z8f1	pvnx4ocbmqu	3	\N	\N	\N
g8idtoqr1fo	pvnx4ocbmqu	4	\N	\N	\N
kdcbf9y1icj	pvnx4ocbmqu	5	\N	\N	\N
ieq8aso0l50	pvnx4ocbmqu	6	\N	\N	\N
pyia20ca1id	pvnx4ocbmqu	7	\N	\N	\N
201yvs0pndu	pvnx4ocbmqu	8	\N	\N	\N
5qlc1z95ykr	pvnx4ocbmqu	9	\N	\N	\N
h7gipxths0w	pvnx4ocbmqu	10	\N	\N	\N
eedm4y5z08l	6o0xla43m1w	1	\N	\N	1
o9klwv4nzei	6o0xla43m1w	2	\N	\N	\N
ozzmhtdpth4	6o0xla43m1w	3	\N	\N	\N
b8mogqkr3um	6o0xla43m1w	4	\N	\N	\N
b56io1plq44	6o0xla43m1w	5	\N	\N	\N
13qbrfhlbny	6o0xla43m1w	6	\N	\N	\N
oqsecaif6am	6o0xla43m1w	7	\N	\N	\N
63aby9t5qmb	6o0xla43m1w	8	\N	\N	\N
mwrnryoju9y	6o0xla43m1w	9	\N	\N	\N
3i3tciuj9cf	mqaicqp9non	6	\N	\N	\N
bws6e7i5xki	mqaicqp9non	7	\N	\N	\N
08elwnxsu63	mqaicqp9non	8	\N	\N	\N
kzelz9rby9p	pvnx4ocbmqu	1	\N	\N	1
mwjoqz5w6cn	mqaicqp9non	9	\N	\N	\N
w4ciktesp5j	46p5wcng6sm	3	\N	\N	\N
pxcipvysrb8	gfead56fb65	4	\N	\N	1
2tn2s78dgt2	2tn2s78dgt2	0	f	properties	\N
xus25o42nmo	2tn2s78dgt2	1	\N	\N	2
1oxe2et0fqk	2tn2s78dgt2	2	\N	\N	2
qeotrvptuc2	2tn2s78dgt2	3	\N	\N	2
pxcipvysrb8	2tn2s78dgt2	4	\N	\N	2
ylmz2mzwtqx	ylmz2mzwtqx	0	f	properties	\N
xus25o42nmo	ylmz2mzwtqx	1	\N	\N	3
1oxe2et0fqk	ylmz2mzwtqx	2	\N	\N	3
qeotrvptuc2	ylmz2mzwtqx	3	\N	\N	3
tg2hn64ei8t	46p5wcng6sm	4	\N	\N	\N
pxcipvysrb8	ylmz2mzwtqx	4	\N	\N	3
44890jxlzup	46p5wcng6sm	5	\N	\N	\N
xa635tbvi5c	46p5wcng6sm	6	\N	\N	\N
w4ciktesp5j	w4ciktesp5j	0	f	properties	\N
tg2hn64ei8t	w4ciktesp5j	1	\N	\N	1
xa635tbvi5c	tg2hn64ei8t	2	\N	\N	\N
4dgysxrfq7o	tg2hn64ei8t	3	\N	\N	\N
sf8fl742bgm	tg2hn64ei8t	4	\N	\N	\N
sptin92gm5m	tg2hn64ei8t	5	\N	\N	\N
i0lnhtci4u6	tg2hn64ei8t	6	\N	\N	\N
swxvjglsevf	tg2hn64ei8t	7	\N	\N	\N
nocobase-admin-menu	tg2hn64ei8t	8	\N	\N	\N
44890jxlzup	w4ciktesp5j	2	\N	\N	\N
xa635tbvi5c	w4ciktesp5j	3	\N	\N	\N
4dgysxrfq7o	w4ciktesp5j	4	\N	\N	\N
sf8fl742bgm	w4ciktesp5j	5	\N	\N	\N
sptin92gm5m	w4ciktesp5j	6	\N	\N	\N
i0lnhtci4u6	w4ciktesp5j	7	\N	\N	\N
swxvjglsevf	w4ciktesp5j	8	\N	\N	\N
nocobase-admin-menu	w4ciktesp5j	9	\N	\N	\N
tg2hn64ei8t	tg2hn64ei8t	0	f	properties	\N
44890jxlzup	tg2hn64ei8t	1	\N	\N	6
r3e9s9hvz53	r3e9s9hvz53	0	f	properties	\N
ylyr9dd0a50	r3e9s9hvz53	1	\N	\N	1
46p5wcng6sm	46p5wcng6sm	0	f	properties	\N
r3e9s9hvz53	46p5wcng6sm	1	\N	\N	1
ylyr9dd0a50	46p5wcng6sm	2	\N	\N	1
ndgk36ztoyy	ndgk36ztoyy	0	f	properties	\N
a62axznlu5x	ndgk36ztoyy	1	\N	\N	1
4dgysxrfq7o	46p5wcng6sm	7	\N	\N	\N
sf8fl742bgm	46p5wcng6sm	8	\N	\N	\N
sptin92gm5m	46p5wcng6sm	9	\N	\N	\N
i0lnhtci4u6	46p5wcng6sm	10	\N	\N	\N
swxvjglsevf	46p5wcng6sm	11	\N	\N	\N
nocobase-admin-menu	46p5wcng6sm	12	\N	\N	\N
w4ciktesp5j	r3e9s9hvz53	2	\N	\N	\N
tg2hn64ei8t	r3e9s9hvz53	3	\N	\N	\N
44890jxlzup	r3e9s9hvz53	4	\N	\N	\N
xa635tbvi5c	r3e9s9hvz53	5	\N	\N	\N
4dgysxrfq7o	r3e9s9hvz53	6	\N	\N	\N
sf8fl742bgm	r3e9s9hvz53	7	\N	\N	\N
sptin92gm5m	r3e9s9hvz53	8	\N	\N	\N
i0lnhtci4u6	r3e9s9hvz53	9	\N	\N	\N
swxvjglsevf	r3e9s9hvz53	10	\N	\N	\N
nocobase-admin-menu	r3e9s9hvz53	11	\N	\N	\N
tg2hn64ei8t	ylyr9dd0a50	2	\N	\N	\N
44890jxlzup	ylyr9dd0a50	3	\N	\N	\N
xa635tbvi5c	ylyr9dd0a50	4	\N	\N	\N
4dgysxrfq7o	ylyr9dd0a50	5	\N	\N	\N
sf8fl742bgm	ylyr9dd0a50	6	\N	\N	\N
sptin92gm5m	ylyr9dd0a50	7	\N	\N	\N
i0lnhtci4u6	ylyr9dd0a50	8	\N	\N	\N
swxvjglsevf	ylyr9dd0a50	9	\N	\N	\N
nocobase-admin-menu	ylyr9dd0a50	10	\N	\N	\N
ylyr9dd0a50	ylyr9dd0a50	0	f	properties	\N
w4ciktesp5j	ylyr9dd0a50	1	\N	\N	2
1dvfg1afm18	1dvfg1afm18	0	f	properties	\N
q3rv0rnfki7	1dvfg1afm18	1	\N	\N	1
5b0fu481dm6	5b0fu481dm6	0	f	properties	\N
1dvfg1afm18	5b0fu481dm6	1	\N	\N	1
q3rv0rnfki7	5b0fu481dm6	2	\N	\N	1
zwh6db27axk	zwh6db27axk	0	f	properties	\N
5b0fu481dm6	zwh6db27axk	1	\N	\N	1
1dvfg1afm18	zwh6db27axk	2	\N	\N	1
q3rv0rnfki7	zwh6db27axk	3	\N	\N	1
1cnwu64uyw3	1cnwu64uyw3	0	f	properties	\N
zwh6db27axk	1cnwu64uyw3	1	\N	\N	1
5b0fu481dm6	1cnwu64uyw3	2	\N	\N	1
1dvfg1afm18	1cnwu64uyw3	3	\N	\N	1
q3rv0rnfki7	1cnwu64uyw3	4	\N	\N	1
w4ciktesp5j	1cnwu64uyw3	5	\N	\N	\N
tg2hn64ei8t	1cnwu64uyw3	6	\N	\N	\N
44890jxlzup	1cnwu64uyw3	7	\N	\N	\N
xa635tbvi5c	1cnwu64uyw3	8	\N	\N	\N
4dgysxrfq7o	1cnwu64uyw3	9	\N	\N	\N
sf8fl742bgm	1cnwu64uyw3	10	\N	\N	\N
sptin92gm5m	1cnwu64uyw3	11	\N	\N	\N
i0lnhtci4u6	1cnwu64uyw3	12	\N	\N	\N
swxvjglsevf	1cnwu64uyw3	13	\N	\N	\N
nocobase-admin-menu	1cnwu64uyw3	14	\N	\N	\N
w4ciktesp5j	1dvfg1afm18	2	\N	\N	\N
tg2hn64ei8t	1dvfg1afm18	3	\N	\N	\N
44890jxlzup	1dvfg1afm18	4	\N	\N	\N
xa635tbvi5c	1dvfg1afm18	5	\N	\N	\N
4dgysxrfq7o	1dvfg1afm18	6	\N	\N	\N
sf8fl742bgm	1dvfg1afm18	7	\N	\N	\N
sptin92gm5m	1dvfg1afm18	8	\N	\N	\N
i0lnhtci4u6	1dvfg1afm18	9	\N	\N	\N
swxvjglsevf	1dvfg1afm18	10	\N	\N	\N
nocobase-admin-menu	1dvfg1afm18	11	\N	\N	\N
w4ciktesp5j	5b0fu481dm6	3	\N	\N	\N
tg2hn64ei8t	5b0fu481dm6	4	\N	\N	\N
44890jxlzup	5b0fu481dm6	5	\N	\N	\N
xa635tbvi5c	5b0fu481dm6	6	\N	\N	\N
4dgysxrfq7o	5b0fu481dm6	7	\N	\N	\N
sf8fl742bgm	5b0fu481dm6	8	\N	\N	\N
sptin92gm5m	5b0fu481dm6	9	\N	\N	\N
i0lnhtci4u6	5b0fu481dm6	10	\N	\N	\N
swxvjglsevf	5b0fu481dm6	11	\N	\N	\N
nocobase-admin-menu	5b0fu481dm6	12	\N	\N	\N
tg2hn64ei8t	q3rv0rnfki7	2	\N	\N	\N
44890jxlzup	q3rv0rnfki7	3	\N	\N	\N
xa635tbvi5c	q3rv0rnfki7	4	\N	\N	\N
4dgysxrfq7o	q3rv0rnfki7	5	\N	\N	\N
sf8fl742bgm	q3rv0rnfki7	6	\N	\N	\N
sptin92gm5m	q3rv0rnfki7	7	\N	\N	\N
i0lnhtci4u6	q3rv0rnfki7	8	\N	\N	\N
swxvjglsevf	q3rv0rnfki7	9	\N	\N	\N
nocobase-admin-menu	q3rv0rnfki7	10	\N	\N	\N
w4ciktesp5j	zwh6db27axk	4	\N	\N	\N
tg2hn64ei8t	zwh6db27axk	5	\N	\N	\N
44890jxlzup	zwh6db27axk	6	\N	\N	\N
xa635tbvi5c	zwh6db27axk	7	\N	\N	\N
4dgysxrfq7o	zwh6db27axk	8	\N	\N	\N
sf8fl742bgm	zwh6db27axk	9	\N	\N	\N
sptin92gm5m	zwh6db27axk	10	\N	\N	\N
i0lnhtci4u6	zwh6db27axk	11	\N	\N	\N
swxvjglsevf	zwh6db27axk	12	\N	\N	\N
nocobase-admin-menu	zwh6db27axk	13	\N	\N	\N
q3rv0rnfki7	q3rv0rnfki7	0	f	properties	\N
w4ciktesp5j	q3rv0rnfki7	1	\N	\N	3
b3d6kcz2ih3	mqaicqp9non	10	\N	\N	\N
sioow55xwz6	mqaicqp9non	11	\N	\N	\N
ozzmhtdpth4	mqaicqp9non	12	\N	\N	\N
b8mogqkr3um	mqaicqp9non	13	\N	\N	\N
b56io1plq44	mqaicqp9non	14	\N	\N	\N
13qbrfhlbny	mqaicqp9non	15	\N	\N	\N
oqsecaif6am	mqaicqp9non	16	\N	\N	\N
63aby9t5qmb	mqaicqp9non	17	\N	\N	\N
mwrnryoju9y	mqaicqp9non	18	\N	\N	\N
nocobase-admin-menu	mqaicqp9non	19	\N	\N	\N
6htbvgte0tk	pa54y3l77ck	3	\N	\N	\N
8ko2451l30w	pa54y3l77ck	4	\N	\N	\N
9azfkzbvd2t	pa54y3l77ck	5	\N	\N	\N
fqae3xzvq38	pa54y3l77ck	6	\N	\N	\N
ofsyyzcz0jq	pa54y3l77ck	7	\N	\N	\N
3i3tciuj9cf	pa54y3l77ck	8	\N	\N	\N
bws6e7i5xki	pa54y3l77ck	9	\N	\N	\N
08elwnxsu63	pa54y3l77ck	10	\N	\N	\N
mwjoqz5w6cn	pa54y3l77ck	11	\N	\N	\N
b3d6kcz2ih3	pa54y3l77ck	12	\N	\N	\N
sioow55xwz6	pa54y3l77ck	13	\N	\N	\N
ozzmhtdpth4	pa54y3l77ck	14	\N	\N	\N
b8mogqkr3um	pa54y3l77ck	15	\N	\N	\N
b56io1plq44	pa54y3l77ck	16	\N	\N	\N
13qbrfhlbny	pa54y3l77ck	17	\N	\N	\N
oqsecaif6am	pa54y3l77ck	18	\N	\N	\N
63aby9t5qmb	pa54y3l77ck	19	\N	\N	\N
mwrnryoju9y	pa54y3l77ck	20	\N	\N	\N
nocobase-admin-menu	pa54y3l77ck	21	\N	\N	\N
mqaicqp9non	mqaicqp9non	0	f	properties	\N
6htbvgte0tk	mqaicqp9non	1	\N	\N	4
1dvfg1afm18	ys27uzlmxsy	4	\N	\N	\N
sptin92gm5m	ndgk36ztoyy	11	\N	\N	\N
i0lnhtci4u6	ndgk36ztoyy	12	\N	\N	\N
swxvjglsevf	ndgk36ztoyy	13	\N	\N	\N
nocobase-admin-menu	ndgk36ztoyy	14	\N	\N	\N
w4ciktesp5j	jkiooahp540	6	\N	\N	\N
tg2hn64ei8t	jkiooahp540	7	\N	\N	\N
44890jxlzup	jkiooahp540	8	\N	\N	\N
q3rv0rnfki7	ys27uzlmxsy	5	\N	\N	\N
xa635tbvi5c	jkiooahp540	9	\N	\N	\N
46p5wcng6sm	jkiooahp540	3	\N	\N	\N
r3e9s9hvz53	jkiooahp540	4	\N	\N	\N
ylyr9dd0a50	jkiooahp540	5	\N	\N	\N
4dgysxrfq7o	jkiooahp540	10	\N	\N	\N
sf8fl742bgm	jkiooahp540	11	\N	\N	\N
sptin92gm5m	jkiooahp540	12	\N	\N	\N
w4ciktesp5j	ys27uzlmxsy	6	\N	\N	\N
i0lnhtci4u6	jkiooahp540	13	\N	\N	\N
swxvjglsevf	jkiooahp540	14	\N	\N	\N
nocobase-admin-menu	jkiooahp540	15	\N	\N	\N
w4ciktesp5j	szg62voxazi	7	\N	\N	\N
tg2hn64ei8t	szg62voxazi	8	\N	\N	\N
44890jxlzup	szg62voxazi	9	\N	\N	\N
xa635tbvi5c	szg62voxazi	10	\N	\N	\N
tg2hn64ei8t	ys27uzlmxsy	7	\N	\N	\N
46p5wcng6sm	szg62voxazi	4	\N	\N	\N
r3e9s9hvz53	szg62voxazi	5	\N	\N	\N
ylyr9dd0a50	szg62voxazi	6	\N	\N	\N
4dgysxrfq7o	szg62voxazi	11	\N	\N	\N
sf8fl742bgm	szg62voxazi	12	\N	\N	\N
sptin92gm5m	szg62voxazi	13	\N	\N	\N
i0lnhtci4u6	szg62voxazi	14	\N	\N	\N
44890jxlzup	ys27uzlmxsy	8	\N	\N	\N
swxvjglsevf	szg62voxazi	15	\N	\N	\N
nocobase-admin-menu	szg62voxazi	16	\N	\N	\N
w4ciktesp5j	iam40dae216	8	\N	\N	\N
tg2hn64ei8t	iam40dae216	9	\N	\N	\N
44890jxlzup	iam40dae216	10	\N	\N	\N
xa635tbvi5c	iam40dae216	11	\N	\N	\N
46p5wcng6sm	iam40dae216	5	\N	\N	\N
xa635tbvi5c	ys27uzlmxsy	9	\N	\N	\N
r3e9s9hvz53	iam40dae216	6	\N	\N	\N
ylyr9dd0a50	iam40dae216	7	\N	\N	\N
4dgysxrfq7o	iam40dae216	12	\N	\N	\N
sf8fl742bgm	iam40dae216	13	\N	\N	\N
sptin92gm5m	iam40dae216	14	\N	\N	\N
i0lnhtci4u6	iam40dae216	15	\N	\N	\N
swxvjglsevf	iam40dae216	16	\N	\N	\N
4dgysxrfq7o	ys27uzlmxsy	10	\N	\N	\N
nocobase-admin-menu	iam40dae216	17	\N	\N	\N
w4ciktesp5j	f4amot355dj	9	\N	\N	\N
tg2hn64ei8t	f4amot355dj	10	\N	\N	\N
44890jxlzup	f4amot355dj	11	\N	\N	\N
xa635tbvi5c	f4amot355dj	12	\N	\N	\N
46p5wcng6sm	f4amot355dj	6	\N	\N	\N
r3e9s9hvz53	f4amot355dj	7	\N	\N	\N
sf8fl742bgm	ys27uzlmxsy	11	\N	\N	\N
ylyr9dd0a50	f4amot355dj	8	\N	\N	\N
4dgysxrfq7o	f4amot355dj	13	\N	\N	\N
sf8fl742bgm	f4amot355dj	14	\N	\N	\N
sptin92gm5m	f4amot355dj	15	\N	\N	\N
i0lnhtci4u6	f4amot355dj	16	\N	\N	\N
swxvjglsevf	f4amot355dj	17	\N	\N	\N
nocobase-admin-menu	f4amot355dj	18	\N	\N	\N
sptin92gm5m	ys27uzlmxsy	12	\N	\N	\N
w4ciktesp5j	h0tf2zekdwj	10	\N	\N	\N
tg2hn64ei8t	h0tf2zekdwj	11	\N	\N	\N
44890jxlzup	h0tf2zekdwj	12	\N	\N	\N
xa635tbvi5c	h0tf2zekdwj	13	\N	\N	\N
46p5wcng6sm	h0tf2zekdwj	7	\N	\N	\N
r3e9s9hvz53	h0tf2zekdwj	8	\N	\N	\N
ylyr9dd0a50	h0tf2zekdwj	9	\N	\N	\N
4dgysxrfq7o	h0tf2zekdwj	14	\N	\N	\N
sf8fl742bgm	h0tf2zekdwj	15	\N	\N	\N
sptin92gm5m	h0tf2zekdwj	16	\N	\N	\N
i0lnhtci4u6	h0tf2zekdwj	17	\N	\N	\N
swxvjglsevf	h0tf2zekdwj	18	\N	\N	\N
nocobase-admin-menu	h0tf2zekdwj	19	\N	\N	\N
w4ciktesp5j	zy0akbfpvko	10	\N	\N	\N
tg2hn64ei8t	zy0akbfpvko	11	\N	\N	\N
44890jxlzup	zy0akbfpvko	12	\N	\N	\N
xa635tbvi5c	zy0akbfpvko	13	\N	\N	\N
46p5wcng6sm	zy0akbfpvko	7	\N	\N	\N
r3e9s9hvz53	zy0akbfpvko	8	\N	\N	\N
ylyr9dd0a50	zy0akbfpvko	9	\N	\N	\N
4dgysxrfq7o	zy0akbfpvko	14	\N	\N	\N
sf8fl742bgm	zy0akbfpvko	15	\N	\N	\N
sptin92gm5m	zy0akbfpvko	16	\N	\N	\N
i0lnhtci4u6	zy0akbfpvko	17	\N	\N	\N
swxvjglsevf	zy0akbfpvko	18	\N	\N	\N
nocobase-admin-menu	zy0akbfpvko	19	\N	\N	\N
w4ciktesp5j	ccyy0t4x4b1	11	\N	\N	\N
tg2hn64ei8t	ccyy0t4x4b1	12	\N	\N	\N
44890jxlzup	ccyy0t4x4b1	13	\N	\N	\N
xa635tbvi5c	ccyy0t4x4b1	14	\N	\N	\N
46p5wcng6sm	ccyy0t4x4b1	8	\N	\N	\N
r3e9s9hvz53	ccyy0t4x4b1	9	\N	\N	\N
ylyr9dd0a50	ccyy0t4x4b1	10	\N	\N	\N
4dgysxrfq7o	ccyy0t4x4b1	15	\N	\N	\N
sf8fl742bgm	ccyy0t4x4b1	16	\N	\N	\N
sptin92gm5m	ccyy0t4x4b1	17	\N	\N	\N
i0lnhtci4u6	ccyy0t4x4b1	18	\N	\N	\N
swxvjglsevf	ccyy0t4x4b1	19	\N	\N	\N
nocobase-admin-menu	ccyy0t4x4b1	20	\N	\N	\N
w4ciktesp5j	eezrjzkkyvu	12	\N	\N	\N
tg2hn64ei8t	eezrjzkkyvu	13	\N	\N	\N
44890jxlzup	eezrjzkkyvu	14	\N	\N	\N
xa635tbvi5c	eezrjzkkyvu	15	\N	\N	\N
46p5wcng6sm	eezrjzkkyvu	9	\N	\N	\N
r3e9s9hvz53	eezrjzkkyvu	10	\N	\N	\N
ylyr9dd0a50	eezrjzkkyvu	11	\N	\N	\N
4dgysxrfq7o	eezrjzkkyvu	16	\N	\N	\N
sf8fl742bgm	eezrjzkkyvu	17	\N	\N	\N
sptin92gm5m	eezrjzkkyvu	18	\N	\N	\N
i0lnhtci4u6	eezrjzkkyvu	19	\N	\N	\N
swxvjglsevf	eezrjzkkyvu	20	\N	\N	\N
nocobase-admin-menu	eezrjzkkyvu	21	\N	\N	\N
w4ciktesp5j	1qnhdoz7zx7	13	\N	\N	\N
tg2hn64ei8t	1qnhdoz7zx7	14	\N	\N	\N
44890jxlzup	1qnhdoz7zx7	15	\N	\N	\N
xa635tbvi5c	1qnhdoz7zx7	16	\N	\N	\N
46p5wcng6sm	1qnhdoz7zx7	10	\N	\N	\N
r3e9s9hvz53	1qnhdoz7zx7	11	\N	\N	\N
i0lnhtci4u6	ys27uzlmxsy	13	\N	\N	\N
ylyr9dd0a50	1qnhdoz7zx7	12	\N	\N	\N
4dgysxrfq7o	1qnhdoz7zx7	17	\N	\N	\N
sf8fl742bgm	1qnhdoz7zx7	18	\N	\N	\N
sptin92gm5m	1qnhdoz7zx7	19	\N	\N	\N
i0lnhtci4u6	1qnhdoz7zx7	20	\N	\N	\N
wow0bz8vt48	wow0bz8vt48	0	f	properties	\N
8ko2451l30w	wow0bz8vt48	2	\N	\N	\N
9azfkzbvd2t	wow0bz8vt48	3	\N	\N	\N
fqae3xzvq38	wow0bz8vt48	4	\N	\N	\N
ofsyyzcz0jq	wow0bz8vt48	5	\N	\N	\N
3i3tciuj9cf	wow0bz8vt48	6	\N	\N	\N
bws6e7i5xki	wow0bz8vt48	7	\N	\N	\N
08elwnxsu63	wow0bz8vt48	8	\N	\N	\N
mwjoqz5w6cn	wow0bz8vt48	9	\N	\N	\N
b3d6kcz2ih3	wow0bz8vt48	10	\N	\N	\N
sioow55xwz6	wow0bz8vt48	11	\N	\N	\N
ozzmhtdpth4	wow0bz8vt48	12	\N	\N	\N
b8mogqkr3um	wow0bz8vt48	13	\N	\N	\N
b56io1plq44	wow0bz8vt48	14	\N	\N	\N
13qbrfhlbny	wow0bz8vt48	15	\N	\N	\N
oqsecaif6am	wow0bz8vt48	16	\N	\N	\N
63aby9t5qmb	wow0bz8vt48	17	\N	\N	\N
mwrnryoju9y	wow0bz8vt48	18	\N	\N	\N
nocobase-admin-menu	wow0bz8vt48	19	\N	\N	\N
q8kb3rudliu	wow0bz8vt48	1	\N	\N	1
swxvjglsevf	1qnhdoz7zx7	21	\N	\N	\N
nocobase-admin-menu	1qnhdoz7zx7	22	\N	\N	\N
swxvjglsevf	ys27uzlmxsy	14	\N	\N	\N
w4ciktesp5j	or37h0ojd97	11	\N	\N	\N
tg2hn64ei8t	or37h0ojd97	12	\N	\N	\N
44890jxlzup	or37h0ojd97	13	\N	\N	\N
xa635tbvi5c	or37h0ojd97	14	\N	\N	\N
46p5wcng6sm	or37h0ojd97	8	\N	\N	\N
r3e9s9hvz53	or37h0ojd97	9	\N	\N	\N
ylyr9dd0a50	or37h0ojd97	10	\N	\N	\N
nocobase-admin-menu	ys27uzlmxsy	15	\N	\N	\N
4dgysxrfq7o	or37h0ojd97	15	\N	\N	\N
sf8fl742bgm	or37h0ojd97	16	\N	\N	\N
sptin92gm5m	or37h0ojd97	17	\N	\N	\N
i0lnhtci4u6	or37h0ojd97	18	\N	\N	\N
swxvjglsevf	or37h0ojd97	19	\N	\N	\N
nocobase-admin-menu	or37h0ojd97	20	\N	\N	\N
w4ciktesp5j	ijeiw8vjxy8	12	\N	\N	\N
ys27uzlmxsy	ys27uzlmxsy	0	f	properties	\N
tg2hn64ei8t	ijeiw8vjxy8	13	\N	\N	\N
44890jxlzup	ijeiw8vjxy8	14	\N	\N	\N
xa635tbvi5c	ijeiw8vjxy8	15	\N	\N	\N
46p5wcng6sm	ijeiw8vjxy8	9	\N	\N	\N
r3e9s9hvz53	ijeiw8vjxy8	10	\N	\N	\N
ylyr9dd0a50	ijeiw8vjxy8	11	\N	\N	\N
jiq42lrek0j	t4v2kcudvg5	3	\N	\N	\N
4dgysxrfq7o	ijeiw8vjxy8	16	\N	\N	\N
sf8fl742bgm	ijeiw8vjxy8	17	\N	\N	\N
sptin92gm5m	ijeiw8vjxy8	18	\N	\N	\N
i0lnhtci4u6	ijeiw8vjxy8	19	\N	\N	\N
swxvjglsevf	ijeiw8vjxy8	20	\N	\N	\N
nocobase-admin-menu	ijeiw8vjxy8	21	\N	\N	\N
w4ciktesp5j	ymry3cg3xok	13	\N	\N	\N
tg2hn64ei8t	ymry3cg3xok	14	\N	\N	\N
44890jxlzup	ymry3cg3xok	15	\N	\N	\N
xa635tbvi5c	ymry3cg3xok	16	\N	\N	\N
46p5wcng6sm	ymry3cg3xok	10	\N	\N	\N
r3e9s9hvz53	ymry3cg3xok	11	\N	\N	\N
ylyr9dd0a50	ymry3cg3xok	12	\N	\N	\N
4dgysxrfq7o	ymry3cg3xok	17	\N	\N	\N
sf8fl742bgm	ymry3cg3xok	18	\N	\N	\N
sptin92gm5m	ymry3cg3xok	19	\N	\N	\N
i0lnhtci4u6	ymry3cg3xok	20	\N	\N	\N
swxvjglsevf	ymry3cg3xok	21	\N	\N	\N
nocobase-admin-menu	ymry3cg3xok	22	\N	\N	\N
m078f77gart	m078f77gart	0	f	properties	\N
1cnwu64uyw3	ys27uzlmxsy	1	\N	\N	4
w149la0utnx	q9zjnv8mc9j	3	\N	\N	\N
w149la0utnx	t4v2kcudvg5	4	\N	\N	\N
w4ciktesp5j	096g2sd50x7	11	\N	\N	\N
tg2hn64ei8t	096g2sd50x7	12	\N	\N	\N
44890jxlzup	096g2sd50x7	13	\N	\N	\N
xa635tbvi5c	096g2sd50x7	14	\N	\N	\N
46p5wcng6sm	096g2sd50x7	8	\N	\N	\N
r3e9s9hvz53	096g2sd50x7	9	\N	\N	\N
ylyr9dd0a50	096g2sd50x7	10	\N	\N	\N
4dgysxrfq7o	096g2sd50x7	15	\N	\N	\N
sf8fl742bgm	096g2sd50x7	16	\N	\N	\N
sptin92gm5m	096g2sd50x7	17	\N	\N	\N
i0lnhtci4u6	096g2sd50x7	18	\N	\N	\N
swxvjglsevf	096g2sd50x7	19	\N	\N	\N
nocobase-admin-menu	096g2sd50x7	20	\N	\N	\N
w4ciktesp5j	tahclmi8sl1	12	\N	\N	\N
tg2hn64ei8t	tahclmi8sl1	13	\N	\N	\N
44890jxlzup	tahclmi8sl1	14	\N	\N	\N
xa635tbvi5c	tahclmi8sl1	15	\N	\N	\N
46p5wcng6sm	tahclmi8sl1	9	\N	\N	\N
r3e9s9hvz53	tahclmi8sl1	10	\N	\N	\N
ylyr9dd0a50	tahclmi8sl1	11	\N	\N	\N
4dgysxrfq7o	tahclmi8sl1	16	\N	\N	\N
sf8fl742bgm	tahclmi8sl1	17	\N	\N	\N
sptin92gm5m	tahclmi8sl1	18	\N	\N	\N
i0lnhtci4u6	tahclmi8sl1	19	\N	\N	\N
swxvjglsevf	tahclmi8sl1	20	\N	\N	\N
nocobase-admin-menu	tahclmi8sl1	21	\N	\N	\N
w4ciktesp5j	16s4kortrtf	13	\N	\N	\N
tg2hn64ei8t	16s4kortrtf	14	\N	\N	\N
44890jxlzup	16s4kortrtf	15	\N	\N	\N
xa635tbvi5c	16s4kortrtf	16	\N	\N	\N
46p5wcng6sm	16s4kortrtf	10	\N	\N	\N
r3e9s9hvz53	16s4kortrtf	11	\N	\N	\N
ylyr9dd0a50	16s4kortrtf	12	\N	\N	\N
4dgysxrfq7o	16s4kortrtf	17	\N	\N	\N
sf8fl742bgm	16s4kortrtf	18	\N	\N	\N
sptin92gm5m	16s4kortrtf	19	\N	\N	\N
i0lnhtci4u6	16s4kortrtf	20	\N	\N	\N
swxvjglsevf	16s4kortrtf	21	\N	\N	\N
nocobase-admin-menu	16s4kortrtf	22	\N	\N	\N
w4ciktesp5j	tjanawnnfnl	11	\N	\N	\N
tg2hn64ei8t	tjanawnnfnl	12	\N	\N	\N
44890jxlzup	tjanawnnfnl	13	\N	\N	\N
xa635tbvi5c	tjanawnnfnl	14	\N	\N	\N
46p5wcng6sm	tjanawnnfnl	8	\N	\N	\N
r3e9s9hvz53	tjanawnnfnl	9	\N	\N	\N
ylyr9dd0a50	tjanawnnfnl	10	\N	\N	\N
4dgysxrfq7o	tjanawnnfnl	15	\N	\N	\N
sf8fl742bgm	tjanawnnfnl	16	\N	\N	\N
sptin92gm5m	tjanawnnfnl	17	\N	\N	\N
i0lnhtci4u6	tjanawnnfnl	18	\N	\N	\N
swxvjglsevf	tjanawnnfnl	19	\N	\N	\N
nocobase-admin-menu	tjanawnnfnl	20	\N	\N	\N
a62axznlu5x	a62axznlu5x	0	f	properties	\N
dd1t7s27fl2	dd1t7s27fl2	0	f	properties	\N
y05digxvovk	dd1t7s27fl2	1	\N	\N	1
juylvd7o6f1	juylvd7o6f1	0	f	properties	\N
dd1t7s27fl2	juylvd7o6f1	1	\N	\N	1
6e6up9qf6jw	6e6up9qf6jw	0	f	properties	\N
q5sp3fyrz47	6e6up9qf6jw	1	\N	\N	1
i99shgxsfzv	i99shgxsfzv	0	f	properties	\N
6e6up9qf6jw	i99shgxsfzv	1	\N	\N	1
q5sp3fyrz47	i99shgxsfzv	2	\N	\N	1
0ypbdd2x5je	0ypbdd2x5je	0	f	properties	\N
i99shgxsfzv	0ypbdd2x5je	1	\N	\N	1
6e6up9qf6jw	0ypbdd2x5je	2	\N	\N	1
q5sp3fyrz47	0ypbdd2x5je	3	\N	\N	1
n596xt7b4gz	n596xt7b4gz	0	f	properties	\N
0ypbdd2x5je	n596xt7b4gz	1	\N	\N	1
i99shgxsfzv	n596xt7b4gz	2	\N	\N	1
6e6up9qf6jw	n596xt7b4gz	3	\N	\N	1
q5sp3fyrz47	n596xt7b4gz	4	\N	\N	1
vpvmqhclo5c	vpvmqhclo5c	0	f	properties	\N
0ypbdd2x5je	vpvmqhclo5c	1	\N	\N	2
i99shgxsfzv	vpvmqhclo5c	2	\N	\N	2
6e6up9qf6jw	vpvmqhclo5c	3	\N	\N	2
q5sp3fyrz47	vpvmqhclo5c	4	\N	\N	2
z02388u42s9	q9zjnv8mc9j	4	\N	\N	\N
qkanxqd13dl	6e6up9qf6jw	2	\N	\N	\N
qkanxqd13dl	i99shgxsfzv	3	\N	\N	\N
qkanxqd13dl	0ypbdd2x5je	4	\N	\N	\N
qkanxqd13dl	n596xt7b4gz	5	\N	\N	\N
qkanxqd13dl	vpvmqhclo5c	5	\N	\N	\N
mexjj7b1g93	q5sp3fyrz47	2	\N	\N	\N
mexjj7b1g93	6e6up9qf6jw	3	\N	\N	\N
mexjj7b1g93	i99shgxsfzv	4	\N	\N	\N
mexjj7b1g93	0ypbdd2x5je	5	\N	\N	\N
mexjj7b1g93	n596xt7b4gz	6	\N	\N	\N
mexjj7b1g93	vpvmqhclo5c	6	\N	\N	\N
pgsd6vdilnn	q5sp3fyrz47	3	\N	\N	\N
pgsd6vdilnn	6e6up9qf6jw	4	\N	\N	\N
pgsd6vdilnn	i99shgxsfzv	5	\N	\N	\N
pgsd6vdilnn	0ypbdd2x5je	6	\N	\N	\N
q5sp3fyrz47	q5sp3fyrz47	0	f	properties	\N
qkanxqd13dl	q5sp3fyrz47	1	\N	\N	1
y05digxvovk	juylvd7o6f1	2	\N	\N	1
exawjrxxnyl	exawjrxxnyl	0	f	properties	\N
rl4zzyovnti	rl4zzyovnti	0	f	properties	\N
juylvd7o6f1	rl4zzyovnti	1	\N	\N	1
dd1t7s27fl2	rl4zzyovnti	2	\N	\N	1
y05digxvovk	rl4zzyovnti	3	\N	\N	1
79bhmhhhbpw	79bhmhhhbpw	0	f	properties	\N
rl4zzyovnti	79bhmhhhbpw	1	\N	\N	1
juylvd7o6f1	79bhmhhhbpw	2	\N	\N	1
dd1t7s27fl2	79bhmhhhbpw	3	\N	\N	1
y05digxvovk	79bhmhhhbpw	4	\N	\N	1
w2vajpu7d09	w2vajpu7d09	0	f	properties	\N
rl4zzyovnti	w2vajpu7d09	1	\N	\N	2
juylvd7o6f1	w2vajpu7d09	2	\N	\N	2
dd1t7s27fl2	w2vajpu7d09	3	\N	\N	2
y05digxvovk	w2vajpu7d09	4	\N	\N	2
qlc8gbizzyo	dd1t7s27fl2	2	\N	\N	\N
qlc8gbizzyo	juylvd7o6f1	3	\N	\N	\N
qlc8gbizzyo	rl4zzyovnti	4	\N	\N	\N
qlc8gbizzyo	79bhmhhhbpw	5	\N	\N	\N
qlc8gbizzyo	w2vajpu7d09	5	\N	\N	\N
kjig4l36dxf	y05digxvovk	2	\N	\N	\N
kjig4l36dxf	dd1t7s27fl2	3	\N	\N	\N
kjig4l36dxf	juylvd7o6f1	4	\N	\N	\N
kjig4l36dxf	rl4zzyovnti	5	\N	\N	\N
4gnesuyiq9w	4gnesuyiq9w	0	f	properties	\N
3fffemef0cp	4gnesuyiq9w	1	\N	\N	1
kjig4l36dxf	79bhmhhhbpw	6	\N	\N	\N
kjig4l36dxf	w2vajpu7d09	6	\N	\N	\N
c5ha41uevsk	c5ha41uevsk	0	f	properties	\N
3fffemef0cp	c5ha41uevsk	1	\N	\N	2
w4ciktesp5j	y05digxvovk	6	\N	\N	\N
w4ciktesp5j	dd1t7s27fl2	7	\N	\N	\N
w4ciktesp5j	juylvd7o6f1	8	\N	\N	\N
w4ciktesp5j	rl4zzyovnti	9	\N	\N	\N
w4ciktesp5j	79bhmhhhbpw	10	\N	\N	\N
w4ciktesp5j	w2vajpu7d09	10	\N	\N	\N
uy1ulbd1nwj	uy1ulbd1nwj	0	f	properties	\N
juw6e13fsr0	uy1ulbd1nwj	1	\N	\N	1
a0bovbqnxzj	a0bovbqnxzj	0	f	properties	\N
uy1ulbd1nwj	a0bovbqnxzj	1	\N	\N	1
juw6e13fsr0	a0bovbqnxzj	2	\N	\N	1
95272w6sxpp	a0bovbqnxzj	3	\N	\N	\N
ke60pjxuu9p	a0bovbqnxzj	4	\N	\N	\N
9ayo1a8z8f1	a0bovbqnxzj	5	\N	\N	\N
g8idtoqr1fo	a0bovbqnxzj	6	\N	\N	\N
kdcbf9y1icj	a0bovbqnxzj	7	\N	\N	\N
ieq8aso0l50	a0bovbqnxzj	8	\N	\N	\N
pyia20ca1id	a0bovbqnxzj	9	\N	\N	\N
201yvs0pndu	a0bovbqnxzj	10	\N	\N	\N
5qlc1z95ykr	a0bovbqnxzj	11	\N	\N	\N
h7gipxths0w	a0bovbqnxzj	12	\N	\N	\N
tg2hn64ei8t	y05digxvovk	7	\N	\N	\N
tg2hn64ei8t	dd1t7s27fl2	8	\N	\N	\N
tg2hn64ei8t	juylvd7o6f1	9	\N	\N	\N
tg2hn64ei8t	rl4zzyovnti	10	\N	\N	\N
tg2hn64ei8t	79bhmhhhbpw	11	\N	\N	\N
tg2hn64ei8t	w2vajpu7d09	11	\N	\N	\N
44890jxlzup	y05digxvovk	8	\N	\N	\N
ke60pjxuu9p	juw6e13fsr0	2	\N	\N	\N
9ayo1a8z8f1	juw6e13fsr0	3	\N	\N	\N
g8idtoqr1fo	juw6e13fsr0	4	\N	\N	\N
kdcbf9y1icj	juw6e13fsr0	5	\N	\N	\N
ieq8aso0l50	juw6e13fsr0	6	\N	\N	\N
pyia20ca1id	juw6e13fsr0	7	\N	\N	\N
201yvs0pndu	juw6e13fsr0	8	\N	\N	\N
5qlc1z95ykr	juw6e13fsr0	9	\N	\N	\N
h7gipxths0w	juw6e13fsr0	10	\N	\N	\N
44890jxlzup	dd1t7s27fl2	9	\N	\N	\N
44890jxlzup	juylvd7o6f1	10	\N	\N	\N
44890jxlzup	rl4zzyovnti	11	\N	\N	\N
44890jxlzup	79bhmhhhbpw	12	\N	\N	\N
44890jxlzup	w2vajpu7d09	12	\N	\N	\N
xa635tbvi5c	y05digxvovk	9	\N	\N	\N
zwh6db27axk	exawjrxxnyl	2	\N	\N	\N
xa635tbvi5c	dd1t7s27fl2	10	\N	\N	\N
95272w6sxpp	uy1ulbd1nwj	2	\N	\N	\N
ke60pjxuu9p	uy1ulbd1nwj	3	\N	\N	\N
9ayo1a8z8f1	uy1ulbd1nwj	4	\N	\N	\N
g8idtoqr1fo	uy1ulbd1nwj	5	\N	\N	\N
kdcbf9y1icj	uy1ulbd1nwj	6	\N	\N	\N
ieq8aso0l50	uy1ulbd1nwj	7	\N	\N	\N
pyia20ca1id	uy1ulbd1nwj	8	\N	\N	\N
201yvs0pndu	uy1ulbd1nwj	9	\N	\N	\N
5qlc1z95ykr	uy1ulbd1nwj	10	\N	\N	\N
h7gipxths0w	uy1ulbd1nwj	11	\N	\N	\N
xa635tbvi5c	juylvd7o6f1	11	\N	\N	\N
xa635tbvi5c	rl4zzyovnti	12	\N	\N	\N
xa635tbvi5c	79bhmhhhbpw	13	\N	\N	\N
xa635tbvi5c	w2vajpu7d09	13	\N	\N	\N
46p5wcng6sm	y05digxvovk	3	\N	\N	\N
5b0fu481dm6	exawjrxxnyl	3	\N	\N	\N
46p5wcng6sm	dd1t7s27fl2	4	\N	\N	\N
46p5wcng6sm	juylvd7o6f1	5	\N	\N	\N
juw6e13fsr0	juw6e13fsr0	0	f	properties	\N
95272w6sxpp	juw6e13fsr0	1	\N	\N	6
ktjaxuy24vi	qeotrvptuc2	2	\N	\N	\N
ktjaxuy24vi	1oxe2et0fqk	3	\N	\N	\N
ktjaxuy24vi	xus25o42nmo	4	\N	\N	\N
ktjaxuy24vi	gfead56fb65	5	\N	\N	\N
ktjaxuy24vi	2tn2s78dgt2	5	\N	\N	\N
ktjaxuy24vi	ylmz2mzwtqx	5	\N	\N	\N
pf5jgr5qt8w	pxcipvysrb8	2	\N	\N	\N
pf5jgr5qt8w	qeotrvptuc2	3	\N	\N	\N
pf5jgr5qt8w	1oxe2et0fqk	4	\N	\N	\N
pf5jgr5qt8w	xus25o42nmo	5	\N	\N	\N
pf5jgr5qt8w	gfead56fb65	6	\N	\N	\N
46p5wcng6sm	rl4zzyovnti	6	\N	\N	\N
46p5wcng6sm	79bhmhhhbpw	7	\N	\N	\N
z02388u42s9	t4v2kcudvg5	5	\N	\N	\N
pyyifyhng5d	pyyifyhng5d	0	f	properties	\N
ip2da8grdsg	pyyifyhng5d	1	\N	\N	1
llvsctq28hp	q9zjnv8mc9j	5	\N	\N	\N
46p5wcng6sm	w2vajpu7d09	7	\N	\N	\N
r3e9s9hvz53	y05digxvovk	4	\N	\N	\N
1dvfg1afm18	exawjrxxnyl	4	\N	\N	\N
r3e9s9hvz53	dd1t7s27fl2	5	\N	\N	\N
r3e9s9hvz53	juylvd7o6f1	6	\N	\N	\N
r3e9s9hvz53	rl4zzyovnti	7	\N	\N	\N
r3e9s9hvz53	79bhmhhhbpw	8	\N	\N	\N
r3e9s9hvz53	w2vajpu7d09	8	\N	\N	\N
ylyr9dd0a50	y05digxvovk	5	\N	\N	\N
q3rv0rnfki7	exawjrxxnyl	5	\N	\N	\N
ylyr9dd0a50	dd1t7s27fl2	6	\N	\N	\N
ylyr9dd0a50	juylvd7o6f1	7	\N	\N	\N
ylyr9dd0a50	rl4zzyovnti	8	\N	\N	\N
ylyr9dd0a50	79bhmhhhbpw	9	\N	\N	\N
1cnwu64uyw3	exawjrxxnyl	1	\N	\N	5
3fffemef0cp	3fffemef0cp	0	f	properties	\N
ylyr9dd0a50	w2vajpu7d09	9	\N	\N	\N
nc92u2m878d	pyyifyhng5d	2	\N	\N	\N
jiq42lrek0j	ip2da8grdsg	2	\N	\N	\N
jiq42lrek0j	pyyifyhng5d	3	\N	\N	\N
4dgysxrfq7o	y05digxvovk	10	\N	\N	\N
4dgysxrfq7o	dd1t7s27fl2	11	\N	\N	\N
w4ciktesp5j	exawjrxxnyl	6	\N	\N	\N
4dgysxrfq7o	juylvd7o6f1	12	\N	\N	\N
4dgysxrfq7o	rl4zzyovnti	13	\N	\N	\N
4dgysxrfq7o	79bhmhhhbpw	14	\N	\N	\N
4dgysxrfq7o	w2vajpu7d09	14	\N	\N	\N
sf8fl742bgm	y05digxvovk	11	\N	\N	\N
sf8fl742bgm	dd1t7s27fl2	12	\N	\N	\N
tg2hn64ei8t	exawjrxxnyl	7	\N	\N	\N
sf8fl742bgm	juylvd7o6f1	13	\N	\N	\N
sf8fl742bgm	rl4zzyovnti	14	\N	\N	\N
sf8fl742bgm	79bhmhhhbpw	15	\N	\N	\N
sf8fl742bgm	w2vajpu7d09	15	\N	\N	\N
sptin92gm5m	y05digxvovk	12	\N	\N	\N
sptin92gm5m	dd1t7s27fl2	13	\N	\N	\N
44890jxlzup	exawjrxxnyl	8	\N	\N	\N
sptin92gm5m	juylvd7o6f1	14	\N	\N	\N
sptin92gm5m	rl4zzyovnti	15	\N	\N	\N
sptin92gm5m	79bhmhhhbpw	16	\N	\N	\N
sptin92gm5m	w2vajpu7d09	16	\N	\N	\N
i0lnhtci4u6	y05digxvovk	13	\N	\N	\N
i0lnhtci4u6	dd1t7s27fl2	14	\N	\N	\N
xa635tbvi5c	exawjrxxnyl	9	\N	\N	\N
i0lnhtci4u6	juylvd7o6f1	15	\N	\N	\N
i0lnhtci4u6	rl4zzyovnti	16	\N	\N	\N
i0lnhtci4u6	79bhmhhhbpw	17	\N	\N	\N
i0lnhtci4u6	w2vajpu7d09	17	\N	\N	\N
swxvjglsevf	y05digxvovk	14	\N	\N	\N
swxvjglsevf	dd1t7s27fl2	15	\N	\N	\N
llvsctq28hp	t4v2kcudvg5	6	\N	\N	\N
nocobase-admin-menu	6o0xla43m1w	10	\N	\N	\N
ozzmhtdpth4	eedm4y5z08l	2	\N	\N	\N
b8mogqkr3um	eedm4y5z08l	3	\N	\N	\N
b56io1plq44	eedm4y5z08l	4	\N	\N	\N
13qbrfhlbny	eedm4y5z08l	5	\N	\N	\N
oqsecaif6am	eedm4y5z08l	6	\N	\N	\N
63aby9t5qmb	eedm4y5z08l	7	\N	\N	\N
mwrnryoju9y	eedm4y5z08l	8	\N	\N	\N
nocobase-admin-menu	eedm4y5z08l	9	\N	\N	\N
eedm4y5z08l	eedm4y5z08l	0	f	properties	\N
o9klwv4nzei	eedm4y5z08l	1	\N	\N	3
4bi35t1c7vh	h7gipxths0w	1	\N	\N	2
pmtq1o4ie72	pmtq1o4ie72	0	f	properties	\N
xa635tbvi5c	h7gipxths0w	2	\N	\N	\N
4dgysxrfq7o	h7gipxths0w	3	\N	\N	\N
sf8fl742bgm	h7gipxths0w	4	\N	\N	\N
sptin92gm5m	h7gipxths0w	5	\N	\N	\N
i0lnhtci4u6	h7gipxths0w	6	\N	\N	\N
swxvjglsevf	h7gipxths0w	7	\N	\N	\N
nocobase-admin-menu	h7gipxths0w	8	\N	\N	\N
4bi35t1c7vh	5qlc1z95ykr	2	\N	\N	\N
xa635tbvi5c	5qlc1z95ykr	3	\N	\N	\N
4dgysxrfq7o	5qlc1z95ykr	4	\N	\N	\N
sf8fl742bgm	5qlc1z95ykr	5	\N	\N	\N
sptin92gm5m	5qlc1z95ykr	6	\N	\N	\N
i0lnhtci4u6	5qlc1z95ykr	7	\N	\N	\N
swxvjglsevf	5qlc1z95ykr	8	\N	\N	\N
nocobase-admin-menu	5qlc1z95ykr	9	\N	\N	\N
4bi35t1c7vh	201yvs0pndu	3	\N	\N	\N
xa635tbvi5c	201yvs0pndu	4	\N	\N	\N
4dgysxrfq7o	201yvs0pndu	5	\N	\N	\N
sf8fl742bgm	201yvs0pndu	6	\N	\N	\N
sptin92gm5m	201yvs0pndu	7	\N	\N	\N
i0lnhtci4u6	201yvs0pndu	8	\N	\N	\N
swxvjglsevf	201yvs0pndu	9	\N	\N	\N
nocobase-admin-menu	201yvs0pndu	10	\N	\N	\N
4bi35t1c7vh	pyia20ca1id	4	\N	\N	\N
xa635tbvi5c	pyia20ca1id	5	\N	\N	\N
4dgysxrfq7o	pyia20ca1id	6	\N	\N	\N
sf8fl742bgm	pyia20ca1id	7	\N	\N	\N
sptin92gm5m	pyia20ca1id	8	\N	\N	\N
i0lnhtci4u6	pyia20ca1id	9	\N	\N	\N
swxvjglsevf	pyia20ca1id	10	\N	\N	\N
nocobase-admin-menu	pyia20ca1id	11	\N	\N	\N
4bi35t1c7vh	ieq8aso0l50	5	\N	\N	\N
xa635tbvi5c	ieq8aso0l50	6	\N	\N	\N
4dgysxrfq7o	ieq8aso0l50	7	\N	\N	\N
sf8fl742bgm	ieq8aso0l50	8	\N	\N	\N
sptin92gm5m	ieq8aso0l50	9	\N	\N	\N
i0lnhtci4u6	ieq8aso0l50	10	\N	\N	\N
swxvjglsevf	ieq8aso0l50	11	\N	\N	\N
nocobase-admin-menu	ieq8aso0l50	12	\N	\N	\N
4bi35t1c7vh	95272w6sxpp	10	\N	\N	\N
xa635tbvi5c	95272w6sxpp	11	\N	\N	\N
4dgysxrfq7o	95272w6sxpp	12	\N	\N	\N
sf8fl742bgm	95272w6sxpp	13	\N	\N	\N
sptin92gm5m	95272w6sxpp	14	\N	\N	\N
i0lnhtci4u6	95272w6sxpp	15	\N	\N	\N
swxvjglsevf	95272w6sxpp	16	\N	\N	\N
nocobase-admin-menu	95272w6sxpp	17	\N	\N	\N
4bi35t1c7vh	9ayo1a8z8f1	8	\N	\N	\N
xa635tbvi5c	9ayo1a8z8f1	9	\N	\N	\N
4dgysxrfq7o	9ayo1a8z8f1	10	\N	\N	\N
sf8fl742bgm	9ayo1a8z8f1	11	\N	\N	\N
sptin92gm5m	9ayo1a8z8f1	12	\N	\N	\N
i0lnhtci4u6	9ayo1a8z8f1	13	\N	\N	\N
swxvjglsevf	9ayo1a8z8f1	14	\N	\N	\N
nocobase-admin-menu	9ayo1a8z8f1	15	\N	\N	\N
4bi35t1c7vh	g8idtoqr1fo	7	\N	\N	\N
xa635tbvi5c	g8idtoqr1fo	8	\N	\N	\N
4dgysxrfq7o	g8idtoqr1fo	9	\N	\N	\N
sf8fl742bgm	g8idtoqr1fo	10	\N	\N	\N
sptin92gm5m	g8idtoqr1fo	11	\N	\N	\N
i0lnhtci4u6	g8idtoqr1fo	12	\N	\N	\N
swxvjglsevf	g8idtoqr1fo	13	\N	\N	\N
nocobase-admin-menu	g8idtoqr1fo	14	\N	\N	\N
4bi35t1c7vh	kdcbf9y1icj	6	\N	\N	\N
xa635tbvi5c	kdcbf9y1icj	7	\N	\N	\N
4dgysxrfq7o	kdcbf9y1icj	8	\N	\N	\N
sf8fl742bgm	kdcbf9y1icj	9	\N	\N	\N
sptin92gm5m	kdcbf9y1icj	10	\N	\N	\N
i0lnhtci4u6	kdcbf9y1icj	11	\N	\N	\N
swxvjglsevf	kdcbf9y1icj	12	\N	\N	\N
nocobase-admin-menu	kdcbf9y1icj	13	\N	\N	\N
4bi35t1c7vh	ke60pjxuu9p	9	\N	\N	\N
xa635tbvi5c	ke60pjxuu9p	10	\N	\N	\N
4dgysxrfq7o	ke60pjxuu9p	11	\N	\N	\N
sf8fl742bgm	ke60pjxuu9p	12	\N	\N	\N
sptin92gm5m	ke60pjxuu9p	13	\N	\N	\N
i0lnhtci4u6	ke60pjxuu9p	14	\N	\N	\N
swxvjglsevf	ke60pjxuu9p	15	\N	\N	\N
nocobase-admin-menu	ke60pjxuu9p	16	\N	\N	\N
4bi35t1c7vh	kzelz9rby9p	10	\N	\N	\N
xa635tbvi5c	kzelz9rby9p	11	\N	\N	\N
z8rrsav5fpp	pmtq1o4ie72	1	\N	\N	1
o9klwv4nzei	pmtq1o4ie72	2	\N	\N	\N
ozzmhtdpth4	pmtq1o4ie72	3	\N	\N	\N
b8mogqkr3um	pmtq1o4ie72	4	\N	\N	\N
b56io1plq44	pmtq1o4ie72	5	\N	\N	\N
13qbrfhlbny	pmtq1o4ie72	6	\N	\N	\N
oqsecaif6am	pmtq1o4ie72	7	\N	\N	\N
63aby9t5qmb	pmtq1o4ie72	8	\N	\N	\N
4dgysxrfq7o	kzelz9rby9p	12	\N	\N	\N
sf8fl742bgm	kzelz9rby9p	13	\N	\N	\N
sptin92gm5m	kzelz9rby9p	14	\N	\N	\N
i0lnhtci4u6	kzelz9rby9p	15	\N	\N	\N
swxvjglsevf	kzelz9rby9p	16	\N	\N	\N
nocobase-admin-menu	kzelz9rby9p	17	\N	\N	\N
4bi35t1c7vh	i41kv6nughv	13	\N	\N	\N
xa635tbvi5c	i41kv6nughv	14	\N	\N	\N
4dgysxrfq7o	i41kv6nughv	15	\N	\N	\N
sf8fl742bgm	i41kv6nughv	16	\N	\N	\N
sptin92gm5m	i41kv6nughv	17	\N	\N	\N
i0lnhtci4u6	i41kv6nughv	18	\N	\N	\N
swxvjglsevf	i41kv6nughv	19	\N	\N	\N
nocobase-admin-menu	i41kv6nughv	20	\N	\N	\N
4bi35t1c7vh	tmd3tr2ug71	12	\N	\N	\N
xa635tbvi5c	tmd3tr2ug71	13	\N	\N	\N
4dgysxrfq7o	tmd3tr2ug71	14	\N	\N	\N
sf8fl742bgm	tmd3tr2ug71	15	\N	\N	\N
sptin92gm5m	tmd3tr2ug71	16	\N	\N	\N
i0lnhtci4u6	tmd3tr2ug71	17	\N	\N	\N
swxvjglsevf	tmd3tr2ug71	18	\N	\N	\N
nocobase-admin-menu	tmd3tr2ug71	19	\N	\N	\N
4bi35t1c7vh	u2jpfjneg59	11	\N	\N	\N
xa635tbvi5c	u2jpfjneg59	12	\N	\N	\N
4dgysxrfq7o	u2jpfjneg59	13	\N	\N	\N
sf8fl742bgm	u2jpfjneg59	14	\N	\N	\N
sptin92gm5m	u2jpfjneg59	15	\N	\N	\N
i0lnhtci4u6	u2jpfjneg59	16	\N	\N	\N
swxvjglsevf	u2jpfjneg59	17	\N	\N	\N
nocobase-admin-menu	u2jpfjneg59	18	\N	\N	\N
4bi35t1c7vh	d6p3jlzlzul	12	\N	\N	\N
xa635tbvi5c	d6p3jlzlzul	13	\N	\N	\N
4dgysxrfq7o	d6p3jlzlzul	14	\N	\N	\N
sf8fl742bgm	d6p3jlzlzul	15	\N	\N	\N
sptin92gm5m	d6p3jlzlzul	16	\N	\N	\N
i0lnhtci4u6	d6p3jlzlzul	17	\N	\N	\N
swxvjglsevf	d6p3jlzlzul	18	\N	\N	\N
nocobase-admin-menu	d6p3jlzlzul	19	\N	\N	\N
4bi35t1c7vh	fvd5i7hod1p	13	\N	\N	\N
xa635tbvi5c	fvd5i7hod1p	14	\N	\N	\N
4dgysxrfq7o	fvd5i7hod1p	15	\N	\N	\N
sf8fl742bgm	fvd5i7hod1p	16	\N	\N	\N
sptin92gm5m	fvd5i7hod1p	17	\N	\N	\N
i0lnhtci4u6	fvd5i7hod1p	18	\N	\N	\N
swxvjglsevf	fvd5i7hod1p	19	\N	\N	\N
nocobase-admin-menu	fvd5i7hod1p	20	\N	\N	\N
4bi35t1c7vh	rmad1x9kyzg	11	\N	\N	\N
xa635tbvi5c	rmad1x9kyzg	12	\N	\N	\N
4dgysxrfq7o	rmad1x9kyzg	13	\N	\N	\N
sf8fl742bgm	rmad1x9kyzg	14	\N	\N	\N
sptin92gm5m	rmad1x9kyzg	15	\N	\N	\N
i0lnhtci4u6	rmad1x9kyzg	16	\N	\N	\N
swxvjglsevf	rmad1x9kyzg	17	\N	\N	\N
nocobase-admin-menu	rmad1x9kyzg	18	\N	\N	\N
4bi35t1c7vh	ffa1o1vwibc	12	\N	\N	\N
xa635tbvi5c	ffa1o1vwibc	13	\N	\N	\N
4dgysxrfq7o	ffa1o1vwibc	14	\N	\N	\N
sf8fl742bgm	ffa1o1vwibc	15	\N	\N	\N
sptin92gm5m	ffa1o1vwibc	16	\N	\N	\N
i0lnhtci4u6	ffa1o1vwibc	17	\N	\N	\N
swxvjglsevf	ffa1o1vwibc	18	\N	\N	\N
nocobase-admin-menu	ffa1o1vwibc	19	\N	\N	\N
4bi35t1c7vh	n3l4en2z9cr	11	\N	\N	\N
xa635tbvi5c	n3l4en2z9cr	12	\N	\N	\N
4dgysxrfq7o	n3l4en2z9cr	13	\N	\N	\N
sf8fl742bgm	n3l4en2z9cr	14	\N	\N	\N
sptin92gm5m	n3l4en2z9cr	15	\N	\N	\N
i0lnhtci4u6	n3l4en2z9cr	16	\N	\N	\N
swxvjglsevf	n3l4en2z9cr	17	\N	\N	\N
nocobase-admin-menu	n3l4en2z9cr	18	\N	\N	\N
4bi35t1c7vh	zocsd5mcji4	13	\N	\N	\N
xa635tbvi5c	zocsd5mcji4	14	\N	\N	\N
4dgysxrfq7o	zocsd5mcji4	15	\N	\N	\N
sf8fl742bgm	zocsd5mcji4	16	\N	\N	\N
sptin92gm5m	zocsd5mcji4	17	\N	\N	\N
i0lnhtci4u6	zocsd5mcji4	18	\N	\N	\N
swxvjglsevf	zocsd5mcji4	19	\N	\N	\N
nocobase-admin-menu	zocsd5mcji4	20	\N	\N	\N
4bi35t1c7vh	a9s5surx189	12	\N	\N	\N
xa635tbvi5c	a9s5surx189	13	\N	\N	\N
4dgysxrfq7o	a9s5surx189	14	\N	\N	\N
sf8fl742bgm	a9s5surx189	15	\N	\N	\N
sptin92gm5m	a9s5surx189	16	\N	\N	\N
i0lnhtci4u6	a9s5surx189	17	\N	\N	\N
swxvjglsevf	a9s5surx189	18	\N	\N	\N
nocobase-admin-menu	a9s5surx189	19	\N	\N	\N
4bi35t1c7vh	cik9oe1yhz2	11	\N	\N	\N
xa635tbvi5c	cik9oe1yhz2	12	\N	\N	\N
4dgysxrfq7o	cik9oe1yhz2	13	\N	\N	\N
sf8fl742bgm	cik9oe1yhz2	14	\N	\N	\N
sptin92gm5m	cik9oe1yhz2	15	\N	\N	\N
i0lnhtci4u6	cik9oe1yhz2	16	\N	\N	\N
swxvjglsevf	cik9oe1yhz2	17	\N	\N	\N
nocobase-admin-menu	cik9oe1yhz2	18	\N	\N	\N
4bi35t1c7vh	z150jbdrf5z	13	\N	\N	\N
xa635tbvi5c	z150jbdrf5z	14	\N	\N	\N
4dgysxrfq7o	z150jbdrf5z	15	\N	\N	\N
sf8fl742bgm	z150jbdrf5z	16	\N	\N	\N
sptin92gm5m	z150jbdrf5z	17	\N	\N	\N
i0lnhtci4u6	z150jbdrf5z	18	\N	\N	\N
swxvjglsevf	z150jbdrf5z	19	\N	\N	\N
nocobase-admin-menu	z150jbdrf5z	20	\N	\N	\N
4bi35t1c7vh	axen9h3vgvx	13	\N	\N	\N
xa635tbvi5c	axen9h3vgvx	14	\N	\N	\N
4dgysxrfq7o	axen9h3vgvx	15	\N	\N	\N
sf8fl742bgm	axen9h3vgvx	16	\N	\N	\N
sptin92gm5m	axen9h3vgvx	17	\N	\N	\N
i0lnhtci4u6	axen9h3vgvx	18	\N	\N	\N
swxvjglsevf	axen9h3vgvx	19	\N	\N	\N
nocobase-admin-menu	axen9h3vgvx	20	\N	\N	\N
4bi35t1c7vh	ier7nfy9ohr	11	\N	\N	\N
xa635tbvi5c	ier7nfy9ohr	12	\N	\N	\N
4dgysxrfq7o	ier7nfy9ohr	13	\N	\N	\N
sf8fl742bgm	ier7nfy9ohr	14	\N	\N	\N
sptin92gm5m	ier7nfy9ohr	15	\N	\N	\N
i0lnhtci4u6	ier7nfy9ohr	16	\N	\N	\N
swxvjglsevf	ier7nfy9ohr	17	\N	\N	\N
nocobase-admin-menu	ier7nfy9ohr	18	\N	\N	\N
4bi35t1c7vh	ihbsljjbzpc	12	\N	\N	\N
xa635tbvi5c	ihbsljjbzpc	13	\N	\N	\N
4dgysxrfq7o	ihbsljjbzpc	14	\N	\N	\N
sf8fl742bgm	ihbsljjbzpc	15	\N	\N	\N
sptin92gm5m	ihbsljjbzpc	16	\N	\N	\N
i0lnhtci4u6	ihbsljjbzpc	17	\N	\N	\N
swxvjglsevf	ihbsljjbzpc	18	\N	\N	\N
nocobase-admin-menu	ihbsljjbzpc	19	\N	\N	\N
4bi35t1c7vh	pvnx4ocbmqu	11	\N	\N	\N
xa635tbvi5c	pvnx4ocbmqu	12	\N	\N	\N
4dgysxrfq7o	pvnx4ocbmqu	13	\N	\N	\N
sf8fl742bgm	pvnx4ocbmqu	14	\N	\N	\N
sptin92gm5m	pvnx4ocbmqu	15	\N	\N	\N
i0lnhtci4u6	pvnx4ocbmqu	16	\N	\N	\N
swxvjglsevf	pvnx4ocbmqu	17	\N	\N	\N
nocobase-admin-menu	pvnx4ocbmqu	18	\N	\N	\N
4bi35t1c7vh	a0bovbqnxzj	13	\N	\N	\N
xa635tbvi5c	a0bovbqnxzj	14	\N	\N	\N
4dgysxrfq7o	a0bovbqnxzj	15	\N	\N	\N
sf8fl742bgm	a0bovbqnxzj	16	\N	\N	\N
sptin92gm5m	a0bovbqnxzj	17	\N	\N	\N
i0lnhtci4u6	a0bovbqnxzj	18	\N	\N	\N
swxvjglsevf	a0bovbqnxzj	19	\N	\N	\N
nocobase-admin-menu	a0bovbqnxzj	20	\N	\N	\N
4bi35t1c7vh	juw6e13fsr0	11	\N	\N	\N
xa635tbvi5c	juw6e13fsr0	12	\N	\N	\N
4dgysxrfq7o	juw6e13fsr0	13	\N	\N	\N
sf8fl742bgm	juw6e13fsr0	14	\N	\N	\N
sptin92gm5m	juw6e13fsr0	15	\N	\N	\N
i0lnhtci4u6	juw6e13fsr0	16	\N	\N	\N
swxvjglsevf	juw6e13fsr0	17	\N	\N	\N
nocobase-admin-menu	juw6e13fsr0	18	\N	\N	\N
4bi35t1c7vh	uy1ulbd1nwj	12	\N	\N	\N
xa635tbvi5c	uy1ulbd1nwj	13	\N	\N	\N
4dgysxrfq7o	uy1ulbd1nwj	14	\N	\N	\N
sf8fl742bgm	uy1ulbd1nwj	15	\N	\N	\N
sptin92gm5m	uy1ulbd1nwj	16	\N	\N	\N
i0lnhtci4u6	uy1ulbd1nwj	17	\N	\N	\N
swxvjglsevf	uy1ulbd1nwj	18	\N	\N	\N
nocobase-admin-menu	uy1ulbd1nwj	19	\N	\N	\N
4dgysxrfq7o	exawjrxxnyl	10	\N	\N	\N
swxvjglsevf	juylvd7o6f1	16	\N	\N	\N
swxvjglsevf	rl4zzyovnti	17	\N	\N	\N
swxvjglsevf	79bhmhhhbpw	18	\N	\N	\N
swxvjglsevf	w2vajpu7d09	18	\N	\N	\N
nocobase-admin-menu	y05digxvovk	15	\N	\N	\N
nocobase-admin-menu	dd1t7s27fl2	16	\N	\N	\N
sf8fl742bgm	exawjrxxnyl	11	\N	\N	\N
nocobase-admin-menu	juylvd7o6f1	17	\N	\N	\N
nocobase-admin-menu	rl4zzyovnti	18	\N	\N	\N
nocobase-admin-menu	79bhmhhhbpw	19	\N	\N	\N
nocobase-admin-menu	w2vajpu7d09	19	\N	\N	\N
y05digxvovk	y05digxvovk	0	f	properties	\N
qlc8gbizzyo	y05digxvovk	1	\N	\N	1
sptin92gm5m	exawjrxxnyl	12	\N	\N	\N
mwrnryoju9y	pmtq1o4ie72	9	\N	\N	\N
nocobase-admin-menu	pmtq1o4ie72	10	\N	\N	\N
ozzmhtdpth4	z8rrsav5fpp	2	\N	\N	\N
b8mogqkr3um	z8rrsav5fpp	3	\N	\N	\N
b56io1plq44	z8rrsav5fpp	4	\N	\N	\N
13qbrfhlbny	z8rrsav5fpp	5	\N	\N	\N
oqsecaif6am	z8rrsav5fpp	6	\N	\N	\N
63aby9t5qmb	z8rrsav5fpp	7	\N	\N	\N
mwrnryoju9y	z8rrsav5fpp	8	\N	\N	\N
nocobase-admin-menu	z8rrsav5fpp	9	\N	\N	\N
z8rrsav5fpp	z8rrsav5fpp	0	f	properties	\N
o9klwv4nzei	z8rrsav5fpp	1	\N	\N	4
pf5jgr5qt8w	2tn2s78dgt2	6	\N	\N	\N
pf5jgr5qt8w	ylmz2mzwtqx	6	\N	\N	\N
pxcipvysrb8	pxcipvysrb8	0	f	properties	\N
ktjaxuy24vi	pxcipvysrb8	1	\N	\N	2
frvao9fnovq	frvao9fnovq	0	f	properties	\N
ofzpw6kgdnf	frvao9fnovq	1	\N	\N	1
87qrrxy0dvc	87qrrxy0dvc	0	f	properties	\N
frvao9fnovq	87qrrxy0dvc	1	\N	\N	1
ofzpw6kgdnf	87qrrxy0dvc	2	\N	\N	1
i0lnhtci4u6	exawjrxxnyl	13	\N	\N	\N
2tn2s78dgt2	frvao9fnovq	2	\N	\N	\N
2tn2s78dgt2	87qrrxy0dvc	3	\N	\N	\N
xus25o42nmo	ofzpw6kgdnf	2	\N	\N	\N
xus25o42nmo	frvao9fnovq	3	\N	\N	\N
xus25o42nmo	87qrrxy0dvc	4	\N	\N	\N
1oxe2et0fqk	ofzpw6kgdnf	3	\N	\N	\N
1oxe2et0fqk	frvao9fnovq	4	\N	\N	\N
1oxe2et0fqk	87qrrxy0dvc	5	\N	\N	\N
qeotrvptuc2	ofzpw6kgdnf	4	\N	\N	\N
qeotrvptuc2	frvao9fnovq	5	\N	\N	\N
swxvjglsevf	exawjrxxnyl	14	\N	\N	\N
nocobase-admin-menu	exawjrxxnyl	15	\N	\N	\N
pgsd6vdilnn	n596xt7b4gz	7	\N	\N	\N
pgsd6vdilnn	vpvmqhclo5c	7	\N	\N	\N
ypqs0x71ybe	q5sp3fyrz47	4	\N	\N	\N
ypqs0x71ybe	6e6up9qf6jw	5	\N	\N	\N
ypqs0x71ybe	i99shgxsfzv	6	\N	\N	\N
ypqs0x71ybe	0ypbdd2x5je	7	\N	\N	\N
ypqs0x71ybe	n596xt7b4gz	8	\N	\N	\N
ypqs0x71ybe	vpvmqhclo5c	8	\N	\N	\N
u62y9zt7gwu	q5sp3fyrz47	5	\N	\N	\N
u62y9zt7gwu	6e6up9qf6jw	6	\N	\N	\N
u62y9zt7gwu	i99shgxsfzv	7	\N	\N	\N
u62y9zt7gwu	0ypbdd2x5je	8	\N	\N	\N
u62y9zt7gwu	n596xt7b4gz	9	\N	\N	\N
u62y9zt7gwu	vpvmqhclo5c	9	\N	\N	\N
yc5x6qvg4mh	q5sp3fyrz47	6	\N	\N	\N
yc5x6qvg4mh	6e6up9qf6jw	7	\N	\N	\N
yc5x6qvg4mh	i99shgxsfzv	8	\N	\N	\N
yc5x6qvg4mh	0ypbdd2x5je	9	\N	\N	\N
yc5x6qvg4mh	n596xt7b4gz	10	\N	\N	\N
yc5x6qvg4mh	vpvmqhclo5c	10	\N	\N	\N
ao2a67rjlld	q5sp3fyrz47	7	\N	\N	\N
ao2a67rjlld	6e6up9qf6jw	8	\N	\N	\N
ao2a67rjlld	i99shgxsfzv	9	\N	\N	\N
ao2a67rjlld	0ypbdd2x5je	10	\N	\N	\N
ao2a67rjlld	n596xt7b4gz	11	\N	\N	\N
ao2a67rjlld	vpvmqhclo5c	11	\N	\N	\N
bwbd6lebhkb	q5sp3fyrz47	8	\N	\N	\N
bwbd6lebhkb	6e6up9qf6jw	9	\N	\N	\N
bwbd6lebhkb	i99shgxsfzv	10	\N	\N	\N
bwbd6lebhkb	0ypbdd2x5je	11	\N	\N	\N
bwbd6lebhkb	n596xt7b4gz	12	\N	\N	\N
bwbd6lebhkb	vpvmqhclo5c	12	\N	\N	\N
m8tbcrs4z9t	q5sp3fyrz47	9	\N	\N	\N
m8tbcrs4z9t	6e6up9qf6jw	10	\N	\N	\N
m8tbcrs4z9t	i99shgxsfzv	11	\N	\N	\N
dz7uttxfka4	dz7uttxfka4	0	f	properties	\N
7x6oyetmotw	ajm7jf8wbgk	1	\N	\N	6
u2nl9by49q9	u2nl9by49q9	0	f	properties	\N
bmvfdpfnwm7	u2nl9by49q9	1	\N	\N	1
44xfv2htpp8	44xfv2htpp8	0	f	properties	\N
u2nl9by49q9	44xfv2htpp8	1	\N	\N	1
bmvfdpfnwm7	44xfv2htpp8	2	\N	\N	1
w2vajpu7d09	u2nl9by49q9	2	\N	\N	\N
w2vajpu7d09	44xfv2htpp8	3	\N	\N	\N
rl4zzyovnti	bmvfdpfnwm7	2	\N	\N	\N
rl4zzyovnti	u2nl9by49q9	3	\N	\N	\N
rl4zzyovnti	44xfv2htpp8	4	\N	\N	\N
juylvd7o6f1	bmvfdpfnwm7	3	\N	\N	\N
juylvd7o6f1	u2nl9by49q9	4	\N	\N	\N
juylvd7o6f1	44xfv2htpp8	5	\N	\N	\N
dd1t7s27fl2	bmvfdpfnwm7	4	\N	\N	\N
dd1t7s27fl2	u2nl9by49q9	5	\N	\N	\N
baejb3hqiri	baejb3hqiri	0	f	properties	\N
nrcje3g1v32	nrcje3g1v32	0	f	properties	\N
zvja1suwswo	nrcje3g1v32	1	\N	\N	1
zvja1suwswo	m078f77gart	2	\N	\N	\N
zvja1suwswo	baejb3hqiri	1	\N	\N	2
nrcje3g1v32	m078f77gart	1	\N	\N	1
1cnwu64uyw3	nrcje3g1v32	2	\N	\N	\N
1cnwu64uyw3	m078f77gart	3	\N	\N	\N
zwh6db27axk	zvja1suwswo	2	\N	\N	\N
zwh6db27axk	nrcje3g1v32	3	\N	\N	\N
zwh6db27axk	m078f77gart	4	\N	\N	\N
5b0fu481dm6	zvja1suwswo	3	\N	\N	\N
5b0fu481dm6	nrcje3g1v32	4	\N	\N	\N
5b0fu481dm6	m078f77gart	5	\N	\N	\N
1dvfg1afm18	zvja1suwswo	4	\N	\N	\N
1dvfg1afm18	nrcje3g1v32	5	\N	\N	\N
1dvfg1afm18	m078f77gart	6	\N	\N	\N
q3rv0rnfki7	zvja1suwswo	5	\N	\N	\N
q3rv0rnfki7	nrcje3g1v32	6	\N	\N	\N
q3rv0rnfki7	m078f77gart	7	\N	\N	\N
w4ciktesp5j	zvja1suwswo	6	\N	\N	\N
w4ciktesp5j	nrcje3g1v32	7	\N	\N	\N
w4ciktesp5j	m078f77gart	8	\N	\N	\N
tg2hn64ei8t	zvja1suwswo	7	\N	\N	\N
tg2hn64ei8t	nrcje3g1v32	8	\N	\N	\N
tg2hn64ei8t	m078f77gart	9	\N	\N	\N
44890jxlzup	zvja1suwswo	8	\N	\N	\N
44890jxlzup	nrcje3g1v32	9	\N	\N	\N
44890jxlzup	m078f77gart	10	\N	\N	\N
xa635tbvi5c	zvja1suwswo	9	\N	\N	\N
xa635tbvi5c	nrcje3g1v32	10	\N	\N	\N
xa635tbvi5c	m078f77gart	11	\N	\N	\N
4dgysxrfq7o	zvja1suwswo	10	\N	\N	\N
4dgysxrfq7o	nrcje3g1v32	11	\N	\N	\N
4dgysxrfq7o	m078f77gart	12	\N	\N	\N
sf8fl742bgm	zvja1suwswo	11	\N	\N	\N
sf8fl742bgm	nrcje3g1v32	12	\N	\N	\N
sf8fl742bgm	m078f77gart	13	\N	\N	\N
sptin92gm5m	zvja1suwswo	12	\N	\N	\N
sptin92gm5m	nrcje3g1v32	13	\N	\N	\N
sptin92gm5m	m078f77gart	14	\N	\N	\N
i0lnhtci4u6	zvja1suwswo	13	\N	\N	\N
i0lnhtci4u6	nrcje3g1v32	14	\N	\N	\N
i0lnhtci4u6	m078f77gart	15	\N	\N	\N
swxvjglsevf	zvja1suwswo	14	\N	\N	\N
swxvjglsevf	nrcje3g1v32	15	\N	\N	\N
swxvjglsevf	m078f77gart	16	\N	\N	\N
nocobase-admin-menu	zvja1suwswo	15	\N	\N	\N
nocobase-admin-menu	nrcje3g1v32	16	\N	\N	\N
nocobase-admin-menu	m078f77gart	17	\N	\N	\N
zvja1suwswo	zvja1suwswo	0	f	properties	\N
dd1t7s27fl2	44xfv2htpp8	6	\N	\N	\N
1cnwu64uyw3	zvja1suwswo	1	\N	\N	1
baejb3hqiri	4gnesuyiq9w	2	\N	\N	\N
baejb3hqiri	c5ha41uevsk	2	\N	\N	\N
y05digxvovk	bmvfdpfnwm7	5	\N	\N	\N
y05digxvovk	u2nl9by49q9	6	\N	\N	\N
y05digxvovk	44xfv2htpp8	7	\N	\N	\N
baejb3hqiri	3fffemef0cp	1	\N	\N	1
zvja1suwswo	3fffemef0cp	2	\N	\N	\N
zvja1suwswo	4gnesuyiq9w	3	\N	\N	\N
zvja1suwswo	c5ha41uevsk	3	\N	\N	\N
qlc8gbizzyo	bmvfdpfnwm7	6	\N	\N	\N
qlc8gbizzyo	u2nl9by49q9	7	\N	\N	\N
1cnwu64uyw3	baejb3hqiri	2	\N	\N	\N
1cnwu64uyw3	3fffemef0cp	3	\N	\N	\N
1cnwu64uyw3	4gnesuyiq9w	4	\N	\N	\N
1cnwu64uyw3	c5ha41uevsk	4	\N	\N	\N
qlc8gbizzyo	44xfv2htpp8	8	\N	\N	\N
kjig4l36dxf	bmvfdpfnwm7	7	\N	\N	\N
zwh6db27axk	baejb3hqiri	3	\N	\N	\N
zwh6db27axk	3fffemef0cp	4	\N	\N	\N
zwh6db27axk	4gnesuyiq9w	5	\N	\N	\N
zwh6db27axk	c5ha41uevsk	5	\N	\N	\N
kjig4l36dxf	u2nl9by49q9	8	\N	\N	\N
kjig4l36dxf	44xfv2htpp8	9	\N	\N	\N
5b0fu481dm6	baejb3hqiri	4	\N	\N	\N
8xvbgh18zfk	q9zjnv8mc9j	6	\N	\N	\N
5b0fu481dm6	3fffemef0cp	5	\N	\N	\N
5b0fu481dm6	4gnesuyiq9w	6	\N	\N	\N
5b0fu481dm6	c5ha41uevsk	6	\N	\N	\N
w4ciktesp5j	bmvfdpfnwm7	11	\N	\N	\N
w4ciktesp5j	u2nl9by49q9	12	\N	\N	\N
1dvfg1afm18	baejb3hqiri	5	\N	\N	\N
1dvfg1afm18	3fffemef0cp	6	\N	\N	\N
1dvfg1afm18	4gnesuyiq9w	7	\N	\N	\N
1dvfg1afm18	c5ha41uevsk	7	\N	\N	\N
w4ciktesp5j	44xfv2htpp8	13	\N	\N	\N
tg2hn64ei8t	bmvfdpfnwm7	12	\N	\N	\N
q3rv0rnfki7	baejb3hqiri	6	\N	\N	\N
q3rv0rnfki7	3fffemef0cp	7	\N	\N	\N
q3rv0rnfki7	4gnesuyiq9w	8	\N	\N	\N
q3rv0rnfki7	c5ha41uevsk	8	\N	\N	\N
tg2hn64ei8t	u2nl9by49q9	13	\N	\N	\N
tg2hn64ei8t	44xfv2htpp8	14	\N	\N	\N
w4ciktesp5j	baejb3hqiri	7	\N	\N	\N
w4ciktesp5j	3fffemef0cp	8	\N	\N	\N
w4ciktesp5j	4gnesuyiq9w	9	\N	\N	\N
w4ciktesp5j	c5ha41uevsk	9	\N	\N	\N
44890jxlzup	bmvfdpfnwm7	13	\N	\N	\N
44890jxlzup	u2nl9by49q9	14	\N	\N	\N
44890jxlzup	44xfv2htpp8	15	\N	\N	\N
xa635tbvi5c	bmvfdpfnwm7	14	\N	\N	\N
xa635tbvi5c	u2nl9by49q9	15	\N	\N	\N
xa635tbvi5c	44xfv2htpp8	16	\N	\N	\N
46p5wcng6sm	bmvfdpfnwm7	8	\N	\N	\N
v0xzwwlb3u7	v0xzwwlb3u7	0	f	properties	\N
8xvbgh18zfk	t4v2kcudvg5	7	\N	\N	\N
qeotrvptuc2	87qrrxy0dvc	6	\N	\N	\N
2pij3wiepc4	q9zjnv8mc9j	7	\N	\N	\N
pxcipvysrb8	ofzpw6kgdnf	5	\N	\N	\N
pxcipvysrb8	frvao9fnovq	6	\N	\N	\N
pxcipvysrb8	87qrrxy0dvc	7	\N	\N	\N
ktjaxuy24vi	ofzpw6kgdnf	6	\N	\N	\N
ktjaxuy24vi	frvao9fnovq	7	\N	\N	\N
ktjaxuy24vi	87qrrxy0dvc	8	\N	\N	\N
pf5jgr5qt8w	ofzpw6kgdnf	7	\N	\N	\N
pf5jgr5qt8w	frvao9fnovq	8	\N	\N	\N
pf5jgr5qt8w	87qrrxy0dvc	9	\N	\N	\N
ofzpw6kgdnf	ofzpw6kgdnf	0	f	properties	\N
2tn2s78dgt2	ofzpw6kgdnf	1	\N	\N	1
bhoej14nttw	bhoej14nttw	0	f	properties	\N
1fxamj5etq0	bhoej14nttw	1	\N	\N	1
s1borw8npes	s1borw8npes	0	f	properties	\N
bhoej14nttw	s1borw8npes	1	\N	\N	1
1fxamj5etq0	s1borw8npes	2	\N	\N	1
2tn2s78dgt2	bhoej14nttw	2	\N	\N	\N
2tn2s78dgt2	s1borw8npes	3	\N	\N	\N
xus25o42nmo	1fxamj5etq0	2	\N	\N	\N
xus25o42nmo	bhoej14nttw	3	\N	\N	\N
xus25o42nmo	s1borw8npes	4	\N	\N	\N
1oxe2et0fqk	1fxamj5etq0	3	\N	\N	\N
1oxe2et0fqk	bhoej14nttw	4	\N	\N	\N
1oxe2et0fqk	s1borw8npes	5	\N	\N	\N
qeotrvptuc2	1fxamj5etq0	4	\N	\N	\N
qeotrvptuc2	bhoej14nttw	5	\N	\N	\N
qeotrvptuc2	s1borw8npes	6	\N	\N	\N
pxcipvysrb8	1fxamj5etq0	5	\N	\N	\N
pxcipvysrb8	bhoej14nttw	6	\N	\N	\N
pxcipvysrb8	s1borw8npes	7	\N	\N	\N
ktjaxuy24vi	1fxamj5etq0	6	\N	\N	\N
ktjaxuy24vi	bhoej14nttw	7	\N	\N	\N
ktjaxuy24vi	s1borw8npes	8	\N	\N	\N
pf5jgr5qt8w	1fxamj5etq0	7	\N	\N	\N
pf5jgr5qt8w	bhoej14nttw	8	\N	\N	\N
pf5jgr5qt8w	s1borw8npes	9	\N	\N	\N
1fxamj5etq0	1fxamj5etq0	0	f	properties	\N
2tn2s78dgt2	1fxamj5etq0	1	\N	\N	2
4b3h23e6qwv	4b3h23e6qwv	0	f	properties	\N
fdyf18qtufe	4b3h23e6qwv	1	\N	\N	1
crak5ro4w9c	crak5ro4w9c	0	f	properties	\N
4b3h23e6qwv	crak5ro4w9c	1	\N	\N	1
fdyf18qtufe	crak5ro4w9c	2	\N	\N	1
2tn2s78dgt2	4b3h23e6qwv	2	\N	\N	\N
2tn2s78dgt2	crak5ro4w9c	3	\N	\N	\N
xus25o42nmo	fdyf18qtufe	2	\N	\N	\N
xus25o42nmo	4b3h23e6qwv	3	\N	\N	\N
xus25o42nmo	crak5ro4w9c	4	\N	\N	\N
1oxe2et0fqk	fdyf18qtufe	3	\N	\N	\N
1oxe2et0fqk	4b3h23e6qwv	4	\N	\N	\N
1oxe2et0fqk	crak5ro4w9c	5	\N	\N	\N
qeotrvptuc2	fdyf18qtufe	4	\N	\N	\N
qeotrvptuc2	4b3h23e6qwv	5	\N	\N	\N
qeotrvptuc2	crak5ro4w9c	6	\N	\N	\N
eajx55rxxy3	v0xzwwlb3u7	1	\N	\N	1
pxcipvysrb8	fdyf18qtufe	5	\N	\N	\N
pxcipvysrb8	4b3h23e6qwv	6	\N	\N	\N
pxcipvysrb8	crak5ro4w9c	7	\N	\N	\N
ktjaxuy24vi	fdyf18qtufe	6	\N	\N	\N
ktjaxuy24vi	4b3h23e6qwv	7	\N	\N	\N
ktjaxuy24vi	crak5ro4w9c	8	\N	\N	\N
pf5jgr5qt8w	fdyf18qtufe	7	\N	\N	\N
pf5jgr5qt8w	4b3h23e6qwv	8	\N	\N	\N
pf5jgr5qt8w	crak5ro4w9c	9	\N	\N	\N
fdyf18qtufe	fdyf18qtufe	0	f	properties	\N
2tn2s78dgt2	fdyf18qtufe	1	\N	\N	3
2fu3ut5ov50	2fu3ut5ov50	0	f	properties	\N
m4zfle677q0	2fu3ut5ov50	1	\N	\N	1
x2fnijiy8rm	x2fnijiy8rm	0	f	properties	\N
2fu3ut5ov50	x2fnijiy8rm	1	\N	\N	1
m4zfle677q0	x2fnijiy8rm	2	\N	\N	1
2tn2s78dgt2	2fu3ut5ov50	2	\N	\N	\N
2tn2s78dgt2	x2fnijiy8rm	3	\N	\N	\N
xus25o42nmo	m4zfle677q0	2	\N	\N	\N
xus25o42nmo	2fu3ut5ov50	3	\N	\N	\N
xus25o42nmo	x2fnijiy8rm	4	\N	\N	\N
1oxe2et0fqk	m4zfle677q0	3	\N	\N	\N
1oxe2et0fqk	2fu3ut5ov50	4	\N	\N	\N
1oxe2et0fqk	x2fnijiy8rm	5	\N	\N	\N
qeotrvptuc2	m4zfle677q0	4	\N	\N	\N
qeotrvptuc2	2fu3ut5ov50	5	\N	\N	\N
qeotrvptuc2	x2fnijiy8rm	6	\N	\N	\N
pxcipvysrb8	m4zfle677q0	5	\N	\N	\N
pxcipvysrb8	2fu3ut5ov50	6	\N	\N	\N
pxcipvysrb8	x2fnijiy8rm	7	\N	\N	\N
ktjaxuy24vi	m4zfle677q0	6	\N	\N	\N
ktjaxuy24vi	2fu3ut5ov50	7	\N	\N	\N
ktjaxuy24vi	x2fnijiy8rm	8	\N	\N	\N
pf5jgr5qt8w	m4zfle677q0	7	\N	\N	\N
pf5jgr5qt8w	2fu3ut5ov50	8	\N	\N	\N
pf5jgr5qt8w	x2fnijiy8rm	9	\N	\N	\N
m4zfle677q0	m4zfle677q0	0	f	properties	\N
2tn2s78dgt2	m4zfle677q0	1	\N	\N	4
pih9m66uox0	pih9m66uox0	0	f	properties	\N
d1etvwwa4o3	pih9m66uox0	1	\N	\N	1
96x36oteery	96x36oteery	0	f	properties	\N
pih9m66uox0	96x36oteery	1	\N	\N	1
d1etvwwa4o3	96x36oteery	2	\N	\N	1
2tn2s78dgt2	pih9m66uox0	2	\N	\N	\N
2tn2s78dgt2	96x36oteery	3	\N	\N	\N
xus25o42nmo	d1etvwwa4o3	2	\N	\N	\N
xus25o42nmo	pih9m66uox0	3	\N	\N	\N
xus25o42nmo	96x36oteery	4	\N	\N	\N
1oxe2et0fqk	d1etvwwa4o3	3	\N	\N	\N
1oxe2et0fqk	pih9m66uox0	4	\N	\N	\N
1oxe2et0fqk	96x36oteery	5	\N	\N	\N
qeotrvptuc2	d1etvwwa4o3	4	\N	\N	\N
qeotrvptuc2	pih9m66uox0	5	\N	\N	\N
qeotrvptuc2	96x36oteery	6	\N	\N	\N
pxcipvysrb8	d1etvwwa4o3	5	\N	\N	\N
pxcipvysrb8	pih9m66uox0	6	\N	\N	\N
pxcipvysrb8	96x36oteery	7	\N	\N	\N
ktjaxuy24vi	d1etvwwa4o3	6	\N	\N	\N
ktjaxuy24vi	pih9m66uox0	7	\N	\N	\N
ktjaxuy24vi	96x36oteery	8	\N	\N	\N
pf5jgr5qt8w	d1etvwwa4o3	7	\N	\N	\N
pf5jgr5qt8w	pih9m66uox0	8	\N	\N	\N
pf5jgr5qt8w	96x36oteery	9	\N	\N	\N
d1etvwwa4o3	d1etvwwa4o3	0	f	properties	\N
2tn2s78dgt2	d1etvwwa4o3	1	\N	\N	5
vxyfqljr7j6	vxyfqljr7j6	0	f	properties	\N
v0xzwwlb3u7	vxyfqljr7j6	1	\N	\N	1
eajx55rxxy3	vxyfqljr7j6	2	\N	\N	1
7peksipcht7	7peksipcht7	0	f	properties	\N
vxyfqljr7j6	7peksipcht7	1	\N	\N	1
v0xzwwlb3u7	7peksipcht7	2	\N	\N	1
eajx55rxxy3	7peksipcht7	3	\N	\N	1
ra6axo18rlo	ra6axo18rlo	0	f	properties	\N
2pij3wiepc4	t4v2kcudvg5	8	\N	\N	\N
we414l1saan	q9zjnv8mc9j	8	\N	\N	\N
we414l1saan	t4v2kcudvg5	9	\N	\N	\N
7peksipcht7	ra6axo18rlo	1	\N	\N	1
vxyfqljr7j6	ra6axo18rlo	2	\N	\N	1
v0xzwwlb3u7	ra6axo18rlo	3	\N	\N	1
eajx55rxxy3	ra6axo18rlo	4	\N	\N	1
46p5wcng6sm	u2nl9by49q9	9	\N	\N	\N
8kxzcotfeb3	v0xzwwlb3u7	2	\N	\N	\N
8kxzcotfeb3	vxyfqljr7j6	3	\N	\N	\N
8kxzcotfeb3	7peksipcht7	4	\N	\N	\N
8kxzcotfeb3	ra6axo18rlo	5	\N	\N	\N
5z0xpoxz87w	eajx55rxxy3	2	\N	\N	\N
5z0xpoxz87w	v0xzwwlb3u7	3	\N	\N	\N
5z0xpoxz87w	vxyfqljr7j6	4	\N	\N	\N
5z0xpoxz87w	7peksipcht7	5	\N	\N	\N
5z0xpoxz87w	ra6axo18rlo	6	\N	\N	\N
o9klwv4nzei	eajx55rxxy3	3	\N	\N	\N
o9klwv4nzei	v0xzwwlb3u7	4	\N	\N	\N
o9klwv4nzei	vxyfqljr7j6	5	\N	\N	\N
o9klwv4nzei	7peksipcht7	6	\N	\N	\N
o9klwv4nzei	ra6axo18rlo	7	\N	\N	\N
ozzmhtdpth4	eajx55rxxy3	4	\N	\N	\N
ozzmhtdpth4	v0xzwwlb3u7	5	\N	\N	\N
ozzmhtdpth4	vxyfqljr7j6	6	\N	\N	\N
ozzmhtdpth4	7peksipcht7	7	\N	\N	\N
ozzmhtdpth4	ra6axo18rlo	8	\N	\N	\N
b8mogqkr3um	eajx55rxxy3	5	\N	\N	\N
b8mogqkr3um	v0xzwwlb3u7	6	\N	\N	\N
b8mogqkr3um	vxyfqljr7j6	7	\N	\N	\N
b8mogqkr3um	7peksipcht7	8	\N	\N	\N
b8mogqkr3um	ra6axo18rlo	9	\N	\N	\N
b56io1plq44	eajx55rxxy3	6	\N	\N	\N
b56io1plq44	v0xzwwlb3u7	7	\N	\N	\N
b56io1plq44	vxyfqljr7j6	8	\N	\N	\N
b56io1plq44	7peksipcht7	9	\N	\N	\N
b56io1plq44	ra6axo18rlo	10	\N	\N	\N
13qbrfhlbny	eajx55rxxy3	7	\N	\N	\N
13qbrfhlbny	v0xzwwlb3u7	8	\N	\N	\N
13qbrfhlbny	vxyfqljr7j6	9	\N	\N	\N
13qbrfhlbny	7peksipcht7	10	\N	\N	\N
13qbrfhlbny	ra6axo18rlo	11	\N	\N	\N
oqsecaif6am	eajx55rxxy3	8	\N	\N	\N
oqsecaif6am	v0xzwwlb3u7	9	\N	\N	\N
oqsecaif6am	vxyfqljr7j6	10	\N	\N	\N
oqsecaif6am	7peksipcht7	11	\N	\N	\N
oqsecaif6am	ra6axo18rlo	12	\N	\N	\N
63aby9t5qmb	eajx55rxxy3	9	\N	\N	\N
63aby9t5qmb	v0xzwwlb3u7	10	\N	\N	\N
63aby9t5qmb	vxyfqljr7j6	11	\N	\N	\N
63aby9t5qmb	7peksipcht7	12	\N	\N	\N
63aby9t5qmb	ra6axo18rlo	13	\N	\N	\N
mwrnryoju9y	eajx55rxxy3	10	\N	\N	\N
mwrnryoju9y	v0xzwwlb3u7	11	\N	\N	\N
mwrnryoju9y	vxyfqljr7j6	12	\N	\N	\N
mwrnryoju9y	7peksipcht7	13	\N	\N	\N
mwrnryoju9y	ra6axo18rlo	14	\N	\N	\N
nocobase-admin-menu	eajx55rxxy3	11	\N	\N	\N
nocobase-admin-menu	v0xzwwlb3u7	12	\N	\N	\N
nocobase-admin-menu	vxyfqljr7j6	13	\N	\N	\N
nocobase-admin-menu	7peksipcht7	14	\N	\N	\N
nocobase-admin-menu	ra6axo18rlo	15	\N	\N	\N
dnlwo60b33v	dnlwo60b33v	0	f	properties	\N
89nfa89tbje	dnlwo60b33v	1	\N	\N	1
48d58aj2z3f	48d58aj2z3f	0	f	properties	\N
dnlwo60b33v	48d58aj2z3f	1	\N	\N	1
89nfa89tbje	48d58aj2z3f	2	\N	\N	1
haxe3y5jbxr	haxe3y5jbxr	0	f	properties	\N
dnlwo60b33v	haxe3y5jbxr	2	\N	\N	1
89nfa89tbje	haxe3y5jbxr	3	\N	\N	1
ew9dla1iwk8	ew9dla1iwk8	0	f	properties	\N
haxe3y5jbxr	ew9dla1iwk8	1	\N	\N	1
48d58aj2z3f	ew9dla1iwk8	2	\N	\N	1
dnlwo60b33v	ew9dla1iwk8	3	\N	\N	1
89nfa89tbje	ew9dla1iwk8	4	\N	\N	1
nc92u2m878d	89nfa89tbje	3	\N	\N	\N
nc92u2m878d	dnlwo60b33v	4	\N	\N	\N
nc92u2m878d	48d58aj2z3f	5	\N	\N	\N
nc92u2m878d	haxe3y5jbxr	6	\N	\N	\N
nc92u2m878d	ew9dla1iwk8	7	\N	\N	\N
jiq42lrek0j	89nfa89tbje	4	\N	\N	\N
jiq42lrek0j	dnlwo60b33v	5	\N	\N	\N
jiq42lrek0j	48d58aj2z3f	6	\N	\N	\N
jiq42lrek0j	haxe3y5jbxr	7	\N	\N	\N
jiq42lrek0j	ew9dla1iwk8	8	\N	\N	\N
w149la0utnx	89nfa89tbje	5	\N	\N	\N
w149la0utnx	dnlwo60b33v	6	\N	\N	\N
w149la0utnx	48d58aj2z3f	7	\N	\N	\N
w149la0utnx	haxe3y5jbxr	8	\N	\N	\N
w149la0utnx	ew9dla1iwk8	9	\N	\N	\N
z02388u42s9	89nfa89tbje	6	\N	\N	\N
z02388u42s9	dnlwo60b33v	7	\N	\N	\N
z02388u42s9	48d58aj2z3f	8	\N	\N	\N
z02388u42s9	haxe3y5jbxr	9	\N	\N	\N
z02388u42s9	ew9dla1iwk8	10	\N	\N	\N
48d58aj2z3f	haxe3y5jbxr	1	\N	\N	2
llvsctq28hp	89nfa89tbje	7	\N	\N	\N
llvsctq28hp	dnlwo60b33v	8	\N	\N	\N
llvsctq28hp	48d58aj2z3f	9	\N	\N	\N
llvsctq28hp	haxe3y5jbxr	10	\N	\N	\N
llvsctq28hp	ew9dla1iwk8	11	\N	\N	\N
8xvbgh18zfk	89nfa89tbje	8	\N	\N	\N
8xvbgh18zfk	dnlwo60b33v	9	\N	\N	\N
8xvbgh18zfk	48d58aj2z3f	10	\N	\N	\N
8xvbgh18zfk	haxe3y5jbxr	11	\N	\N	\N
8xvbgh18zfk	ew9dla1iwk8	12	\N	\N	\N
2pij3wiepc4	89nfa89tbje	9	\N	\N	\N
2pij3wiepc4	dnlwo60b33v	10	\N	\N	\N
2pij3wiepc4	48d58aj2z3f	11	\N	\N	\N
2pij3wiepc4	haxe3y5jbxr	12	\N	\N	\N
2pij3wiepc4	ew9dla1iwk8	13	\N	\N	\N
we414l1saan	89nfa89tbje	10	\N	\N	\N
we414l1saan	dnlwo60b33v	11	\N	\N	\N
we414l1saan	48d58aj2z3f	12	\N	\N	\N
we414l1saan	haxe3y5jbxr	13	\N	\N	\N
we414l1saan	ew9dla1iwk8	14	\N	\N	\N
89nfa89tbje	89nfa89tbje	0	f	properties	\N
svu377s09m8	svu377s09m8	0	f	properties	\N
g1zqulbaq33	svu377s09m8	1	\N	\N	1
o9klwv4nzei	svu377s09m8	2	\N	\N	\N
ozzmhtdpth4	g1zqulbaq33	2	\N	\N	\N
ozzmhtdpth4	svu377s09m8	3	\N	\N	\N
b8mogqkr3um	g1zqulbaq33	3	\N	\N	\N
b8mogqkr3um	svu377s09m8	4	\N	\N	\N
b56io1plq44	g1zqulbaq33	4	\N	\N	\N
b56io1plq44	svu377s09m8	5	\N	\N	\N
13qbrfhlbny	g1zqulbaq33	5	\N	\N	\N
13qbrfhlbny	svu377s09m8	6	\N	\N	\N
oqsecaif6am	g1zqulbaq33	6	\N	\N	\N
oqsecaif6am	svu377s09m8	7	\N	\N	\N
63aby9t5qmb	g1zqulbaq33	7	\N	\N	\N
63aby9t5qmb	svu377s09m8	8	\N	\N	\N
mwrnryoju9y	g1zqulbaq33	8	\N	\N	\N
mwrnryoju9y	svu377s09m8	9	\N	\N	\N
nocobase-admin-menu	g1zqulbaq33	9	\N	\N	\N
nocobase-admin-menu	svu377s09m8	10	\N	\N	\N
g1zqulbaq33	g1zqulbaq33	0	f	properties	\N
o9klwv4nzei	g1zqulbaq33	1	\N	\N	7
eajx55rxxy3	eajx55rxxy3	0	f	properties	\N
8kxzcotfeb3	eajx55rxxy3	1	\N	\N	2
tg2hn64ei8t	baejb3hqiri	8	\N	\N	\N
tg2hn64ei8t	3fffemef0cp	9	\N	\N	\N
tg2hn64ei8t	4gnesuyiq9w	10	\N	\N	\N
tg2hn64ei8t	c5ha41uevsk	10	\N	\N	\N
46p5wcng6sm	44xfv2htpp8	10	\N	\N	\N
oq8pk1fas1b	oq8pk1fas1b	0	f	properties	\N
qar6tcv8yiy	oq8pk1fas1b	1	\N	\N	1
5r6schkvw42	5r6schkvw42	0	f	properties	\N
w149la0utnx	ip2da8grdsg	3	\N	\N	\N
w149la0utnx	pyyifyhng5d	4	\N	\N	\N
z02388u42s9	ip2da8grdsg	4	\N	\N	\N
z02388u42s9	pyyifyhng5d	5	\N	\N	\N
llvsctq28hp	ip2da8grdsg	5	\N	\N	\N
llvsctq28hp	pyyifyhng5d	6	\N	\N	\N
8xvbgh18zfk	ip2da8grdsg	6	\N	\N	\N
8xvbgh18zfk	pyyifyhng5d	7	\N	\N	\N
2pij3wiepc4	ip2da8grdsg	7	\N	\N	\N
2pij3wiepc4	pyyifyhng5d	8	\N	\N	\N
we414l1saan	ip2da8grdsg	8	\N	\N	\N
we414l1saan	pyyifyhng5d	9	\N	\N	\N
ip2da8grdsg	ip2da8grdsg	0	f	properties	\N
nc92u2m878d	ip2da8grdsg	1	\N	\N	4
oq8pk1fas1b	5r6schkvw42	1	\N	\N	1
qar6tcv8yiy	5r6schkvw42	2	\N	\N	1
14ah27jh466	14ah27jh466	0	f	properties	\N
5r6schkvw42	14ah27jh466	1	\N	\N	1
oq8pk1fas1b	14ah27jh466	2	\N	\N	1
qar6tcv8yiy	14ah27jh466	3	\N	\N	1
c9jng183okr	c9jng183okr	0	f	properties	\N
14ah27jh466	c9jng183okr	1	\N	\N	1
5r6schkvw42	c9jng183okr	2	\N	\N	1
oq8pk1fas1b	c9jng183okr	3	\N	\N	1
qar6tcv8yiy	c9jng183okr	4	\N	\N	1
c6mpmcq8sh2	oq8pk1fas1b	2	\N	\N	\N
c6mpmcq8sh2	5r6schkvw42	3	\N	\N	\N
c6mpmcq8sh2	14ah27jh466	4	\N	\N	\N
c6mpmcq8sh2	c9jng183okr	5	\N	\N	\N
jiq42lrek0j	qar6tcv8yiy	2	\N	\N	\N
jiq42lrek0j	oq8pk1fas1b	3	\N	\N	\N
jiq42lrek0j	5r6schkvw42	4	\N	\N	\N
jiq42lrek0j	14ah27jh466	5	\N	\N	\N
jiq42lrek0j	c9jng183okr	6	\N	\N	\N
w149la0utnx	qar6tcv8yiy	3	\N	\N	\N
w149la0utnx	oq8pk1fas1b	4	\N	\N	\N
w149la0utnx	5r6schkvw42	5	\N	\N	\N
w149la0utnx	14ah27jh466	6	\N	\N	\N
w149la0utnx	c9jng183okr	7	\N	\N	\N
z02388u42s9	qar6tcv8yiy	4	\N	\N	\N
z02388u42s9	oq8pk1fas1b	5	\N	\N	\N
z02388u42s9	5r6schkvw42	6	\N	\N	\N
z02388u42s9	14ah27jh466	7	\N	\N	\N
z02388u42s9	c9jng183okr	8	\N	\N	\N
llvsctq28hp	qar6tcv8yiy	5	\N	\N	\N
llvsctq28hp	oq8pk1fas1b	6	\N	\N	\N
llvsctq28hp	5r6schkvw42	7	\N	\N	\N
llvsctq28hp	14ah27jh466	8	\N	\N	\N
llvsctq28hp	c9jng183okr	9	\N	\N	\N
8xvbgh18zfk	qar6tcv8yiy	6	\N	\N	\N
8xvbgh18zfk	oq8pk1fas1b	7	\N	\N	\N
8xvbgh18zfk	5r6schkvw42	8	\N	\N	\N
8xvbgh18zfk	14ah27jh466	9	\N	\N	\N
8xvbgh18zfk	c9jng183okr	10	\N	\N	\N
2pij3wiepc4	qar6tcv8yiy	7	\N	\N	\N
2pij3wiepc4	oq8pk1fas1b	8	\N	\N	\N
2pij3wiepc4	5r6schkvw42	9	\N	\N	\N
2pij3wiepc4	14ah27jh466	10	\N	\N	\N
2pij3wiepc4	c9jng183okr	11	\N	\N	\N
we414l1saan	qar6tcv8yiy	8	\N	\N	\N
we414l1saan	oq8pk1fas1b	9	\N	\N	\N
we414l1saan	5r6schkvw42	10	\N	\N	\N
we414l1saan	14ah27jh466	11	\N	\N	\N
we414l1saan	c9jng183okr	12	\N	\N	\N
qar6tcv8yiy	qar6tcv8yiy	0	f	properties	\N
c6mpmcq8sh2	qar6tcv8yiy	1	\N	\N	1
dy05mp2bbzv	dy05mp2bbzv	0	f	properties	\N
a529wwd0i2s	dy05mp2bbzv	1	\N	\N	1
1uaumvtamrv	1uaumvtamrv	0	f	properties	\N
dy05mp2bbzv	1uaumvtamrv	1	\N	\N	1
a529wwd0i2s	1uaumvtamrv	2	\N	\N	1
36ljw6t1ji6	36ljw6t1ji6	0	f	properties	\N
1uaumvtamrv	36ljw6t1ji6	1	\N	\N	1
dy05mp2bbzv	36ljw6t1ji6	2	\N	\N	1
a529wwd0i2s	36ljw6t1ji6	3	\N	\N	1
nesj0yhxnjz	nesj0yhxnjz	0	f	properties	\N
36ljw6t1ji6	nesj0yhxnjz	1	\N	\N	1
1uaumvtamrv	nesj0yhxnjz	2	\N	\N	1
a529wwd0i2s	a529wwd0i2s	0	f	properties	\N
8kxzcotfeb3	8kxzcotfeb3	0	f	properties	\N
5z0xpoxz87w	8kxzcotfeb3	1	\N	\N	1
o9klwv4nzei	8kxzcotfeb3	2	\N	\N	\N
ozzmhtdpth4	5z0xpoxz87w	2	\N	\N	\N
ozzmhtdpth4	8kxzcotfeb3	3	\N	\N	\N
b8mogqkr3um	5z0xpoxz87w	3	\N	\N	\N
b8mogqkr3um	8kxzcotfeb3	4	\N	\N	\N
b56io1plq44	5z0xpoxz87w	4	\N	\N	\N
b56io1plq44	8kxzcotfeb3	5	\N	\N	\N
13qbrfhlbny	5z0xpoxz87w	5	\N	\N	\N
13qbrfhlbny	8kxzcotfeb3	6	\N	\N	\N
oqsecaif6am	5z0xpoxz87w	6	\N	\N	\N
oqsecaif6am	8kxzcotfeb3	7	\N	\N	\N
63aby9t5qmb	5z0xpoxz87w	7	\N	\N	\N
63aby9t5qmb	8kxzcotfeb3	8	\N	\N	\N
mwrnryoju9y	5z0xpoxz87w	8	\N	\N	\N
mwrnryoju9y	8kxzcotfeb3	9	\N	\N	\N
nocobase-admin-menu	5z0xpoxz87w	9	\N	\N	\N
nocobase-admin-menu	8kxzcotfeb3	10	\N	\N	\N
5z0xpoxz87w	5z0xpoxz87w	0	f	properties	\N
o9klwv4nzei	5z0xpoxz87w	1	\N	\N	8
r3e9s9hvz53	bmvfdpfnwm7	9	\N	\N	\N
m9ru2u1mst5	m9ru2u1mst5	0	f	properties	\N
t5a2xk7thpn	m9ru2u1mst5	1	\N	\N	1
7qih7hq26ge	7qih7hq26ge	0	f	properties	\N
m9ru2u1mst5	7qih7hq26ge	1	\N	\N	1
t5a2xk7thpn	7qih7hq26ge	2	\N	\N	1
dsptk8t0mbr	dsptk8t0mbr	0	f	properties	\N
7qih7hq26ge	dsptk8t0mbr	1	\N	\N	1
m9ru2u1mst5	dsptk8t0mbr	2	\N	\N	1
t5a2xk7thpn	dsptk8t0mbr	3	\N	\N	1
y05re45hs3a	y05re45hs3a	0	f	properties	\N
dsptk8t0mbr	y05re45hs3a	1	\N	\N	1
7qih7hq26ge	y05re45hs3a	2	\N	\N	1
m9ru2u1mst5	y05re45hs3a	3	\N	\N	1
t5a2xk7thpn	y05re45hs3a	4	\N	\N	1
d1nvsr6gr5f	d1nvsr6gr5f	0	f	properties	\N
dsptk8t0mbr	d1nvsr6gr5f	1	\N	\N	2
7qih7hq26ge	d1nvsr6gr5f	2	\N	\N	2
m9ru2u1mst5	d1nvsr6gr5f	3	\N	\N	2
t5a2xk7thpn	d1nvsr6gr5f	4	\N	\N	2
44890jxlzup	baejb3hqiri	9	\N	\N	\N
ra6axo18rlo	m9ru2u1mst5	2	\N	\N	\N
ra6axo18rlo	7qih7hq26ge	3	\N	\N	\N
ra6axo18rlo	dsptk8t0mbr	4	\N	\N	\N
ra6axo18rlo	y05re45hs3a	5	\N	\N	\N
ra6axo18rlo	d1nvsr6gr5f	5	\N	\N	\N
7peksipcht7	t5a2xk7thpn	2	\N	\N	\N
7peksipcht7	m9ru2u1mst5	3	\N	\N	\N
7peksipcht7	7qih7hq26ge	4	\N	\N	\N
7peksipcht7	dsptk8t0mbr	5	\N	\N	\N
7peksipcht7	y05re45hs3a	6	\N	\N	\N
7peksipcht7	d1nvsr6gr5f	6	\N	\N	\N
vxyfqljr7j6	t5a2xk7thpn	3	\N	\N	\N
vxyfqljr7j6	m9ru2u1mst5	4	\N	\N	\N
vxyfqljr7j6	7qih7hq26ge	5	\N	\N	\N
vxyfqljr7j6	dsptk8t0mbr	6	\N	\N	\N
vxyfqljr7j6	y05re45hs3a	7	\N	\N	\N
44890jxlzup	3fffemef0cp	10	\N	\N	\N
44890jxlzup	4gnesuyiq9w	11	\N	\N	\N
44890jxlzup	c5ha41uevsk	11	\N	\N	\N
r3e9s9hvz53	u2nl9by49q9	10	\N	\N	\N
r3e9s9hvz53	44xfv2htpp8	11	\N	\N	\N
xa635tbvi5c	baejb3hqiri	10	\N	\N	\N
xa635tbvi5c	3fffemef0cp	11	\N	\N	\N
xa635tbvi5c	4gnesuyiq9w	12	\N	\N	\N
xa635tbvi5c	c5ha41uevsk	12	\N	\N	\N
ylyr9dd0a50	bmvfdpfnwm7	10	\N	\N	\N
ylyr9dd0a50	u2nl9by49q9	11	\N	\N	\N
4dgysxrfq7o	baejb3hqiri	11	\N	\N	\N
4dgysxrfq7o	3fffemef0cp	12	\N	\N	\N
4dgysxrfq7o	4gnesuyiq9w	13	\N	\N	\N
4dgysxrfq7o	c5ha41uevsk	13	\N	\N	\N
ylyr9dd0a50	44xfv2htpp8	12	\N	\N	\N
4dgysxrfq7o	bmvfdpfnwm7	15	\N	\N	\N
sf8fl742bgm	baejb3hqiri	12	\N	\N	\N
sf8fl742bgm	3fffemef0cp	13	\N	\N	\N
sf8fl742bgm	4gnesuyiq9w	14	\N	\N	\N
sf8fl742bgm	c5ha41uevsk	14	\N	\N	\N
4dgysxrfq7o	u2nl9by49q9	16	\N	\N	\N
4dgysxrfq7o	44xfv2htpp8	17	\N	\N	\N
sptin92gm5m	baejb3hqiri	13	\N	\N	\N
sptin92gm5m	3fffemef0cp	14	\N	\N	\N
sptin92gm5m	4gnesuyiq9w	15	\N	\N	\N
sptin92gm5m	c5ha41uevsk	15	\N	\N	\N
sf8fl742bgm	bmvfdpfnwm7	16	\N	\N	\N
sf8fl742bgm	u2nl9by49q9	17	\N	\N	\N
i0lnhtci4u6	baejb3hqiri	14	\N	\N	\N
i0lnhtci4u6	3fffemef0cp	15	\N	\N	\N
i0lnhtci4u6	4gnesuyiq9w	16	\N	\N	\N
i0lnhtci4u6	c5ha41uevsk	16	\N	\N	\N
sf8fl742bgm	44xfv2htpp8	18	\N	\N	\N
sptin92gm5m	bmvfdpfnwm7	17	\N	\N	\N
swxvjglsevf	baejb3hqiri	15	\N	\N	\N
swxvjglsevf	3fffemef0cp	16	\N	\N	\N
swxvjglsevf	4gnesuyiq9w	17	\N	\N	\N
swxvjglsevf	c5ha41uevsk	17	\N	\N	\N
sptin92gm5m	u2nl9by49q9	18	\N	\N	\N
sptin92gm5m	44xfv2htpp8	19	\N	\N	\N
nocobase-admin-menu	baejb3hqiri	16	\N	\N	\N
nocobase-admin-menu	3fffemef0cp	17	\N	\N	\N
nocobase-admin-menu	4gnesuyiq9w	18	\N	\N	\N
nocobase-admin-menu	c5ha41uevsk	18	\N	\N	\N
i0lnhtci4u6	bmvfdpfnwm7	18	\N	\N	\N
i0lnhtci4u6	u2nl9by49q9	19	\N	\N	\N
m8tbcrs4z9t	0ypbdd2x5je	12	\N	\N	\N
m8tbcrs4z9t	n596xt7b4gz	13	\N	\N	\N
m8tbcrs4z9t	vpvmqhclo5c	13	\N	\N	\N
q4dinm52meb	q5sp3fyrz47	10	\N	\N	\N
q4dinm52meb	6e6up9qf6jw	11	\N	\N	\N
q4dinm52meb	i99shgxsfzv	12	\N	\N	\N
q4dinm52meb	0ypbdd2x5je	13	\N	\N	\N
q4dinm52meb	n596xt7b4gz	14	\N	\N	\N
q4dinm52meb	vpvmqhclo5c	14	\N	\N	\N
vs0l89adzhc	q5sp3fyrz47	11	\N	\N	\N
vs0l89adzhc	6e6up9qf6jw	12	\N	\N	\N
vs0l89adzhc	i99shgxsfzv	13	\N	\N	\N
vs0l89adzhc	0ypbdd2x5je	14	\N	\N	\N
vs0l89adzhc	n596xt7b4gz	15	\N	\N	\N
vs0l89adzhc	vpvmqhclo5c	15	\N	\N	\N
493pimn830r	q5sp3fyrz47	12	\N	\N	\N
493pimn830r	6e6up9qf6jw	13	\N	\N	\N
493pimn830r	i99shgxsfzv	14	\N	\N	\N
493pimn830r	0ypbdd2x5je	15	\N	\N	\N
493pimn830r	n596xt7b4gz	16	\N	\N	\N
493pimn830r	vpvmqhclo5c	16	\N	\N	\N
nocobase-admin-menu	q5sp3fyrz47	13	\N	\N	\N
nocobase-admin-menu	6e6up9qf6jw	14	\N	\N	\N
dy05mp2bbzv	nesj0yhxnjz	3	\N	\N	1
a529wwd0i2s	nesj0yhxnjz	4	\N	\N	1
l122naqh3xo	l122naqh3xo	0	f	properties	\N
36ljw6t1ji6	l122naqh3xo	1	\N	\N	2
1uaumvtamrv	l122naqh3xo	2	\N	\N	2
vxyfqljr7j6	d1nvsr6gr5f	7	\N	\N	\N
v0xzwwlb3u7	t5a2xk7thpn	4	\N	\N	\N
v0xzwwlb3u7	m9ru2u1mst5	5	\N	\N	\N
v0xzwwlb3u7	7qih7hq26ge	6	\N	\N	\N
v0xzwwlb3u7	dsptk8t0mbr	7	\N	\N	\N
v0xzwwlb3u7	y05re45hs3a	8	\N	\N	\N
v0xzwwlb3u7	d1nvsr6gr5f	8	\N	\N	\N
eajx55rxxy3	t5a2xk7thpn	5	\N	\N	\N
eajx55rxxy3	m9ru2u1mst5	6	\N	\N	\N
eajx55rxxy3	7qih7hq26ge	7	\N	\N	\N
eajx55rxxy3	dsptk8t0mbr	8	\N	\N	\N
eajx55rxxy3	y05re45hs3a	9	\N	\N	\N
eajx55rxxy3	d1nvsr6gr5f	9	\N	\N	\N
8kxzcotfeb3	t5a2xk7thpn	6	\N	\N	\N
8kxzcotfeb3	m9ru2u1mst5	7	\N	\N	\N
8kxzcotfeb3	7qih7hq26ge	8	\N	\N	\N
8kxzcotfeb3	dsptk8t0mbr	9	\N	\N	\N
8kxzcotfeb3	y05re45hs3a	10	\N	\N	\N
8kxzcotfeb3	d1nvsr6gr5f	10	\N	\N	\N
5z0xpoxz87w	t5a2xk7thpn	7	\N	\N	\N
5z0xpoxz87w	m9ru2u1mst5	8	\N	\N	\N
5z0xpoxz87w	7qih7hq26ge	9	\N	\N	\N
5z0xpoxz87w	dsptk8t0mbr	10	\N	\N	\N
5z0xpoxz87w	y05re45hs3a	11	\N	\N	\N
5z0xpoxz87w	d1nvsr6gr5f	11	\N	\N	\N
o9klwv4nzei	t5a2xk7thpn	8	\N	\N	\N
o9klwv4nzei	m9ru2u1mst5	9	\N	\N	\N
o9klwv4nzei	7qih7hq26ge	10	\N	\N	\N
t4v2kcudvg5	dnlwo60b33v	2	\N	\N	\N
o9klwv4nzei	dsptk8t0mbr	11	\N	\N	\N
o9klwv4nzei	y05re45hs3a	12	\N	\N	\N
t4v2kcudvg5	48d58aj2z3f	3	\N	\N	\N
t4v2kcudvg5	haxe3y5jbxr	4	\N	\N	\N
t4v2kcudvg5	ew9dla1iwk8	5	\N	\N	\N
q9zjnv8mc9j	89nfa89tbje	2	\N	\N	\N
q9zjnv8mc9j	dnlwo60b33v	3	\N	\N	\N
q9zjnv8mc9j	48d58aj2z3f	4	\N	\N	\N
q9zjnv8mc9j	haxe3y5jbxr	5	\N	\N	\N
q9zjnv8mc9j	ew9dla1iwk8	6	\N	\N	\N
o9klwv4nzei	d1nvsr6gr5f	12	\N	\N	\N
ozzmhtdpth4	t5a2xk7thpn	9	\N	\N	\N
ozzmhtdpth4	m9ru2u1mst5	10	\N	\N	\N
ozzmhtdpth4	7qih7hq26ge	11	\N	\N	\N
ozzmhtdpth4	dsptk8t0mbr	12	\N	\N	\N
ozzmhtdpth4	y05re45hs3a	13	\N	\N	\N
ozzmhtdpth4	d1nvsr6gr5f	13	\N	\N	\N
b8mogqkr3um	t5a2xk7thpn	10	\N	\N	\N
b8mogqkr3um	m9ru2u1mst5	11	\N	\N	\N
b8mogqkr3um	7qih7hq26ge	12	\N	\N	\N
b8mogqkr3um	dsptk8t0mbr	13	\N	\N	\N
b8mogqkr3um	y05re45hs3a	14	\N	\N	\N
b8mogqkr3um	d1nvsr6gr5f	14	\N	\N	\N
b56io1plq44	t5a2xk7thpn	11	\N	\N	\N
b56io1plq44	m9ru2u1mst5	12	\N	\N	\N
b56io1plq44	7qih7hq26ge	13	\N	\N	\N
t4v2kcudvg5	89nfa89tbje	1	\N	\N	2
b56io1plq44	dsptk8t0mbr	14	\N	\N	\N
b56io1plq44	y05re45hs3a	15	\N	\N	\N
b56io1plq44	d1nvsr6gr5f	15	\N	\N	\N
13qbrfhlbny	t5a2xk7thpn	12	\N	\N	\N
13qbrfhlbny	m9ru2u1mst5	13	\N	\N	\N
13qbrfhlbny	7qih7hq26ge	14	\N	\N	\N
13qbrfhlbny	dsptk8t0mbr	15	\N	\N	\N
13qbrfhlbny	y05re45hs3a	16	\N	\N	\N
13qbrfhlbny	d1nvsr6gr5f	16	\N	\N	\N
oqsecaif6am	t5a2xk7thpn	13	\N	\N	\N
oqsecaif6am	m9ru2u1mst5	14	\N	\N	\N
oqsecaif6am	7qih7hq26ge	15	\N	\N	\N
oqsecaif6am	dsptk8t0mbr	16	\N	\N	\N
oqsecaif6am	y05re45hs3a	17	\N	\N	\N
oqsecaif6am	d1nvsr6gr5f	17	\N	\N	\N
63aby9t5qmb	t5a2xk7thpn	14	\N	\N	\N
63aby9t5qmb	m9ru2u1mst5	15	\N	\N	\N
63aby9t5qmb	7qih7hq26ge	16	\N	\N	\N
63aby9t5qmb	dsptk8t0mbr	17	\N	\N	\N
63aby9t5qmb	y05re45hs3a	18	\N	\N	\N
63aby9t5qmb	d1nvsr6gr5f	18	\N	\N	\N
mwrnryoju9y	t5a2xk7thpn	15	\N	\N	\N
mwrnryoju9y	m9ru2u1mst5	16	\N	\N	\N
mwrnryoju9y	7qih7hq26ge	17	\N	\N	\N
mwrnryoju9y	dsptk8t0mbr	18	\N	\N	\N
mwrnryoju9y	y05re45hs3a	19	\N	\N	\N
mwrnryoju9y	d1nvsr6gr5f	19	\N	\N	\N
nocobase-admin-menu	t5a2xk7thpn	16	\N	\N	\N
nocobase-admin-menu	m9ru2u1mst5	17	\N	\N	\N
nocobase-admin-menu	7qih7hq26ge	18	\N	\N	\N
nocobase-admin-menu	dsptk8t0mbr	19	\N	\N	\N
nocobase-admin-menu	y05re45hs3a	20	\N	\N	\N
nocobase-admin-menu	d1nvsr6gr5f	20	\N	\N	\N
t5a2xk7thpn	t5a2xk7thpn	0	f	properties	\N
ra6axo18rlo	t5a2xk7thpn	1	\N	\N	1
i0lnhtci4u6	44xfv2htpp8	20	\N	\N	\N
swxvjglsevf	bmvfdpfnwm7	19	\N	\N	\N
ytc4bcsv2fo	ytc4bcsv2fo	0	f	properties	\N
t9zhqlgl8bp	ytc4bcsv2fo	1	\N	\N	1
y05re45hs3a	ytc4bcsv2fo	2	\N	\N	\N
dsptk8t0mbr	t9zhqlgl8bp	2	\N	\N	\N
dsptk8t0mbr	ytc4bcsv2fo	3	\N	\N	\N
7qih7hq26ge	t9zhqlgl8bp	3	\N	\N	\N
7qih7hq26ge	ytc4bcsv2fo	4	\N	\N	\N
m9ru2u1mst5	t9zhqlgl8bp	4	\N	\N	\N
m9ru2u1mst5	ytc4bcsv2fo	5	\N	\N	\N
t5a2xk7thpn	t9zhqlgl8bp	5	\N	\N	\N
t5a2xk7thpn	ytc4bcsv2fo	6	\N	\N	\N
ra6axo18rlo	t9zhqlgl8bp	6	\N	\N	\N
ra6axo18rlo	ytc4bcsv2fo	7	\N	\N	\N
7peksipcht7	t9zhqlgl8bp	7	\N	\N	\N
7peksipcht7	ytc4bcsv2fo	8	\N	\N	\N
vxyfqljr7j6	t9zhqlgl8bp	8	\N	\N	\N
vxyfqljr7j6	ytc4bcsv2fo	9	\N	\N	\N
v0xzwwlb3u7	t9zhqlgl8bp	9	\N	\N	\N
v0xzwwlb3u7	ytc4bcsv2fo	10	\N	\N	\N
eajx55rxxy3	t9zhqlgl8bp	10	\N	\N	\N
eajx55rxxy3	ytc4bcsv2fo	11	\N	\N	\N
8kxzcotfeb3	t9zhqlgl8bp	11	\N	\N	\N
8kxzcotfeb3	ytc4bcsv2fo	12	\N	\N	\N
5z0xpoxz87w	t9zhqlgl8bp	12	\N	\N	\N
5z0xpoxz87w	ytc4bcsv2fo	13	\N	\N	\N
o9klwv4nzei	t9zhqlgl8bp	13	\N	\N	\N
o9klwv4nzei	ytc4bcsv2fo	14	\N	\N	\N
ozzmhtdpth4	t9zhqlgl8bp	14	\N	\N	\N
ozzmhtdpth4	ytc4bcsv2fo	15	\N	\N	\N
b8mogqkr3um	t9zhqlgl8bp	15	\N	\N	\N
b8mogqkr3um	ytc4bcsv2fo	16	\N	\N	\N
b56io1plq44	t9zhqlgl8bp	16	\N	\N	\N
b56io1plq44	ytc4bcsv2fo	17	\N	\N	\N
13qbrfhlbny	t9zhqlgl8bp	17	\N	\N	\N
13qbrfhlbny	ytc4bcsv2fo	18	\N	\N	\N
oqsecaif6am	t9zhqlgl8bp	18	\N	\N	\N
oqsecaif6am	ytc4bcsv2fo	19	\N	\N	\N
63aby9t5qmb	t9zhqlgl8bp	19	\N	\N	\N
63aby9t5qmb	ytc4bcsv2fo	20	\N	\N	\N
mwrnryoju9y	t9zhqlgl8bp	20	\N	\N	\N
mwrnryoju9y	ytc4bcsv2fo	21	\N	\N	\N
nocobase-admin-menu	t9zhqlgl8bp	21	\N	\N	\N
nocobase-admin-menu	ytc4bcsv2fo	22	\N	\N	\N
t9zhqlgl8bp	t9zhqlgl8bp	0	f	properties	\N
y05re45hs3a	t9zhqlgl8bp	1	\N	\N	2
6ilsm5v4e33	6ilsm5v4e33	0	f	properties	\N
t9p0imxotch	6ilsm5v4e33	1	\N	\N	1
zzluxay6dp9	zzluxay6dp9	0	f	properties	\N
6ilsm5v4e33	zzluxay6dp9	1	\N	\N	1
t9p0imxotch	zzluxay6dp9	2	\N	\N	1
y05re45hs3a	6ilsm5v4e33	2	\N	\N	\N
y05re45hs3a	zzluxay6dp9	3	\N	\N	\N
dsptk8t0mbr	t9p0imxotch	2	\N	\N	\N
dsptk8t0mbr	6ilsm5v4e33	3	\N	\N	\N
dsptk8t0mbr	zzluxay6dp9	4	\N	\N	\N
7qih7hq26ge	t9p0imxotch	3	\N	\N	\N
7qih7hq26ge	6ilsm5v4e33	4	\N	\N	\N
7qih7hq26ge	zzluxay6dp9	5	\N	\N	\N
m9ru2u1mst5	t9p0imxotch	4	\N	\N	\N
m9ru2u1mst5	6ilsm5v4e33	5	\N	\N	\N
m9ru2u1mst5	zzluxay6dp9	6	\N	\N	\N
t5a2xk7thpn	t9p0imxotch	5	\N	\N	\N
t5a2xk7thpn	6ilsm5v4e33	6	\N	\N	\N
t5a2xk7thpn	zzluxay6dp9	7	\N	\N	\N
ra6axo18rlo	t9p0imxotch	6	\N	\N	\N
ra6axo18rlo	6ilsm5v4e33	7	\N	\N	\N
ra6axo18rlo	zzluxay6dp9	8	\N	\N	\N
7peksipcht7	t9p0imxotch	7	\N	\N	\N
7peksipcht7	6ilsm5v4e33	8	\N	\N	\N
7peksipcht7	zzluxay6dp9	9	\N	\N	\N
vxyfqljr7j6	t9p0imxotch	8	\N	\N	\N
vxyfqljr7j6	6ilsm5v4e33	9	\N	\N	\N
vxyfqljr7j6	zzluxay6dp9	10	\N	\N	\N
v0xzwwlb3u7	t9p0imxotch	9	\N	\N	\N
v0xzwwlb3u7	6ilsm5v4e33	10	\N	\N	\N
v0xzwwlb3u7	zzluxay6dp9	11	\N	\N	\N
eajx55rxxy3	t9p0imxotch	10	\N	\N	\N
eajx55rxxy3	6ilsm5v4e33	11	\N	\N	\N
t9p0imxotch	t9p0imxotch	0	f	properties	\N
y05re45hs3a	t9p0imxotch	1	\N	\N	3
swxvjglsevf	u2nl9by49q9	20	\N	\N	\N
swxvjglsevf	44xfv2htpp8	21	\N	\N	\N
eajx55rxxy3	zzluxay6dp9	12	\N	\N	\N
8kxzcotfeb3	t9p0imxotch	11	\N	\N	\N
8kxzcotfeb3	6ilsm5v4e33	12	\N	\N	\N
8kxzcotfeb3	zzluxay6dp9	13	\N	\N	\N
5z0xpoxz87w	t9p0imxotch	12	\N	\N	\N
5z0xpoxz87w	6ilsm5v4e33	13	\N	\N	\N
5z0xpoxz87w	zzluxay6dp9	14	\N	\N	\N
o9klwv4nzei	t9p0imxotch	13	\N	\N	\N
o9klwv4nzei	6ilsm5v4e33	14	\N	\N	\N
o9klwv4nzei	zzluxay6dp9	15	\N	\N	\N
ozzmhtdpth4	t9p0imxotch	14	\N	\N	\N
ozzmhtdpth4	6ilsm5v4e33	15	\N	\N	\N
ozzmhtdpth4	zzluxay6dp9	16	\N	\N	\N
b8mogqkr3um	t9p0imxotch	15	\N	\N	\N
b8mogqkr3um	6ilsm5v4e33	16	\N	\N	\N
b8mogqkr3um	zzluxay6dp9	17	\N	\N	\N
b56io1plq44	t9p0imxotch	16	\N	\N	\N
b56io1plq44	6ilsm5v4e33	17	\N	\N	\N
b56io1plq44	zzluxay6dp9	18	\N	\N	\N
13qbrfhlbny	t9p0imxotch	17	\N	\N	\N
13qbrfhlbny	6ilsm5v4e33	18	\N	\N	\N
13qbrfhlbny	zzluxay6dp9	19	\N	\N	\N
oqsecaif6am	t9p0imxotch	18	\N	\N	\N
oqsecaif6am	6ilsm5v4e33	19	\N	\N	\N
oqsecaif6am	zzluxay6dp9	20	\N	\N	\N
63aby9t5qmb	t9p0imxotch	19	\N	\N	\N
63aby9t5qmb	6ilsm5v4e33	20	\N	\N	\N
63aby9t5qmb	zzluxay6dp9	21	\N	\N	\N
mwrnryoju9y	t9p0imxotch	20	\N	\N	\N
mwrnryoju9y	6ilsm5v4e33	21	\N	\N	\N
mwrnryoju9y	zzluxay6dp9	22	\N	\N	\N
nocobase-admin-menu	t9p0imxotch	21	\N	\N	\N
nocobase-admin-menu	6ilsm5v4e33	22	\N	\N	\N
nocobase-admin-menu	zzluxay6dp9	23	\N	\N	\N
nocobase-admin-menu	bmvfdpfnwm7	20	\N	\N	\N
nocobase-admin-menu	u2nl9by49q9	21	\N	\N	\N
nocobase-admin-menu	44xfv2htpp8	22	\N	\N	\N
bmvfdpfnwm7	bmvfdpfnwm7	0	f	properties	\N
w2vajpu7d09	bmvfdpfnwm7	1	\N	\N	1
mt66jgcipr7	mt66jgcipr7	0	f	properties	\N
a34yf2mk2rl	mt66jgcipr7	1	\N	\N	1
opdt2fve9yc	opdt2fve9yc	0	f	properties	\N
mt66jgcipr7	opdt2fve9yc	1	\N	\N	1
a34yf2mk2rl	opdt2fve9yc	2	\N	\N	1
w2vajpu7d09	mt66jgcipr7	2	\N	\N	\N
w2vajpu7d09	opdt2fve9yc	3	\N	\N	\N
rl4zzyovnti	a34yf2mk2rl	2	\N	\N	\N
rl4zzyovnti	mt66jgcipr7	3	\N	\N	\N
rl4zzyovnti	opdt2fve9yc	4	\N	\N	\N
juylvd7o6f1	a34yf2mk2rl	3	\N	\N	\N
juylvd7o6f1	mt66jgcipr7	4	\N	\N	\N
juylvd7o6f1	opdt2fve9yc	5	\N	\N	\N
dd1t7s27fl2	a34yf2mk2rl	4	\N	\N	\N
dd1t7s27fl2	mt66jgcipr7	5	\N	\N	\N
dd1t7s27fl2	opdt2fve9yc	6	\N	\N	\N
y05digxvovk	a34yf2mk2rl	5	\N	\N	\N
y05digxvovk	mt66jgcipr7	6	\N	\N	\N
y05digxvovk	opdt2fve9yc	7	\N	\N	\N
qlc8gbizzyo	a34yf2mk2rl	6	\N	\N	\N
qlc8gbizzyo	mt66jgcipr7	7	\N	\N	\N
qlc8gbizzyo	opdt2fve9yc	8	\N	\N	\N
kjig4l36dxf	a34yf2mk2rl	7	\N	\N	\N
kjig4l36dxf	mt66jgcipr7	8	\N	\N	\N
wtnow9fgrz0	wtnow9fgrz0	0	f	properties	\N
dsptk8t0mbr	wtnow9fgrz0	2	\N	\N	\N
7qih7hq26ge	wtnow9fgrz0	3	\N	\N	\N
m9ru2u1mst5	wtnow9fgrz0	4	\N	\N	\N
t5a2xk7thpn	wtnow9fgrz0	5	\N	\N	\N
ra6axo18rlo	wtnow9fgrz0	6	\N	\N	\N
7peksipcht7	wtnow9fgrz0	7	\N	\N	\N
vxyfqljr7j6	wtnow9fgrz0	8	\N	\N	\N
v0xzwwlb3u7	wtnow9fgrz0	9	\N	\N	\N
eajx55rxxy3	wtnow9fgrz0	10	\N	\N	\N
8kxzcotfeb3	wtnow9fgrz0	11	\N	\N	\N
5z0xpoxz87w	wtnow9fgrz0	12	\N	\N	\N
o9klwv4nzei	wtnow9fgrz0	13	\N	\N	\N
ozzmhtdpth4	wtnow9fgrz0	14	\N	\N	\N
b8mogqkr3um	wtnow9fgrz0	15	\N	\N	\N
b56io1plq44	wtnow9fgrz0	16	\N	\N	\N
13qbrfhlbny	wtnow9fgrz0	17	\N	\N	\N
oqsecaif6am	wtnow9fgrz0	18	\N	\N	\N
63aby9t5qmb	wtnow9fgrz0	19	\N	\N	\N
mwrnryoju9y	wtnow9fgrz0	20	\N	\N	\N
nocobase-admin-menu	wtnow9fgrz0	21	\N	\N	\N
d1nvsr6gr5f	wtnow9fgrz0	1	\N	\N	1
kjig4l36dxf	opdt2fve9yc	9	\N	\N	\N
w4ciktesp5j	a34yf2mk2rl	11	\N	\N	\N
w4ciktesp5j	mt66jgcipr7	12	\N	\N	\N
w4ciktesp5j	opdt2fve9yc	13	\N	\N	\N
tg2hn64ei8t	a34yf2mk2rl	12	\N	\N	\N
tg2hn64ei8t	mt66jgcipr7	13	\N	\N	\N
tg2hn64ei8t	opdt2fve9yc	14	\N	\N	\N
44890jxlzup	a34yf2mk2rl	13	\N	\N	\N
7jrdbvcj410	7jrdbvcj410	0	f	properties	\N
o3j0f3cycr5	7jrdbvcj410	1	\N	\N	1
44890jxlzup	mt66jgcipr7	14	\N	\N	\N
44890jxlzup	opdt2fve9yc	15	\N	\N	\N
xa635tbvi5c	a34yf2mk2rl	14	\N	\N	\N
xa635tbvi5c	mt66jgcipr7	15	\N	\N	\N
xa635tbvi5c	opdt2fve9yc	16	\N	\N	\N
46p5wcng6sm	a34yf2mk2rl	8	\N	\N	\N
46p5wcng6sm	mt66jgcipr7	9	\N	\N	\N
46p5wcng6sm	opdt2fve9yc	10	\N	\N	\N
r3e9s9hvz53	a34yf2mk2rl	9	\N	\N	\N
r3e9s9hvz53	mt66jgcipr7	10	\N	\N	\N
r3e9s9hvz53	opdt2fve9yc	11	\N	\N	\N
ylyr9dd0a50	a34yf2mk2rl	10	\N	\N	\N
ylyr9dd0a50	mt66jgcipr7	11	\N	\N	\N
ylyr9dd0a50	opdt2fve9yc	12	\N	\N	\N
4dgysxrfq7o	a34yf2mk2rl	15	\N	\N	\N
4dgysxrfq7o	mt66jgcipr7	16	\N	\N	\N
4dgysxrfq7o	opdt2fve9yc	17	\N	\N	\N
sf8fl742bgm	a34yf2mk2rl	16	\N	\N	\N
sf8fl742bgm	mt66jgcipr7	17	\N	\N	\N
sf8fl742bgm	opdt2fve9yc	18	\N	\N	\N
sptin92gm5m	a34yf2mk2rl	17	\N	\N	\N
sptin92gm5m	mt66jgcipr7	18	\N	\N	\N
sptin92gm5m	opdt2fve9yc	19	\N	\N	\N
i0lnhtci4u6	a34yf2mk2rl	18	\N	\N	\N
i0lnhtci4u6	mt66jgcipr7	19	\N	\N	\N
i0lnhtci4u6	opdt2fve9yc	20	\N	\N	\N
swxvjglsevf	a34yf2mk2rl	19	\N	\N	\N
swxvjglsevf	mt66jgcipr7	20	\N	\N	\N
swxvjglsevf	opdt2fve9yc	21	\N	\N	\N
nocobase-admin-menu	a34yf2mk2rl	20	\N	\N	\N
nocobase-admin-menu	mt66jgcipr7	21	\N	\N	\N
nocobase-admin-menu	opdt2fve9yc	22	\N	\N	\N
a34yf2mk2rl	a34yf2mk2rl	0	f	properties	\N
w2vajpu7d09	a34yf2mk2rl	1	\N	\N	2
rl4zzyovnti	v8pm38ygyj6	2	\N	\N	\N
juylvd7o6f1	v8pm38ygyj6	3	\N	\N	\N
dd1t7s27fl2	v8pm38ygyj6	4	\N	\N	\N
y05digxvovk	v8pm38ygyj6	5	\N	\N	\N
qlc8gbizzyo	v8pm38ygyj6	6	\N	\N	\N
kjig4l36dxf	v8pm38ygyj6	7	\N	\N	\N
w4ciktesp5j	v8pm38ygyj6	11	\N	\N	\N
tg2hn64ei8t	v8pm38ygyj6	12	\N	\N	\N
44890jxlzup	v8pm38ygyj6	13	\N	\N	\N
xa635tbvi5c	v8pm38ygyj6	14	\N	\N	\N
46p5wcng6sm	v8pm38ygyj6	8	\N	\N	\N
2iy67o2x7wb	2iy67o2x7wb	0	f	properties	\N
w149la0utnx	7x6oyetmotw	14	\N	\N	\N
o3j0f3cycr5	o3j0f3cycr5	0	f	properties	\N
w149la0utnx	vieqoc3iqo8	14	\N	\N	\N
z02388u42s9	oxj8sl5a4x4	11	\N	\N	\N
szg62voxazi	szg62voxazi	0	f	properties	\N
jkiooahp540	szg62voxazi	1	\N	\N	1
iam40dae216	iam40dae216	0	f	properties	\N
szg62voxazi	iam40dae216	1	\N	\N	1
jkiooahp540	iam40dae216	2	\N	\N	1
f4amot355dj	f4amot355dj	0	f	properties	\N
iam40dae216	f4amot355dj	1	\N	\N	1
szg62voxazi	f4amot355dj	2	\N	\N	1
jkiooahp540	f4amot355dj	3	\N	\N	1
h0tf2zekdwj	h0tf2zekdwj	0	f	properties	\N
f4amot355dj	h0tf2zekdwj	1	\N	\N	1
iam40dae216	h0tf2zekdwj	2	\N	\N	1
szg62voxazi	h0tf2zekdwj	3	\N	\N	1
jkiooahp540	h0tf2zekdwj	4	\N	\N	1
zy0akbfpvko	zy0akbfpvko	0	f	properties	\N
f4amot355dj	zy0akbfpvko	1	\N	\N	2
iam40dae216	zy0akbfpvko	2	\N	\N	2
szg62voxazi	zy0akbfpvko	3	\N	\N	2
jkiooahp540	zy0akbfpvko	4	\N	\N	2
ndgk36ztoyy	szg62voxazi	2	\N	\N	\N
ndgk36ztoyy	iam40dae216	3	\N	\N	\N
ndgk36ztoyy	f4amot355dj	4	\N	\N	\N
ndgk36ztoyy	h0tf2zekdwj	5	\N	\N	\N
ndgk36ztoyy	zy0akbfpvko	5	\N	\N	\N
a62axznlu5x	jkiooahp540	2	\N	\N	\N
a62axznlu5x	szg62voxazi	3	\N	\N	\N
a62axznlu5x	iam40dae216	4	\N	\N	\N
a62axznlu5x	f4amot355dj	5	\N	\N	\N
a62axznlu5x	h0tf2zekdwj	6	\N	\N	\N
a62axznlu5x	zy0akbfpvko	6	\N	\N	\N
jkiooahp540	jkiooahp540	0	f	properties	\N
ndgk36ztoyy	jkiooahp540	1	\N	\N	1
06xh3zz9ikp	06xh3zz9ikp	0	f	properties	\N
r3e9s9hvz53	v8pm38ygyj6	9	\N	\N	\N
ylyr9dd0a50	v8pm38ygyj6	10	\N	\N	\N
4dgysxrfq7o	v8pm38ygyj6	15	\N	\N	\N
sf8fl742bgm	v8pm38ygyj6	16	\N	\N	\N
sptin92gm5m	v8pm38ygyj6	17	\N	\N	\N
i0lnhtci4u6	v8pm38ygyj6	18	\N	\N	\N
swxvjglsevf	v8pm38ygyj6	19	\N	\N	\N
nocobase-admin-menu	v8pm38ygyj6	20	\N	\N	\N
1cnwu64uyw3	mecmm2xcryc	1	\N	\N	3
v8pm38ygyj6	v8pm38ygyj6	0	f	properties	\N
zwh6db27axk	mecmm2xcryc	2	\N	\N	\N
w2vajpu7d09	v8pm38ygyj6	1	\N	\N	3
3ziz6e0pemu	3ziz6e0pemu	0	f	properties	\N
ca500qzqwpk	3ziz6e0pemu	1	\N	\N	1
n07zn4dv9k3	n07zn4dv9k3	0	f	properties	\N
5b0fu481dm6	mecmm2xcryc	3	\N	\N	\N
3ziz6e0pemu	n07zn4dv9k3	1	\N	\N	1
ca500qzqwpk	n07zn4dv9k3	2	\N	\N	1
w2vajpu7d09	3ziz6e0pemu	2	\N	\N	\N
w2vajpu7d09	n07zn4dv9k3	3	\N	\N	\N
1dvfg1afm18	mecmm2xcryc	4	\N	\N	\N
rl4zzyovnti	ca500qzqwpk	2	\N	\N	\N
rl4zzyovnti	3ziz6e0pemu	3	\N	\N	\N
rl4zzyovnti	n07zn4dv9k3	4	\N	\N	\N
juylvd7o6f1	ca500qzqwpk	3	\N	\N	\N
juylvd7o6f1	3ziz6e0pemu	4	\N	\N	\N
q3rv0rnfki7	mecmm2xcryc	5	\N	\N	\N
juylvd7o6f1	n07zn4dv9k3	5	\N	\N	\N
dd1t7s27fl2	ca500qzqwpk	4	\N	\N	\N
dd1t7s27fl2	3ziz6e0pemu	5	\N	\N	\N
dd1t7s27fl2	n07zn4dv9k3	6	\N	\N	\N
y05digxvovk	ca500qzqwpk	5	\N	\N	\N
w4ciktesp5j	mecmm2xcryc	6	\N	\N	\N
y05digxvovk	3ziz6e0pemu	6	\N	\N	\N
068ltvadyqz	068ltvadyqz	0	f	properties	\N
r7obcvpr4jw	068ltvadyqz	1	\N	\N	1
y05digxvovk	n07zn4dv9k3	7	\N	\N	\N
tg2hn64ei8t	mecmm2xcryc	7	\N	\N	\N
qlc8gbizzyo	ca500qzqwpk	6	\N	\N	\N
qlc8gbizzyo	3ziz6e0pemu	7	\N	\N	\N
qlc8gbizzyo	n07zn4dv9k3	8	\N	\N	\N
kjig4l36dxf	ca500qzqwpk	7	\N	\N	\N
kjig4l36dxf	3ziz6e0pemu	8	\N	\N	\N
44890jxlzup	mecmm2xcryc	8	\N	\N	\N
kjig4l36dxf	n07zn4dv9k3	9	\N	\N	\N
w4ciktesp5j	ca500qzqwpk	11	\N	\N	\N
w4ciktesp5j	3ziz6e0pemu	12	\N	\N	\N
w4ciktesp5j	n07zn4dv9k3	13	\N	\N	\N
tg2hn64ei8t	ca500qzqwpk	12	\N	\N	\N
xa635tbvi5c	mecmm2xcryc	9	\N	\N	\N
tg2hn64ei8t	3ziz6e0pemu	13	\N	\N	\N
tg2hn64ei8t	n07zn4dv9k3	14	\N	\N	\N
44890jxlzup	ca500qzqwpk	13	\N	\N	\N
44890jxlzup	3ziz6e0pemu	14	\N	\N	\N
44890jxlzup	n07zn4dv9k3	15	\N	\N	\N
4dgysxrfq7o	mecmm2xcryc	10	\N	\N	\N
xa635tbvi5c	ca500qzqwpk	14	\N	\N	\N
xa635tbvi5c	3ziz6e0pemu	15	\N	\N	\N
xa635tbvi5c	n07zn4dv9k3	16	\N	\N	\N
46p5wcng6sm	ca500qzqwpk	8	\N	\N	\N
46p5wcng6sm	3ziz6e0pemu	9	\N	\N	\N
sf8fl742bgm	mecmm2xcryc	11	\N	\N	\N
46p5wcng6sm	n07zn4dv9k3	10	\N	\N	\N
r3e9s9hvz53	ca500qzqwpk	9	\N	\N	\N
r3e9s9hvz53	3ziz6e0pemu	10	\N	\N	\N
r3e9s9hvz53	n07zn4dv9k3	11	\N	\N	\N
ylyr9dd0a50	ca500qzqwpk	10	\N	\N	\N
sptin92gm5m	mecmm2xcryc	12	\N	\N	\N
ylyr9dd0a50	3ziz6e0pemu	11	\N	\N	\N
ylyr9dd0a50	n07zn4dv9k3	12	\N	\N	\N
4dgysxrfq7o	ca500qzqwpk	15	\N	\N	\N
4dgysxrfq7o	3ziz6e0pemu	16	\N	\N	\N
4dgysxrfq7o	n07zn4dv9k3	17	\N	\N	\N
i0lnhtci4u6	mecmm2xcryc	13	\N	\N	\N
sf8fl742bgm	ca500qzqwpk	16	\N	\N	\N
sf8fl742bgm	3ziz6e0pemu	17	\N	\N	\N
sf8fl742bgm	n07zn4dv9k3	18	\N	\N	\N
sptin92gm5m	ca500qzqwpk	17	\N	\N	\N
sptin92gm5m	3ziz6e0pemu	18	\N	\N	\N
swxvjglsevf	mecmm2xcryc	14	\N	\N	\N
sptin92gm5m	n07zn4dv9k3	19	\N	\N	\N
i0lnhtci4u6	ca500qzqwpk	18	\N	\N	\N
ihct2s452fk	ihct2s452fk	0	f	properties	\N
n596xt7b4gz	ihct2s452fk	1	\N	\N	1
r7obcvpr4jw	r7obcvpr4jw	0	f	properties	\N
nocobase-admin-menu	mecmm2xcryc	15	\N	\N	\N
nocobase-admin-menu	i99shgxsfzv	15	\N	\N	\N
nocobase-admin-menu	0ypbdd2x5je	16	\N	\N	\N
nocobase-admin-menu	n596xt7b4gz	17	\N	\N	\N
nocobase-admin-menu	vpvmqhclo5c	17	\N	\N	\N
mecmm2xcryc	mecmm2xcryc	0	f	properties	\N
nm1chep0bne	nm1chep0bne	0	f	properties	\N
ihct2s452fk	nm1chep0bne	1	\N	\N	1
jp7lvat0n6v	jp7lvat0n6v	0	f	properties	\N
nm1chep0bne	jp7lvat0n6v	1	\N	\N	1
ihct2s452fk	jp7lvat0n6v	2	\N	\N	1
n596xt7b4gz	nm1chep0bne	2	\N	\N	\N
n596xt7b4gz	jp7lvat0n6v	3	\N	\N	\N
0ypbdd2x5je	ihct2s452fk	2	\N	\N	\N
0ypbdd2x5je	nm1chep0bne	3	\N	\N	\N
0ypbdd2x5je	jp7lvat0n6v	4	\N	\N	\N
i99shgxsfzv	ihct2s452fk	3	\N	\N	\N
i99shgxsfzv	nm1chep0bne	4	\N	\N	\N
i99shgxsfzv	jp7lvat0n6v	5	\N	\N	\N
6e6up9qf6jw	ihct2s452fk	4	\N	\N	\N
6e6up9qf6jw	nm1chep0bne	5	\N	\N	\N
6e6up9qf6jw	jp7lvat0n6v	6	\N	\N	\N
q5sp3fyrz47	ihct2s452fk	5	\N	\N	\N
q5sp3fyrz47	nm1chep0bne	6	\N	\N	\N
q5sp3fyrz47	jp7lvat0n6v	7	\N	\N	\N
qkanxqd13dl	ihct2s452fk	6	\N	\N	\N
ccyy0t4x4b1	ccyy0t4x4b1	0	f	properties	\N
h0tf2zekdwj	ccyy0t4x4b1	1	\N	\N	1
eezrjzkkyvu	eezrjzkkyvu	0	f	properties	\N
ccyy0t4x4b1	eezrjzkkyvu	1	\N	\N	1
1qnhdoz7zx7	1qnhdoz7zx7	0	f	properties	\N
eezrjzkkyvu	1qnhdoz7zx7	1	\N	\N	1
ccyy0t4x4b1	1qnhdoz7zx7	2	\N	\N	1
h0tf2zekdwj	eezrjzkkyvu	2	\N	\N	\N
h0tf2zekdwj	1qnhdoz7zx7	3	\N	\N	\N
f4amot355dj	ccyy0t4x4b1	2	\N	\N	\N
f4amot355dj	eezrjzkkyvu	3	\N	\N	\N
f4amot355dj	1qnhdoz7zx7	4	\N	\N	\N
iam40dae216	ccyy0t4x4b1	3	\N	\N	\N
iam40dae216	eezrjzkkyvu	4	\N	\N	\N
iam40dae216	1qnhdoz7zx7	5	\N	\N	\N
szg62voxazi	ccyy0t4x4b1	4	\N	\N	\N
szg62voxazi	eezrjzkkyvu	5	\N	\N	\N
szg62voxazi	1qnhdoz7zx7	6	\N	\N	\N
jkiooahp540	ccyy0t4x4b1	5	\N	\N	\N
jkiooahp540	eezrjzkkyvu	6	\N	\N	\N
jkiooahp540	1qnhdoz7zx7	7	\N	\N	\N
ndgk36ztoyy	ccyy0t4x4b1	6	\N	\N	\N
qkanxqd13dl	nm1chep0bne	7	\N	\N	\N
i0lnhtci4u6	3ziz6e0pemu	19	\N	\N	\N
i0lnhtci4u6	n07zn4dv9k3	20	\N	\N	\N
swxvjglsevf	ca500qzqwpk	19	\N	\N	\N
swxvjglsevf	3ziz6e0pemu	20	\N	\N	\N
ndgk36ztoyy	eezrjzkkyvu	7	\N	\N	\N
ndgk36ztoyy	1qnhdoz7zx7	8	\N	\N	\N
a62axznlu5x	ccyy0t4x4b1	7	\N	\N	\N
a62axznlu5x	eezrjzkkyvu	8	\N	\N	\N
a62axznlu5x	1qnhdoz7zx7	9	\N	\N	\N
ijeiw8vjxy8	ijeiw8vjxy8	0	f	properties	\N
or37h0ojd97	ijeiw8vjxy8	1	\N	\N	1
ymry3cg3xok	ymry3cg3xok	0	f	properties	\N
ijeiw8vjxy8	ymry3cg3xok	1	\N	\N	1
or37h0ojd97	ymry3cg3xok	2	\N	\N	1
h0tf2zekdwj	ijeiw8vjxy8	2	\N	\N	\N
h0tf2zekdwj	ymry3cg3xok	3	\N	\N	\N
f4amot355dj	or37h0ojd97	2	\N	\N	\N
f4amot355dj	ijeiw8vjxy8	3	\N	\N	\N
f4amot355dj	ymry3cg3xok	4	\N	\N	\N
iam40dae216	or37h0ojd97	3	\N	\N	\N
iam40dae216	ijeiw8vjxy8	4	\N	\N	\N
iam40dae216	ymry3cg3xok	5	\N	\N	\N
szg62voxazi	or37h0ojd97	4	\N	\N	\N
szg62voxazi	ijeiw8vjxy8	5	\N	\N	\N
szg62voxazi	ymry3cg3xok	6	\N	\N	\N
jkiooahp540	or37h0ojd97	5	\N	\N	\N
jkiooahp540	ijeiw8vjxy8	6	\N	\N	\N
jkiooahp540	ymry3cg3xok	7	\N	\N	\N
ndgk36ztoyy	or37h0ojd97	6	\N	\N	\N
ndgk36ztoyy	ijeiw8vjxy8	7	\N	\N	\N
ndgk36ztoyy	ymry3cg3xok	8	\N	\N	\N
a62axznlu5x	or37h0ojd97	7	\N	\N	\N
a62axznlu5x	ijeiw8vjxy8	8	\N	\N	\N
a62axznlu5x	ymry3cg3xok	9	\N	\N	\N
or37h0ojd97	or37h0ojd97	0	f	properties	\N
h0tf2zekdwj	or37h0ojd97	1	\N	\N	2
uj9cahk9uzq	uj9cahk9uzq	0	f	properties	\N
t9zhqlgl8bp	06xh3zz9ikp	2	\N	\N	\N
y05re45hs3a	06xh3zz9ikp	3	\N	\N	\N
dsptk8t0mbr	06xh3zz9ikp	4	\N	\N	\N
7qih7hq26ge	06xh3zz9ikp	5	\N	\N	\N
m9ru2u1mst5	06xh3zz9ikp	6	\N	\N	\N
t5a2xk7thpn	06xh3zz9ikp	7	\N	\N	\N
ra6axo18rlo	06xh3zz9ikp	8	\N	\N	\N
7peksipcht7	06xh3zz9ikp	9	\N	\N	\N
vxyfqljr7j6	06xh3zz9ikp	10	\N	\N	\N
v0xzwwlb3u7	06xh3zz9ikp	11	\N	\N	\N
eajx55rxxy3	06xh3zz9ikp	12	\N	\N	\N
8kxzcotfeb3	06xh3zz9ikp	13	\N	\N	\N
5z0xpoxz87w	06xh3zz9ikp	14	\N	\N	\N
o9klwv4nzei	06xh3zz9ikp	15	\N	\N	\N
ozzmhtdpth4	06xh3zz9ikp	16	\N	\N	\N
b8mogqkr3um	06xh3zz9ikp	17	\N	\N	\N
b56io1plq44	06xh3zz9ikp	18	\N	\N	\N
13qbrfhlbny	06xh3zz9ikp	19	\N	\N	\N
oqsecaif6am	06xh3zz9ikp	20	\N	\N	\N
63aby9t5qmb	06xh3zz9ikp	21	\N	\N	\N
mwrnryoju9y	06xh3zz9ikp	22	\N	\N	\N
nocobase-admin-menu	06xh3zz9ikp	23	\N	\N	\N
ytc4bcsv2fo	06xh3zz9ikp	1	\N	\N	1
tahclmi8sl1	tahclmi8sl1	0	f	properties	\N
096g2sd50x7	tahclmi8sl1	1	\N	\N	1
16s4kortrtf	16s4kortrtf	0	f	properties	\N
tahclmi8sl1	16s4kortrtf	1	\N	\N	1
096g2sd50x7	16s4kortrtf	2	\N	\N	1
h0tf2zekdwj	tahclmi8sl1	2	\N	\N	\N
h0tf2zekdwj	16s4kortrtf	3	\N	\N	\N
f4amot355dj	096g2sd50x7	2	\N	\N	\N
f4amot355dj	tahclmi8sl1	3	\N	\N	\N
f4amot355dj	16s4kortrtf	4	\N	\N	\N
iam40dae216	096g2sd50x7	3	\N	\N	\N
iam40dae216	tahclmi8sl1	4	\N	\N	\N
iam40dae216	16s4kortrtf	5	\N	\N	\N
szg62voxazi	096g2sd50x7	4	\N	\N	\N
szg62voxazi	tahclmi8sl1	5	\N	\N	\N
szg62voxazi	16s4kortrtf	6	\N	\N	\N
jkiooahp540	096g2sd50x7	5	\N	\N	\N
jkiooahp540	tahclmi8sl1	6	\N	\N	\N
jkiooahp540	16s4kortrtf	7	\N	\N	\N
ndgk36ztoyy	096g2sd50x7	6	\N	\N	\N
ndgk36ztoyy	tahclmi8sl1	7	\N	\N	\N
ndgk36ztoyy	16s4kortrtf	8	\N	\N	\N
a62axznlu5x	096g2sd50x7	7	\N	\N	\N
a62axznlu5x	tahclmi8sl1	8	\N	\N	\N
a62axznlu5x	16s4kortrtf	9	\N	\N	\N
096g2sd50x7	096g2sd50x7	0	f	properties	\N
h0tf2zekdwj	096g2sd50x7	1	\N	\N	4
swxvjglsevf	n07zn4dv9k3	21	\N	\N	\N
nocobase-admin-menu	ca500qzqwpk	20	\N	\N	\N
nocobase-admin-menu	3ziz6e0pemu	21	\N	\N	\N
nocobase-admin-menu	n07zn4dv9k3	22	\N	\N	\N
ca500qzqwpk	ca500qzqwpk	0	f	properties	\N
w2vajpu7d09	ca500qzqwpk	1	\N	\N	4
rl4zzyovnti	w1aflb6zk5u	2	\N	\N	\N
juylvd7o6f1	w1aflb6zk5u	3	\N	\N	\N
dd1t7s27fl2	w1aflb6zk5u	4	\N	\N	\N
hnj686cgnhr	uj9cahk9uzq	1	\N	\N	1
y05digxvovk	w1aflb6zk5u	5	\N	\N	\N
qlc8gbizzyo	w1aflb6zk5u	6	\N	\N	\N
kjig4l36dxf	w1aflb6zk5u	7	\N	\N	\N
w4ciktesp5j	w1aflb6zk5u	11	\N	\N	\N
tg2hn64ei8t	w1aflb6zk5u	12	\N	\N	\N
44890jxlzup	w1aflb6zk5u	13	\N	\N	\N
xa635tbvi5c	w1aflb6zk5u	14	\N	\N	\N
46p5wcng6sm	w1aflb6zk5u	8	\N	\N	\N
r3e9s9hvz53	w1aflb6zk5u	9	\N	\N	\N
ylyr9dd0a50	w1aflb6zk5u	10	\N	\N	\N
4dgysxrfq7o	w1aflb6zk5u	15	\N	\N	\N
sf8fl742bgm	w1aflb6zk5u	16	\N	\N	\N
sptin92gm5m	w1aflb6zk5u	17	\N	\N	\N
i0lnhtci4u6	w1aflb6zk5u	18	\N	\N	\N
swxvjglsevf	w1aflb6zk5u	19	\N	\N	\N
nocobase-admin-menu	w1aflb6zk5u	20	\N	\N	\N
w1aflb6zk5u	w1aflb6zk5u	0	f	properties	\N
w2vajpu7d09	w1aflb6zk5u	1	\N	\N	5
ajm7jf8wbgk	92aku8acnew	2	\N	\N	\N
w149la0utnx	92aku8acnew	17	\N	\N	\N
z02388u42s9	92aku8acnew	18	\N	\N	\N
llvsctq28hp	92aku8acnew	19	\N	\N	\N
8xvbgh18zfk	92aku8acnew	20	\N	\N	\N
2pij3wiepc4	92aku8acnew	21	\N	\N	\N
we414l1saan	92aku8acnew	22	\N	\N	\N
t4v2kcudvg5	92aku8acnew	13	\N	\N	\N
q9zjnv8mc9j	92aku8acnew	14	\N	\N	\N
nocobase-admin-menu	92aku8acnew	23	\N	\N	\N
7x6oyetmotw	92aku8acnew	3	\N	\N	\N
lmp1irsvgom	92aku8acnew	4	\N	\N	\N
3nhe9kyydb1	92aku8acnew	5	\N	\N	\N
1t1bel9ufqz	92aku8acnew	6	\N	\N	\N
oxj8sl5a4x4	92aku8acnew	7	\N	\N	\N
ew9dla1iwk8	92aku8acnew	8	\N	\N	\N
mn6suiqsq19	92aku8acnew	1	\N	\N	2
unopjyt9vno	unopjyt9vno	0	f	properties	\N
rl4zzyovnti	pir294lj4m7	3	\N	\N	\N
juylvd7o6f1	pir294lj4m7	4	\N	\N	\N
dd1t7s27fl2	pir294lj4m7	5	\N	\N	\N
y05digxvovk	pir294lj4m7	6	\N	\N	\N
qlc8gbizzyo	pir294lj4m7	7	\N	\N	\N
kjig4l36dxf	pir294lj4m7	8	\N	\N	\N
w4ciktesp5j	pir294lj4m7	12	\N	\N	\N
tg2hn64ei8t	pir294lj4m7	13	\N	\N	\N
44890jxlzup	pir294lj4m7	14	\N	\N	\N
xa635tbvi5c	pir294lj4m7	15	\N	\N	\N
46p5wcng6sm	pir294lj4m7	9	\N	\N	\N
r3e9s9hvz53	pir294lj4m7	10	\N	\N	\N
ylyr9dd0a50	pir294lj4m7	11	\N	\N	\N
4dgysxrfq7o	pir294lj4m7	16	\N	\N	\N
sf8fl742bgm	pir294lj4m7	17	\N	\N	\N
sptin92gm5m	pir294lj4m7	18	\N	\N	\N
i0lnhtci4u6	pir294lj4m7	19	\N	\N	\N
swxvjglsevf	pir294lj4m7	20	\N	\N	\N
nocobase-admin-menu	pir294lj4m7	21	\N	\N	\N
w2vajpu7d09	pir294lj4m7	2	\N	\N	\N
pir294lj4m7	pir294lj4m7	0	f	properties	\N
bmvfdpfnwm7	pir294lj4m7	1	\N	\N	2
evsjbnt3nj9	2iy67o2x7wb	1	\N	\N	1
rl4zzyovnti	evsjbnt3nj9	3	\N	\N	\N
rl4zzyovnti	2iy67o2x7wb	4	\N	\N	\N
juylvd7o6f1	evsjbnt3nj9	4	\N	\N	\N
juylvd7o6f1	2iy67o2x7wb	5	\N	\N	\N
dd1t7s27fl2	evsjbnt3nj9	5	\N	\N	\N
dd1t7s27fl2	2iy67o2x7wb	6	\N	\N	\N
y05digxvovk	evsjbnt3nj9	6	\N	\N	\N
y05digxvovk	2iy67o2x7wb	7	\N	\N	\N
qlc8gbizzyo	evsjbnt3nj9	7	\N	\N	\N
qlc8gbizzyo	2iy67o2x7wb	8	\N	\N	\N
kjig4l36dxf	evsjbnt3nj9	8	\N	\N	\N
kjig4l36dxf	2iy67o2x7wb	9	\N	\N	\N
w4ciktesp5j	evsjbnt3nj9	12	\N	\N	\N
w4ciktesp5j	2iy67o2x7wb	13	\N	\N	\N
tg2hn64ei8t	evsjbnt3nj9	13	\N	\N	\N
tg2hn64ei8t	2iy67o2x7wb	14	\N	\N	\N
44890jxlzup	evsjbnt3nj9	14	\N	\N	\N
44890jxlzup	2iy67o2x7wb	15	\N	\N	\N
xa635tbvi5c	evsjbnt3nj9	15	\N	\N	\N
xa635tbvi5c	2iy67o2x7wb	16	\N	\N	\N
46p5wcng6sm	evsjbnt3nj9	9	\N	\N	\N
46p5wcng6sm	2iy67o2x7wb	10	\N	\N	\N
r3e9s9hvz53	evsjbnt3nj9	10	\N	\N	\N
r3e9s9hvz53	2iy67o2x7wb	11	\N	\N	\N
ylyr9dd0a50	evsjbnt3nj9	11	\N	\N	\N
ylyr9dd0a50	2iy67o2x7wb	12	\N	\N	\N
4dgysxrfq7o	evsjbnt3nj9	16	\N	\N	\N
4dgysxrfq7o	2iy67o2x7wb	17	\N	\N	\N
sf8fl742bgm	evsjbnt3nj9	17	\N	\N	\N
sf8fl742bgm	2iy67o2x7wb	18	\N	\N	\N
sptin92gm5m	evsjbnt3nj9	18	\N	\N	\N
sptin92gm5m	2iy67o2x7wb	19	\N	\N	\N
i0lnhtci4u6	evsjbnt3nj9	19	\N	\N	\N
i0lnhtci4u6	2iy67o2x7wb	20	\N	\N	\N
swxvjglsevf	evsjbnt3nj9	20	\N	\N	\N
swxvjglsevf	2iy67o2x7wb	21	\N	\N	\N
nocobase-admin-menu	evsjbnt3nj9	21	\N	\N	\N
nocobase-admin-menu	2iy67o2x7wb	22	\N	\N	\N
a34yf2mk2rl	2iy67o2x7wb	2	\N	\N	\N
w2vajpu7d09	evsjbnt3nj9	2	\N	\N	\N
w2vajpu7d09	2iy67o2x7wb	3	\N	\N	\N
evsjbnt3nj9	evsjbnt3nj9	0	f	properties	\N
a34yf2mk2rl	evsjbnt3nj9	1	\N	\N	2
haxe3y5jbxr	92aku8acnew	9	\N	\N	\N
48d58aj2z3f	92aku8acnew	10	\N	\N	\N
dnlwo60b33v	92aku8acnew	11	\N	\N	\N
89nfa89tbje	92aku8acnew	12	\N	\N	\N
nc92u2m878d	92aku8acnew	15	\N	\N	\N
jiq42lrek0j	92aku8acnew	16	\N	\N	\N
ohr2n5borj4	ohr2n5borj4	0	f	properties	\N
unopjyt9vno	ohr2n5borj4	1	\N	\N	1
unopjyt9vno	dz7uttxfka4	2	\N	\N	\N
ohr2n5borj4	dz7uttxfka4	1	\N	\N	1
w149la0utnx	unopjyt9vno	15	\N	\N	\N
w149la0utnx	ohr2n5borj4	16	\N	\N	\N
w149la0utnx	dz7uttxfka4	17	\N	\N	\N
z02388u42s9	unopjyt9vno	16	\N	\N	\N
z02388u42s9	ohr2n5borj4	17	\N	\N	\N
z02388u42s9	dz7uttxfka4	18	\N	\N	\N
llvsctq28hp	unopjyt9vno	17	\N	\N	\N
llvsctq28hp	ohr2n5borj4	18	\N	\N	\N
llvsctq28hp	dz7uttxfka4	19	\N	\N	\N
8xvbgh18zfk	unopjyt9vno	18	\N	\N	\N
8xvbgh18zfk	ohr2n5borj4	19	\N	\N	\N
8xvbgh18zfk	dz7uttxfka4	20	\N	\N	\N
2pij3wiepc4	unopjyt9vno	19	\N	\N	\N
2pij3wiepc4	ohr2n5borj4	20	\N	\N	\N
2pij3wiepc4	dz7uttxfka4	21	\N	\N	\N
we414l1saan	unopjyt9vno	20	\N	\N	\N
we414l1saan	ohr2n5borj4	21	\N	\N	\N
we414l1saan	dz7uttxfka4	22	\N	\N	\N
t4v2kcudvg5	unopjyt9vno	11	\N	\N	\N
t4v2kcudvg5	ohr2n5borj4	12	\N	\N	\N
t4v2kcudvg5	dz7uttxfka4	13	\N	\N	\N
q9zjnv8mc9j	unopjyt9vno	12	\N	\N	\N
q9zjnv8mc9j	ohr2n5borj4	13	\N	\N	\N
q9zjnv8mc9j	dz7uttxfka4	14	\N	\N	\N
nocobase-admin-menu	unopjyt9vno	21	\N	\N	\N
asdvjj2f2ep	asdvjj2f2ep	0	f	properties	\N
jn9py3ik437	asdvjj2f2ep	1	\N	\N	1
ff39sktd5ow	ff39sktd5ow	0	f	properties	\N
asdvjj2f2ep	ff39sktd5ow	1	\N	\N	1
jn9py3ik437	ff39sktd5ow	2	\N	\N	1
w149la0utnx	jn9py3ik437	15	\N	\N	\N
w149la0utnx	asdvjj2f2ep	16	\N	\N	\N
w149la0utnx	ff39sktd5ow	17	\N	\N	\N
z02388u42s9	jn9py3ik437	16	\N	\N	\N
z02388u42s9	asdvjj2f2ep	17	\N	\N	\N
z02388u42s9	ff39sktd5ow	18	\N	\N	\N
llvsctq28hp	jn9py3ik437	17	\N	\N	\N
llvsctq28hp	asdvjj2f2ep	18	\N	\N	\N
llvsctq28hp	ff39sktd5ow	19	\N	\N	\N
8xvbgh18zfk	jn9py3ik437	18	\N	\N	\N
8xvbgh18zfk	asdvjj2f2ep	19	\N	\N	\N
8xvbgh18zfk	ff39sktd5ow	20	\N	\N	\N
2pij3wiepc4	jn9py3ik437	19	\N	\N	\N
2pij3wiepc4	asdvjj2f2ep	20	\N	\N	\N
2pij3wiepc4	ff39sktd5ow	21	\N	\N	\N
we414l1saan	jn9py3ik437	20	\N	\N	\N
we414l1saan	asdvjj2f2ep	21	\N	\N	\N
we414l1saan	ff39sktd5ow	22	\N	\N	\N
t4v2kcudvg5	jn9py3ik437	11	\N	\N	\N
t4v2kcudvg5	asdvjj2f2ep	12	\N	\N	\N
t4v2kcudvg5	ff39sktd5ow	13	\N	\N	\N
q9zjnv8mc9j	jn9py3ik437	12	\N	\N	\N
q9zjnv8mc9j	asdvjj2f2ep	13	\N	\N	\N
q9zjnv8mc9j	ff39sktd5ow	14	\N	\N	\N
nocobase-admin-menu	jn9py3ik437	21	\N	\N	\N
nocobase-admin-menu	asdvjj2f2ep	22	\N	\N	\N
nocobase-admin-menu	ff39sktd5ow	23	\N	\N	\N
7x6oyetmotw	asdvjj2f2ep	2	\N	\N	\N
7x6oyetmotw	ff39sktd5ow	3	\N	\N	\N
lmp1irsvgom	jn9py3ik437	2	\N	\N	\N
lmp1irsvgom	asdvjj2f2ep	3	\N	\N	\N
lmp1irsvgom	ff39sktd5ow	4	\N	\N	\N
3nhe9kyydb1	jn9py3ik437	3	\N	\N	\N
3nhe9kyydb1	asdvjj2f2ep	4	\N	\N	\N
3nhe9kyydb1	ff39sktd5ow	5	\N	\N	\N
1t1bel9ufqz	jn9py3ik437	4	\N	\N	\N
1t1bel9ufqz	asdvjj2f2ep	5	\N	\N	\N
1t1bel9ufqz	ff39sktd5ow	6	\N	\N	\N
oxj8sl5a4x4	jn9py3ik437	5	\N	\N	\N
hnj686cgnhr	hnj686cgnhr	0	f	properties	\N
qkanxqd13dl	jp7lvat0n6v	8	\N	\N	\N
mexjj7b1g93	ihct2s452fk	7	\N	\N	\N
mexjj7b1g93	nm1chep0bne	8	\N	\N	\N
mexjj7b1g93	jp7lvat0n6v	9	\N	\N	\N
pgsd6vdilnn	ihct2s452fk	8	\N	\N	\N
pgsd6vdilnn	nm1chep0bne	9	\N	\N	\N
pgsd6vdilnn	jp7lvat0n6v	10	\N	\N	\N
ypqs0x71ybe	ihct2s452fk	9	\N	\N	\N
ypqs0x71ybe	nm1chep0bne	10	\N	\N	\N
ypqs0x71ybe	jp7lvat0n6v	11	\N	\N	\N
u62y9zt7gwu	ihct2s452fk	10	\N	\N	\N
u62y9zt7gwu	nm1chep0bne	11	\N	\N	\N
u62y9zt7gwu	jp7lvat0n6v	12	\N	\N	\N
yc5x6qvg4mh	ihct2s452fk	11	\N	\N	\N
yc5x6qvg4mh	nm1chep0bne	12	\N	\N	\N
yc5x6qvg4mh	jp7lvat0n6v	13	\N	\N	\N
ao2a67rjlld	ihct2s452fk	12	\N	\N	\N
ao2a67rjlld	nm1chep0bne	13	\N	\N	\N
ao2a67rjlld	jp7lvat0n6v	14	\N	\N	\N
bwbd6lebhkb	ihct2s452fk	13	\N	\N	\N
bwbd6lebhkb	nm1chep0bne	14	\N	\N	\N
bwbd6lebhkb	jp7lvat0n6v	15	\N	\N	\N
m8tbcrs4z9t	ihct2s452fk	14	\N	\N	\N
m8tbcrs4z9t	nm1chep0bne	15	\N	\N	\N
m8tbcrs4z9t	jp7lvat0n6v	16	\N	\N	\N
q4dinm52meb	ihct2s452fk	15	\N	\N	\N
q4dinm52meb	nm1chep0bne	16	\N	\N	\N
q4dinm52meb	jp7lvat0n6v	17	\N	\N	\N
vs0l89adzhc	ihct2s452fk	16	\N	\N	\N
vs0l89adzhc	nm1chep0bne	17	\N	\N	\N
vs0l89adzhc	jp7lvat0n6v	18	\N	\N	\N
493pimn830r	ihct2s452fk	17	\N	\N	\N
493pimn830r	nm1chep0bne	18	\N	\N	\N
493pimn830r	jp7lvat0n6v	19	\N	\N	\N
nocobase-admin-menu	ihct2s452fk	18	\N	\N	\N
nocobase-admin-menu	nm1chep0bne	19	\N	\N	\N
nocobase-admin-menu	jp7lvat0n6v	20	\N	\N	\N
6b8gvniyido	6b8gvniyido	0	f	properties	\N
tmd80idiv6m	6b8gvniyido	1	\N	\N	1
8xvbgh18zfk	8xvbgh18zfk	0	t	properties	\N
2pij3wiepc4	8xvbgh18zfk	1	\N	\N	1
llvsctq28hp	llvsctq28hp	0	f	properties	\N
8xvbgh18zfk	llvsctq28hp	1	\N	\N	1
2pij3wiepc4	llvsctq28hp	2	\N	\N	1
we414l1saan	8xvbgh18zfk	2	\N	\N	\N
we414l1saan	llvsctq28hp	3	\N	\N	\N
scwpkth7he2	scwpkth7he2	0	f	properties	\N
6b8gvniyido	scwpkth7he2	1	\N	\N	1
tmd80idiv6m	scwpkth7he2	2	\N	\N	1
2pij3wiepc4	2pij3wiepc4	0	f	properties	\N
we414l1saan	2pij3wiepc4	1	\N	\N	1
w149la0utnx	w149la0utnx	0	f	properties	\N
z02388u42s9	w149la0utnx	1	\N	\N	1
n596xt7b4gz	6b8gvniyido	2	\N	\N	\N
n596xt7b4gz	scwpkth7he2	3	\N	\N	\N
0ypbdd2x5je	tmd80idiv6m	2	\N	\N	\N
0ypbdd2x5je	6b8gvniyido	3	\N	\N	\N
0ypbdd2x5je	scwpkth7he2	4	\N	\N	\N
i99shgxsfzv	tmd80idiv6m	3	\N	\N	\N
i99shgxsfzv	6b8gvniyido	4	\N	\N	\N
i99shgxsfzv	scwpkth7he2	5	\N	\N	\N
6e6up9qf6jw	tmd80idiv6m	4	\N	\N	\N
6e6up9qf6jw	6b8gvniyido	5	\N	\N	\N
6e6up9qf6jw	scwpkth7he2	6	\N	\N	\N
q5sp3fyrz47	tmd80idiv6m	5	\N	\N	\N
q5sp3fyrz47	6b8gvniyido	6	\N	\N	\N
q5sp3fyrz47	scwpkth7he2	7	\N	\N	\N
qkanxqd13dl	tmd80idiv6m	6	\N	\N	\N
qkanxqd13dl	6b8gvniyido	7	\N	\N	\N
qkanxqd13dl	scwpkth7he2	8	\N	\N	\N
mexjj7b1g93	tmd80idiv6m	7	\N	\N	\N
mexjj7b1g93	6b8gvniyido	8	\N	\N	\N
mexjj7b1g93	scwpkth7he2	9	\N	\N	\N
pgsd6vdilnn	tmd80idiv6m	8	\N	\N	\N
pgsd6vdilnn	6b8gvniyido	9	\N	\N	\N
pgsd6vdilnn	scwpkth7he2	10	\N	\N	\N
ypqs0x71ybe	tmd80idiv6m	9	\N	\N	\N
ypqs0x71ybe	6b8gvniyido	10	\N	\N	\N
ypqs0x71ybe	scwpkth7he2	11	\N	\N	\N
u62y9zt7gwu	tmd80idiv6m	10	\N	\N	\N
u62y9zt7gwu	6b8gvniyido	11	\N	\N	\N
u62y9zt7gwu	scwpkth7he2	12	\N	\N	\N
yc5x6qvg4mh	tmd80idiv6m	11	\N	\N	\N
yc5x6qvg4mh	6b8gvniyido	12	\N	\N	\N
tjanawnnfnl	tjanawnnfnl	0	f	properties	\N
f4amot355dj	tjanawnnfnl	2	\N	\N	\N
iam40dae216	tjanawnnfnl	3	\N	\N	\N
szg62voxazi	tjanawnnfnl	4	\N	\N	\N
jkiooahp540	tjanawnnfnl	5	\N	\N	\N
ndgk36ztoyy	tjanawnnfnl	6	\N	\N	\N
a62axznlu5x	tjanawnnfnl	7	\N	\N	\N
q9zjnv8mc9j	q9zjnv8mc9j	0	f	properties	\N
zy0akbfpvko	tjanawnnfnl	1	\N	\N	1
oxj8sl5a4x4	asdvjj2f2ep	6	\N	\N	\N
c5ha41uevsk	068ltvadyqz	2	\N	\N	\N
z02388u42s9	1t1bel9ufqz	12	\N	\N	\N
z02388u42s9	3nhe9kyydb1	13	\N	\N	\N
jiq42lrek0j	jiq42lrek0j	0	f	properties	\N
w149la0utnx	jiq42lrek0j	1	\N	\N	1
z02388u42s9	jiq42lrek0j	2	\N	\N	1
c6mpmcq8sh2	c6mpmcq8sh2	0	f	properties	\N
jiq42lrek0j	c6mpmcq8sh2	1	\N	\N	1
w149la0utnx	c6mpmcq8sh2	2	\N	\N	1
z02388u42s9	c6mpmcq8sh2	3	\N	\N	1
nc92u2m878d	nc92u2m878d	0	f	properties	\N
jiq42lrek0j	nc92u2m878d	1	\N	\N	2
w149la0utnx	nc92u2m878d	2	\N	\N	2
z02388u42s9	nc92u2m878d	3	\N	\N	2
3fffemef0cp	r7obcvpr4jw	2	\N	\N	\N
3fffemef0cp	068ltvadyqz	3	\N	\N	\N
baejb3hqiri	r7obcvpr4jw	3	\N	\N	\N
baejb3hqiri	068ltvadyqz	4	\N	\N	\N
t4v2kcudvg5	t4v2kcudvg5	0	f	properties	\N
q9zjnv8mc9j	t4v2kcudvg5	1	\N	\N	1
zvja1suwswo	r7obcvpr4jw	4	\N	\N	\N
zvja1suwswo	068ltvadyqz	5	\N	\N	\N
1cnwu64uyw3	r7obcvpr4jw	5	\N	\N	\N
1cnwu64uyw3	068ltvadyqz	6	\N	\N	\N
llvsctq28hp	w149la0utnx	2	\N	\N	\N
llvsctq28hp	jiq42lrek0j	3	\N	\N	\N
llvsctq28hp	c6mpmcq8sh2	4	\N	\N	\N
llvsctq28hp	nc92u2m878d	4	\N	\N	\N
zwh6db27axk	r7obcvpr4jw	6	\N	\N	\N
zwh6db27axk	068ltvadyqz	7	\N	\N	\N
8xvbgh18zfk	z02388u42s9	2	\N	\N	\N
8xvbgh18zfk	w149la0utnx	3	\N	\N	\N
8xvbgh18zfk	jiq42lrek0j	4	\N	\N	\N
8xvbgh18zfk	c6mpmcq8sh2	5	\N	\N	\N
8xvbgh18zfk	nc92u2m878d	5	\N	\N	\N
oxj8sl5a4x4	ff39sktd5ow	7	\N	\N	\N
ew9dla1iwk8	jn9py3ik437	6	\N	\N	\N
2pij3wiepc4	z02388u42s9	3	\N	\N	\N
2pij3wiepc4	w149la0utnx	4	\N	\N	\N
2pij3wiepc4	jiq42lrek0j	5	\N	\N	\N
2pij3wiepc4	c6mpmcq8sh2	6	\N	\N	\N
2pij3wiepc4	nc92u2m878d	6	\N	\N	\N
ew9dla1iwk8	asdvjj2f2ep	7	\N	\N	\N
ew9dla1iwk8	ff39sktd5ow	8	\N	\N	\N
we414l1saan	z02388u42s9	4	\N	\N	\N
we414l1saan	w149la0utnx	5	\N	\N	\N
we414l1saan	jiq42lrek0j	6	\N	\N	\N
we414l1saan	c6mpmcq8sh2	7	\N	\N	\N
we414l1saan	nc92u2m878d	7	\N	\N	\N
haxe3y5jbxr	jn9py3ik437	7	\N	\N	\N
haxe3y5jbxr	asdvjj2f2ep	8	\N	\N	\N
haxe3y5jbxr	ff39sktd5ow	9	\N	\N	\N
48d58aj2z3f	jn9py3ik437	8	\N	\N	\N
48d58aj2z3f	asdvjj2f2ep	9	\N	\N	\N
48d58aj2z3f	ff39sktd5ow	10	\N	\N	\N
dnlwo60b33v	jn9py3ik437	9	\N	\N	\N
dnlwo60b33v	asdvjj2f2ep	10	\N	\N	\N
dnlwo60b33v	ff39sktd5ow	11	\N	\N	\N
z02388u42s9	z02388u42s9	0	f	properties	\N
llvsctq28hp	z02388u42s9	1	\N	\N	1
hnaxt3uhbf5	hnaxt3uhbf5	0	f	properties	\N
cqmi48x5af4	hnaxt3uhbf5	1	\N	\N	1
nc92u2m878d	hnaxt3uhbf5	2	\N	\N	\N
jiq42lrek0j	cqmi48x5af4	2	\N	\N	\N
jiq42lrek0j	hnaxt3uhbf5	3	\N	\N	\N
w149la0utnx	cqmi48x5af4	3	\N	\N	\N
w149la0utnx	hnaxt3uhbf5	4	\N	\N	\N
z02388u42s9	cqmi48x5af4	4	\N	\N	\N
z02388u42s9	hnaxt3uhbf5	5	\N	\N	\N
llvsctq28hp	cqmi48x5af4	5	\N	\N	\N
llvsctq28hp	hnaxt3uhbf5	6	\N	\N	\N
8xvbgh18zfk	cqmi48x5af4	6	\N	\N	\N
8xvbgh18zfk	hnaxt3uhbf5	7	\N	\N	\N
2pij3wiepc4	cqmi48x5af4	7	\N	\N	\N
2pij3wiepc4	hnaxt3uhbf5	8	\N	\N	\N
we414l1saan	cqmi48x5af4	8	\N	\N	\N
we414l1saan	hnaxt3uhbf5	9	\N	\N	\N
89nfa89tbje	jn9py3ik437	10	\N	\N	\N
cqmi48x5af4	cqmi48x5af4	0	f	properties	\N
nc92u2m878d	cqmi48x5af4	1	\N	\N	2
04h4z2y4t0n	04h4z2y4t0n	0	f	properties	\N
17dq5190uui	04h4z2y4t0n	1	\N	\N	1
z02388u42s9	lmp1irsvgom	14	\N	\N	\N
z02388u42s9	7x6oyetmotw	15	\N	\N	\N
z02388u42s9	vieqoc3iqo8	15	\N	\N	\N
llvsctq28hp	oxj8sl5a4x4	12	\N	\N	\N
llvsctq28hp	1t1bel9ufqz	13	\N	\N	\N
llvsctq28hp	3nhe9kyydb1	14	\N	\N	\N
llvsctq28hp	lmp1irsvgom	15	\N	\N	\N
llvsctq28hp	7x6oyetmotw	16	\N	\N	\N
llvsctq28hp	vieqoc3iqo8	16	\N	\N	\N
8xvbgh18zfk	oxj8sl5a4x4	13	\N	\N	\N
8xvbgh18zfk	1t1bel9ufqz	14	\N	\N	\N
8xvbgh18zfk	3nhe9kyydb1	15	\N	\N	\N
8xvbgh18zfk	lmp1irsvgom	16	\N	\N	\N
8xvbgh18zfk	7x6oyetmotw	17	\N	\N	\N
8xvbgh18zfk	vieqoc3iqo8	17	\N	\N	\N
2pij3wiepc4	oxj8sl5a4x4	14	\N	\N	\N
2pij3wiepc4	1t1bel9ufqz	15	\N	\N	\N
2pij3wiepc4	3nhe9kyydb1	16	\N	\N	\N
2pij3wiepc4	lmp1irsvgom	17	\N	\N	\N
2pij3wiepc4	7x6oyetmotw	18	\N	\N	\N
2pij3wiepc4	vieqoc3iqo8	18	\N	\N	\N
we414l1saan	oxj8sl5a4x4	15	\N	\N	\N
we414l1saan	1t1bel9ufqz	16	\N	\N	\N
we414l1saan	3nhe9kyydb1	17	\N	\N	\N
dy05mp2bbzv	l122naqh3xo	3	\N	\N	2
a529wwd0i2s	l122naqh3xo	4	\N	\N	2
c9jng183okr	dy05mp2bbzv	2	\N	\N	\N
c9jng183okr	1uaumvtamrv	3	\N	\N	\N
c9jng183okr	36ljw6t1ji6	4	\N	\N	\N
c9jng183okr	nesj0yhxnjz	5	\N	\N	\N
c9jng183okr	l122naqh3xo	5	\N	\N	\N
14ah27jh466	a529wwd0i2s	2	\N	\N	\N
14ah27jh466	dy05mp2bbzv	3	\N	\N	\N
14ah27jh466	1uaumvtamrv	4	\N	\N	\N
14ah27jh466	36ljw6t1ji6	5	\N	\N	\N
14ah27jh466	nesj0yhxnjz	6	\N	\N	\N
14ah27jh466	l122naqh3xo	6	\N	\N	\N
5r6schkvw42	a529wwd0i2s	3	\N	\N	\N
5r6schkvw42	dy05mp2bbzv	4	\N	\N	\N
5r6schkvw42	1uaumvtamrv	5	\N	\N	\N
5r6schkvw42	36ljw6t1ji6	6	\N	\N	\N
5r6schkvw42	nesj0yhxnjz	7	\N	\N	\N
5r6schkvw42	l122naqh3xo	7	\N	\N	\N
oq8pk1fas1b	a529wwd0i2s	4	\N	\N	\N
oq8pk1fas1b	dy05mp2bbzv	5	\N	\N	\N
oq8pk1fas1b	1uaumvtamrv	6	\N	\N	\N
oq8pk1fas1b	36ljw6t1ji6	7	\N	\N	\N
oq8pk1fas1b	nesj0yhxnjz	8	\N	\N	\N
oq8pk1fas1b	l122naqh3xo	8	\N	\N	\N
qar6tcv8yiy	a529wwd0i2s	5	\N	\N	\N
qar6tcv8yiy	dy05mp2bbzv	6	\N	\N	\N
qar6tcv8yiy	1uaumvtamrv	7	\N	\N	\N
qar6tcv8yiy	36ljw6t1ji6	8	\N	\N	\N
qar6tcv8yiy	nesj0yhxnjz	9	\N	\N	\N
qar6tcv8yiy	l122naqh3xo	9	\N	\N	\N
c6mpmcq8sh2	a529wwd0i2s	6	\N	\N	\N
c6mpmcq8sh2	dy05mp2bbzv	7	\N	\N	\N
c6mpmcq8sh2	1uaumvtamrv	8	\N	\N	\N
c6mpmcq8sh2	36ljw6t1ji6	9	\N	\N	\N
c6mpmcq8sh2	nesj0yhxnjz	10	\N	\N	\N
c6mpmcq8sh2	l122naqh3xo	10	\N	\N	\N
jiq42lrek0j	a529wwd0i2s	7	\N	\N	\N
jiq42lrek0j	dy05mp2bbzv	8	\N	\N	\N
jiq42lrek0j	1uaumvtamrv	9	\N	\N	\N
jiq42lrek0j	36ljw6t1ji6	10	\N	\N	\N
jiq42lrek0j	nesj0yhxnjz	11	\N	\N	\N
jiq42lrek0j	l122naqh3xo	11	\N	\N	\N
w149la0utnx	a529wwd0i2s	8	\N	\N	\N
w149la0utnx	dy05mp2bbzv	9	\N	\N	\N
w149la0utnx	1uaumvtamrv	10	\N	\N	\N
w149la0utnx	36ljw6t1ji6	11	\N	\N	\N
w149la0utnx	nesj0yhxnjz	12	\N	\N	\N
w149la0utnx	l122naqh3xo	12	\N	\N	\N
z02388u42s9	a529wwd0i2s	9	\N	\N	\N
z02388u42s9	dy05mp2bbzv	10	\N	\N	\N
z02388u42s9	1uaumvtamrv	11	\N	\N	\N
z02388u42s9	36ljw6t1ji6	12	\N	\N	\N
z02388u42s9	nesj0yhxnjz	13	\N	\N	\N
z02388u42s9	l122naqh3xo	13	\N	\N	\N
llvsctq28hp	a529wwd0i2s	10	\N	\N	\N
llvsctq28hp	dy05mp2bbzv	11	\N	\N	\N
llvsctq28hp	1uaumvtamrv	12	\N	\N	\N
llvsctq28hp	36ljw6t1ji6	13	\N	\N	\N
llvsctq28hp	nesj0yhxnjz	14	\N	\N	\N
llvsctq28hp	l122naqh3xo	14	\N	\N	\N
8xvbgh18zfk	a529wwd0i2s	11	\N	\N	\N
8xvbgh18zfk	dy05mp2bbzv	12	\N	\N	\N
8xvbgh18zfk	1uaumvtamrv	13	\N	\N	\N
8xvbgh18zfk	36ljw6t1ji6	14	\N	\N	\N
8xvbgh18zfk	nesj0yhxnjz	15	\N	\N	\N
8xvbgh18zfk	l122naqh3xo	15	\N	\N	\N
2pij3wiepc4	a529wwd0i2s	12	\N	\N	\N
2pij3wiepc4	dy05mp2bbzv	13	\N	\N	\N
2pij3wiepc4	1uaumvtamrv	14	\N	\N	\N
2pij3wiepc4	36ljw6t1ji6	15	\N	\N	\N
2pij3wiepc4	nesj0yhxnjz	16	\N	\N	\N
2pij3wiepc4	l122naqh3xo	16	\N	\N	\N
we414l1saan	a529wwd0i2s	13	\N	\N	\N
we414l1saan	dy05mp2bbzv	14	\N	\N	\N
we414l1saan	1uaumvtamrv	15	\N	\N	\N
we414l1saan	36ljw6t1ji6	16	\N	\N	\N
we414l1saan	nesj0yhxnjz	17	\N	\N	\N
we414l1saan	l122naqh3xo	17	\N	\N	\N
5b0fu481dm6	r7obcvpr4jw	7	\N	\N	\N
5b0fu481dm6	068ltvadyqz	8	\N	\N	\N
1dvfg1afm18	r7obcvpr4jw	8	\N	\N	\N
1dvfg1afm18	068ltvadyqz	9	\N	\N	\N
q3rv0rnfki7	r7obcvpr4jw	9	\N	\N	\N
q3rv0rnfki7	068ltvadyqz	10	\N	\N	\N
c9jng183okr	a529wwd0i2s	1	\N	\N	1
nocobase-admin-menu	q9zjnv8mc9j	9	\N	\N	\N
sbqwil5ak06	sbqwil5ak06	0	f	properties	\N
sar3oe26nhy	sbqwil5ak06	1	\N	\N	1
dpybyp9mp99	dpybyp9mp99	0	f	properties	\N
sbqwil5ak06	dpybyp9mp99	1	\N	\N	1
sar3oe26nhy	dpybyp9mp99	2	\N	\N	1
nesj0yhxnjz	sbqwil5ak06	2	\N	\N	\N
nesj0yhxnjz	dpybyp9mp99	3	\N	\N	\N
36ljw6t1ji6	sar3oe26nhy	2	\N	\N	\N
36ljw6t1ji6	sbqwil5ak06	3	\N	\N	\N
36ljw6t1ji6	dpybyp9mp99	4	\N	\N	\N
1uaumvtamrv	sar3oe26nhy	3	\N	\N	\N
1uaumvtamrv	sbqwil5ak06	4	\N	\N	\N
1uaumvtamrv	dpybyp9mp99	5	\N	\N	\N
dy05mp2bbzv	sar3oe26nhy	4	\N	\N	\N
dy05mp2bbzv	sbqwil5ak06	5	\N	\N	\N
dy05mp2bbzv	dpybyp9mp99	6	\N	\N	\N
a529wwd0i2s	sar3oe26nhy	5	\N	\N	\N
a529wwd0i2s	sbqwil5ak06	6	\N	\N	\N
a529wwd0i2s	dpybyp9mp99	7	\N	\N	\N
c9jng183okr	sar3oe26nhy	6	\N	\N	\N
c9jng183okr	sbqwil5ak06	7	\N	\N	\N
c9jng183okr	dpybyp9mp99	8	\N	\N	\N
14ah27jh466	sar3oe26nhy	7	\N	\N	\N
14ah27jh466	sbqwil5ak06	8	\N	\N	\N
14ah27jh466	dpybyp9mp99	9	\N	\N	\N
5r6schkvw42	sar3oe26nhy	8	\N	\N	\N
5r6schkvw42	sbqwil5ak06	9	\N	\N	\N
5r6schkvw42	dpybyp9mp99	10	\N	\N	\N
oq8pk1fas1b	sar3oe26nhy	9	\N	\N	\N
oq8pk1fas1b	sbqwil5ak06	10	\N	\N	\N
oq8pk1fas1b	dpybyp9mp99	11	\N	\N	\N
qar6tcv8yiy	sar3oe26nhy	10	\N	\N	\N
qar6tcv8yiy	sbqwil5ak06	11	\N	\N	\N
qar6tcv8yiy	dpybyp9mp99	12	\N	\N	\N
c6mpmcq8sh2	sar3oe26nhy	11	\N	\N	\N
c6mpmcq8sh2	sbqwil5ak06	12	\N	\N	\N
c6mpmcq8sh2	dpybyp9mp99	13	\N	\N	\N
jiq42lrek0j	sar3oe26nhy	12	\N	\N	\N
jiq42lrek0j	sbqwil5ak06	13	\N	\N	\N
jiq42lrek0j	dpybyp9mp99	14	\N	\N	\N
w149la0utnx	sar3oe26nhy	13	\N	\N	\N
w149la0utnx	sbqwil5ak06	14	\N	\N	\N
w149la0utnx	dpybyp9mp99	15	\N	\N	\N
z02388u42s9	sar3oe26nhy	14	\N	\N	\N
z02388u42s9	sbqwil5ak06	15	\N	\N	\N
z02388u42s9	dpybyp9mp99	16	\N	\N	\N
nesj0yhxnjz	sar3oe26nhy	1	\N	\N	1
w4ciktesp5j	r7obcvpr4jw	10	\N	\N	\N
llvsctq28hp	sar3oe26nhy	15	\N	\N	\N
llvsctq28hp	sbqwil5ak06	16	\N	\N	\N
llvsctq28hp	dpybyp9mp99	17	\N	\N	\N
8xvbgh18zfk	sar3oe26nhy	16	\N	\N	\N
8xvbgh18zfk	sbqwil5ak06	17	\N	\N	\N
8xvbgh18zfk	dpybyp9mp99	18	\N	\N	\N
2pij3wiepc4	sar3oe26nhy	17	\N	\N	\N
2pij3wiepc4	sbqwil5ak06	18	\N	\N	\N
2pij3wiepc4	dpybyp9mp99	19	\N	\N	\N
we414l1saan	sar3oe26nhy	18	\N	\N	\N
we414l1saan	sbqwil5ak06	19	\N	\N	\N
we414l1saan	dpybyp9mp99	20	\N	\N	\N
w4ciktesp5j	068ltvadyqz	11	\N	\N	\N
tg2hn64ei8t	r7obcvpr4jw	11	\N	\N	\N
tg2hn64ei8t	068ltvadyqz	12	\N	\N	\N
sar3oe26nhy	sar3oe26nhy	0	f	properties	\N
cstsfoq8ikx	cstsfoq8ikx	0	f	properties	\N
63gg7k4it9i	cstsfoq8ikx	1	\N	\N	1
fjzwuvjm63z	fjzwuvjm63z	0	f	properties	\N
cstsfoq8ikx	fjzwuvjm63z	1	\N	\N	1
63gg7k4it9i	fjzwuvjm63z	2	\N	\N	1
nesj0yhxnjz	cstsfoq8ikx	2	\N	\N	\N
nesj0yhxnjz	fjzwuvjm63z	3	\N	\N	\N
36ljw6t1ji6	63gg7k4it9i	2	\N	\N	\N
36ljw6t1ji6	cstsfoq8ikx	3	\N	\N	\N
36ljw6t1ji6	fjzwuvjm63z	4	\N	\N	\N
1uaumvtamrv	63gg7k4it9i	3	\N	\N	\N
1uaumvtamrv	cstsfoq8ikx	4	\N	\N	\N
1uaumvtamrv	fjzwuvjm63z	5	\N	\N	\N
dy05mp2bbzv	63gg7k4it9i	4	\N	\N	\N
dy05mp2bbzv	cstsfoq8ikx	5	\N	\N	\N
dy05mp2bbzv	fjzwuvjm63z	6	\N	\N	\N
a529wwd0i2s	63gg7k4it9i	5	\N	\N	\N
a529wwd0i2s	cstsfoq8ikx	6	\N	\N	\N
a529wwd0i2s	fjzwuvjm63z	7	\N	\N	\N
c9jng183okr	63gg7k4it9i	6	\N	\N	\N
c9jng183okr	cstsfoq8ikx	7	\N	\N	\N
c9jng183okr	fjzwuvjm63z	8	\N	\N	\N
14ah27jh466	63gg7k4it9i	7	\N	\N	\N
14ah27jh466	cstsfoq8ikx	8	\N	\N	\N
14ah27jh466	fjzwuvjm63z	9	\N	\N	\N
5r6schkvw42	63gg7k4it9i	8	\N	\N	\N
5r6schkvw42	cstsfoq8ikx	9	\N	\N	\N
5r6schkvw42	fjzwuvjm63z	10	\N	\N	\N
oq8pk1fas1b	63gg7k4it9i	9	\N	\N	\N
oq8pk1fas1b	cstsfoq8ikx	10	\N	\N	\N
oq8pk1fas1b	fjzwuvjm63z	11	\N	\N	\N
qar6tcv8yiy	63gg7k4it9i	10	\N	\N	\N
qar6tcv8yiy	cstsfoq8ikx	11	\N	\N	\N
qar6tcv8yiy	fjzwuvjm63z	12	\N	\N	\N
c6mpmcq8sh2	63gg7k4it9i	11	\N	\N	\N
c6mpmcq8sh2	cstsfoq8ikx	12	\N	\N	\N
c6mpmcq8sh2	fjzwuvjm63z	13	\N	\N	\N
jiq42lrek0j	63gg7k4it9i	12	\N	\N	\N
jiq42lrek0j	cstsfoq8ikx	13	\N	\N	\N
jiq42lrek0j	fjzwuvjm63z	14	\N	\N	\N
w149la0utnx	63gg7k4it9i	13	\N	\N	\N
w149la0utnx	cstsfoq8ikx	14	\N	\N	\N
w149la0utnx	fjzwuvjm63z	15	\N	\N	\N
z02388u42s9	63gg7k4it9i	14	\N	\N	\N
z02388u42s9	cstsfoq8ikx	15	\N	\N	\N
z02388u42s9	fjzwuvjm63z	16	\N	\N	\N
llvsctq28hp	63gg7k4it9i	15	\N	\N	\N
llvsctq28hp	cstsfoq8ikx	16	\N	\N	\N
llvsctq28hp	fjzwuvjm63z	17	\N	\N	\N
8xvbgh18zfk	63gg7k4it9i	16	\N	\N	\N
8xvbgh18zfk	cstsfoq8ikx	17	\N	\N	\N
8xvbgh18zfk	fjzwuvjm63z	18	\N	\N	\N
2pij3wiepc4	63gg7k4it9i	17	\N	\N	\N
2pij3wiepc4	cstsfoq8ikx	18	\N	\N	\N
2pij3wiepc4	fjzwuvjm63z	19	\N	\N	\N
we414l1saan	63gg7k4it9i	18	\N	\N	\N
we414l1saan	cstsfoq8ikx	19	\N	\N	\N
we414l1saan	fjzwuvjm63z	20	\N	\N	\N
44890jxlzup	r7obcvpr4jw	12	\N	\N	\N
44890jxlzup	068ltvadyqz	13	\N	\N	\N
xa635tbvi5c	r7obcvpr4jw	13	\N	\N	\N
63gg7k4it9i	63gg7k4it9i	0	f	properties	\N
nesj0yhxnjz	63gg7k4it9i	1	\N	\N	2
okop6i9v7hc	okop6i9v7hc	0	f	properties	\N
32r1y0ys2a2	okop6i9v7hc	1	\N	\N	1
nikbm0jtaz4	nikbm0jtaz4	0	f	properties	\N
okop6i9v7hc	nikbm0jtaz4	1	\N	\N	1
32r1y0ys2a2	nikbm0jtaz4	2	\N	\N	1
nesj0yhxnjz	okop6i9v7hc	2	\N	\N	\N
nesj0yhxnjz	nikbm0jtaz4	3	\N	\N	\N
36ljw6t1ji6	32r1y0ys2a2	2	\N	\N	\N
36ljw6t1ji6	okop6i9v7hc	3	\N	\N	\N
36ljw6t1ji6	nikbm0jtaz4	4	\N	\N	\N
1uaumvtamrv	32r1y0ys2a2	3	\N	\N	\N
1uaumvtamrv	okop6i9v7hc	4	\N	\N	\N
1uaumvtamrv	nikbm0jtaz4	5	\N	\N	\N
dy05mp2bbzv	32r1y0ys2a2	4	\N	\N	\N
dy05mp2bbzv	okop6i9v7hc	5	\N	\N	\N
dy05mp2bbzv	nikbm0jtaz4	6	\N	\N	\N
a529wwd0i2s	32r1y0ys2a2	5	\N	\N	\N
a529wwd0i2s	okop6i9v7hc	6	\N	\N	\N
a529wwd0i2s	nikbm0jtaz4	7	\N	\N	\N
c9jng183okr	32r1y0ys2a2	6	\N	\N	\N
c9jng183okr	okop6i9v7hc	7	\N	\N	\N
c9jng183okr	nikbm0jtaz4	8	\N	\N	\N
14ah27jh466	32r1y0ys2a2	7	\N	\N	\N
14ah27jh466	okop6i9v7hc	8	\N	\N	\N
14ah27jh466	nikbm0jtaz4	9	\N	\N	\N
5r6schkvw42	32r1y0ys2a2	8	\N	\N	\N
5r6schkvw42	okop6i9v7hc	9	\N	\N	\N
5r6schkvw42	nikbm0jtaz4	10	\N	\N	\N
oq8pk1fas1b	32r1y0ys2a2	9	\N	\N	\N
oq8pk1fas1b	okop6i9v7hc	10	\N	\N	\N
oq8pk1fas1b	nikbm0jtaz4	11	\N	\N	\N
qar6tcv8yiy	32r1y0ys2a2	10	\N	\N	\N
qar6tcv8yiy	okop6i9v7hc	11	\N	\N	\N
qar6tcv8yiy	nikbm0jtaz4	12	\N	\N	\N
c6mpmcq8sh2	32r1y0ys2a2	11	\N	\N	\N
c6mpmcq8sh2	okop6i9v7hc	12	\N	\N	\N
c6mpmcq8sh2	nikbm0jtaz4	13	\N	\N	\N
jiq42lrek0j	32r1y0ys2a2	12	\N	\N	\N
jiq42lrek0j	okop6i9v7hc	13	\N	\N	\N
jiq42lrek0j	nikbm0jtaz4	14	\N	\N	\N
w149la0utnx	32r1y0ys2a2	13	\N	\N	\N
w149la0utnx	okop6i9v7hc	14	\N	\N	\N
w149la0utnx	nikbm0jtaz4	15	\N	\N	\N
z02388u42s9	32r1y0ys2a2	14	\N	\N	\N
z02388u42s9	okop6i9v7hc	15	\N	\N	\N
z02388u42s9	nikbm0jtaz4	16	\N	\N	\N
llvsctq28hp	32r1y0ys2a2	15	\N	\N	\N
llvsctq28hp	okop6i9v7hc	16	\N	\N	\N
llvsctq28hp	nikbm0jtaz4	17	\N	\N	\N
8xvbgh18zfk	32r1y0ys2a2	16	\N	\N	\N
8xvbgh18zfk	okop6i9v7hc	17	\N	\N	\N
32r1y0ys2a2	32r1y0ys2a2	0	f	properties	\N
nesj0yhxnjz	32r1y0ys2a2	1	\N	\N	3
nocobase-admin-menu	t4v2kcudvg5	10	\N	\N	\N
xa635tbvi5c	068ltvadyqz	14	\N	\N	\N
8xvbgh18zfk	nikbm0jtaz4	18	\N	\N	\N
2pij3wiepc4	32r1y0ys2a2	17	\N	\N	\N
2pij3wiepc4	okop6i9v7hc	18	\N	\N	\N
2pij3wiepc4	nikbm0jtaz4	19	\N	\N	\N
we414l1saan	32r1y0ys2a2	18	\N	\N	\N
we414l1saan	okop6i9v7hc	19	\N	\N	\N
we414l1saan	nikbm0jtaz4	20	\N	\N	\N
4dgysxrfq7o	r7obcvpr4jw	14	\N	\N	\N
4dgysxrfq7o	068ltvadyqz	15	\N	\N	\N
sf8fl742bgm	r7obcvpr4jw	15	\N	\N	\N
sf8fl742bgm	068ltvadyqz	16	\N	\N	\N
sptin92gm5m	r7obcvpr4jw	16	\N	\N	\N
sptin92gm5m	068ltvadyqz	17	\N	\N	\N
i0lnhtci4u6	r7obcvpr4jw	17	\N	\N	\N
i0lnhtci4u6	068ltvadyqz	18	\N	\N	\N
nocobase-admin-menu	89nfa89tbje	11	\N	\N	\N
nocobase-admin-menu	dnlwo60b33v	12	\N	\N	\N
nocobase-admin-menu	48d58aj2z3f	13	\N	\N	\N
nocobase-admin-menu	haxe3y5jbxr	14	\N	\N	\N
nocobase-admin-menu	ew9dla1iwk8	15	\N	\N	\N
nocobase-admin-menu	ip2da8grdsg	9	\N	\N	\N
nocobase-admin-menu	pyyifyhng5d	10	\N	\N	\N
nocobase-admin-menu	qar6tcv8yiy	9	\N	\N	\N
nocobase-admin-menu	oq8pk1fas1b	10	\N	\N	\N
nocobase-admin-menu	5r6schkvw42	11	\N	\N	\N
nocobase-admin-menu	14ah27jh466	12	\N	\N	\N
nocobase-admin-menu	c9jng183okr	13	\N	\N	\N
swxvjglsevf	r7obcvpr4jw	18	\N	\N	\N
nocobase-admin-menu	2pij3wiepc4	2	\N	\N	\N
nocobase-admin-menu	8xvbgh18zfk	3	\N	\N	\N
nocobase-admin-menu	llvsctq28hp	4	\N	\N	\N
nocobase-admin-menu	z02388u42s9	5	\N	\N	\N
nocobase-admin-menu	w149la0utnx	6	\N	\N	\N
nocobase-admin-menu	jiq42lrek0j	7	\N	\N	\N
nocobase-admin-menu	c6mpmcq8sh2	8	\N	\N	\N
nocobase-admin-menu	nc92u2m878d	8	\N	\N	\N
nocobase-admin-menu	cqmi48x5af4	9	\N	\N	\N
nocobase-admin-menu	hnaxt3uhbf5	10	\N	\N	\N
nocobase-admin-menu	a529wwd0i2s	14	\N	\N	\N
nocobase-admin-menu	dy05mp2bbzv	15	\N	\N	\N
nocobase-admin-menu	1uaumvtamrv	16	\N	\N	\N
nocobase-admin-menu	36ljw6t1ji6	17	\N	\N	\N
nocobase-admin-menu	nesj0yhxnjz	18	\N	\N	\N
nocobase-admin-menu	l122naqh3xo	18	\N	\N	\N
nocobase-admin-menu	sar3oe26nhy	19	\N	\N	\N
nocobase-admin-menu	sbqwil5ak06	20	\N	\N	\N
nocobase-admin-menu	dpybyp9mp99	21	\N	\N	\N
nocobase-admin-menu	63gg7k4it9i	19	\N	\N	\N
nocobase-admin-menu	cstsfoq8ikx	20	\N	\N	\N
nocobase-admin-menu	fjzwuvjm63z	21	\N	\N	\N
nocobase-admin-menu	32r1y0ys2a2	19	\N	\N	\N
nocobase-admin-menu	okop6i9v7hc	20	\N	\N	\N
nocobase-admin-menu	nikbm0jtaz4	21	\N	\N	\N
nocobase-admin-menu	sqveon4lmdc	19	\N	\N	\N
nocobase-admin-menu	f5gqw6rcwi2	9	\N	\N	\N
nocobase-admin-menu	edrpkkzgupe	10	\N	\N	\N
nocobase-admin-menu	b4vqfssnx0n	19	\N	\N	\N
nocobase-admin-menu	70d6z1b7lwj	20	\N	\N	\N
nocobase-admin-menu	nzd7m9vow2n	21	\N	\N	\N
nocobase-admin-menu	ey3u6lhj0uv	9	\N	\N	\N
nocobase-admin-menu	cf5a2ublhsc	10	\N	\N	\N
nocobase-admin-menu	thv52rwsoxt	11	\N	\N	\N
nocobase-admin-menu	8v6rpwj5ri4	12	\N	\N	\N
nocobase-admin-menu	9t48whaaivs	13	\N	\N	\N
nocobase-admin-menu	eryrnjnsqbz	14	\N	\N	\N
nocobase-admin-menu	kc1yrwtergx	11	\N	\N	\N
nocobase-admin-menu	i4co6cjozyb	12	\N	\N	\N
nocobase-admin-menu	hhxn3vmfdza	13	\N	\N	\N
nocobase-admin-menu	omnoqlxcozq	14	\N	\N	\N
we414l1saan	we414l1saan	0	f	properties	\N
we414l1saan	lmp1irsvgom	18	\N	\N	\N
we414l1saan	7x6oyetmotw	19	\N	\N	\N
we414l1saan	vieqoc3iqo8	19	\N	\N	\N
t4v2kcudvg5	oxj8sl5a4x4	6	\N	\N	\N
t4v2kcudvg5	1t1bel9ufqz	7	\N	\N	\N
t4v2kcudvg5	3nhe9kyydb1	8	\N	\N	\N
t4v2kcudvg5	lmp1irsvgom	9	\N	\N	\N
t4v2kcudvg5	7x6oyetmotw	10	\N	\N	\N
t4v2kcudvg5	vieqoc3iqo8	10	\N	\N	\N
q9zjnv8mc9j	oxj8sl5a4x4	7	\N	\N	\N
q9zjnv8mc9j	1t1bel9ufqz	8	\N	\N	\N
q9zjnv8mc9j	3nhe9kyydb1	9	\N	\N	\N
q9zjnv8mc9j	lmp1irsvgom	10	\N	\N	\N
q9zjnv8mc9j	7x6oyetmotw	11	\N	\N	\N
q9zjnv8mc9j	vieqoc3iqo8	11	\N	\N	\N
nocobase-admin-menu	oxj8sl5a4x4	16	\N	\N	\N
nocobase-admin-menu	1t1bel9ufqz	17	\N	\N	\N
nocobase-admin-menu	3nhe9kyydb1	18	\N	\N	\N
nocobase-admin-menu	lmp1irsvgom	19	\N	\N	\N
nocobase-admin-menu	7x6oyetmotw	20	\N	\N	\N
nocobase-admin-menu	vieqoc3iqo8	20	\N	\N	\N
swxvjglsevf	068ltvadyqz	19	\N	\N	\N
nocobase-admin-menu	r7obcvpr4jw	19	\N	\N	\N
sqveon4lmdc	sqveon4lmdc	0	f	properties	\N
36ljw6t1ji6	sqveon4lmdc	2	\N	\N	\N
1uaumvtamrv	sqveon4lmdc	3	\N	\N	\N
dy05mp2bbzv	sqveon4lmdc	4	\N	\N	\N
a529wwd0i2s	sqveon4lmdc	5	\N	\N	\N
c9jng183okr	sqveon4lmdc	6	\N	\N	\N
14ah27jh466	sqveon4lmdc	7	\N	\N	\N
5r6schkvw42	sqveon4lmdc	8	\N	\N	\N
oq8pk1fas1b	sqveon4lmdc	9	\N	\N	\N
qar6tcv8yiy	sqveon4lmdc	10	\N	\N	\N
c6mpmcq8sh2	sqveon4lmdc	11	\N	\N	\N
jiq42lrek0j	sqveon4lmdc	12	\N	\N	\N
w149la0utnx	sqveon4lmdc	13	\N	\N	\N
z02388u42s9	sqveon4lmdc	14	\N	\N	\N
llvsctq28hp	sqveon4lmdc	15	\N	\N	\N
8xvbgh18zfk	sqveon4lmdc	16	\N	\N	\N
2pij3wiepc4	sqveon4lmdc	17	\N	\N	\N
we414l1saan	sqveon4lmdc	18	\N	\N	\N
nocobase-admin-menu	068ltvadyqz	20	\N	\N	\N
l122naqh3xo	sqveon4lmdc	1	\N	\N	1
edrpkkzgupe	edrpkkzgupe	0	f	properties	\N
f5gqw6rcwi2	edrpkkzgupe	1	\N	\N	1
nc92u2m878d	edrpkkzgupe	2	\N	\N	\N
jiq42lrek0j	f5gqw6rcwi2	2	\N	\N	\N
jiq42lrek0j	edrpkkzgupe	3	\N	\N	\N
w149la0utnx	f5gqw6rcwi2	3	\N	\N	\N
w149la0utnx	edrpkkzgupe	4	\N	\N	\N
z02388u42s9	f5gqw6rcwi2	4	\N	\N	\N
z02388u42s9	edrpkkzgupe	5	\N	\N	\N
llvsctq28hp	f5gqw6rcwi2	5	\N	\N	\N
llvsctq28hp	edrpkkzgupe	6	\N	\N	\N
8xvbgh18zfk	f5gqw6rcwi2	6	\N	\N	\N
8xvbgh18zfk	edrpkkzgupe	7	\N	\N	\N
2pij3wiepc4	f5gqw6rcwi2	7	\N	\N	\N
2pij3wiepc4	edrpkkzgupe	8	\N	\N	\N
we414l1saan	f5gqw6rcwi2	8	\N	\N	\N
we414l1saan	edrpkkzgupe	9	\N	\N	\N
c5ha41uevsk	r7obcvpr4jw	1	\N	\N	1
c5ha41uevsk	uj9cahk9uzq	2	\N	\N	\N
f5gqw6rcwi2	f5gqw6rcwi2	0	f	properties	\N
nc92u2m878d	f5gqw6rcwi2	1	\N	\N	6
70d6z1b7lwj	70d6z1b7lwj	0	f	properties	\N
b4vqfssnx0n	70d6z1b7lwj	1	\N	\N	1
nzd7m9vow2n	nzd7m9vow2n	0	f	properties	\N
70d6z1b7lwj	nzd7m9vow2n	1	\N	\N	1
b4vqfssnx0n	nzd7m9vow2n	2	\N	\N	1
nesj0yhxnjz	70d6z1b7lwj	2	\N	\N	\N
nesj0yhxnjz	nzd7m9vow2n	3	\N	\N	\N
36ljw6t1ji6	b4vqfssnx0n	2	\N	\N	\N
36ljw6t1ji6	70d6z1b7lwj	3	\N	\N	\N
36ljw6t1ji6	nzd7m9vow2n	4	\N	\N	\N
1uaumvtamrv	b4vqfssnx0n	3	\N	\N	\N
1uaumvtamrv	70d6z1b7lwj	4	\N	\N	\N
1uaumvtamrv	nzd7m9vow2n	5	\N	\N	\N
dy05mp2bbzv	b4vqfssnx0n	4	\N	\N	\N
dy05mp2bbzv	70d6z1b7lwj	5	\N	\N	\N
dy05mp2bbzv	nzd7m9vow2n	6	\N	\N	\N
a529wwd0i2s	b4vqfssnx0n	5	\N	\N	\N
a529wwd0i2s	70d6z1b7lwj	6	\N	\N	\N
a529wwd0i2s	nzd7m9vow2n	7	\N	\N	\N
c9jng183okr	b4vqfssnx0n	6	\N	\N	\N
c9jng183okr	70d6z1b7lwj	7	\N	\N	\N
c9jng183okr	nzd7m9vow2n	8	\N	\N	\N
14ah27jh466	b4vqfssnx0n	7	\N	\N	\N
14ah27jh466	70d6z1b7lwj	8	\N	\N	\N
14ah27jh466	nzd7m9vow2n	9	\N	\N	\N
5r6schkvw42	b4vqfssnx0n	8	\N	\N	\N
5r6schkvw42	70d6z1b7lwj	9	\N	\N	\N
5r6schkvw42	nzd7m9vow2n	10	\N	\N	\N
oq8pk1fas1b	b4vqfssnx0n	9	\N	\N	\N
oq8pk1fas1b	70d6z1b7lwj	10	\N	\N	\N
oq8pk1fas1b	nzd7m9vow2n	11	\N	\N	\N
qar6tcv8yiy	b4vqfssnx0n	10	\N	\N	\N
qar6tcv8yiy	70d6z1b7lwj	11	\N	\N	\N
qar6tcv8yiy	nzd7m9vow2n	12	\N	\N	\N
c6mpmcq8sh2	b4vqfssnx0n	11	\N	\N	\N
c6mpmcq8sh2	70d6z1b7lwj	12	\N	\N	\N
c6mpmcq8sh2	nzd7m9vow2n	13	\N	\N	\N
jiq42lrek0j	b4vqfssnx0n	12	\N	\N	\N
jiq42lrek0j	70d6z1b7lwj	13	\N	\N	\N
jiq42lrek0j	nzd7m9vow2n	14	\N	\N	\N
w149la0utnx	b4vqfssnx0n	13	\N	\N	\N
w149la0utnx	70d6z1b7lwj	14	\N	\N	\N
w149la0utnx	nzd7m9vow2n	15	\N	\N	\N
z02388u42s9	b4vqfssnx0n	14	\N	\N	\N
z02388u42s9	70d6z1b7lwj	15	\N	\N	\N
z02388u42s9	nzd7m9vow2n	16	\N	\N	\N
llvsctq28hp	b4vqfssnx0n	15	\N	\N	\N
llvsctq28hp	70d6z1b7lwj	16	\N	\N	\N
llvsctq28hp	nzd7m9vow2n	17	\N	\N	\N
8xvbgh18zfk	b4vqfssnx0n	16	\N	\N	\N
8xvbgh18zfk	70d6z1b7lwj	17	\N	\N	\N
8xvbgh18zfk	nzd7m9vow2n	18	\N	\N	\N
2pij3wiepc4	b4vqfssnx0n	17	\N	\N	\N
2pij3wiepc4	70d6z1b7lwj	18	\N	\N	\N
2pij3wiepc4	nzd7m9vow2n	19	\N	\N	\N
we414l1saan	b4vqfssnx0n	18	\N	\N	\N
we414l1saan	70d6z1b7lwj	19	\N	\N	\N
we414l1saan	nzd7m9vow2n	20	\N	\N	\N
89nfa89tbje	asdvjj2f2ep	11	\N	\N	\N
3fffemef0cp	uj9cahk9uzq	3	\N	\N	\N
3fffemef0cp	hnj686cgnhr	2	\N	\N	\N
b4vqfssnx0n	b4vqfssnx0n	0	f	properties	\N
nesj0yhxnjz	b4vqfssnx0n	1	\N	\N	4
ey3u6lhj0uv	ey3u6lhj0uv	0	f	properties	\N
nc92u2m878d	ey3u6lhj0uv	1	\N	\N	7
cf5a2ublhsc	thv52rwsoxt	1	\N	\N	2
cf5a2ublhsc	cf5a2ublhsc	0	f	properties	\N
ey3u6lhj0uv	cf5a2ublhsc	1	\N	\N	1
thv52rwsoxt	thv52rwsoxt	0	f	properties	\N
ey3u6lhj0uv	thv52rwsoxt	2	\N	\N	1
8v6rpwj5ri4	8v6rpwj5ri4	0	f	properties	\N
thv52rwsoxt	8v6rpwj5ri4	1	\N	\N	1
cf5a2ublhsc	8v6rpwj5ri4	2	\N	\N	1
ey3u6lhj0uv	8v6rpwj5ri4	3	\N	\N	1
9t48whaaivs	9t48whaaivs	0	f	properties	\N
8v6rpwj5ri4	9t48whaaivs	1	\N	\N	1
thv52rwsoxt	9t48whaaivs	2	\N	\N	1
cf5a2ublhsc	9t48whaaivs	3	\N	\N	1
ey3u6lhj0uv	9t48whaaivs	4	\N	\N	1
eryrnjnsqbz	eryrnjnsqbz	0	f	properties	\N
9t48whaaivs	eryrnjnsqbz	1	\N	\N	1
8v6rpwj5ri4	eryrnjnsqbz	2	\N	\N	1
thv52rwsoxt	eryrnjnsqbz	3	\N	\N	1
cf5a2ublhsc	eryrnjnsqbz	4	\N	\N	1
ey3u6lhj0uv	eryrnjnsqbz	5	\N	\N	1
nc92u2m878d	cf5a2ublhsc	2	\N	\N	\N
nc92u2m878d	thv52rwsoxt	3	\N	\N	\N
nc92u2m878d	8v6rpwj5ri4	4	\N	\N	\N
nc92u2m878d	9t48whaaivs	5	\N	\N	\N
nc92u2m878d	eryrnjnsqbz	6	\N	\N	\N
jiq42lrek0j	ey3u6lhj0uv	2	\N	\N	\N
jiq42lrek0j	cf5a2ublhsc	3	\N	\N	\N
jiq42lrek0j	thv52rwsoxt	4	\N	\N	\N
jiq42lrek0j	8v6rpwj5ri4	5	\N	\N	\N
jiq42lrek0j	9t48whaaivs	6	\N	\N	\N
jiq42lrek0j	eryrnjnsqbz	7	\N	\N	\N
w149la0utnx	ey3u6lhj0uv	3	\N	\N	\N
w149la0utnx	cf5a2ublhsc	4	\N	\N	\N
w149la0utnx	thv52rwsoxt	5	\N	\N	\N
w149la0utnx	8v6rpwj5ri4	6	\N	\N	\N
w149la0utnx	9t48whaaivs	7	\N	\N	\N
w149la0utnx	eryrnjnsqbz	8	\N	\N	\N
z02388u42s9	ey3u6lhj0uv	4	\N	\N	\N
z02388u42s9	cf5a2ublhsc	5	\N	\N	\N
z02388u42s9	thv52rwsoxt	6	\N	\N	\N
z02388u42s9	8v6rpwj5ri4	7	\N	\N	\N
z02388u42s9	9t48whaaivs	8	\N	\N	\N
z02388u42s9	eryrnjnsqbz	9	\N	\N	\N
llvsctq28hp	ey3u6lhj0uv	5	\N	\N	\N
llvsctq28hp	cf5a2ublhsc	6	\N	\N	\N
llvsctq28hp	thv52rwsoxt	7	\N	\N	\N
llvsctq28hp	8v6rpwj5ri4	8	\N	\N	\N
llvsctq28hp	9t48whaaivs	9	\N	\N	\N
llvsctq28hp	eryrnjnsqbz	10	\N	\N	\N
8xvbgh18zfk	ey3u6lhj0uv	6	\N	\N	\N
8xvbgh18zfk	cf5a2ublhsc	7	\N	\N	\N
8xvbgh18zfk	thv52rwsoxt	8	\N	\N	\N
8xvbgh18zfk	8v6rpwj5ri4	9	\N	\N	\N
8xvbgh18zfk	9t48whaaivs	10	\N	\N	\N
8xvbgh18zfk	eryrnjnsqbz	11	\N	\N	\N
2pij3wiepc4	ey3u6lhj0uv	7	\N	\N	\N
2pij3wiepc4	cf5a2ublhsc	8	\N	\N	\N
2pij3wiepc4	thv52rwsoxt	9	\N	\N	\N
2pij3wiepc4	8v6rpwj5ri4	10	\N	\N	\N
2pij3wiepc4	9t48whaaivs	11	\N	\N	\N
baejb3hqiri	uj9cahk9uzq	4	\N	\N	\N
2pij3wiepc4	eryrnjnsqbz	12	\N	\N	\N
we414l1saan	ey3u6lhj0uv	8	\N	\N	\N
we414l1saan	cf5a2ublhsc	9	\N	\N	\N
we414l1saan	thv52rwsoxt	10	\N	\N	\N
we414l1saan	8v6rpwj5ri4	11	\N	\N	\N
we414l1saan	9t48whaaivs	12	\N	\N	\N
we414l1saan	eryrnjnsqbz	13	\N	\N	\N
baejb3hqiri	hnj686cgnhr	3	\N	\N	\N
zvja1suwswo	uj9cahk9uzq	5	\N	\N	\N
zvja1suwswo	hnj686cgnhr	4	\N	\N	\N
1cnwu64uyw3	uj9cahk9uzq	6	\N	\N	\N
1cnwu64uyw3	hnj686cgnhr	5	\N	\N	\N
zwh6db27axk	uj9cahk9uzq	7	\N	\N	\N
i4co6cjozyb	i4co6cjozyb	0	f	properties	\N
kc1yrwtergx	i4co6cjozyb	1	\N	\N	1
hhxn3vmfdza	hhxn3vmfdza	0	f	properties	\N
i4co6cjozyb	hhxn3vmfdza	1	\N	\N	1
kc1yrwtergx	hhxn3vmfdza	2	\N	\N	1
omnoqlxcozq	omnoqlxcozq	0	f	properties	\N
hhxn3vmfdza	omnoqlxcozq	1	\N	\N	1
i4co6cjozyb	omnoqlxcozq	2	\N	\N	1
kc1yrwtergx	omnoqlxcozq	3	\N	\N	1
cf5a2ublhsc	i4co6cjozyb	2	\N	\N	\N
cf5a2ublhsc	hhxn3vmfdza	3	\N	\N	\N
cf5a2ublhsc	omnoqlxcozq	4	\N	\N	\N
ey3u6lhj0uv	kc1yrwtergx	2	\N	\N	\N
ey3u6lhj0uv	i4co6cjozyb	3	\N	\N	\N
ey3u6lhj0uv	hhxn3vmfdza	4	\N	\N	\N
ey3u6lhj0uv	omnoqlxcozq	5	\N	\N	\N
nc92u2m878d	kc1yrwtergx	3	\N	\N	\N
nc92u2m878d	i4co6cjozyb	4	\N	\N	\N
nc92u2m878d	hhxn3vmfdza	5	\N	\N	\N
nc92u2m878d	omnoqlxcozq	6	\N	\N	\N
jiq42lrek0j	kc1yrwtergx	4	\N	\N	\N
jiq42lrek0j	i4co6cjozyb	5	\N	\N	\N
jiq42lrek0j	hhxn3vmfdza	6	\N	\N	\N
jiq42lrek0j	omnoqlxcozq	7	\N	\N	\N
w149la0utnx	kc1yrwtergx	5	\N	\N	\N
w149la0utnx	i4co6cjozyb	6	\N	\N	\N
w149la0utnx	hhxn3vmfdza	7	\N	\N	\N
w149la0utnx	omnoqlxcozq	8	\N	\N	\N
z02388u42s9	kc1yrwtergx	6	\N	\N	\N
z02388u42s9	i4co6cjozyb	7	\N	\N	\N
z02388u42s9	hhxn3vmfdza	8	\N	\N	\N
z02388u42s9	omnoqlxcozq	9	\N	\N	\N
llvsctq28hp	kc1yrwtergx	7	\N	\N	\N
llvsctq28hp	i4co6cjozyb	8	\N	\N	\N
llvsctq28hp	hhxn3vmfdza	9	\N	\N	\N
llvsctq28hp	omnoqlxcozq	10	\N	\N	\N
8xvbgh18zfk	kc1yrwtergx	8	\N	\N	\N
8xvbgh18zfk	i4co6cjozyb	9	\N	\N	\N
8xvbgh18zfk	hhxn3vmfdza	10	\N	\N	\N
8xvbgh18zfk	omnoqlxcozq	11	\N	\N	\N
2pij3wiepc4	kc1yrwtergx	9	\N	\N	\N
2pij3wiepc4	i4co6cjozyb	10	\N	\N	\N
2pij3wiepc4	hhxn3vmfdza	11	\N	\N	\N
2pij3wiepc4	omnoqlxcozq	12	\N	\N	\N
we414l1saan	kc1yrwtergx	10	\N	\N	\N
we414l1saan	i4co6cjozyb	11	\N	\N	\N
we414l1saan	hhxn3vmfdza	12	\N	\N	\N
we414l1saan	omnoqlxcozq	13	\N	\N	\N
zwh6db27axk	hnj686cgnhr	6	\N	\N	\N
5b0fu481dm6	uj9cahk9uzq	8	\N	\N	\N
5b0fu481dm6	hnj686cgnhr	7	\N	\N	\N
1dvfg1afm18	uj9cahk9uzq	9	\N	\N	\N
kc1yrwtergx	kc1yrwtergx	0	f	properties	\N
cf5a2ublhsc	kc1yrwtergx	1	\N	\N	1
1t1bel9ufqz	1t1bel9ufqz	0	f	properties	\N
oxj8sl5a4x4	1t1bel9ufqz	1	\N	\N	1
3nhe9kyydb1	3nhe9kyydb1	0	f	properties	\N
1t1bel9ufqz	3nhe9kyydb1	1	\N	\N	1
oxj8sl5a4x4	3nhe9kyydb1	2	\N	\N	1
lmp1irsvgom	lmp1irsvgom	0	f	properties	\N
3nhe9kyydb1	lmp1irsvgom	1	\N	\N	1
1t1bel9ufqz	lmp1irsvgom	2	\N	\N	1
oxj8sl5a4x4	lmp1irsvgom	3	\N	\N	1
7x6oyetmotw	7x6oyetmotw	0	f	properties	\N
lmp1irsvgom	7x6oyetmotw	1	\N	\N	1
3nhe9kyydb1	7x6oyetmotw	2	\N	\N	1
1t1bel9ufqz	7x6oyetmotw	3	\N	\N	1
oxj8sl5a4x4	7x6oyetmotw	4	\N	\N	1
vieqoc3iqo8	vieqoc3iqo8	0	f	properties	\N
lmp1irsvgom	vieqoc3iqo8	1	\N	\N	2
3nhe9kyydb1	vieqoc3iqo8	2	\N	\N	2
1t1bel9ufqz	vieqoc3iqo8	3	\N	\N	2
oxj8sl5a4x4	vieqoc3iqo8	4	\N	\N	2
ew9dla1iwk8	1t1bel9ufqz	2	\N	\N	\N
ew9dla1iwk8	3nhe9kyydb1	3	\N	\N	\N
ew9dla1iwk8	lmp1irsvgom	4	\N	\N	\N
ew9dla1iwk8	7x6oyetmotw	5	\N	\N	\N
ew9dla1iwk8	vieqoc3iqo8	5	\N	\N	\N
haxe3y5jbxr	oxj8sl5a4x4	2	\N	\N	\N
haxe3y5jbxr	1t1bel9ufqz	3	\N	\N	\N
haxe3y5jbxr	3nhe9kyydb1	4	\N	\N	\N
haxe3y5jbxr	lmp1irsvgom	5	\N	\N	\N
haxe3y5jbxr	7x6oyetmotw	6	\N	\N	\N
haxe3y5jbxr	vieqoc3iqo8	6	\N	\N	\N
48d58aj2z3f	oxj8sl5a4x4	3	\N	\N	\N
48d58aj2z3f	1t1bel9ufqz	4	\N	\N	\N
48d58aj2z3f	3nhe9kyydb1	5	\N	\N	\N
48d58aj2z3f	lmp1irsvgom	6	\N	\N	\N
48d58aj2z3f	7x6oyetmotw	7	\N	\N	\N
48d58aj2z3f	vieqoc3iqo8	7	\N	\N	\N
dnlwo60b33v	oxj8sl5a4x4	4	\N	\N	\N
dnlwo60b33v	1t1bel9ufqz	5	\N	\N	\N
dnlwo60b33v	3nhe9kyydb1	6	\N	\N	\N
dnlwo60b33v	lmp1irsvgom	7	\N	\N	\N
dnlwo60b33v	7x6oyetmotw	8	\N	\N	\N
dnlwo60b33v	vieqoc3iqo8	8	\N	\N	\N
89nfa89tbje	oxj8sl5a4x4	5	\N	\N	\N
89nfa89tbje	1t1bel9ufqz	6	\N	\N	\N
89nfa89tbje	3nhe9kyydb1	7	\N	\N	\N
89nfa89tbje	lmp1irsvgom	8	\N	\N	\N
89nfa89tbje	7x6oyetmotw	9	\N	\N	\N
89nfa89tbje	vieqoc3iqo8	9	\N	\N	\N
nc92u2m878d	oxj8sl5a4x4	8	\N	\N	\N
nc92u2m878d	1t1bel9ufqz	9	\N	\N	\N
nc92u2m878d	3nhe9kyydb1	10	\N	\N	\N
nc92u2m878d	lmp1irsvgom	11	\N	\N	\N
nc92u2m878d	7x6oyetmotw	12	\N	\N	\N
nc92u2m878d	vieqoc3iqo8	12	\N	\N	\N
jiq42lrek0j	oxj8sl5a4x4	9	\N	\N	\N
jiq42lrek0j	1t1bel9ufqz	10	\N	\N	\N
jiq42lrek0j	3nhe9kyydb1	11	\N	\N	\N
jiq42lrek0j	lmp1irsvgom	12	\N	\N	\N
jiq42lrek0j	7x6oyetmotw	13	\N	\N	\N
jiq42lrek0j	vieqoc3iqo8	13	\N	\N	\N
w149la0utnx	oxj8sl5a4x4	10	\N	\N	\N
w149la0utnx	1t1bel9ufqz	11	\N	\N	\N
w149la0utnx	3nhe9kyydb1	12	\N	\N	\N
w149la0utnx	lmp1irsvgom	13	\N	\N	\N
oxj8sl5a4x4	oxj8sl5a4x4	0	f	properties	\N
ew9dla1iwk8	oxj8sl5a4x4	1	\N	\N	1
1dvfg1afm18	hnj686cgnhr	8	\N	\N	\N
9hwsgvjy1w5	9hwsgvjy1w5	0	f	properties	\N
uucrlkvfum6	9hwsgvjy1w5	1	\N	\N	1
qnzmj17al63	qnzmj17al63	0	f	properties	\N
9hwsgvjy1w5	qnzmj17al63	1	\N	\N	1
uucrlkvfum6	qnzmj17al63	2	\N	\N	1
y05re45hs3a	9hwsgvjy1w5	2	\N	\N	\N
y05re45hs3a	qnzmj17al63	3	\N	\N	\N
dsptk8t0mbr	uucrlkvfum6	2	\N	\N	\N
dsptk8t0mbr	9hwsgvjy1w5	3	\N	\N	\N
dsptk8t0mbr	qnzmj17al63	4	\N	\N	\N
7qih7hq26ge	uucrlkvfum6	3	\N	\N	\N
7qih7hq26ge	9hwsgvjy1w5	4	\N	\N	\N
7qih7hq26ge	qnzmj17al63	5	\N	\N	\N
m9ru2u1mst5	uucrlkvfum6	4	\N	\N	\N
m9ru2u1mst5	9hwsgvjy1w5	5	\N	\N	\N
m9ru2u1mst5	qnzmj17al63	6	\N	\N	\N
t5a2xk7thpn	uucrlkvfum6	5	\N	\N	\N
t5a2xk7thpn	9hwsgvjy1w5	6	\N	\N	\N
t5a2xk7thpn	qnzmj17al63	7	\N	\N	\N
ra6axo18rlo	uucrlkvfum6	6	\N	\N	\N
ra6axo18rlo	9hwsgvjy1w5	7	\N	\N	\N
ra6axo18rlo	qnzmj17al63	8	\N	\N	\N
7peksipcht7	uucrlkvfum6	7	\N	\N	\N
7peksipcht7	9hwsgvjy1w5	8	\N	\N	\N
7peksipcht7	qnzmj17al63	9	\N	\N	\N
vxyfqljr7j6	uucrlkvfum6	8	\N	\N	\N
vxyfqljr7j6	9hwsgvjy1w5	9	\N	\N	\N
vxyfqljr7j6	qnzmj17al63	10	\N	\N	\N
v0xzwwlb3u7	uucrlkvfum6	9	\N	\N	\N
v0xzwwlb3u7	9hwsgvjy1w5	10	\N	\N	\N
v0xzwwlb3u7	qnzmj17al63	11	\N	\N	\N
eajx55rxxy3	uucrlkvfum6	10	\N	\N	\N
eajx55rxxy3	9hwsgvjy1w5	11	\N	\N	\N
eajx55rxxy3	qnzmj17al63	12	\N	\N	\N
8kxzcotfeb3	uucrlkvfum6	11	\N	\N	\N
8kxzcotfeb3	9hwsgvjy1w5	12	\N	\N	\N
8kxzcotfeb3	qnzmj17al63	13	\N	\N	\N
5z0xpoxz87w	uucrlkvfum6	12	\N	\N	\N
5z0xpoxz87w	9hwsgvjy1w5	13	\N	\N	\N
5z0xpoxz87w	qnzmj17al63	14	\N	\N	\N
o9klwv4nzei	uucrlkvfum6	13	\N	\N	\N
o9klwv4nzei	9hwsgvjy1w5	14	\N	\N	\N
o9klwv4nzei	qnzmj17al63	15	\N	\N	\N
ozzmhtdpth4	uucrlkvfum6	14	\N	\N	\N
ozzmhtdpth4	9hwsgvjy1w5	15	\N	\N	\N
ozzmhtdpth4	qnzmj17al63	16	\N	\N	\N
b8mogqkr3um	uucrlkvfum6	15	\N	\N	\N
b8mogqkr3um	9hwsgvjy1w5	16	\N	\N	\N
b8mogqkr3um	qnzmj17al63	17	\N	\N	\N
b56io1plq44	uucrlkvfum6	16	\N	\N	\N
b56io1plq44	9hwsgvjy1w5	17	\N	\N	\N
b56io1plq44	qnzmj17al63	18	\N	\N	\N
13qbrfhlbny	uucrlkvfum6	17	\N	\N	\N
13qbrfhlbny	9hwsgvjy1w5	18	\N	\N	\N
13qbrfhlbny	qnzmj17al63	19	\N	\N	\N
oqsecaif6am	uucrlkvfum6	18	\N	\N	\N
oqsecaif6am	9hwsgvjy1w5	19	\N	\N	\N
oqsecaif6am	qnzmj17al63	20	\N	\N	\N
63aby9t5qmb	uucrlkvfum6	19	\N	\N	\N
63aby9t5qmb	9hwsgvjy1w5	20	\N	\N	\N
63aby9t5qmb	qnzmj17al63	21	\N	\N	\N
mwrnryoju9y	uucrlkvfum6	20	\N	\N	\N
mwrnryoju9y	9hwsgvjy1w5	21	\N	\N	\N
mwrnryoju9y	qnzmj17al63	22	\N	\N	\N
nocobase-admin-menu	uucrlkvfum6	21	\N	\N	\N
nocobase-admin-menu	9hwsgvjy1w5	22	\N	\N	\N
y05re45hs3a	uucrlkvfum6	1	\N	\N	4
dnconr08rue	dnconr08rue	0	f	properties	\N
w149la0utnx	dnconr08rue	15	\N	\N	\N
z02388u42s9	dnconr08rue	16	\N	\N	\N
llvsctq28hp	dnconr08rue	17	\N	\N	\N
8xvbgh18zfk	dnconr08rue	18	\N	\N	\N
2pij3wiepc4	dnconr08rue	19	\N	\N	\N
we414l1saan	dnconr08rue	20	\N	\N	\N
t4v2kcudvg5	dnconr08rue	11	\N	\N	\N
q9zjnv8mc9j	dnconr08rue	12	\N	\N	\N
nocobase-admin-menu	dnconr08rue	21	\N	\N	\N
lmp1irsvgom	dnconr08rue	2	\N	\N	\N
3nhe9kyydb1	dnconr08rue	3	\N	\N	\N
1t1bel9ufqz	dnconr08rue	4	\N	\N	\N
oxj8sl5a4x4	dnconr08rue	5	\N	\N	\N
ew9dla1iwk8	dnconr08rue	6	\N	\N	\N
haxe3y5jbxr	dnconr08rue	7	\N	\N	\N
48d58aj2z3f	dnconr08rue	8	\N	\N	\N
dnlwo60b33v	dnconr08rue	9	\N	\N	\N
89nfa89tbje	dnconr08rue	10	\N	\N	\N
nc92u2m878d	dnconr08rue	13	\N	\N	\N
jiq42lrek0j	dnconr08rue	14	\N	\N	\N
vieqoc3iqo8	dnconr08rue	1	\N	\N	1
q3rv0rnfki7	uj9cahk9uzq	10	\N	\N	\N
q3rv0rnfki7	hnj686cgnhr	9	\N	\N	\N
w4ciktesp5j	uj9cahk9uzq	11	\N	\N	\N
w4ciktesp5j	hnj686cgnhr	10	\N	\N	\N
tg2hn64ei8t	uj9cahk9uzq	12	\N	\N	\N
tg2hn64ei8t	hnj686cgnhr	11	\N	\N	\N
44890jxlzup	uj9cahk9uzq	13	\N	\N	\N
44890jxlzup	hnj686cgnhr	12	\N	\N	\N
xa635tbvi5c	uj9cahk9uzq	14	\N	\N	\N
xa635tbvi5c	hnj686cgnhr	13	\N	\N	\N
4dgysxrfq7o	uj9cahk9uzq	15	\N	\N	\N
4dgysxrfq7o	hnj686cgnhr	14	\N	\N	\N
sf8fl742bgm	uj9cahk9uzq	16	\N	\N	\N
x8573v0yx54	x8573v0yx54	0	f	properties	\N
tg2hn64ei8t	x8573v0yx54	2	\N	\N	\N
44890jxlzup	x8573v0yx54	3	\N	\N	\N
xa635tbvi5c	x8573v0yx54	4	\N	\N	\N
4dgysxrfq7o	x8573v0yx54	5	\N	\N	\N
sf8fl742bgm	x8573v0yx54	6	\N	\N	\N
sptin92gm5m	x8573v0yx54	7	\N	\N	\N
i0lnhtci4u6	x8573v0yx54	8	\N	\N	\N
swxvjglsevf	x8573v0yx54	9	\N	\N	\N
nocobase-admin-menu	x8573v0yx54	10	\N	\N	\N
w4ciktesp5j	x8573v0yx54	1	\N	\N	4
sf8fl742bgm	hnj686cgnhr	15	\N	\N	\N
t4v2kcudvg5	qpttqm9478o	1	\N	\N	4
sptin92gm5m	uj9cahk9uzq	17	\N	\N	\N
sptin92gm5m	hnj686cgnhr	16	\N	\N	\N
i0lnhtci4u6	uj9cahk9uzq	18	\N	\N	\N
i0lnhtci4u6	hnj686cgnhr	17	\N	\N	\N
swxvjglsevf	uj9cahk9uzq	19	\N	\N	\N
swxvjglsevf	hnj686cgnhr	18	\N	\N	\N
qpttqm9478o	qpttqm9478o	0	f	properties	\N
nc92u2m878d	qpttqm9478o	3	\N	\N	\N
jiq42lrek0j	qpttqm9478o	4	\N	\N	\N
w149la0utnx	qpttqm9478o	5	\N	\N	\N
z02388u42s9	qpttqm9478o	6	\N	\N	\N
llvsctq28hp	qpttqm9478o	7	\N	\N	\N
8xvbgh18zfk	qpttqm9478o	8	\N	\N	\N
2pij3wiepc4	qpttqm9478o	9	\N	\N	\N
we414l1saan	qpttqm9478o	10	\N	\N	\N
q9zjnv8mc9j	qpttqm9478o	2	\N	\N	\N
nocobase-admin-menu	qpttqm9478o	11	\N	\N	\N
nocobase-admin-menu	uj9cahk9uzq	20	\N	\N	\N
nocobase-admin-menu	hnj686cgnhr	19	\N	\N	\N
c5ha41uevsk	hnj686cgnhr	1	\N	\N	3
yc5x6qvg4mh	scwpkth7he2	13	\N	\N	\N
ao2a67rjlld	tmd80idiv6m	12	\N	\N	\N
ao2a67rjlld	6b8gvniyido	13	\N	\N	\N
ao2a67rjlld	scwpkth7he2	14	\N	\N	\N
bwbd6lebhkb	tmd80idiv6m	13	\N	\N	\N
bwbd6lebhkb	6b8gvniyido	14	\N	\N	\N
bwbd6lebhkb	scwpkth7he2	15	\N	\N	\N
m8tbcrs4z9t	tmd80idiv6m	14	\N	\N	\N
m8tbcrs4z9t	6b8gvniyido	15	\N	\N	\N
m8tbcrs4z9t	scwpkth7he2	16	\N	\N	\N
q4dinm52meb	tmd80idiv6m	15	\N	\N	\N
q4dinm52meb	6b8gvniyido	16	\N	\N	\N
q4dinm52meb	scwpkth7he2	17	\N	\N	\N
vs0l89adzhc	tmd80idiv6m	16	\N	\N	\N
vs0l89adzhc	6b8gvniyido	17	\N	\N	\N
vs0l89adzhc	scwpkth7he2	18	\N	\N	\N
493pimn830r	tmd80idiv6m	17	\N	\N	\N
493pimn830r	6b8gvniyido	18	\N	\N	\N
493pimn830r	scwpkth7he2	19	\N	\N	\N
nocobase-admin-menu	tmd80idiv6m	18	\N	\N	\N
nocobase-admin-menu	6b8gvniyido	19	\N	\N	\N
nocobase-admin-menu	scwpkth7he2	20	\N	\N	\N
tmd80idiv6m	tmd80idiv6m	0	f	properties	\N
n596xt7b4gz	tmd80idiv6m	1	\N	\N	2
x9r1x9f3ap1	x9r1x9f3ap1	0	f	properties	\N
iv85lfibly6	x9r1x9f3ap1	1	\N	\N	1
ozcyb4ilthn	ozcyb4ilthn	0	f	properties	\N
x9r1x9f3ap1	ozcyb4ilthn	1	\N	\N	1
iv85lfibly6	ozcyb4ilthn	2	\N	\N	1
n596xt7b4gz	x9r1x9f3ap1	2	\N	\N	\N
n596xt7b4gz	ozcyb4ilthn	3	\N	\N	\N
0ypbdd2x5je	iv85lfibly6	2	\N	\N	\N
0ypbdd2x5je	x9r1x9f3ap1	3	\N	\N	\N
0ypbdd2x5je	ozcyb4ilthn	4	\N	\N	\N
i99shgxsfzv	iv85lfibly6	3	\N	\N	\N
i99shgxsfzv	x9r1x9f3ap1	4	\N	\N	\N
i99shgxsfzv	ozcyb4ilthn	5	\N	\N	\N
6e6up9qf6jw	iv85lfibly6	4	\N	\N	\N
6e6up9qf6jw	x9r1x9f3ap1	5	\N	\N	\N
6e6up9qf6jw	ozcyb4ilthn	6	\N	\N	\N
q5sp3fyrz47	iv85lfibly6	5	\N	\N	\N
q5sp3fyrz47	x9r1x9f3ap1	6	\N	\N	\N
q5sp3fyrz47	ozcyb4ilthn	7	\N	\N	\N
qkanxqd13dl	iv85lfibly6	6	\N	\N	\N
qkanxqd13dl	x9r1x9f3ap1	7	\N	\N	\N
qkanxqd13dl	ozcyb4ilthn	8	\N	\N	\N
mexjj7b1g93	iv85lfibly6	7	\N	\N	\N
mexjj7b1g93	x9r1x9f3ap1	8	\N	\N	\N
mexjj7b1g93	ozcyb4ilthn	9	\N	\N	\N
pgsd6vdilnn	iv85lfibly6	8	\N	\N	\N
pgsd6vdilnn	x9r1x9f3ap1	9	\N	\N	\N
pgsd6vdilnn	ozcyb4ilthn	10	\N	\N	\N
ypqs0x71ybe	iv85lfibly6	9	\N	\N	\N
ypqs0x71ybe	x9r1x9f3ap1	10	\N	\N	\N
ypqs0x71ybe	ozcyb4ilthn	11	\N	\N	\N
u62y9zt7gwu	iv85lfibly6	10	\N	\N	\N
u62y9zt7gwu	x9r1x9f3ap1	11	\N	\N	\N
u62y9zt7gwu	ozcyb4ilthn	12	\N	\N	\N
yc5x6qvg4mh	iv85lfibly6	11	\N	\N	\N
yc5x6qvg4mh	x9r1x9f3ap1	12	\N	\N	\N
yc5x6qvg4mh	ozcyb4ilthn	13	\N	\N	\N
ao2a67rjlld	iv85lfibly6	12	\N	\N	\N
ao2a67rjlld	x9r1x9f3ap1	13	\N	\N	\N
ao2a67rjlld	ozcyb4ilthn	14	\N	\N	\N
bwbd6lebhkb	iv85lfibly6	13	\N	\N	\N
bwbd6lebhkb	x9r1x9f3ap1	14	\N	\N	\N
bwbd6lebhkb	ozcyb4ilthn	15	\N	\N	\N
m8tbcrs4z9t	iv85lfibly6	14	\N	\N	\N
m8tbcrs4z9t	x9r1x9f3ap1	15	\N	\N	\N
m8tbcrs4z9t	ozcyb4ilthn	16	\N	\N	\N
q4dinm52meb	iv85lfibly6	15	\N	\N	\N
q4dinm52meb	x9r1x9f3ap1	16	\N	\N	\N
q4dinm52meb	ozcyb4ilthn	17	\N	\N	\N
vs0l89adzhc	iv85lfibly6	16	\N	\N	\N
vs0l89adzhc	x9r1x9f3ap1	17	\N	\N	\N
vs0l89adzhc	ozcyb4ilthn	18	\N	\N	\N
493pimn830r	iv85lfibly6	17	\N	\N	\N
493pimn830r	x9r1x9f3ap1	18	\N	\N	\N
493pimn830r	ozcyb4ilthn	19	\N	\N	\N
nocobase-admin-menu	iv85lfibly6	18	\N	\N	\N
nocobase-admin-menu	x9r1x9f3ap1	19	\N	\N	\N
nocobase-admin-menu	ozcyb4ilthn	20	\N	\N	\N
iv85lfibly6	iv85lfibly6	0	f	properties	\N
n596xt7b4gz	iv85lfibly6	1	\N	\N	3
fewsuwh96j5	fewsuwh96j5	0	f	properties	\N
nk5ihe0ofrc	fewsuwh96j5	1	\N	\N	1
1o4mazo8kd0	1o4mazo8kd0	0	f	properties	\N
fewsuwh96j5	1o4mazo8kd0	1	\N	\N	1
nk5ihe0ofrc	1o4mazo8kd0	2	\N	\N	1
n596xt7b4gz	fewsuwh96j5	2	\N	\N	\N
n596xt7b4gz	1o4mazo8kd0	3	\N	\N	\N
0ypbdd2x5je	nk5ihe0ofrc	2	\N	\N	\N
0ypbdd2x5je	fewsuwh96j5	3	\N	\N	\N
0ypbdd2x5je	1o4mazo8kd0	4	\N	\N	\N
i99shgxsfzv	nk5ihe0ofrc	3	\N	\N	\N
i99shgxsfzv	fewsuwh96j5	4	\N	\N	\N
i99shgxsfzv	1o4mazo8kd0	5	\N	\N	\N
6e6up9qf6jw	nk5ihe0ofrc	4	\N	\N	\N
6e6up9qf6jw	fewsuwh96j5	5	\N	\N	\N
6e6up9qf6jw	1o4mazo8kd0	6	\N	\N	\N
q5sp3fyrz47	nk5ihe0ofrc	5	\N	\N	\N
q5sp3fyrz47	fewsuwh96j5	6	\N	\N	\N
q5sp3fyrz47	1o4mazo8kd0	7	\N	\N	\N
qkanxqd13dl	nk5ihe0ofrc	6	\N	\N	\N
qkanxqd13dl	fewsuwh96j5	7	\N	\N	\N
qkanxqd13dl	1o4mazo8kd0	8	\N	\N	\N
mexjj7b1g93	nk5ihe0ofrc	7	\N	\N	\N
mexjj7b1g93	fewsuwh96j5	8	\N	\N	\N
mexjj7b1g93	1o4mazo8kd0	9	\N	\N	\N
pgsd6vdilnn	nk5ihe0ofrc	8	\N	\N	\N
pgsd6vdilnn	fewsuwh96j5	9	\N	\N	\N
pgsd6vdilnn	1o4mazo8kd0	10	\N	\N	\N
ypqs0x71ybe	nk5ihe0ofrc	9	\N	\N	\N
ypqs0x71ybe	fewsuwh96j5	10	\N	\N	\N
ypqs0x71ybe	1o4mazo8kd0	11	\N	\N	\N
u62y9zt7gwu	nk5ihe0ofrc	10	\N	\N	\N
u62y9zt7gwu	fewsuwh96j5	11	\N	\N	\N
u62y9zt7gwu	1o4mazo8kd0	12	\N	\N	\N
yc5x6qvg4mh	nk5ihe0ofrc	11	\N	\N	\N
yc5x6qvg4mh	fewsuwh96j5	12	\N	\N	\N
yc5x6qvg4mh	1o4mazo8kd0	13	\N	\N	\N
ao2a67rjlld	nk5ihe0ofrc	12	\N	\N	\N
ao2a67rjlld	fewsuwh96j5	13	\N	\N	\N
ao2a67rjlld	1o4mazo8kd0	14	\N	\N	\N
bwbd6lebhkb	nk5ihe0ofrc	13	\N	\N	\N
bwbd6lebhkb	fewsuwh96j5	14	\N	\N	\N
nk5ihe0ofrc	nk5ihe0ofrc	0	f	properties	\N
n596xt7b4gz	nk5ihe0ofrc	1	\N	\N	4
89nfa89tbje	ff39sktd5ow	12	\N	\N	\N
nc92u2m878d	jn9py3ik437	13	\N	\N	\N
c5ha41uevsk	7jrdbvcj410	2	\N	\N	\N
3fffemef0cp	o3j0f3cycr5	2	\N	\N	\N
3fffemef0cp	7jrdbvcj410	3	\N	\N	\N
baejb3hqiri	o3j0f3cycr5	3	\N	\N	\N
baejb3hqiri	7jrdbvcj410	4	\N	\N	\N
zvja1suwswo	o3j0f3cycr5	4	\N	\N	\N
zvja1suwswo	7jrdbvcj410	5	\N	\N	\N
1cnwu64uyw3	o3j0f3cycr5	5	\N	\N	\N
1cnwu64uyw3	7jrdbvcj410	6	\N	\N	\N
zwh6db27axk	o3j0f3cycr5	6	\N	\N	\N
zwh6db27axk	7jrdbvcj410	7	\N	\N	\N
5b0fu481dm6	o3j0f3cycr5	7	\N	\N	\N
5b0fu481dm6	7jrdbvcj410	8	\N	\N	\N
1dvfg1afm18	o3j0f3cycr5	8	\N	\N	\N
1dvfg1afm18	7jrdbvcj410	9	\N	\N	\N
q3rv0rnfki7	o3j0f3cycr5	9	\N	\N	\N
q3rv0rnfki7	7jrdbvcj410	10	\N	\N	\N
w4ciktesp5j	o3j0f3cycr5	10	\N	\N	\N
w4ciktesp5j	7jrdbvcj410	11	\N	\N	\N
tg2hn64ei8t	o3j0f3cycr5	11	\N	\N	\N
tg2hn64ei8t	7jrdbvcj410	12	\N	\N	\N
44890jxlzup	o3j0f3cycr5	12	\N	\N	\N
44890jxlzup	7jrdbvcj410	13	\N	\N	\N
xa635tbvi5c	o3j0f3cycr5	13	\N	\N	\N
xa635tbvi5c	7jrdbvcj410	14	\N	\N	\N
4dgysxrfq7o	o3j0f3cycr5	14	\N	\N	\N
4dgysxrfq7o	7jrdbvcj410	15	\N	\N	\N
sf8fl742bgm	o3j0f3cycr5	15	\N	\N	\N
sf8fl742bgm	7jrdbvcj410	16	\N	\N	\N
sptin92gm5m	o3j0f3cycr5	16	\N	\N	\N
sptin92gm5m	7jrdbvcj410	17	\N	\N	\N
i0lnhtci4u6	o3j0f3cycr5	17	\N	\N	\N
i0lnhtci4u6	7jrdbvcj410	18	\N	\N	\N
swxvjglsevf	o3j0f3cycr5	18	\N	\N	\N
swxvjglsevf	7jrdbvcj410	19	\N	\N	\N
nocobase-admin-menu	o3j0f3cycr5	19	\N	\N	\N
nocobase-admin-menu	7jrdbvcj410	20	\N	\N	\N
c5ha41uevsk	o3j0f3cycr5	1	\N	\N	2
bwbd6lebhkb	1o4mazo8kd0	15	\N	\N	\N
m8tbcrs4z9t	nk5ihe0ofrc	14	\N	\N	\N
m8tbcrs4z9t	fewsuwh96j5	15	\N	\N	\N
m8tbcrs4z9t	1o4mazo8kd0	16	\N	\N	\N
q4dinm52meb	nk5ihe0ofrc	15	\N	\N	\N
q4dinm52meb	fewsuwh96j5	16	\N	\N	\N
q4dinm52meb	1o4mazo8kd0	17	\N	\N	\N
vs0l89adzhc	nk5ihe0ofrc	16	\N	\N	\N
vs0l89adzhc	fewsuwh96j5	17	\N	\N	\N
vs0l89adzhc	1o4mazo8kd0	18	\N	\N	\N
493pimn830r	nk5ihe0ofrc	17	\N	\N	\N
493pimn830r	fewsuwh96j5	18	\N	\N	\N
493pimn830r	1o4mazo8kd0	19	\N	\N	\N
nocobase-admin-menu	nk5ihe0ofrc	18	\N	\N	\N
nocobase-admin-menu	fewsuwh96j5	19	\N	\N	\N
nocobase-admin-menu	1o4mazo8kd0	20	\N	\N	\N
9y2lst1ttb7	9y2lst1ttb7	0	f	properties	\N
nxd1qkr7fcc	9y2lst1ttb7	1	\N	\N	1
e0m6mgk2io2	e0m6mgk2io2	0	f	properties	\N
9y2lst1ttb7	e0m6mgk2io2	1	\N	\N	1
nxd1qkr7fcc	e0m6mgk2io2	2	\N	\N	1
n596xt7b4gz	9y2lst1ttb7	2	\N	\N	\N
n596xt7b4gz	e0m6mgk2io2	3	\N	\N	\N
0ypbdd2x5je	nxd1qkr7fcc	2	\N	\N	\N
0ypbdd2x5je	9y2lst1ttb7	3	\N	\N	\N
0ypbdd2x5je	e0m6mgk2io2	4	\N	\N	\N
i99shgxsfzv	nxd1qkr7fcc	3	\N	\N	\N
i99shgxsfzv	9y2lst1ttb7	4	\N	\N	\N
i99shgxsfzv	e0m6mgk2io2	5	\N	\N	\N
6e6up9qf6jw	nxd1qkr7fcc	4	\N	\N	\N
6e6up9qf6jw	9y2lst1ttb7	5	\N	\N	\N
6e6up9qf6jw	e0m6mgk2io2	6	\N	\N	\N
q5sp3fyrz47	nxd1qkr7fcc	5	\N	\N	\N
q5sp3fyrz47	9y2lst1ttb7	6	\N	\N	\N
q5sp3fyrz47	e0m6mgk2io2	7	\N	\N	\N
qkanxqd13dl	nxd1qkr7fcc	6	\N	\N	\N
qkanxqd13dl	9y2lst1ttb7	7	\N	\N	\N
qkanxqd13dl	e0m6mgk2io2	8	\N	\N	\N
mexjj7b1g93	nxd1qkr7fcc	7	\N	\N	\N
mexjj7b1g93	9y2lst1ttb7	8	\N	\N	\N
mexjj7b1g93	e0m6mgk2io2	9	\N	\N	\N
pgsd6vdilnn	nxd1qkr7fcc	8	\N	\N	\N
pgsd6vdilnn	9y2lst1ttb7	9	\N	\N	\N
pgsd6vdilnn	e0m6mgk2io2	10	\N	\N	\N
ypqs0x71ybe	nxd1qkr7fcc	9	\N	\N	\N
ypqs0x71ybe	9y2lst1ttb7	10	\N	\N	\N
ypqs0x71ybe	e0m6mgk2io2	11	\N	\N	\N
u62y9zt7gwu	nxd1qkr7fcc	10	\N	\N	\N
u62y9zt7gwu	9y2lst1ttb7	11	\N	\N	\N
u62y9zt7gwu	e0m6mgk2io2	12	\N	\N	\N
yc5x6qvg4mh	nxd1qkr7fcc	11	\N	\N	\N
yc5x6qvg4mh	9y2lst1ttb7	12	\N	\N	\N
yc5x6qvg4mh	e0m6mgk2io2	13	\N	\N	\N
ao2a67rjlld	nxd1qkr7fcc	12	\N	\N	\N
ao2a67rjlld	9y2lst1ttb7	13	\N	\N	\N
ao2a67rjlld	e0m6mgk2io2	14	\N	\N	\N
bwbd6lebhkb	nxd1qkr7fcc	13	\N	\N	\N
bwbd6lebhkb	9y2lst1ttb7	14	\N	\N	\N
bwbd6lebhkb	e0m6mgk2io2	15	\N	\N	\N
m8tbcrs4z9t	nxd1qkr7fcc	14	\N	\N	\N
m8tbcrs4z9t	9y2lst1ttb7	15	\N	\N	\N
m8tbcrs4z9t	e0m6mgk2io2	16	\N	\N	\N
q4dinm52meb	nxd1qkr7fcc	15	\N	\N	\N
q4dinm52meb	9y2lst1ttb7	16	\N	\N	\N
q4dinm52meb	e0m6mgk2io2	17	\N	\N	\N
vs0l89adzhc	nxd1qkr7fcc	16	\N	\N	\N
vs0l89adzhc	9y2lst1ttb7	17	\N	\N	\N
vs0l89adzhc	e0m6mgk2io2	18	\N	\N	\N
493pimn830r	nxd1qkr7fcc	17	\N	\N	\N
493pimn830r	9y2lst1ttb7	18	\N	\N	\N
493pimn830r	e0m6mgk2io2	19	\N	\N	\N
nocobase-admin-menu	nxd1qkr7fcc	18	\N	\N	\N
nocobase-admin-menu	9y2lst1ttb7	19	\N	\N	\N
nocobase-admin-menu	e0m6mgk2io2	20	\N	\N	\N
nxd1qkr7fcc	nxd1qkr7fcc	0	f	properties	\N
n596xt7b4gz	nxd1qkr7fcc	1	\N	\N	5
nc92u2m878d	asdvjj2f2ep	14	\N	\N	\N
tbnpnb6qaq5	tbnpnb6qaq5	0	f	properties	\N
7lo8pf0a9b2	tbnpnb6qaq5	1	\N	\N	1
s2n46ebz6ox	s2n46ebz6ox	0	f	properties	\N
tbnpnb6qaq5	s2n46ebz6ox	1	\N	\N	1
7lo8pf0a9b2	s2n46ebz6ox	2	\N	\N	1
nc92u2m878d	ff39sktd5ow	15	\N	\N	\N
n596xt7b4gz	tbnpnb6qaq5	2	\N	\N	\N
n596xt7b4gz	s2n46ebz6ox	3	\N	\N	\N
0ypbdd2x5je	7lo8pf0a9b2	2	\N	\N	\N
0ypbdd2x5je	tbnpnb6qaq5	3	\N	\N	\N
0ypbdd2x5je	s2n46ebz6ox	4	\N	\N	\N
i99shgxsfzv	7lo8pf0a9b2	3	\N	\N	\N
i99shgxsfzv	tbnpnb6qaq5	4	\N	\N	\N
i99shgxsfzv	s2n46ebz6ox	5	\N	\N	\N
6e6up9qf6jw	7lo8pf0a9b2	4	\N	\N	\N
6e6up9qf6jw	tbnpnb6qaq5	5	\N	\N	\N
6e6up9qf6jw	s2n46ebz6ox	6	\N	\N	\N
q5sp3fyrz47	7lo8pf0a9b2	5	\N	\N	\N
q5sp3fyrz47	tbnpnb6qaq5	6	\N	\N	\N
0ubcv6ojxmb	0ubcv6ojxmb	0	f	properties	\N
w3cqnks1ky7	0ubcv6ojxmb	1	\N	\N	1
c5ha41uevsk	0ubcv6ojxmb	2	\N	\N	\N
3fffemef0cp	w3cqnks1ky7	2	\N	\N	\N
3fffemef0cp	0ubcv6ojxmb	3	\N	\N	\N
baejb3hqiri	w3cqnks1ky7	3	\N	\N	\N
baejb3hqiri	0ubcv6ojxmb	4	\N	\N	\N
zvja1suwswo	w3cqnks1ky7	4	\N	\N	\N
zvja1suwswo	0ubcv6ojxmb	5	\N	\N	\N
1cnwu64uyw3	w3cqnks1ky7	5	\N	\N	\N
1cnwu64uyw3	0ubcv6ojxmb	6	\N	\N	\N
zwh6db27axk	w3cqnks1ky7	6	\N	\N	\N
zwh6db27axk	0ubcv6ojxmb	7	\N	\N	\N
5b0fu481dm6	w3cqnks1ky7	7	\N	\N	\N
5b0fu481dm6	0ubcv6ojxmb	8	\N	\N	\N
1dvfg1afm18	w3cqnks1ky7	8	\N	\N	\N
1dvfg1afm18	0ubcv6ojxmb	9	\N	\N	\N
q3rv0rnfki7	w3cqnks1ky7	9	\N	\N	\N
q3rv0rnfki7	0ubcv6ojxmb	10	\N	\N	\N
w4ciktesp5j	w3cqnks1ky7	10	\N	\N	\N
w4ciktesp5j	0ubcv6ojxmb	11	\N	\N	\N
tg2hn64ei8t	w3cqnks1ky7	11	\N	\N	\N
tg2hn64ei8t	0ubcv6ojxmb	12	\N	\N	\N
44890jxlzup	w3cqnks1ky7	12	\N	\N	\N
44890jxlzup	0ubcv6ojxmb	13	\N	\N	\N
xa635tbvi5c	w3cqnks1ky7	13	\N	\N	\N
xa635tbvi5c	0ubcv6ojxmb	14	\N	\N	\N
4dgysxrfq7o	w3cqnks1ky7	14	\N	\N	\N
4dgysxrfq7o	0ubcv6ojxmb	15	\N	\N	\N
sf8fl742bgm	w3cqnks1ky7	15	\N	\N	\N
sf8fl742bgm	0ubcv6ojxmb	16	\N	\N	\N
sptin92gm5m	w3cqnks1ky7	16	\N	\N	\N
sptin92gm5m	0ubcv6ojxmb	17	\N	\N	\N
i0lnhtci4u6	w3cqnks1ky7	17	\N	\N	\N
i0lnhtci4u6	0ubcv6ojxmb	18	\N	\N	\N
swxvjglsevf	w3cqnks1ky7	18	\N	\N	\N
swxvjglsevf	0ubcv6ojxmb	19	\N	\N	\N
nocobase-admin-menu	w3cqnks1ky7	19	\N	\N	\N
nocobase-admin-menu	0ubcv6ojxmb	20	\N	\N	\N
w3cqnks1ky7	w3cqnks1ky7	0	f	properties	\N
c5ha41uevsk	w3cqnks1ky7	1	\N	\N	4
q5sp3fyrz47	s2n46ebz6ox	7	\N	\N	\N
qkanxqd13dl	7lo8pf0a9b2	6	\N	\N	\N
qkanxqd13dl	tbnpnb6qaq5	7	\N	\N	\N
qkanxqd13dl	s2n46ebz6ox	8	\N	\N	\N
mexjj7b1g93	7lo8pf0a9b2	7	\N	\N	\N
mexjj7b1g93	tbnpnb6qaq5	8	\N	\N	\N
mexjj7b1g93	s2n46ebz6ox	9	\N	\N	\N
pgsd6vdilnn	7lo8pf0a9b2	8	\N	\N	\N
pgsd6vdilnn	tbnpnb6qaq5	9	\N	\N	\N
pgsd6vdilnn	s2n46ebz6ox	10	\N	\N	\N
ypqs0x71ybe	7lo8pf0a9b2	9	\N	\N	\N
ypqs0x71ybe	tbnpnb6qaq5	10	\N	\N	\N
ypqs0x71ybe	s2n46ebz6ox	11	\N	\N	\N
u62y9zt7gwu	7lo8pf0a9b2	10	\N	\N	\N
u62y9zt7gwu	tbnpnb6qaq5	11	\N	\N	\N
u62y9zt7gwu	s2n46ebz6ox	12	\N	\N	\N
yc5x6qvg4mh	7lo8pf0a9b2	11	\N	\N	\N
yc5x6qvg4mh	tbnpnb6qaq5	12	\N	\N	\N
yc5x6qvg4mh	s2n46ebz6ox	13	\N	\N	\N
ao2a67rjlld	7lo8pf0a9b2	12	\N	\N	\N
ao2a67rjlld	tbnpnb6qaq5	13	\N	\N	\N
ao2a67rjlld	s2n46ebz6ox	14	\N	\N	\N
bwbd6lebhkb	7lo8pf0a9b2	13	\N	\N	\N
bwbd6lebhkb	tbnpnb6qaq5	14	\N	\N	\N
bwbd6lebhkb	s2n46ebz6ox	15	\N	\N	\N
m8tbcrs4z9t	7lo8pf0a9b2	14	\N	\N	\N
m8tbcrs4z9t	tbnpnb6qaq5	15	\N	\N	\N
m8tbcrs4z9t	s2n46ebz6ox	16	\N	\N	\N
q4dinm52meb	7lo8pf0a9b2	15	\N	\N	\N
q4dinm52meb	tbnpnb6qaq5	16	\N	\N	\N
q4dinm52meb	s2n46ebz6ox	17	\N	\N	\N
vs0l89adzhc	7lo8pf0a9b2	16	\N	\N	\N
vs0l89adzhc	tbnpnb6qaq5	17	\N	\N	\N
vs0l89adzhc	s2n46ebz6ox	18	\N	\N	\N
493pimn830r	7lo8pf0a9b2	17	\N	\N	\N
493pimn830r	tbnpnb6qaq5	18	\N	\N	\N
493pimn830r	s2n46ebz6ox	19	\N	\N	\N
nocobase-admin-menu	7lo8pf0a9b2	18	\N	\N	\N
nocobase-admin-menu	tbnpnb6qaq5	19	\N	\N	\N
nocobase-admin-menu	s2n46ebz6ox	20	\N	\N	\N
7lo8pf0a9b2	7lo8pf0a9b2	0	f	properties	\N
n596xt7b4gz	7lo8pf0a9b2	1	\N	\N	6
jiq42lrek0j	jn9py3ik437	14	\N	\N	\N
jiq42lrek0j	asdvjj2f2ep	15	\N	\N	\N
jiq42lrek0j	ff39sktd5ow	16	\N	\N	\N
jn9py3ik437	jn9py3ik437	0	f	properties	\N
7x6oyetmotw	jn9py3ik437	1	\N	\N	2
nocobase-admin-menu	qnzmj17al63	23	\N	\N	\N
uucrlkvfum6	uucrlkvfum6	0	f	properties	\N
92aku8acnew	92aku8acnew	0	f	properties	\N
ypqs0x71ybe	ypqs0x71ybe	0	f	properties	\N
u62y9zt7gwu	ypqs0x71ybe	1	\N	\N	1
pgsd6vdilnn	pgsd6vdilnn	0	f	properties	\N
ypqs0x71ybe	pgsd6vdilnn	1	\N	\N	1
u62y9zt7gwu	pgsd6vdilnn	2	\N	\N	1
mexjj7b1g93	mexjj7b1g93	0	f	properties	\N
pgsd6vdilnn	mexjj7b1g93	1	\N	\N	1
ypqs0x71ybe	mexjj7b1g93	2	\N	\N	1
u62y9zt7gwu	mexjj7b1g93	3	\N	\N	1
qkanxqd13dl	qkanxqd13dl	0	f	properties	\N
mexjj7b1g93	qkanxqd13dl	1	\N	\N	1
pgsd6vdilnn	qkanxqd13dl	2	\N	\N	1
ypqs0x71ybe	qkanxqd13dl	3	\N	\N	1
u62y9zt7gwu	qkanxqd13dl	4	\N	\N	1
yc5x6qvg4mh	ypqs0x71ybe	2	\N	\N	\N
yc5x6qvg4mh	pgsd6vdilnn	3	\N	\N	\N
yc5x6qvg4mh	mexjj7b1g93	4	\N	\N	\N
yc5x6qvg4mh	qkanxqd13dl	5	\N	\N	\N
ao2a67rjlld	u62y9zt7gwu	2	\N	\N	\N
ao2a67rjlld	ypqs0x71ybe	3	\N	\N	\N
ao2a67rjlld	pgsd6vdilnn	4	\N	\N	\N
ao2a67rjlld	mexjj7b1g93	5	\N	\N	\N
ao2a67rjlld	qkanxqd13dl	6	\N	\N	\N
bwbd6lebhkb	u62y9zt7gwu	3	\N	\N	\N
bwbd6lebhkb	ypqs0x71ybe	4	\N	\N	\N
bwbd6lebhkb	pgsd6vdilnn	5	\N	\N	\N
bwbd6lebhkb	mexjj7b1g93	6	\N	\N	\N
bwbd6lebhkb	qkanxqd13dl	7	\N	\N	\N
m8tbcrs4z9t	u62y9zt7gwu	4	\N	\N	\N
m8tbcrs4z9t	ypqs0x71ybe	5	\N	\N	\N
m8tbcrs4z9t	pgsd6vdilnn	6	\N	\N	\N
m8tbcrs4z9t	mexjj7b1g93	7	\N	\N	\N
m8tbcrs4z9t	qkanxqd13dl	8	\N	\N	\N
q4dinm52meb	u62y9zt7gwu	5	\N	\N	\N
q4dinm52meb	ypqs0x71ybe	6	\N	\N	\N
q4dinm52meb	pgsd6vdilnn	7	\N	\N	\N
q4dinm52meb	mexjj7b1g93	8	\N	\N	\N
q4dinm52meb	qkanxqd13dl	9	\N	\N	\N
vs0l89adzhc	u62y9zt7gwu	6	\N	\N	\N
vs0l89adzhc	ypqs0x71ybe	7	\N	\N	\N
vs0l89adzhc	pgsd6vdilnn	8	\N	\N	\N
vs0l89adzhc	mexjj7b1g93	9	\N	\N	\N
vs0l89adzhc	qkanxqd13dl	10	\N	\N	\N
493pimn830r	u62y9zt7gwu	7	\N	\N	\N
493pimn830r	ypqs0x71ybe	8	\N	\N	\N
493pimn830r	pgsd6vdilnn	9	\N	\N	\N
493pimn830r	mexjj7b1g93	10	\N	\N	\N
493pimn830r	qkanxqd13dl	11	\N	\N	\N
nocobase-admin-menu	u62y9zt7gwu	8	\N	\N	\N
nocobase-admin-menu	ypqs0x71ybe	9	\N	\N	\N
nocobase-admin-menu	pgsd6vdilnn	10	\N	\N	\N
nocobase-admin-menu	mexjj7b1g93	11	\N	\N	\N
nocobase-admin-menu	qkanxqd13dl	12	\N	\N	\N
u62y9zt7gwu	u62y9zt7gwu	0	f	properties	\N
yc5x6qvg4mh	u62y9zt7gwu	1	\N	\N	1
hmft2ujv1uf	pbpsju21w1y	7	\N	\N	\N
pde5ayqzqo1	n65uanub9sx	2	\N	\N	\N
v4rijabnpgp	v4rijabnpgp	0	f	properties	\N
r6v5yp99nbl	v4rijabnpgp	1	\N	\N	1
zwlt9p2m4v5	zwlt9p2m4v5	0	f	properties	\N
v4rijabnpgp	zwlt9p2m4v5	1	\N	\N	1
r6v5yp99nbl	zwlt9p2m4v5	2	\N	\N	1
n596xt7b4gz	v4rijabnpgp	2	\N	\N	\N
n596xt7b4gz	zwlt9p2m4v5	3	\N	\N	\N
0ypbdd2x5je	r6v5yp99nbl	2	\N	\N	\N
0ypbdd2x5je	v4rijabnpgp	3	\N	\N	\N
0ypbdd2x5je	zwlt9p2m4v5	4	\N	\N	\N
i99shgxsfzv	r6v5yp99nbl	3	\N	\N	\N
i99shgxsfzv	v4rijabnpgp	4	\N	\N	\N
i99shgxsfzv	zwlt9p2m4v5	5	\N	\N	\N
6e6up9qf6jw	r6v5yp99nbl	4	\N	\N	\N
6e6up9qf6jw	v4rijabnpgp	5	\N	\N	\N
6e6up9qf6jw	zwlt9p2m4v5	6	\N	\N	\N
pde5ayqzqo1	fvz3km1i6ms	2	\N	\N	\N
q5sp3fyrz47	r6v5yp99nbl	5	\N	\N	\N
q5sp3fyrz47	v4rijabnpgp	6	\N	\N	\N
q5sp3fyrz47	zwlt9p2m4v5	7	\N	\N	\N
qkanxqd13dl	r6v5yp99nbl	6	\N	\N	\N
qkanxqd13dl	v4rijabnpgp	7	\N	\N	\N
qkanxqd13dl	zwlt9p2m4v5	8	\N	\N	\N
mexjj7b1g93	r6v5yp99nbl	7	\N	\N	\N
mexjj7b1g93	v4rijabnpgp	8	\N	\N	\N
ktjaxuy24vi	ktjaxuy24vi	0	f	properties	\N
pf5jgr5qt8w	ktjaxuy24vi	1	\N	\N	1
mexjj7b1g93	zwlt9p2m4v5	9	\N	\N	\N
pgsd6vdilnn	r6v5yp99nbl	8	\N	\N	\N
pgsd6vdilnn	v4rijabnpgp	9	\N	\N	\N
pf5jgr5qt8w	pf5jgr5qt8w	0	f	properties	\N
pgsd6vdilnn	zwlt9p2m4v5	10	\N	\N	\N
ypqs0x71ybe	r6v5yp99nbl	9	\N	\N	\N
ypqs0x71ybe	v4rijabnpgp	10	\N	\N	\N
ypqs0x71ybe	zwlt9p2m4v5	11	\N	\N	\N
u62y9zt7gwu	r6v5yp99nbl	10	\N	\N	\N
u62y9zt7gwu	v4rijabnpgp	11	\N	\N	\N
u62y9zt7gwu	zwlt9p2m4v5	12	\N	\N	\N
yc5x6qvg4mh	r6v5yp99nbl	11	\N	\N	\N
yc5x6qvg4mh	v4rijabnpgp	12	\N	\N	\N
yc5x6qvg4mh	zwlt9p2m4v5	13	\N	\N	\N
ao2a67rjlld	r6v5yp99nbl	12	\N	\N	\N
ao2a67rjlld	v4rijabnpgp	13	\N	\N	\N
ao2a67rjlld	zwlt9p2m4v5	14	\N	\N	\N
bwbd6lebhkb	r6v5yp99nbl	13	\N	\N	\N
bwbd6lebhkb	v4rijabnpgp	14	\N	\N	\N
bwbd6lebhkb	zwlt9p2m4v5	15	\N	\N	\N
m8tbcrs4z9t	r6v5yp99nbl	14	\N	\N	\N
m8tbcrs4z9t	v4rijabnpgp	15	\N	\N	\N
m8tbcrs4z9t	zwlt9p2m4v5	16	\N	\N	\N
q4dinm52meb	r6v5yp99nbl	15	\N	\N	\N
q4dinm52meb	v4rijabnpgp	16	\N	\N	\N
q4dinm52meb	zwlt9p2m4v5	17	\N	\N	\N
vs0l89adzhc	r6v5yp99nbl	16	\N	\N	\N
vs0l89adzhc	v4rijabnpgp	17	\N	\N	\N
vs0l89adzhc	zwlt9p2m4v5	18	\N	\N	\N
493pimn830r	r6v5yp99nbl	17	\N	\N	\N
493pimn830r	v4rijabnpgp	18	\N	\N	\N
493pimn830r	zwlt9p2m4v5	19	\N	\N	\N
nocobase-admin-menu	r6v5yp99nbl	18	\N	\N	\N
nocobase-admin-menu	v4rijabnpgp	19	\N	\N	\N
nocobase-admin-menu	zwlt9p2m4v5	20	\N	\N	\N
r6v5yp99nbl	r6v5yp99nbl	0	f	properties	\N
n596xt7b4gz	r6v5yp99nbl	1	\N	\N	8
ilc9ma1uakv	ilc9ma1uakv	0	f	properties	\N
xw2eyjxkao7	xw2eyjxkao7	0	f	properties	\N
pde5ayqzqo1	b410c64osaf	1	\N	\N	1
xw2eyjxkao7	ilc9ma1uakv	1	\N	\N	1
xhaimvl6v3t	xhaimvl6v3t	0	f	properties	\N
ilc9ma1uakv	xhaimvl6v3t	1	\N	\N	1
xw2eyjxkao7	xhaimvl6v3t	2	\N	\N	1
n596xt7b4gz	ilc9ma1uakv	2	\N	\N	\N
n596xt7b4gz	xhaimvl6v3t	3	\N	\N	\N
0ypbdd2x5je	xw2eyjxkao7	2	\N	\N	\N
0ypbdd2x5je	ilc9ma1uakv	3	\N	\N	\N
0ypbdd2x5je	xhaimvl6v3t	4	\N	\N	\N
i99shgxsfzv	xw2eyjxkao7	3	\N	\N	\N
i99shgxsfzv	ilc9ma1uakv	4	\N	\N	\N
i99shgxsfzv	xhaimvl6v3t	5	\N	\N	\N
6e6up9qf6jw	xw2eyjxkao7	4	\N	\N	\N
6e6up9qf6jw	ilc9ma1uakv	5	\N	\N	\N
6e6up9qf6jw	xhaimvl6v3t	6	\N	\N	\N
q5sp3fyrz47	xw2eyjxkao7	5	\N	\N	\N
q5sp3fyrz47	ilc9ma1uakv	6	\N	\N	\N
q5sp3fyrz47	xhaimvl6v3t	7	\N	\N	\N
qkanxqd13dl	xw2eyjxkao7	6	\N	\N	\N
qkanxqd13dl	ilc9ma1uakv	7	\N	\N	\N
qkanxqd13dl	xhaimvl6v3t	8	\N	\N	\N
mexjj7b1g93	xw2eyjxkao7	7	\N	\N	\N
mexjj7b1g93	ilc9ma1uakv	8	\N	\N	\N
mexjj7b1g93	xhaimvl6v3t	9	\N	\N	\N
pgsd6vdilnn	xw2eyjxkao7	8	\N	\N	\N
pgsd6vdilnn	ilc9ma1uakv	9	\N	\N	\N
pgsd6vdilnn	xhaimvl6v3t	10	\N	\N	\N
ypqs0x71ybe	xw2eyjxkao7	9	\N	\N	\N
ypqs0x71ybe	ilc9ma1uakv	10	\N	\N	\N
ypqs0x71ybe	xhaimvl6v3t	11	\N	\N	\N
u62y9zt7gwu	xw2eyjxkao7	10	\N	\N	\N
nocobase-admin-menu	pbpsju21w1y	8	\N	\N	\N
u62y9zt7gwu	ilc9ma1uakv	11	\N	\N	\N
u62y9zt7gwu	xhaimvl6v3t	12	\N	\N	\N
yc5x6qvg4mh	xw2eyjxkao7	11	\N	\N	\N
yc5x6qvg4mh	ilc9ma1uakv	12	\N	\N	\N
yc5x6qvg4mh	xhaimvl6v3t	13	\N	\N	\N
ao2a67rjlld	xw2eyjxkao7	12	\N	\N	\N
ao2a67rjlld	ilc9ma1uakv	13	\N	\N	\N
ao2a67rjlld	xhaimvl6v3t	14	\N	\N	\N
bwbd6lebhkb	xw2eyjxkao7	13	\N	\N	\N
bwbd6lebhkb	ilc9ma1uakv	14	\N	\N	\N
bwbd6lebhkb	xhaimvl6v3t	15	\N	\N	\N
m8tbcrs4z9t	xw2eyjxkao7	14	\N	\N	\N
m8tbcrs4z9t	ilc9ma1uakv	15	\N	\N	\N
m8tbcrs4z9t	xhaimvl6v3t	16	\N	\N	\N
q4dinm52meb	xw2eyjxkao7	15	\N	\N	\N
q4dinm52meb	ilc9ma1uakv	16	\N	\N	\N
q4dinm52meb	xhaimvl6v3t	17	\N	\N	\N
vs0l89adzhc	xw2eyjxkao7	16	\N	\N	\N
vs0l89adzhc	ilc9ma1uakv	17	\N	\N	\N
vs0l89adzhc	xhaimvl6v3t	18	\N	\N	\N
493pimn830r	xw2eyjxkao7	17	\N	\N	\N
493pimn830r	ilc9ma1uakv	18	\N	\N	\N
493pimn830r	xhaimvl6v3t	19	\N	\N	\N
nocobase-admin-menu	xw2eyjxkao7	18	\N	\N	\N
nocobase-admin-menu	ilc9ma1uakv	19	\N	\N	\N
nocobase-admin-menu	xhaimvl6v3t	20	\N	\N	\N
n596xt7b4gz	xw2eyjxkao7	1	\N	\N	9
8z2v8mkvtfb	8z2v8mkvtfb	0	f	properties	\N
0ypbdd2x5je	8z2v8mkvtfb	2	\N	\N	\N
i99shgxsfzv	8z2v8mkvtfb	3	\N	\N	\N
6e6up9qf6jw	8z2v8mkvtfb	4	\N	\N	\N
q5sp3fyrz47	8z2v8mkvtfb	5	\N	\N	\N
qkanxqd13dl	8z2v8mkvtfb	6	\N	\N	\N
mexjj7b1g93	8z2v8mkvtfb	7	\N	\N	\N
pgsd6vdilnn	8z2v8mkvtfb	8	\N	\N	\N
ypqs0x71ybe	8z2v8mkvtfb	9	\N	\N	\N
u62y9zt7gwu	8z2v8mkvtfb	10	\N	\N	\N
yc5x6qvg4mh	8z2v8mkvtfb	11	\N	\N	\N
ao2a67rjlld	8z2v8mkvtfb	12	\N	\N	\N
bwbd6lebhkb	8z2v8mkvtfb	13	\N	\N	\N
m8tbcrs4z9t	8z2v8mkvtfb	14	\N	\N	\N
q4dinm52meb	8z2v8mkvtfb	15	\N	\N	\N
vs0l89adzhc	8z2v8mkvtfb	16	\N	\N	\N
493pimn830r	8z2v8mkvtfb	17	\N	\N	\N
nocobase-admin-menu	8z2v8mkvtfb	18	\N	\N	\N
vpvmqhclo5c	8z2v8mkvtfb	1	\N	\N	1
darepap4yo5	darepap4yo5	0	f	properties	\N
3fffemef0cp	darepap4yo5	2	\N	\N	\N
baejb3hqiri	darepap4yo5	3	\N	\N	\N
zvja1suwswo	darepap4yo5	4	\N	\N	\N
1cnwu64uyw3	darepap4yo5	5	\N	\N	\N
zwh6db27axk	darepap4yo5	6	\N	\N	\N
5b0fu481dm6	darepap4yo5	7	\N	\N	\N
1dvfg1afm18	darepap4yo5	8	\N	\N	\N
q3rv0rnfki7	darepap4yo5	9	\N	\N	\N
w4ciktesp5j	darepap4yo5	10	\N	\N	\N
tg2hn64ei8t	darepap4yo5	11	\N	\N	\N
44890jxlzup	darepap4yo5	12	\N	\N	\N
xa635tbvi5c	darepap4yo5	13	\N	\N	\N
4dgysxrfq7o	darepap4yo5	14	\N	\N	\N
sf8fl742bgm	darepap4yo5	15	\N	\N	\N
sptin92gm5m	darepap4yo5	16	\N	\N	\N
i0lnhtci4u6	darepap4yo5	17	\N	\N	\N
swxvjglsevf	darepap4yo5	18	\N	\N	\N
nocobase-admin-menu	darepap4yo5	19	\N	\N	\N
4gnesuyiq9w	darepap4yo5	1	\N	\N	1
yivjshzifwl	n65uanub9sx	3	\N	\N	\N
yivjshzifwl	fvz3km1i6ms	3	\N	\N	\N
yivjshzifwl	b410c64osaf	2	\N	\N	\N
7poa6levyva	pde5ayqzqo1	2	\N	\N	\N
7poa6levyva	n65uanub9sx	4	\N	\N	\N
7poa6levyva	fvz3km1i6ms	4	\N	\N	\N
wtu8v3wspnv	wtu8v3wspnv	0	f	properties	\N
dv1xjwdmvcg	wtu8v3wspnv	1	\N	\N	1
oi4cs4tbslz	oi4cs4tbslz	0	f	properties	\N
wtu8v3wspnv	oi4cs4tbslz	1	\N	\N	1
dv1xjwdmvcg	oi4cs4tbslz	2	\N	\N	1
w149la0utnx	dv1xjwdmvcg	15	\N	\N	\N
w149la0utnx	wtu8v3wspnv	16	\N	\N	\N
w149la0utnx	oi4cs4tbslz	17	\N	\N	\N
z02388u42s9	dv1xjwdmvcg	16	\N	\N	\N
z02388u42s9	wtu8v3wspnv	17	\N	\N	\N
z02388u42s9	oi4cs4tbslz	18	\N	\N	\N
llvsctq28hp	dv1xjwdmvcg	17	\N	\N	\N
llvsctq28hp	wtu8v3wspnv	18	\N	\N	\N
llvsctq28hp	oi4cs4tbslz	19	\N	\N	\N
8xvbgh18zfk	dv1xjwdmvcg	18	\N	\N	\N
8xvbgh18zfk	wtu8v3wspnv	19	\N	\N	\N
8xvbgh18zfk	oi4cs4tbslz	20	\N	\N	\N
2pij3wiepc4	dv1xjwdmvcg	19	\N	\N	\N
2pij3wiepc4	wtu8v3wspnv	20	\N	\N	\N
2pij3wiepc4	oi4cs4tbslz	21	\N	\N	\N
we414l1saan	dv1xjwdmvcg	20	\N	\N	\N
we414l1saan	wtu8v3wspnv	21	\N	\N	\N
we414l1saan	oi4cs4tbslz	22	\N	\N	\N
t4v2kcudvg5	dv1xjwdmvcg	11	\N	\N	\N
t4v2kcudvg5	wtu8v3wspnv	12	\N	\N	\N
t4v2kcudvg5	oi4cs4tbslz	13	\N	\N	\N
q9zjnv8mc9j	dv1xjwdmvcg	12	\N	\N	\N
q9zjnv8mc9j	wtu8v3wspnv	13	\N	\N	\N
q9zjnv8mc9j	oi4cs4tbslz	14	\N	\N	\N
nocobase-admin-menu	dv1xjwdmvcg	21	\N	\N	\N
nocobase-admin-menu	wtu8v3wspnv	22	\N	\N	\N
nocobase-admin-menu	oi4cs4tbslz	23	\N	\N	\N
7x6oyetmotw	wtu8v3wspnv	2	\N	\N	\N
7x6oyetmotw	oi4cs4tbslz	3	\N	\N	\N
lmp1irsvgom	dv1xjwdmvcg	2	\N	\N	\N
lmp1irsvgom	wtu8v3wspnv	3	\N	\N	\N
lmp1irsvgom	oi4cs4tbslz	4	\N	\N	\N
3nhe9kyydb1	dv1xjwdmvcg	3	\N	\N	\N
3nhe9kyydb1	wtu8v3wspnv	4	\N	\N	\N
3nhe9kyydb1	oi4cs4tbslz	5	\N	\N	\N
1t1bel9ufqz	dv1xjwdmvcg	4	\N	\N	\N
1t1bel9ufqz	wtu8v3wspnv	5	\N	\N	\N
1t1bel9ufqz	oi4cs4tbslz	6	\N	\N	\N
oxj8sl5a4x4	dv1xjwdmvcg	5	\N	\N	\N
oxj8sl5a4x4	wtu8v3wspnv	6	\N	\N	\N
oxj8sl5a4x4	oi4cs4tbslz	7	\N	\N	\N
ew9dla1iwk8	dv1xjwdmvcg	6	\N	\N	\N
ew9dla1iwk8	wtu8v3wspnv	7	\N	\N	\N
ew9dla1iwk8	oi4cs4tbslz	8	\N	\N	\N
haxe3y5jbxr	dv1xjwdmvcg	7	\N	\N	\N
haxe3y5jbxr	wtu8v3wspnv	8	\N	\N	\N
haxe3y5jbxr	oi4cs4tbslz	9	\N	\N	\N
48d58aj2z3f	dv1xjwdmvcg	8	\N	\N	\N
48d58aj2z3f	wtu8v3wspnv	9	\N	\N	\N
48d58aj2z3f	oi4cs4tbslz	10	\N	\N	\N
dnlwo60b33v	dv1xjwdmvcg	9	\N	\N	\N
dnlwo60b33v	wtu8v3wspnv	10	\N	\N	\N
dnlwo60b33v	oi4cs4tbslz	11	\N	\N	\N
89nfa89tbje	dv1xjwdmvcg	10	\N	\N	\N
89nfa89tbje	wtu8v3wspnv	11	\N	\N	\N
89nfa89tbje	oi4cs4tbslz	12	\N	\N	\N
nc92u2m878d	dv1xjwdmvcg	13	\N	\N	\N
nc92u2m878d	wtu8v3wspnv	14	\N	\N	\N
nc92u2m878d	oi4cs4tbslz	15	\N	\N	\N
u4bsei62yq1	u4bsei62yq1	0	f	properties	\N
3fffemef0cp	u4bsei62yq1	2	\N	\N	\N
baejb3hqiri	u4bsei62yq1	3	\N	\N	\N
zvja1suwswo	u4bsei62yq1	4	\N	\N	\N
1cnwu64uyw3	u4bsei62yq1	5	\N	\N	\N
zwh6db27axk	u4bsei62yq1	6	\N	\N	\N
5b0fu481dm6	u4bsei62yq1	7	\N	\N	\N
1dvfg1afm18	u4bsei62yq1	8	\N	\N	\N
q3rv0rnfki7	u4bsei62yq1	9	\N	\N	\N
w4ciktesp5j	u4bsei62yq1	10	\N	\N	\N
tg2hn64ei8t	u4bsei62yq1	11	\N	\N	\N
44890jxlzup	u4bsei62yq1	12	\N	\N	\N
xa635tbvi5c	u4bsei62yq1	13	\N	\N	\N
4dgysxrfq7o	u4bsei62yq1	14	\N	\N	\N
sf8fl742bgm	u4bsei62yq1	15	\N	\N	\N
sptin92gm5m	u4bsei62yq1	16	\N	\N	\N
i0lnhtci4u6	u4bsei62yq1	17	\N	\N	\N
swxvjglsevf	u4bsei62yq1	18	\N	\N	\N
nocobase-admin-menu	u4bsei62yq1	19	\N	\N	\N
4gnesuyiq9w	u4bsei62yq1	1	\N	\N	2
jiq42lrek0j	dv1xjwdmvcg	14	\N	\N	\N
jiq42lrek0j	wtu8v3wspnv	15	\N	\N	\N
jiq42lrek0j	oi4cs4tbslz	16	\N	\N	\N
dv1xjwdmvcg	dv1xjwdmvcg	0	f	properties	\N
7x6oyetmotw	dv1xjwdmvcg	1	\N	\N	4
mn6suiqsq19	mn6suiqsq19	0	f	properties	\N
ajm7jf8wbgk	mn6suiqsq19	1	\N	\N	1
w149la0utnx	ajm7jf8wbgk	15	\N	\N	\N
w149la0utnx	mn6suiqsq19	16	\N	\N	\N
z02388u42s9	ajm7jf8wbgk	16	\N	\N	\N
z02388u42s9	mn6suiqsq19	17	\N	\N	\N
llvsctq28hp	ajm7jf8wbgk	17	\N	\N	\N
llvsctq28hp	mn6suiqsq19	18	\N	\N	\N
8xvbgh18zfk	ajm7jf8wbgk	18	\N	\N	\N
8xvbgh18zfk	mn6suiqsq19	19	\N	\N	\N
2pij3wiepc4	ajm7jf8wbgk	19	\N	\N	\N
2pij3wiepc4	mn6suiqsq19	20	\N	\N	\N
fe7kgdo55ax	cbhgjqiskk5	2	\N	\N	\N
we414l1saan	ajm7jf8wbgk	20	\N	\N	\N
we414l1saan	mn6suiqsq19	21	\N	\N	\N
t4v2kcudvg5	ajm7jf8wbgk	11	\N	\N	\N
t4v2kcudvg5	mn6suiqsq19	12	\N	\N	\N
q9zjnv8mc9j	ajm7jf8wbgk	12	\N	\N	\N
q9zjnv8mc9j	mn6suiqsq19	13	\N	\N	\N
nocobase-admin-menu	ajm7jf8wbgk	21	\N	\N	\N
nocobase-admin-menu	mn6suiqsq19	22	\N	\N	\N
7x6oyetmotw	mn6suiqsq19	2	\N	\N	\N
lmp1irsvgom	ajm7jf8wbgk	2	\N	\N	\N
lmp1irsvgom	mn6suiqsq19	3	\N	\N	\N
3nhe9kyydb1	ajm7jf8wbgk	3	\N	\N	\N
3nhe9kyydb1	mn6suiqsq19	4	\N	\N	\N
1t1bel9ufqz	ajm7jf8wbgk	4	\N	\N	\N
1t1bel9ufqz	mn6suiqsq19	5	\N	\N	\N
oxj8sl5a4x4	ajm7jf8wbgk	5	\N	\N	\N
oxj8sl5a4x4	mn6suiqsq19	6	\N	\N	\N
ew9dla1iwk8	ajm7jf8wbgk	6	\N	\N	\N
ew9dla1iwk8	mn6suiqsq19	7	\N	\N	\N
haxe3y5jbxr	ajm7jf8wbgk	7	\N	\N	\N
haxe3y5jbxr	mn6suiqsq19	8	\N	\N	\N
48d58aj2z3f	ajm7jf8wbgk	8	\N	\N	\N
48d58aj2z3f	mn6suiqsq19	9	\N	\N	\N
dnlwo60b33v	ajm7jf8wbgk	9	\N	\N	\N
dnlwo60b33v	mn6suiqsq19	10	\N	\N	\N
89nfa89tbje	ajm7jf8wbgk	10	\N	\N	\N
89nfa89tbje	mn6suiqsq19	11	\N	\N	\N
nc92u2m878d	ajm7jf8wbgk	13	\N	\N	\N
nc92u2m878d	mn6suiqsq19	14	\N	\N	\N
jiq42lrek0j	ajm7jf8wbgk	14	\N	\N	\N
jiq42lrek0j	mn6suiqsq19	15	\N	\N	\N
ajm7jf8wbgk	ajm7jf8wbgk	0	f	properties	\N
nocobase-admin-menu	ohr2n5borj4	22	\N	\N	\N
nocobase-admin-menu	dz7uttxfka4	23	\N	\N	\N
7x6oyetmotw	ohr2n5borj4	2	\N	\N	\N
7x6oyetmotw	dz7uttxfka4	3	\N	\N	\N
lmp1irsvgom	unopjyt9vno	2	\N	\N	\N
lmp1irsvgom	ohr2n5borj4	3	\N	\N	\N
lmp1irsvgom	dz7uttxfka4	4	\N	\N	\N
3nhe9kyydb1	unopjyt9vno	3	\N	\N	\N
3nhe9kyydb1	ohr2n5borj4	4	\N	\N	\N
3nhe9kyydb1	dz7uttxfka4	5	\N	\N	\N
1t1bel9ufqz	unopjyt9vno	4	\N	\N	\N
1t1bel9ufqz	ohr2n5borj4	5	\N	\N	\N
1t1bel9ufqz	dz7uttxfka4	6	\N	\N	\N
oxj8sl5a4x4	unopjyt9vno	5	\N	\N	\N
oxj8sl5a4x4	ohr2n5borj4	6	\N	\N	\N
oxj8sl5a4x4	dz7uttxfka4	7	\N	\N	\N
ew9dla1iwk8	unopjyt9vno	6	\N	\N	\N
ew9dla1iwk8	ohr2n5borj4	7	\N	\N	\N
ew9dla1iwk8	dz7uttxfka4	8	\N	\N	\N
haxe3y5jbxr	unopjyt9vno	7	\N	\N	\N
haxe3y5jbxr	ohr2n5borj4	8	\N	\N	\N
haxe3y5jbxr	dz7uttxfka4	9	\N	\N	\N
48d58aj2z3f	unopjyt9vno	8	\N	\N	\N
48d58aj2z3f	ohr2n5borj4	9	\N	\N	\N
48d58aj2z3f	dz7uttxfka4	10	\N	\N	\N
dnlwo60b33v	unopjyt9vno	9	\N	\N	\N
dnlwo60b33v	ohr2n5borj4	10	\N	\N	\N
dnlwo60b33v	dz7uttxfka4	11	\N	\N	\N
89nfa89tbje	unopjyt9vno	10	\N	\N	\N
89nfa89tbje	ohr2n5borj4	11	\N	\N	\N
89nfa89tbje	dz7uttxfka4	12	\N	\N	\N
nc92u2m878d	unopjyt9vno	13	\N	\N	\N
nc92u2m878d	ohr2n5borj4	14	\N	\N	\N
nc92u2m878d	dz7uttxfka4	15	\N	\N	\N
jiq42lrek0j	unopjyt9vno	14	\N	\N	\N
jiq42lrek0j	ohr2n5borj4	15	\N	\N	\N
jiq42lrek0j	dz7uttxfka4	16	\N	\N	\N
7x6oyetmotw	unopjyt9vno	1	\N	\N	5
nc92u2m878d	04h4z2y4t0n	2	\N	\N	\N
jiq42lrek0j	17dq5190uui	2	\N	\N	\N
jiq42lrek0j	04h4z2y4t0n	3	\N	\N	\N
w149la0utnx	17dq5190uui	3	\N	\N	\N
w149la0utnx	04h4z2y4t0n	4	\N	\N	\N
z02388u42s9	17dq5190uui	4	\N	\N	\N
z02388u42s9	04h4z2y4t0n	5	\N	\N	\N
llvsctq28hp	17dq5190uui	5	\N	\N	\N
llvsctq28hp	04h4z2y4t0n	6	\N	\N	\N
8xvbgh18zfk	17dq5190uui	6	\N	\N	\N
8xvbgh18zfk	04h4z2y4t0n	7	\N	\N	\N
2pij3wiepc4	17dq5190uui	7	\N	\N	\N
2pij3wiepc4	04h4z2y4t0n	8	\N	\N	\N
we414l1saan	17dq5190uui	8	\N	\N	\N
we414l1saan	04h4z2y4t0n	9	\N	\N	\N
nocobase-admin-menu	17dq5190uui	9	\N	\N	\N
nocobase-admin-menu	04h4z2y4t0n	10	\N	\N	\N
17dq5190uui	17dq5190uui	0	f	properties	\N
nc92u2m878d	q9zjnv8mc9j	1	\N	\N	9
nc92u2m878d	17dq5190uui	1	\N	\N	8
hmft2ujv1uf	cbhgjqiskk5	3	\N	\N	\N
nocobase-admin-menu	cbhgjqiskk5	4	\N	\N	\N
cbhgjqiskk5	cbhgjqiskk5	0	f	properties	\N
7poa6levyva	cbhgjqiskk5	1	\N	\N	7
7poa6levyva	b410c64osaf	3	\N	\N	\N
fe7kgdo55ax	pde5ayqzqo1	3	\N	\N	\N
fe7kgdo55ax	n65uanub9sx	5	\N	\N	\N
fe7kgdo55ax	fvz3km1i6ms	5	\N	\N	\N
fe7kgdo55ax	b410c64osaf	4	\N	\N	\N
hmft2ujv1uf	pde5ayqzqo1	4	\N	\N	\N
hmft2ujv1uf	n65uanub9sx	6	\N	\N	\N
hmft2ujv1uf	fvz3km1i6ms	6	\N	\N	\N
hmft2ujv1uf	b410c64osaf	5	\N	\N	\N
nocobase-admin-menu	pde5ayqzqo1	5	\N	\N	\N
nocobase-admin-menu	n65uanub9sx	7	\N	\N	\N
nocobase-admin-menu	fvz3km1i6ms	7	\N	\N	\N
nocobase-admin-menu	b410c64osaf	6	\N	\N	\N
pde5ayqzqo1	pde5ayqzqo1	0	f	properties	\N
rnko20ymzdm	pbpsju21w1y	1	\N	\N	1
yivjshzifwl	pde5ayqzqo1	1	\N	\N	3
fe7kgdo55ax	oq5d1lxpmfu	2	\N	\N	\N
wsafpwbqr88	wsafpwbqr88	0	f	properties	\N
ifzzkj7loaj	ifzzkj7loaj	0	f	properties	\N
k99w3v09n98	ifzzkj7loaj	1	\N	\N	1
48d58aj2z3f	ifzzkj7loaj	2	\N	\N	\N
dnlwo60b33v	k99w3v09n98	2	\N	\N	\N
dnlwo60b33v	ifzzkj7loaj	3	\N	\N	\N
89nfa89tbje	k99w3v09n98	3	\N	\N	\N
89nfa89tbje	ifzzkj7loaj	4	\N	\N	\N
nc92u2m878d	k99w3v09n98	6	\N	\N	\N
nc92u2m878d	ifzzkj7loaj	7	\N	\N	\N
jiq42lrek0j	k99w3v09n98	7	\N	\N	\N
jiq42lrek0j	ifzzkj7loaj	8	\N	\N	\N
w149la0utnx	k99w3v09n98	8	\N	\N	\N
w149la0utnx	ifzzkj7loaj	9	\N	\N	\N
z02388u42s9	k99w3v09n98	9	\N	\N	\N
z02388u42s9	ifzzkj7loaj	10	\N	\N	\N
llvsctq28hp	k99w3v09n98	10	\N	\N	\N
llvsctq28hp	ifzzkj7loaj	11	\N	\N	\N
8xvbgh18zfk	k99w3v09n98	11	\N	\N	\N
8xvbgh18zfk	ifzzkj7loaj	12	\N	\N	\N
2pij3wiepc4	k99w3v09n98	12	\N	\N	\N
2pij3wiepc4	ifzzkj7loaj	13	\N	\N	\N
we414l1saan	k99w3v09n98	13	\N	\N	\N
we414l1saan	ifzzkj7loaj	14	\N	\N	\N
t4v2kcudvg5	k99w3v09n98	4	\N	\N	\N
t4v2kcudvg5	ifzzkj7loaj	5	\N	\N	\N
q9zjnv8mc9j	k99w3v09n98	5	\N	\N	\N
q9zjnv8mc9j	ifzzkj7loaj	6	\N	\N	\N
nocobase-admin-menu	k99w3v09n98	14	\N	\N	\N
nocobase-admin-menu	ifzzkj7loaj	15	\N	\N	\N
k99w3v09n98	k99w3v09n98	0	f	properties	\N
48d58aj2z3f	k99w3v09n98	1	\N	\N	1
jfqsx79zobd	jfqsx79zobd	0	f	properties	\N
wsafpwbqr88	jfqsx79zobd	1	\N	\N	1
66lgu9id6bj	66lgu9id6bj	0	f	properties	\N
jfqsx79zobd	66lgu9id6bj	1	\N	\N	1
wsafpwbqr88	66lgu9id6bj	2	\N	\N	1
8t2c5f2jjl9	8t2c5f2jjl9	0	f	properties	\N
66lgu9id6bj	8t2c5f2jjl9	1	\N	\N	1
jfqsx79zobd	8t2c5f2jjl9	2	\N	\N	1
wsafpwbqr88	8t2c5f2jjl9	3	\N	\N	1
odogwwfdotc	odogwwfdotc	0	f	properties	\N
8t2c5f2jjl9	odogwwfdotc	1	\N	\N	1
66lgu9id6bj	odogwwfdotc	2	\N	\N	1
jfqsx79zobd	odogwwfdotc	3	\N	\N	1
wsafpwbqr88	odogwwfdotc	4	\N	\N	1
oj491oo69he	oj491oo69he	0	f	properties	\N
8t2c5f2jjl9	oj491oo69he	1	\N	\N	2
66lgu9id6bj	oj491oo69he	2	\N	\N	2
jfqsx79zobd	oj491oo69he	3	\N	\N	2
wsafpwbqr88	oj491oo69he	4	\N	\N	2
ifzzkj7loaj	jfqsx79zobd	2	\N	\N	\N
ifzzkj7loaj	66lgu9id6bj	3	\N	\N	\N
ifzzkj7loaj	8t2c5f2jjl9	4	\N	\N	\N
ifzzkj7loaj	odogwwfdotc	5	\N	\N	\N
ifzzkj7loaj	oj491oo69he	5	\N	\N	\N
k99w3v09n98	wsafpwbqr88	2	\N	\N	\N
k99w3v09n98	jfqsx79zobd	3	\N	\N	\N
k99w3v09n98	66lgu9id6bj	4	\N	\N	\N
k99w3v09n98	8t2c5f2jjl9	5	\N	\N	\N
hmft2ujv1uf	oq5d1lxpmfu	3	\N	\N	\N
nocobase-admin-menu	oq5d1lxpmfu	4	\N	\N	\N
oq5d1lxpmfu	oq5d1lxpmfu	0	f	properties	\N
7poa6levyva	oq5d1lxpmfu	1	\N	\N	6
k99w3v09n98	odogwwfdotc	6	\N	\N	\N
k99w3v09n98	oj491oo69he	6	\N	\N	\N
48d58aj2z3f	wsafpwbqr88	3	\N	\N	\N
48d58aj2z3f	jfqsx79zobd	4	\N	\N	\N
48d58aj2z3f	66lgu9id6bj	5	\N	\N	\N
48d58aj2z3f	8t2c5f2jjl9	6	\N	\N	\N
48d58aj2z3f	odogwwfdotc	7	\N	\N	\N
48d58aj2z3f	oj491oo69he	7	\N	\N	\N
dnlwo60b33v	wsafpwbqr88	4	\N	\N	\N
dnlwo60b33v	jfqsx79zobd	5	\N	\N	\N
dnlwo60b33v	66lgu9id6bj	6	\N	\N	\N
dnlwo60b33v	8t2c5f2jjl9	7	\N	\N	\N
dnlwo60b33v	odogwwfdotc	8	\N	\N	\N
dnlwo60b33v	oj491oo69he	8	\N	\N	\N
89nfa89tbje	wsafpwbqr88	5	\N	\N	\N
89nfa89tbje	jfqsx79zobd	6	\N	\N	\N
89nfa89tbje	66lgu9id6bj	7	\N	\N	\N
89nfa89tbje	8t2c5f2jjl9	8	\N	\N	\N
89nfa89tbje	odogwwfdotc	9	\N	\N	\N
89nfa89tbje	oj491oo69he	9	\N	\N	\N
nc92u2m878d	wsafpwbqr88	8	\N	\N	\N
nc92u2m878d	jfqsx79zobd	9	\N	\N	\N
nc92u2m878d	66lgu9id6bj	10	\N	\N	\N
nc92u2m878d	8t2c5f2jjl9	11	\N	\N	\N
nc92u2m878d	odogwwfdotc	12	\N	\N	\N
nc92u2m878d	oj491oo69he	12	\N	\N	\N
jiq42lrek0j	wsafpwbqr88	9	\N	\N	\N
jiq42lrek0j	jfqsx79zobd	10	\N	\N	\N
jiq42lrek0j	66lgu9id6bj	11	\N	\N	\N
jiq42lrek0j	8t2c5f2jjl9	12	\N	\N	\N
jiq42lrek0j	odogwwfdotc	13	\N	\N	\N
jiq42lrek0j	oj491oo69he	13	\N	\N	\N
w149la0utnx	wsafpwbqr88	10	\N	\N	\N
w149la0utnx	jfqsx79zobd	11	\N	\N	\N
w149la0utnx	66lgu9id6bj	12	\N	\N	\N
w149la0utnx	8t2c5f2jjl9	13	\N	\N	\N
w149la0utnx	odogwwfdotc	14	\N	\N	\N
w149la0utnx	oj491oo69he	14	\N	\N	\N
z02388u42s9	wsafpwbqr88	11	\N	\N	\N
z02388u42s9	jfqsx79zobd	12	\N	\N	\N
z02388u42s9	66lgu9id6bj	13	\N	\N	\N
z02388u42s9	8t2c5f2jjl9	14	\N	\N	\N
z02388u42s9	odogwwfdotc	15	\N	\N	\N
z02388u42s9	oj491oo69he	15	\N	\N	\N
llvsctq28hp	wsafpwbqr88	12	\N	\N	\N
llvsctq28hp	jfqsx79zobd	13	\N	\N	\N
llvsctq28hp	66lgu9id6bj	14	\N	\N	\N
llvsctq28hp	8t2c5f2jjl9	15	\N	\N	\N
llvsctq28hp	odogwwfdotc	16	\N	\N	\N
llvsctq28hp	oj491oo69he	16	\N	\N	\N
8xvbgh18zfk	wsafpwbqr88	13	\N	\N	\N
8xvbgh18zfk	jfqsx79zobd	14	\N	\N	\N
8xvbgh18zfk	66lgu9id6bj	15	\N	\N	\N
8xvbgh18zfk	8t2c5f2jjl9	16	\N	\N	\N
8xvbgh18zfk	odogwwfdotc	17	\N	\N	\N
8xvbgh18zfk	oj491oo69he	17	\N	\N	\N
2pij3wiepc4	wsafpwbqr88	14	\N	\N	\N
2pij3wiepc4	jfqsx79zobd	15	\N	\N	\N
2pij3wiepc4	66lgu9id6bj	16	\N	\N	\N
2pij3wiepc4	8t2c5f2jjl9	17	\N	\N	\N
2pij3wiepc4	odogwwfdotc	18	\N	\N	\N
2pij3wiepc4	oj491oo69he	18	\N	\N	\N
we414l1saan	wsafpwbqr88	15	\N	\N	\N
we414l1saan	jfqsx79zobd	16	\N	\N	\N
we414l1saan	66lgu9id6bj	17	\N	\N	\N
we414l1saan	8t2c5f2jjl9	18	\N	\N	\N
we414l1saan	odogwwfdotc	19	\N	\N	\N
we414l1saan	oj491oo69he	19	\N	\N	\N
t4v2kcudvg5	wsafpwbqr88	6	\N	\N	\N
t4v2kcudvg5	jfqsx79zobd	7	\N	\N	\N
t4v2kcudvg5	66lgu9id6bj	8	\N	\N	\N
t4v2kcudvg5	8t2c5f2jjl9	9	\N	\N	\N
t4v2kcudvg5	odogwwfdotc	10	\N	\N	\N
t4v2kcudvg5	oj491oo69he	10	\N	\N	\N
q9zjnv8mc9j	wsafpwbqr88	7	\N	\N	\N
q9zjnv8mc9j	jfqsx79zobd	8	\N	\N	\N
q9zjnv8mc9j	66lgu9id6bj	9	\N	\N	\N
q9zjnv8mc9j	8t2c5f2jjl9	10	\N	\N	\N
q9zjnv8mc9j	odogwwfdotc	11	\N	\N	\N
q9zjnv8mc9j	oj491oo69he	11	\N	\N	\N
nocobase-admin-menu	wsafpwbqr88	16	\N	\N	\N
nocobase-admin-menu	jfqsx79zobd	17	\N	\N	\N
nocobase-admin-menu	66lgu9id6bj	18	\N	\N	\N
nocobase-admin-menu	8t2c5f2jjl9	19	\N	\N	\N
nocobase-admin-menu	odogwwfdotc	20	\N	\N	\N
nocobase-admin-menu	oj491oo69he	20	\N	\N	\N
ifzzkj7loaj	wsafpwbqr88	1	\N	\N	1
q62uhq5ae4j	q62uhq5ae4j	0	f	properties	\N
zxkfxhzh2gm	q62uhq5ae4j	1	\N	\N	1
lqjukoezd9x	lqjukoezd9x	0	f	properties	\N
q62uhq5ae4j	lqjukoezd9x	1	\N	\N	1
zxkfxhzh2gm	lqjukoezd9x	2	\N	\N	1
oj491oo69he	q62uhq5ae4j	2	\N	\N	\N
oj491oo69he	lqjukoezd9x	3	\N	\N	\N
8t2c5f2jjl9	zxkfxhzh2gm	2	\N	\N	\N
8t2c5f2jjl9	q62uhq5ae4j	3	\N	\N	\N
8t2c5f2jjl9	lqjukoezd9x	4	\N	\N	\N
66lgu9id6bj	zxkfxhzh2gm	3	\N	\N	\N
66lgu9id6bj	q62uhq5ae4j	4	\N	\N	\N
66lgu9id6bj	lqjukoezd9x	5	\N	\N	\N
jfqsx79zobd	zxkfxhzh2gm	4	\N	\N	\N
jfqsx79zobd	q62uhq5ae4j	5	\N	\N	\N
jfqsx79zobd	lqjukoezd9x	6	\N	\N	\N
wsafpwbqr88	zxkfxhzh2gm	5	\N	\N	\N
wsafpwbqr88	q62uhq5ae4j	6	\N	\N	\N
wsafpwbqr88	lqjukoezd9x	7	\N	\N	\N
ifzzkj7loaj	zxkfxhzh2gm	6	\N	\N	\N
ifzzkj7loaj	q62uhq5ae4j	7	\N	\N	\N
ifzzkj7loaj	lqjukoezd9x	8	\N	\N	\N
k99w3v09n98	zxkfxhzh2gm	7	\N	\N	\N
k99w3v09n98	q62uhq5ae4j	8	\N	\N	\N
k99w3v09n98	lqjukoezd9x	9	\N	\N	\N
48d58aj2z3f	zxkfxhzh2gm	8	\N	\N	\N
48d58aj2z3f	q62uhq5ae4j	9	\N	\N	\N
48d58aj2z3f	lqjukoezd9x	10	\N	\N	\N
dnlwo60b33v	zxkfxhzh2gm	9	\N	\N	\N
dnlwo60b33v	q62uhq5ae4j	10	\N	\N	\N
zxkfxhzh2gm	zxkfxhzh2gm	0	f	properties	\N
dnlwo60b33v	lqjukoezd9x	11	\N	\N	\N
89nfa89tbje	zxkfxhzh2gm	10	\N	\N	\N
89nfa89tbje	q62uhq5ae4j	11	\N	\N	\N
89nfa89tbje	lqjukoezd9x	12	\N	\N	\N
nc92u2m878d	zxkfxhzh2gm	13	\N	\N	\N
nc92u2m878d	q62uhq5ae4j	14	\N	\N	\N
nc92u2m878d	lqjukoezd9x	15	\N	\N	\N
jiq42lrek0j	zxkfxhzh2gm	14	\N	\N	\N
jiq42lrek0j	q62uhq5ae4j	15	\N	\N	\N
jiq42lrek0j	lqjukoezd9x	16	\N	\N	\N
w149la0utnx	zxkfxhzh2gm	15	\N	\N	\N
w149la0utnx	q62uhq5ae4j	16	\N	\N	\N
w149la0utnx	lqjukoezd9x	17	\N	\N	\N
z02388u42s9	zxkfxhzh2gm	16	\N	\N	\N
z02388u42s9	q62uhq5ae4j	17	\N	\N	\N
z02388u42s9	lqjukoezd9x	18	\N	\N	\N
llvsctq28hp	zxkfxhzh2gm	17	\N	\N	\N
llvsctq28hp	q62uhq5ae4j	18	\N	\N	\N
llvsctq28hp	lqjukoezd9x	19	\N	\N	\N
8xvbgh18zfk	zxkfxhzh2gm	18	\N	\N	\N
8xvbgh18zfk	q62uhq5ae4j	19	\N	\N	\N
8xvbgh18zfk	lqjukoezd9x	20	\N	\N	\N
2pij3wiepc4	zxkfxhzh2gm	19	\N	\N	\N
2pij3wiepc4	q62uhq5ae4j	20	\N	\N	\N
2pij3wiepc4	lqjukoezd9x	21	\N	\N	\N
we414l1saan	zxkfxhzh2gm	20	\N	\N	\N
we414l1saan	q62uhq5ae4j	21	\N	\N	\N
we414l1saan	lqjukoezd9x	22	\N	\N	\N
t4v2kcudvg5	zxkfxhzh2gm	11	\N	\N	\N
t4v2kcudvg5	q62uhq5ae4j	12	\N	\N	\N
t4v2kcudvg5	lqjukoezd9x	13	\N	\N	\N
q9zjnv8mc9j	zxkfxhzh2gm	12	\N	\N	\N
q9zjnv8mc9j	q62uhq5ae4j	13	\N	\N	\N
q9zjnv8mc9j	lqjukoezd9x	14	\N	\N	\N
nocobase-admin-menu	zxkfxhzh2gm	21	\N	\N	\N
nocobase-admin-menu	q62uhq5ae4j	22	\N	\N	\N
nocobase-admin-menu	lqjukoezd9x	23	\N	\N	\N
oj491oo69he	zxkfxhzh2gm	1	\N	\N	1
o4sv4g52p6d	o4sv4g52p6d	0	f	properties	\N
bt4zbtd0av4	o4sv4g52p6d	1	\N	\N	1
vvv2g0wrw0w	vvv2g0wrw0w	0	f	properties	\N
o4sv4g52p6d	vvv2g0wrw0w	1	\N	\N	1
bt4zbtd0av4	vvv2g0wrw0w	2	\N	\N	1
oj491oo69he	o4sv4g52p6d	2	\N	\N	\N
oj491oo69he	vvv2g0wrw0w	3	\N	\N	\N
8t2c5f2jjl9	bt4zbtd0av4	2	\N	\N	\N
8t2c5f2jjl9	o4sv4g52p6d	3	\N	\N	\N
8t2c5f2jjl9	vvv2g0wrw0w	4	\N	\N	\N
66lgu9id6bj	bt4zbtd0av4	3	\N	\N	\N
66lgu9id6bj	o4sv4g52p6d	4	\N	\N	\N
66lgu9id6bj	vvv2g0wrw0w	5	\N	\N	\N
jfqsx79zobd	bt4zbtd0av4	4	\N	\N	\N
jfqsx79zobd	o4sv4g52p6d	5	\N	\N	\N
jfqsx79zobd	vvv2g0wrw0w	6	\N	\N	\N
wsafpwbqr88	bt4zbtd0av4	5	\N	\N	\N
wsafpwbqr88	o4sv4g52p6d	6	\N	\N	\N
wsafpwbqr88	vvv2g0wrw0w	7	\N	\N	\N
ifzzkj7loaj	bt4zbtd0av4	6	\N	\N	\N
ifzzkj7loaj	o4sv4g52p6d	7	\N	\N	\N
ifzzkj7loaj	vvv2g0wrw0w	8	\N	\N	\N
k99w3v09n98	bt4zbtd0av4	7	\N	\N	\N
k99w3v09n98	o4sv4g52p6d	8	\N	\N	\N
k99w3v09n98	vvv2g0wrw0w	9	\N	\N	\N
48d58aj2z3f	bt4zbtd0av4	8	\N	\N	\N
48d58aj2z3f	o4sv4g52p6d	9	\N	\N	\N
48d58aj2z3f	vvv2g0wrw0w	10	\N	\N	\N
dnlwo60b33v	bt4zbtd0av4	9	\N	\N	\N
dnlwo60b33v	o4sv4g52p6d	10	\N	\N	\N
dnlwo60b33v	vvv2g0wrw0w	11	\N	\N	\N
89nfa89tbje	bt4zbtd0av4	10	\N	\N	\N
89nfa89tbje	o4sv4g52p6d	11	\N	\N	\N
89nfa89tbje	vvv2g0wrw0w	12	\N	\N	\N
nc92u2m878d	bt4zbtd0av4	13	\N	\N	\N
nc92u2m878d	o4sv4g52p6d	14	\N	\N	\N
nc92u2m878d	vvv2g0wrw0w	15	\N	\N	\N
jiq42lrek0j	bt4zbtd0av4	14	\N	\N	\N
jiq42lrek0j	o4sv4g52p6d	15	\N	\N	\N
jiq42lrek0j	vvv2g0wrw0w	16	\N	\N	\N
w149la0utnx	bt4zbtd0av4	15	\N	\N	\N
w149la0utnx	o4sv4g52p6d	16	\N	\N	\N
w149la0utnx	vvv2g0wrw0w	17	\N	\N	\N
z02388u42s9	bt4zbtd0av4	16	\N	\N	\N
z02388u42s9	o4sv4g52p6d	17	\N	\N	\N
z02388u42s9	vvv2g0wrw0w	18	\N	\N	\N
llvsctq28hp	bt4zbtd0av4	17	\N	\N	\N
llvsctq28hp	o4sv4g52p6d	18	\N	\N	\N
llvsctq28hp	vvv2g0wrw0w	19	\N	\N	\N
8xvbgh18zfk	bt4zbtd0av4	18	\N	\N	\N
8xvbgh18zfk	o4sv4g52p6d	19	\N	\N	\N
8xvbgh18zfk	vvv2g0wrw0w	20	\N	\N	\N
2pij3wiepc4	bt4zbtd0av4	19	\N	\N	\N
2pij3wiepc4	o4sv4g52p6d	20	\N	\N	\N
2pij3wiepc4	vvv2g0wrw0w	21	\N	\N	\N
we414l1saan	bt4zbtd0av4	20	\N	\N	\N
we414l1saan	o4sv4g52p6d	21	\N	\N	\N
we414l1saan	vvv2g0wrw0w	22	\N	\N	\N
t4v2kcudvg5	bt4zbtd0av4	11	\N	\N	\N
t4v2kcudvg5	o4sv4g52p6d	12	\N	\N	\N
t4v2kcudvg5	vvv2g0wrw0w	13	\N	\N	\N
q9zjnv8mc9j	bt4zbtd0av4	12	\N	\N	\N
q9zjnv8mc9j	o4sv4g52p6d	13	\N	\N	\N
q9zjnv8mc9j	vvv2g0wrw0w	14	\N	\N	\N
nocobase-admin-menu	bt4zbtd0av4	21	\N	\N	\N
nocobase-admin-menu	o4sv4g52p6d	22	\N	\N	\N
nocobase-admin-menu	vvv2g0wrw0w	23	\N	\N	\N
bt4zbtd0av4	bt4zbtd0av4	0	f	properties	\N
oj491oo69he	bt4zbtd0av4	1	\N	\N	2
8t2c5f2jjl9	m0w82up0q8s	2	\N	\N	\N
66lgu9id6bj	m0w82up0q8s	3	\N	\N	\N
jfqsx79zobd	m0w82up0q8s	4	\N	\N	\N
wsafpwbqr88	m0w82up0q8s	5	\N	\N	\N
ifzzkj7loaj	m0w82up0q8s	6	\N	\N	\N
k99w3v09n98	m0w82up0q8s	7	\N	\N	\N
m0w82up0q8s	m0w82up0q8s	0	f	properties	\N
oj491oo69he	m0w82up0q8s	1	\N	\N	3
6o5do9pffgb	6o5do9pffgb	0	f	properties	\N
48d58aj2z3f	m0w82up0q8s	8	\N	\N	\N
dnlwo60b33v	m0w82up0q8s	9	\N	\N	\N
89nfa89tbje	m0w82up0q8s	10	\N	\N	\N
nc92u2m878d	m0w82up0q8s	13	\N	\N	\N
jiq42lrek0j	m0w82up0q8s	14	\N	\N	\N
w149la0utnx	m0w82up0q8s	15	\N	\N	\N
z02388u42s9	m0w82up0q8s	16	\N	\N	\N
llvsctq28hp	m0w82up0q8s	17	\N	\N	\N
8xvbgh18zfk	m0w82up0q8s	18	\N	\N	\N
2pij3wiepc4	m0w82up0q8s	19	\N	\N	\N
we414l1saan	m0w82up0q8s	20	\N	\N	\N
t4v2kcudvg5	m0w82up0q8s	11	\N	\N	\N
q9zjnv8mc9j	m0w82up0q8s	12	\N	\N	\N
nocobase-admin-menu	m0w82up0q8s	21	\N	\N	\N
8t2c5f2jjl9	omrj7itu5zh	2	\N	\N	\N
66lgu9id6bj	omrj7itu5zh	3	\N	\N	\N
jfqsx79zobd	omrj7itu5zh	4	\N	\N	\N
wsafpwbqr88	omrj7itu5zh	5	\N	\N	\N
ifzzkj7loaj	omrj7itu5zh	6	\N	\N	\N
k99w3v09n98	omrj7itu5zh	7	\N	\N	\N
48d58aj2z3f	omrj7itu5zh	8	\N	\N	\N
dnlwo60b33v	omrj7itu5zh	9	\N	\N	\N
89nfa89tbje	omrj7itu5zh	10	\N	\N	\N
nc92u2m878d	omrj7itu5zh	13	\N	\N	\N
jiq42lrek0j	omrj7itu5zh	14	\N	\N	\N
w149la0utnx	omrj7itu5zh	15	\N	\N	\N
z02388u42s9	omrj7itu5zh	16	\N	\N	\N
llvsctq28hp	omrj7itu5zh	17	\N	\N	\N
8xvbgh18zfk	omrj7itu5zh	18	\N	\N	\N
2pij3wiepc4	omrj7itu5zh	19	\N	\N	\N
we414l1saan	omrj7itu5zh	20	\N	\N	\N
t4v2kcudvg5	omrj7itu5zh	11	\N	\N	\N
q9zjnv8mc9j	omrj7itu5zh	12	\N	\N	\N
nocobase-admin-menu	omrj7itu5zh	21	\N	\N	\N
omrj7itu5zh	omrj7itu5zh	0	f	properties	\N
oj491oo69he	omrj7itu5zh	1	\N	\N	4
ofj1wcu4xrm	ofj1wcu4xrm	0	f	properties	\N
lrcv0hhmq8j	lrcv0hhmq8j	0	f	properties	\N
rl4zzyovnti	lrcv0hhmq8j	4	\N	\N	\N
juylvd7o6f1	lrcv0hhmq8j	5	\N	\N	\N
dd1t7s27fl2	lrcv0hhmq8j	6	\N	\N	\N
y05digxvovk	lrcv0hhmq8j	7	\N	\N	\N
qlc8gbizzyo	lrcv0hhmq8j	8	\N	\N	\N
kjig4l36dxf	lrcv0hhmq8j	9	\N	\N	\N
w4ciktesp5j	lrcv0hhmq8j	13	\N	\N	\N
tg2hn64ei8t	lrcv0hhmq8j	14	\N	\N	\N
44890jxlzup	lrcv0hhmq8j	15	\N	\N	\N
xa635tbvi5c	lrcv0hhmq8j	16	\N	\N	\N
46p5wcng6sm	lrcv0hhmq8j	10	\N	\N	\N
r3e9s9hvz53	lrcv0hhmq8j	11	\N	\N	\N
ylyr9dd0a50	lrcv0hhmq8j	12	\N	\N	\N
4dgysxrfq7o	lrcv0hhmq8j	17	\N	\N	\N
sf8fl742bgm	lrcv0hhmq8j	18	\N	\N	\N
sptin92gm5m	lrcv0hhmq8j	19	\N	\N	\N
i0lnhtci4u6	lrcv0hhmq8j	20	\N	\N	\N
swxvjglsevf	lrcv0hhmq8j	21	\N	\N	\N
nocobase-admin-menu	lrcv0hhmq8j	22	\N	\N	\N
bmvfdpfnwm7	lrcv0hhmq8j	2	\N	\N	\N
w2vajpu7d09	lrcv0hhmq8j	3	\N	\N	\N
pir294lj4m7	lrcv0hhmq8j	1	\N	\N	2
4dhqobwleva	ofj1wcu4xrm	1	\N	\N	1
zxkfxhzh2gm	ofj1wcu4xrm	2	\N	\N	\N
8t2c5f2jjl9	4dhqobwleva	3	\N	\N	\N
8t2c5f2jjl9	ofj1wcu4xrm	4	\N	\N	\N
66lgu9id6bj	4dhqobwleva	4	\N	\N	\N
66lgu9id6bj	ofj1wcu4xrm	5	\N	\N	\N
jfqsx79zobd	4dhqobwleva	5	\N	\N	\N
jfqsx79zobd	ofj1wcu4xrm	6	\N	\N	\N
wsafpwbqr88	4dhqobwleva	6	\N	\N	\N
wsafpwbqr88	ofj1wcu4xrm	7	\N	\N	\N
ifzzkj7loaj	4dhqobwleva	7	\N	\N	\N
ifzzkj7loaj	ofj1wcu4xrm	8	\N	\N	\N
k99w3v09n98	4dhqobwleva	8	\N	\N	\N
k99w3v09n98	ofj1wcu4xrm	9	\N	\N	\N
48d58aj2z3f	4dhqobwleva	9	\N	\N	\N
48d58aj2z3f	ofj1wcu4xrm	10	\N	\N	\N
dnlwo60b33v	4dhqobwleva	10	\N	\N	\N
dnlwo60b33v	ofj1wcu4xrm	11	\N	\N	\N
89nfa89tbje	4dhqobwleva	11	\N	\N	\N
89nfa89tbje	ofj1wcu4xrm	12	\N	\N	\N
nc92u2m878d	4dhqobwleva	14	\N	\N	\N
nc92u2m878d	ofj1wcu4xrm	15	\N	\N	\N
jiq42lrek0j	4dhqobwleva	15	\N	\N	\N
jiq42lrek0j	ofj1wcu4xrm	16	\N	\N	\N
w149la0utnx	4dhqobwleva	16	\N	\N	\N
w149la0utnx	ofj1wcu4xrm	17	\N	\N	\N
z02388u42s9	4dhqobwleva	17	\N	\N	\N
z02388u42s9	ofj1wcu4xrm	18	\N	\N	\N
llvsctq28hp	4dhqobwleva	18	\N	\N	\N
llvsctq28hp	ofj1wcu4xrm	19	\N	\N	\N
8xvbgh18zfk	4dhqobwleva	19	\N	\N	\N
8xvbgh18zfk	ofj1wcu4xrm	20	\N	\N	\N
2pij3wiepc4	4dhqobwleva	20	\N	\N	\N
2pij3wiepc4	ofj1wcu4xrm	21	\N	\N	\N
we414l1saan	4dhqobwleva	21	\N	\N	\N
we414l1saan	ofj1wcu4xrm	22	\N	\N	\N
t4v2kcudvg5	4dhqobwleva	12	\N	\N	\N
t4v2kcudvg5	ofj1wcu4xrm	13	\N	\N	\N
q9zjnv8mc9j	4dhqobwleva	13	\N	\N	\N
q9zjnv8mc9j	ofj1wcu4xrm	14	\N	\N	\N
nocobase-admin-menu	4dhqobwleva	22	\N	\N	\N
nocobase-admin-menu	ofj1wcu4xrm	23	\N	\N	\N
oj491oo69he	4dhqobwleva	2	\N	\N	\N
oj491oo69he	ofj1wcu4xrm	3	\N	\N	\N
4dhqobwleva	4dhqobwleva	0	f	properties	\N
zxkfxhzh2gm	4dhqobwleva	1	\N	\N	3
zxkfxhzh2gm	6o5do9pffgb	2	\N	\N	\N
oj491oo69he	6o5do9pffgb	3	\N	\N	\N
8t2c5f2jjl9	6o5do9pffgb	4	\N	\N	\N
66lgu9id6bj	6o5do9pffgb	5	\N	\N	\N
jfqsx79zobd	6o5do9pffgb	6	\N	\N	\N
wsafpwbqr88	6o5do9pffgb	7	\N	\N	\N
ifzzkj7loaj	6o5do9pffgb	8	\N	\N	\N
k99w3v09n98	6o5do9pffgb	9	\N	\N	\N
48d58aj2z3f	6o5do9pffgb	10	\N	\N	\N
dnlwo60b33v	6o5do9pffgb	11	\N	\N	\N
89nfa89tbje	6o5do9pffgb	12	\N	\N	\N
nc92u2m878d	6o5do9pffgb	15	\N	\N	\N
jiq42lrek0j	6o5do9pffgb	16	\N	\N	\N
w149la0utnx	6o5do9pffgb	17	\N	\N	\N
z02388u42s9	6o5do9pffgb	18	\N	\N	\N
llvsctq28hp	6o5do9pffgb	19	\N	\N	\N
8xvbgh18zfk	6o5do9pffgb	20	\N	\N	\N
2pij3wiepc4	6o5do9pffgb	21	\N	\N	\N
we414l1saan	6o5do9pffgb	22	\N	\N	\N
t4v2kcudvg5	6o5do9pffgb	13	\N	\N	\N
q9zjnv8mc9j	6o5do9pffgb	14	\N	\N	\N
nocobase-admin-menu	6o5do9pffgb	23	\N	\N	\N
q62uhq5ae4j	6o5do9pffgb	1	\N	\N	2
9zvtkobxxxa	9zvtkobxxxa	0	f	\N	\N
jjs5urekma8	jjs5urekma8	0	f	properties	\N
ealssr8e9sy	jjs5urekma8	1	\N	\N	1
0jpwramwssw	0jpwramwssw	0	f	properties	\N
jjs5urekma8	0jpwramwssw	1	\N	\N	1
ealssr8e9sy	0jpwramwssw	2	\N	\N	1
9zvtkobxxxa	jjs5urekma8	2	\N	\N	\N
9zvtkobxxxa	0jpwramwssw	3	\N	\N	\N
ealssr8e9sy	ealssr8e9sy	0	f	properties	\N
9zvtkobxxxa	ealssr8e9sy	1	\N	\N	1
9bwzzp890dg	9bwzzp890dg	0	f	properties	\N
5z0xpoxz87w	9bwzzp890dg	2	\N	\N	\N
o9klwv4nzei	9bwzzp890dg	3	\N	\N	\N
ozzmhtdpth4	9bwzzp890dg	4	\N	\N	\N
b8mogqkr3um	9bwzzp890dg	5	\N	\N	\N
b56io1plq44	9bwzzp890dg	6	\N	\N	\N
13qbrfhlbny	9bwzzp890dg	7	\N	\N	\N
oqsecaif6am	9bwzzp890dg	8	\N	\N	\N
63aby9t5qmb	9bwzzp890dg	9	\N	\N	\N
mwrnryoju9y	9bwzzp890dg	10	\N	\N	\N
nocobase-admin-menu	9bwzzp890dg	11	\N	\N	\N
8kxzcotfeb3	9bwzzp890dg	1	\N	\N	3
netkmp5tosm	netkmp5tosm	0	f	\N	\N
uxyn4hf3h2i	uxyn4hf3h2i	0	f	properties	\N
agmpv6q8rox	uxyn4hf3h2i	1	\N	\N	1
ffem491m0vg	ffem491m0vg	0	f	properties	\N
uxyn4hf3h2i	ffem491m0vg	1	\N	\N	1
agmpv6q8rox	ffem491m0vg	2	\N	\N	1
netkmp5tosm	uxyn4hf3h2i	2	\N	\N	\N
netkmp5tosm	ffem491m0vg	3	\N	\N	\N
agmpv6q8rox	agmpv6q8rox	0	f	properties	\N
netkmp5tosm	agmpv6q8rox	1	\N	\N	1
ia5t1r0r4sd	ia5t1r0r4sd	0	f	properties	\N
ao2a67rjlld	ia5t1r0r4sd	2	\N	\N	\N
bwbd6lebhkb	ia5t1r0r4sd	3	\N	\N	\N
m8tbcrs4z9t	ia5t1r0r4sd	4	\N	\N	\N
q4dinm52meb	ia5t1r0r4sd	5	\N	\N	\N
vs0l89adzhc	ia5t1r0r4sd	6	\N	\N	\N
493pimn830r	ia5t1r0r4sd	7	\N	\N	\N
nocobase-admin-menu	ia5t1r0r4sd	8	\N	\N	\N
yc5x6qvg4mh	ia5t1r0r4sd	1	\N	\N	2
lo3cfi2mnr8	lo3cfi2mnr8	0	f	properties	\N
jiq42lrek0j	lo3cfi2mnr8	2	\N	\N	\N
w149la0utnx	lo3cfi2mnr8	3	\N	\N	\N
z02388u42s9	lo3cfi2mnr8	4	\N	\N	\N
llvsctq28hp	lo3cfi2mnr8	5	\N	\N	\N
8xvbgh18zfk	lo3cfi2mnr8	6	\N	\N	\N
2pij3wiepc4	lo3cfi2mnr8	7	\N	\N	\N
we414l1saan	lo3cfi2mnr8	8	\N	\N	\N
nocobase-admin-menu	lo3cfi2mnr8	9	\N	\N	\N
c6mpmcq8sh2	lo3cfi2mnr8	1	\N	\N	2
xt3d9e6vpx3	xt3d9e6vpx3	0	t	properties	\N
8k1zlpvo9rl	xt3d9e6vpx3	1	\N	\N	1
hfflouqm5vf	hfflouqm5vf	0	f	properties	\N
xt3d9e6vpx3	hfflouqm5vf	1	\N	\N	1
8k1zlpvo9rl	hfflouqm5vf	2	\N	\N	1
nocobase-admin-menu	xt3d9e6vpx3	2	\N	\N	\N
nocobase-admin-menu	hfflouqm5vf	3	\N	\N	\N
8k1zlpvo9rl	8k1zlpvo9rl	0	f	properties	\N
nocobase-admin-menu	8k1zlpvo9rl	1	\N	\N	5
fu4hqwdhjna	fu4hqwdhjna	0	f	properties	\N
llct24nw1vt	fu4hqwdhjna	1	\N	\N	1
rgikecs0vb3	rgikecs0vb3	0	f	properties	\N
fu4hqwdhjna	rgikecs0vb3	1	\N	\N	1
llct24nw1vt	rgikecs0vb3	2	\N	\N	1
0p09a8u5xr9	0p09a8u5xr9	0	f	properties	\N
rgikecs0vb3	0p09a8u5xr9	1	\N	\N	1
fu4hqwdhjna	0p09a8u5xr9	2	\N	\N	1
llct24nw1vt	0p09a8u5xr9	3	\N	\N	1
hfflouqm5vf	fu4hqwdhjna	2	\N	\N	\N
hfflouqm5vf	rgikecs0vb3	3	\N	\N	\N
hfflouqm5vf	0p09a8u5xr9	4	\N	\N	\N
xt3d9e6vpx3	llct24nw1vt	2	\N	\N	\N
xt3d9e6vpx3	fu4hqwdhjna	3	\N	\N	\N
xt3d9e6vpx3	rgikecs0vb3	4	\N	\N	\N
xt3d9e6vpx3	0p09a8u5xr9	5	\N	\N	\N
8k1zlpvo9rl	llct24nw1vt	3	\N	\N	\N
8k1zlpvo9rl	fu4hqwdhjna	4	\N	\N	\N
8k1zlpvo9rl	rgikecs0vb3	5	\N	\N	\N
8k1zlpvo9rl	0p09a8u5xr9	6	\N	\N	\N
nocobase-admin-menu	llct24nw1vt	4	\N	\N	\N
nocobase-admin-menu	fu4hqwdhjna	5	\N	\N	\N
nocobase-admin-menu	rgikecs0vb3	6	\N	\N	\N
nocobase-admin-menu	0p09a8u5xr9	7	\N	\N	\N
llct24nw1vt	llct24nw1vt	0	f	properties	\N
hfflouqm5vf	llct24nw1vt	1	\N	\N	1
nocobase-admin-menu	swxvjglsevf	1	\N	\N	8
nocobase-admin-menu	493pimn830r	1	\N	\N	9
nocobase-admin-menu	mwrnryoju9y	1	\N	\N	10
nocobase-admin-menu	we414l1saan	1	\N	\N	7
6gy09u6gkvr	6gy09u6gkvr	0	f	properties	\N
ao2a67rjlld	6gy09u6gkvr	2	\N	\N	\N
bwbd6lebhkb	6gy09u6gkvr	3	\N	\N	\N
m8tbcrs4z9t	6gy09u6gkvr	4	\N	\N	\N
q4dinm52meb	6gy09u6gkvr	5	\N	\N	\N
vs0l89adzhc	6gy09u6gkvr	6	\N	\N	\N
493pimn830r	6gy09u6gkvr	7	\N	\N	\N
nocobase-admin-menu	6gy09u6gkvr	8	\N	\N	\N
yc5x6qvg4mh	6gy09u6gkvr	1	\N	\N	3
xzo61aenrhv	xzo61aenrhv	0	f	properties	\N
4xrh6k2pmoo	xzo61aenrhv	1	\N	\N	1
gpuc5o56mm3	gpuc5o56mm3	0	f	properties	\N
xzo61aenrhv	gpuc5o56mm3	1	\N	\N	1
4xrh6k2pmoo	gpuc5o56mm3	2	\N	\N	1
6htbvgte0tk	xzo61aenrhv	2	\N	\N	\N
6htbvgte0tk	gpuc5o56mm3	3	\N	\N	\N
8ko2451l30w	4xrh6k2pmoo	2	\N	\N	\N
8ko2451l30w	xzo61aenrhv	3	\N	\N	\N
8ko2451l30w	gpuc5o56mm3	4	\N	\N	\N
9azfkzbvd2t	4xrh6k2pmoo	3	\N	\N	\N
9azfkzbvd2t	xzo61aenrhv	4	\N	\N	\N
9azfkzbvd2t	gpuc5o56mm3	5	\N	\N	\N
fqae3xzvq38	4xrh6k2pmoo	4	\N	\N	\N
fqae3xzvq38	xzo61aenrhv	5	\N	\N	\N
fqae3xzvq38	gpuc5o56mm3	6	\N	\N	\N
ofsyyzcz0jq	4xrh6k2pmoo	5	\N	\N	\N
ofsyyzcz0jq	xzo61aenrhv	6	\N	\N	\N
ofsyyzcz0jq	gpuc5o56mm3	7	\N	\N	\N
3i3tciuj9cf	4xrh6k2pmoo	6	\N	\N	\N
3i3tciuj9cf	xzo61aenrhv	7	\N	\N	\N
3i3tciuj9cf	gpuc5o56mm3	8	\N	\N	\N
bws6e7i5xki	4xrh6k2pmoo	7	\N	\N	\N
bws6e7i5xki	xzo61aenrhv	8	\N	\N	\N
bws6e7i5xki	gpuc5o56mm3	9	\N	\N	\N
08elwnxsu63	4xrh6k2pmoo	8	\N	\N	\N
08elwnxsu63	xzo61aenrhv	9	\N	\N	\N
08elwnxsu63	gpuc5o56mm3	10	\N	\N	\N
mwjoqz5w6cn	4xrh6k2pmoo	9	\N	\N	\N
mwjoqz5w6cn	xzo61aenrhv	10	\N	\N	\N
mwjoqz5w6cn	gpuc5o56mm3	11	\N	\N	\N
b3d6kcz2ih3	4xrh6k2pmoo	10	\N	\N	\N
b3d6kcz2ih3	xzo61aenrhv	11	\N	\N	\N
b3d6kcz2ih3	gpuc5o56mm3	12	\N	\N	\N
sioow55xwz6	4xrh6k2pmoo	11	\N	\N	\N
sioow55xwz6	xzo61aenrhv	12	\N	\N	\N
sioow55xwz6	gpuc5o56mm3	13	\N	\N	\N
ozzmhtdpth4	4xrh6k2pmoo	12	\N	\N	\N
ozzmhtdpth4	xzo61aenrhv	13	\N	\N	\N
ozzmhtdpth4	gpuc5o56mm3	14	\N	\N	\N
b8mogqkr3um	4xrh6k2pmoo	13	\N	\N	\N
b8mogqkr3um	xzo61aenrhv	14	\N	\N	\N
b8mogqkr3um	gpuc5o56mm3	15	\N	\N	\N
b56io1plq44	4xrh6k2pmoo	14	\N	\N	\N
b56io1plq44	xzo61aenrhv	15	\N	\N	\N
b56io1plq44	gpuc5o56mm3	16	\N	\N	\N
13qbrfhlbny	4xrh6k2pmoo	15	\N	\N	\N
13qbrfhlbny	xzo61aenrhv	16	\N	\N	\N
13qbrfhlbny	gpuc5o56mm3	17	\N	\N	\N
oqsecaif6am	4xrh6k2pmoo	16	\N	\N	\N
oqsecaif6am	xzo61aenrhv	17	\N	\N	\N
oqsecaif6am	gpuc5o56mm3	18	\N	\N	\N
63aby9t5qmb	4xrh6k2pmoo	17	\N	\N	\N
63aby9t5qmb	xzo61aenrhv	18	\N	\N	\N
63aby9t5qmb	gpuc5o56mm3	19	\N	\N	\N
mwrnryoju9y	4xrh6k2pmoo	18	\N	\N	\N
mwrnryoju9y	xzo61aenrhv	19	\N	\N	\N
mwrnryoju9y	gpuc5o56mm3	20	\N	\N	\N
nocobase-admin-menu	4xrh6k2pmoo	19	\N	\N	\N
nocobase-admin-menu	xzo61aenrhv	20	\N	\N	\N
nocobase-admin-menu	gpuc5o56mm3	21	\N	\N	\N
4xrh6k2pmoo	4xrh6k2pmoo	0	f	properties	\N
6htbvgte0tk	4xrh6k2pmoo	1	\N	\N	5
ycph2iwspsy	ycph2iwspsy	0	f	properties	\N
z8sfah8xqx2	z8sfah8xqx2	0	f	properties	\N
ycph2iwspsy	z8sfah8xqx2	1	\N	\N	1
dtwqv1j8ahg	dtwqv1j8ahg	0	f	properties	\N
z8sfah8xqx2	dtwqv1j8ahg	1	\N	\N	1
ycph2iwspsy	dtwqv1j8ahg	2	\N	\N	1
6htbvgte0tk	z8sfah8xqx2	2	\N	\N	\N
6htbvgte0tk	dtwqv1j8ahg	3	\N	\N	\N
8ko2451l30w	ycph2iwspsy	2	\N	\N	\N
8ko2451l30w	z8sfah8xqx2	3	\N	\N	\N
8ko2451l30w	dtwqv1j8ahg	4	\N	\N	\N
9azfkzbvd2t	ycph2iwspsy	3	\N	\N	\N
9azfkzbvd2t	z8sfah8xqx2	4	\N	\N	\N
9azfkzbvd2t	dtwqv1j8ahg	5	\N	\N	\N
fqae3xzvq38	ycph2iwspsy	4	\N	\N	\N
fqae3xzvq38	z8sfah8xqx2	5	\N	\N	\N
fqae3xzvq38	dtwqv1j8ahg	6	\N	\N	\N
ofsyyzcz0jq	ycph2iwspsy	5	\N	\N	\N
ofsyyzcz0jq	z8sfah8xqx2	6	\N	\N	\N
ofsyyzcz0jq	dtwqv1j8ahg	7	\N	\N	\N
3i3tciuj9cf	ycph2iwspsy	6	\N	\N	\N
3i3tciuj9cf	z8sfah8xqx2	7	\N	\N	\N
3i3tciuj9cf	dtwqv1j8ahg	8	\N	\N	\N
bws6e7i5xki	ycph2iwspsy	7	\N	\N	\N
bws6e7i5xki	z8sfah8xqx2	8	\N	\N	\N
bws6e7i5xki	dtwqv1j8ahg	9	\N	\N	\N
08elwnxsu63	ycph2iwspsy	8	\N	\N	\N
08elwnxsu63	z8sfah8xqx2	9	\N	\N	\N
08elwnxsu63	dtwqv1j8ahg	10	\N	\N	\N
mwjoqz5w6cn	ycph2iwspsy	9	\N	\N	\N
mwjoqz5w6cn	z8sfah8xqx2	10	\N	\N	\N
mwjoqz5w6cn	dtwqv1j8ahg	11	\N	\N	\N
b3d6kcz2ih3	ycph2iwspsy	10	\N	\N	\N
b3d6kcz2ih3	z8sfah8xqx2	11	\N	\N	\N
b3d6kcz2ih3	dtwqv1j8ahg	12	\N	\N	\N
sioow55xwz6	ycph2iwspsy	11	\N	\N	\N
sioow55xwz6	z8sfah8xqx2	12	\N	\N	\N
sioow55xwz6	dtwqv1j8ahg	13	\N	\N	\N
ozzmhtdpth4	ycph2iwspsy	12	\N	\N	\N
ozzmhtdpth4	z8sfah8xqx2	13	\N	\N	\N
ozzmhtdpth4	dtwqv1j8ahg	14	\N	\N	\N
b8mogqkr3um	ycph2iwspsy	13	\N	\N	\N
b8mogqkr3um	z8sfah8xqx2	14	\N	\N	\N
b8mogqkr3um	dtwqv1j8ahg	15	\N	\N	\N
b56io1plq44	ycph2iwspsy	14	\N	\N	\N
b56io1plq44	z8sfah8xqx2	15	\N	\N	\N
b56io1plq44	dtwqv1j8ahg	16	\N	\N	\N
13qbrfhlbny	ycph2iwspsy	15	\N	\N	\N
13qbrfhlbny	z8sfah8xqx2	16	\N	\N	\N
13qbrfhlbny	dtwqv1j8ahg	17	\N	\N	\N
oqsecaif6am	ycph2iwspsy	16	\N	\N	\N
oqsecaif6am	z8sfah8xqx2	17	\N	\N	\N
oqsecaif6am	dtwqv1j8ahg	18	\N	\N	\N
63aby9t5qmb	ycph2iwspsy	17	\N	\N	\N
63aby9t5qmb	z8sfah8xqx2	18	\N	\N	\N
63aby9t5qmb	dtwqv1j8ahg	19	\N	\N	\N
mwrnryoju9y	ycph2iwspsy	18	\N	\N	\N
mwrnryoju9y	z8sfah8xqx2	19	\N	\N	\N
mwrnryoju9y	dtwqv1j8ahg	20	\N	\N	\N
nocobase-admin-menu	ycph2iwspsy	19	\N	\N	\N
nocobase-admin-menu	z8sfah8xqx2	20	\N	\N	\N
nocobase-admin-menu	dtwqv1j8ahg	21	\N	\N	\N
6htbvgte0tk	ycph2iwspsy	1	\N	\N	6
qos4gy0bday	qos4gy0bday	0	f	properties	\N
5z0xpoxz87w	qos4gy0bday	2	\N	\N	\N
o9klwv4nzei	qos4gy0bday	3	\N	\N	\N
ozzmhtdpth4	qos4gy0bday	4	\N	\N	\N
b8mogqkr3um	qos4gy0bday	5	\N	\N	\N
b56io1plq44	qos4gy0bday	6	\N	\N	\N
13qbrfhlbny	qos4gy0bday	7	\N	\N	\N
oqsecaif6am	qos4gy0bday	8	\N	\N	\N
63aby9t5qmb	qos4gy0bday	9	\N	\N	\N
mwrnryoju9y	qos4gy0bday	10	\N	\N	\N
nocobase-admin-menu	qos4gy0bday	11	\N	\N	\N
8kxzcotfeb3	qos4gy0bday	1	\N	\N	4
fe7kgdo55ax	r1jfuy0x2g2	2	\N	\N	\N
fe7kgdo55ax	5po28o9th2g	2	\N	\N	\N
hmft2ujv1uf	5po28o9th2g	3	\N	\N	\N
nocobase-admin-menu	5po28o9th2g	4	\N	\N	\N
5po28o9th2g	5po28o9th2g	0	f	properties	\N
7poa6levyva	5po28o9th2g	1	\N	\N	4
tavzpgzflnv	tavzpgzflnv	0	f	properties	\N
s41jwc7ushc	tavzpgzflnv	1	\N	\N	1
fe7kgdo55ax	fe7kgdo55ax	0	t	properties	\N
hmft2ujv1uf	fe7kgdo55ax	1	\N	\N	1
7poa6levyva	7poa6levyva	0	f	properties	\N
fe7kgdo55ax	7poa6levyva	1	\N	\N	1
hmft2ujv1uf	7poa6levyva	2	\N	\N	1
nocobase-admin-menu	fe7kgdo55ax	2	\N	\N	\N
nocobase-admin-menu	7poa6levyva	3	\N	\N	\N
hmft2ujv1uf	hmft2ujv1uf	0	f	properties	\N
nocobase-admin-menu	hmft2ujv1uf	1	\N	\N	11
7poa6levyva	tavzpgzflnv	2	\N	\N	\N
fe7kgdo55ax	s41jwc7ushc	2	\N	\N	\N
fe7kgdo55ax	tavzpgzflnv	3	\N	\N	\N
hmft2ujv1uf	s41jwc7ushc	3	\N	\N	\N
hmft2ujv1uf	tavzpgzflnv	4	\N	\N	\N
nocobase-admin-menu	s41jwc7ushc	4	\N	\N	\N
nocobase-admin-menu	tavzpgzflnv	5	\N	\N	\N
s41jwc7ushc	s41jwc7ushc	0	f	properties	\N
7poa6levyva	s41jwc7ushc	1	\N	\N	5
6qulve4ybk4	6qulve4ybk4	0	f	properties	\N
y05re45hs3a	6qulve4ybk4	1	\N	\N	5
4ryyxzuq87v	4ryyxzuq87v	0	f	properties	\N
6qulve4ybk4	4ryyxzuq87v	1	\N	\N	1
zrm37tg78ob	zrm37tg78ob	0	f	properties	\N
4ryyxzuq87v	zrm37tg78ob	1	\N	\N	1
6qulve4ybk4	zrm37tg78ob	2	\N	\N	1
y05re45hs3a	4ryyxzuq87v	2	\N	\N	\N
y05re45hs3a	zrm37tg78ob	3	\N	\N	\N
dsptk8t0mbr	6qulve4ybk4	2	\N	\N	\N
dsptk8t0mbr	4ryyxzuq87v	3	\N	\N	\N
dsptk8t0mbr	zrm37tg78ob	4	\N	\N	\N
7qih7hq26ge	6qulve4ybk4	3	\N	\N	\N
7qih7hq26ge	4ryyxzuq87v	4	\N	\N	\N
7qih7hq26ge	zrm37tg78ob	5	\N	\N	\N
m9ru2u1mst5	6qulve4ybk4	4	\N	\N	\N
m9ru2u1mst5	4ryyxzuq87v	5	\N	\N	\N
m9ru2u1mst5	zrm37tg78ob	6	\N	\N	\N
t5a2xk7thpn	6qulve4ybk4	5	\N	\N	\N
t5a2xk7thpn	4ryyxzuq87v	6	\N	\N	\N
t5a2xk7thpn	zrm37tg78ob	7	\N	\N	\N
ra6axo18rlo	6qulve4ybk4	6	\N	\N	\N
ra6axo18rlo	4ryyxzuq87v	7	\N	\N	\N
ra6axo18rlo	zrm37tg78ob	8	\N	\N	\N
7peksipcht7	6qulve4ybk4	7	\N	\N	\N
7peksipcht7	4ryyxzuq87v	8	\N	\N	\N
7peksipcht7	zrm37tg78ob	9	\N	\N	\N
vxyfqljr7j6	6qulve4ybk4	8	\N	\N	\N
vxyfqljr7j6	4ryyxzuq87v	9	\N	\N	\N
vxyfqljr7j6	zrm37tg78ob	10	\N	\N	\N
v0xzwwlb3u7	6qulve4ybk4	9	\N	\N	\N
v0xzwwlb3u7	4ryyxzuq87v	10	\N	\N	\N
v0xzwwlb3u7	zrm37tg78ob	11	\N	\N	\N
eajx55rxxy3	6qulve4ybk4	10	\N	\N	\N
eajx55rxxy3	4ryyxzuq87v	11	\N	\N	\N
eajx55rxxy3	zrm37tg78ob	12	\N	\N	\N
8kxzcotfeb3	6qulve4ybk4	11	\N	\N	\N
8kxzcotfeb3	4ryyxzuq87v	12	\N	\N	\N
8kxzcotfeb3	zrm37tg78ob	13	\N	\N	\N
5z0xpoxz87w	6qulve4ybk4	12	\N	\N	\N
5z0xpoxz87w	4ryyxzuq87v	13	\N	\N	\N
5z0xpoxz87w	zrm37tg78ob	14	\N	\N	\N
o9klwv4nzei	6qulve4ybk4	13	\N	\N	\N
o9klwv4nzei	4ryyxzuq87v	14	\N	\N	\N
o9klwv4nzei	zrm37tg78ob	15	\N	\N	\N
ozzmhtdpth4	6qulve4ybk4	14	\N	\N	\N
ozzmhtdpth4	4ryyxzuq87v	15	\N	\N	\N
ozzmhtdpth4	zrm37tg78ob	16	\N	\N	\N
b8mogqkr3um	6qulve4ybk4	15	\N	\N	\N
b8mogqkr3um	4ryyxzuq87v	16	\N	\N	\N
b8mogqkr3um	zrm37tg78ob	17	\N	\N	\N
b56io1plq44	6qulve4ybk4	16	\N	\N	\N
b56io1plq44	4ryyxzuq87v	17	\N	\N	\N
b56io1plq44	zrm37tg78ob	18	\N	\N	\N
13qbrfhlbny	6qulve4ybk4	17	\N	\N	\N
13qbrfhlbny	4ryyxzuq87v	18	\N	\N	\N
13qbrfhlbny	zrm37tg78ob	19	\N	\N	\N
oqsecaif6am	6qulve4ybk4	18	\N	\N	\N
oqsecaif6am	4ryyxzuq87v	19	\N	\N	\N
oqsecaif6am	zrm37tg78ob	20	\N	\N	\N
63aby9t5qmb	6qulve4ybk4	19	\N	\N	\N
63aby9t5qmb	4ryyxzuq87v	20	\N	\N	\N
63aby9t5qmb	zrm37tg78ob	21	\N	\N	\N
mwrnryoju9y	6qulve4ybk4	20	\N	\N	\N
mwrnryoju9y	4ryyxzuq87v	21	\N	\N	\N
mwrnryoju9y	zrm37tg78ob	22	\N	\N	\N
nocobase-admin-menu	6qulve4ybk4	21	\N	\N	\N
nocobase-admin-menu	4ryyxzuq87v	22	\N	\N	\N
nocobase-admin-menu	zrm37tg78ob	23	\N	\N	\N
hmft2ujv1uf	r1jfuy0x2g2	3	\N	\N	\N
nocobase-admin-menu	r1jfuy0x2g2	4	\N	\N	\N
r1jfuy0x2g2	r1jfuy0x2g2	0	f	properties	\N
ypdn0dkn4wx	ypdn0dkn4wx	0	f	properties	\N
7poa6levyva	r1jfuy0x2g2	1	\N	\N	23
0ddzjfp9gg6	0ddzjfp9gg6	0	f	properties	\N
3p9f7asal9h	0ddzjfp9gg6	1	\N	\N	1
387jrys6pj9	387jrys6pj9	0	f	properties	\N
0ddzjfp9gg6	387jrys6pj9	1	\N	\N	1
3p9f7asal9h	387jrys6pj9	2	\N	\N	1
y05re45hs3a	0ddzjfp9gg6	2	\N	\N	\N
y05re45hs3a	387jrys6pj9	3	\N	\N	\N
dsptk8t0mbr	3p9f7asal9h	2	\N	\N	\N
dsptk8t0mbr	0ddzjfp9gg6	3	\N	\N	\N
dsptk8t0mbr	387jrys6pj9	4	\N	\N	\N
7qih7hq26ge	3p9f7asal9h	3	\N	\N	\N
7qih7hq26ge	0ddzjfp9gg6	4	\N	\N	\N
7qih7hq26ge	387jrys6pj9	5	\N	\N	\N
m9ru2u1mst5	3p9f7asal9h	4	\N	\N	\N
m9ru2u1mst5	0ddzjfp9gg6	5	\N	\N	\N
m9ru2u1mst5	387jrys6pj9	6	\N	\N	\N
t5a2xk7thpn	3p9f7asal9h	5	\N	\N	\N
t5a2xk7thpn	0ddzjfp9gg6	6	\N	\N	\N
t5a2xk7thpn	387jrys6pj9	7	\N	\N	\N
ra6axo18rlo	3p9f7asal9h	6	\N	\N	\N
ra6axo18rlo	0ddzjfp9gg6	7	\N	\N	\N
ra6axo18rlo	387jrys6pj9	8	\N	\N	\N
7peksipcht7	3p9f7asal9h	7	\N	\N	\N
7peksipcht7	0ddzjfp9gg6	8	\N	\N	\N
7peksipcht7	387jrys6pj9	9	\N	\N	\N
vxyfqljr7j6	3p9f7asal9h	8	\N	\N	\N
vxyfqljr7j6	0ddzjfp9gg6	9	\N	\N	\N
vxyfqljr7j6	387jrys6pj9	10	\N	\N	\N
v0xzwwlb3u7	3p9f7asal9h	9	\N	\N	\N
v0xzwwlb3u7	0ddzjfp9gg6	10	\N	\N	\N
v0xzwwlb3u7	387jrys6pj9	11	\N	\N	\N
eajx55rxxy3	3p9f7asal9h	10	\N	\N	\N
eajx55rxxy3	0ddzjfp9gg6	11	\N	\N	\N
eajx55rxxy3	387jrys6pj9	12	\N	\N	\N
8kxzcotfeb3	3p9f7asal9h	11	\N	\N	\N
8kxzcotfeb3	0ddzjfp9gg6	12	\N	\N	\N
8kxzcotfeb3	387jrys6pj9	13	\N	\N	\N
5z0xpoxz87w	3p9f7asal9h	12	\N	\N	\N
5z0xpoxz87w	0ddzjfp9gg6	13	\N	\N	\N
5z0xpoxz87w	387jrys6pj9	14	\N	\N	\N
o9klwv4nzei	3p9f7asal9h	13	\N	\N	\N
o9klwv4nzei	0ddzjfp9gg6	14	\N	\N	\N
o9klwv4nzei	387jrys6pj9	15	\N	\N	\N
ozzmhtdpth4	3p9f7asal9h	14	\N	\N	\N
ozzmhtdpth4	0ddzjfp9gg6	15	\N	\N	\N
ozzmhtdpth4	387jrys6pj9	16	\N	\N	\N
b8mogqkr3um	3p9f7asal9h	15	\N	\N	\N
b8mogqkr3um	0ddzjfp9gg6	16	\N	\N	\N
b8mogqkr3um	387jrys6pj9	17	\N	\N	\N
b56io1plq44	3p9f7asal9h	16	\N	\N	\N
b56io1plq44	0ddzjfp9gg6	17	\N	\N	\N
b56io1plq44	387jrys6pj9	18	\N	\N	\N
13qbrfhlbny	3p9f7asal9h	17	\N	\N	\N
13qbrfhlbny	0ddzjfp9gg6	18	\N	\N	\N
13qbrfhlbny	387jrys6pj9	19	\N	\N	\N
oqsecaif6am	3p9f7asal9h	18	\N	\N	\N
oqsecaif6am	0ddzjfp9gg6	19	\N	\N	\N
oqsecaif6am	387jrys6pj9	20	\N	\N	\N
63aby9t5qmb	3p9f7asal9h	19	\N	\N	\N
63aby9t5qmb	0ddzjfp9gg6	20	\N	\N	\N
63aby9t5qmb	387jrys6pj9	21	\N	\N	\N
mwrnryoju9y	3p9f7asal9h	20	\N	\N	\N
mwrnryoju9y	0ddzjfp9gg6	21	\N	\N	\N
mwrnryoju9y	387jrys6pj9	22	\N	\N	\N
nocobase-admin-menu	3p9f7asal9h	21	\N	\N	\N
nocobase-admin-menu	0ddzjfp9gg6	22	\N	\N	\N
nocobase-admin-menu	387jrys6pj9	23	\N	\N	\N
3p9f7asal9h	3p9f7asal9h	0	f	properties	\N
y05re45hs3a	3p9f7asal9h	1	\N	\N	7
swbgm59qce3	swbgm59qce3	0	f	properties	\N
7poa6levyva	swbgm59qce3	1	\N	\N	8
fe7kgdo55ax	swbgm59qce3	2	\N	\N	\N
fe7kgdo55ax	gwkooqabv4x	2	\N	\N	\N
hmft2ujv1uf	swbgm59qce3	3	\N	\N	\N
hmft2ujv1uf	gwkooqabv4x	3	\N	\N	\N
nocobase-admin-menu	swbgm59qce3	4	\N	\N	\N
nocobase-admin-menu	gwkooqabv4x	4	\N	\N	\N
gwkooqabv4x	gwkooqabv4x	0	f	properties	\N
7poa6levyva	gwkooqabv4x	1	\N	\N	15
7poa6levyva	9cnsplg5f8i	1	\N	\N	20
fe7kgdo55ax	9cnsplg5f8i	2	\N	\N	\N
hmft2ujv1uf	9cnsplg5f8i	3	\N	\N	\N
nocobase-admin-menu	9cnsplg5f8i	4	\N	\N	\N
9cnsplg5f8i	9cnsplg5f8i	0	f	properties	\N
fe7kgdo55ax	ris4kebta55	2	\N	\N	\N
hmft2ujv1uf	ris4kebta55	3	\N	\N	\N
nocobase-admin-menu	ris4kebta55	4	\N	\N	\N
ris4kebta55	ris4kebta55	0	f	properties	\N
7poa6levyva	ris4kebta55	1	\N	\N	14
xzjgh6n1pxo	xzjgh6n1pxo	0	f	properties	\N
w55w350cfun	xzjgh6n1pxo	1	\N	\N	1
q25ez0sddx0	q25ez0sddx0	0	f	properties	\N
xzjgh6n1pxo	q25ez0sddx0	1	\N	\N	1
w55w350cfun	q25ez0sddx0	2	\N	\N	1
y05re45hs3a	xzjgh6n1pxo	2	\N	\N	\N
y05re45hs3a	q25ez0sddx0	3	\N	\N	\N
dsptk8t0mbr	w55w350cfun	2	\N	\N	\N
dsptk8t0mbr	xzjgh6n1pxo	3	\N	\N	\N
dsptk8t0mbr	q25ez0sddx0	4	\N	\N	\N
7qih7hq26ge	w55w350cfun	3	\N	\N	\N
7qih7hq26ge	xzjgh6n1pxo	4	\N	\N	\N
7qih7hq26ge	q25ez0sddx0	5	\N	\N	\N
m9ru2u1mst5	w55w350cfun	4	\N	\N	\N
m9ru2u1mst5	xzjgh6n1pxo	5	\N	\N	\N
m9ru2u1mst5	q25ez0sddx0	6	\N	\N	\N
t5a2xk7thpn	w55w350cfun	5	\N	\N	\N
t5a2xk7thpn	xzjgh6n1pxo	6	\N	\N	\N
t5a2xk7thpn	q25ez0sddx0	7	\N	\N	\N
ra6axo18rlo	w55w350cfun	6	\N	\N	\N
ra6axo18rlo	xzjgh6n1pxo	7	\N	\N	\N
ra6axo18rlo	q25ez0sddx0	8	\N	\N	\N
7peksipcht7	w55w350cfun	7	\N	\N	\N
7peksipcht7	xzjgh6n1pxo	8	\N	\N	\N
jmayzuhpdzl	jmayzuhpdzl	0	f	properties	\N
oj491oo69he	jmayzuhpdzl	1	\N	\N	5
7peksipcht7	q25ez0sddx0	9	\N	\N	\N
vxyfqljr7j6	w55w350cfun	8	\N	\N	\N
fe7kgdo55ax	unis1bj47de	2	\N	\N	\N
vxyfqljr7j6	xzjgh6n1pxo	9	\N	\N	\N
vxyfqljr7j6	q25ez0sddx0	10	\N	\N	\N
v0xzwwlb3u7	w55w350cfun	9	\N	\N	\N
v0xzwwlb3u7	xzjgh6n1pxo	10	\N	\N	\N
v0xzwwlb3u7	q25ez0sddx0	11	\N	\N	\N
eajx55rxxy3	w55w350cfun	10	\N	\N	\N
hmft2ujv1uf	unis1bj47de	3	\N	\N	\N
eajx55rxxy3	xzjgh6n1pxo	11	\N	\N	\N
eajx55rxxy3	q25ez0sddx0	12	\N	\N	\N
8kxzcotfeb3	w55w350cfun	11	\N	\N	\N
8kxzcotfeb3	xzjgh6n1pxo	12	\N	\N	\N
8kxzcotfeb3	q25ez0sddx0	13	\N	\N	\N
5z0xpoxz87w	w55w350cfun	12	\N	\N	\N
nocobase-admin-menu	unis1bj47de	4	\N	\N	\N
5z0xpoxz87w	xzjgh6n1pxo	13	\N	\N	\N
5z0xpoxz87w	q25ez0sddx0	14	\N	\N	\N
o9klwv4nzei	w55w350cfun	13	\N	\N	\N
o9klwv4nzei	xzjgh6n1pxo	14	\N	\N	\N
o9klwv4nzei	q25ez0sddx0	15	\N	\N	\N
ozzmhtdpth4	w55w350cfun	14	\N	\N	\N
unis1bj47de	unis1bj47de	0	f	properties	\N
ozzmhtdpth4	xzjgh6n1pxo	15	\N	\N	\N
ozzmhtdpth4	q25ez0sddx0	16	\N	\N	\N
b8mogqkr3um	w55w350cfun	15	\N	\N	\N
b8mogqkr3um	xzjgh6n1pxo	16	\N	\N	\N
b8mogqkr3um	q25ez0sddx0	17	\N	\N	\N
b56io1plq44	w55w350cfun	16	\N	\N	\N
b56io1plq44	xzjgh6n1pxo	17	\N	\N	\N
b56io1plq44	q25ez0sddx0	18	\N	\N	\N
13qbrfhlbny	w55w350cfun	17	\N	\N	\N
13qbrfhlbny	xzjgh6n1pxo	18	\N	\N	\N
13qbrfhlbny	q25ez0sddx0	19	\N	\N	\N
oqsecaif6am	w55w350cfun	18	\N	\N	\N
oqsecaif6am	xzjgh6n1pxo	19	\N	\N	\N
oqsecaif6am	q25ez0sddx0	20	\N	\N	\N
63aby9t5qmb	w55w350cfun	19	\N	\N	\N
63aby9t5qmb	xzjgh6n1pxo	20	\N	\N	\N
63aby9t5qmb	q25ez0sddx0	21	\N	\N	\N
mwrnryoju9y	w55w350cfun	20	\N	\N	\N
mwrnryoju9y	xzjgh6n1pxo	21	\N	\N	\N
mwrnryoju9y	q25ez0sddx0	22	\N	\N	\N
nocobase-admin-menu	w55w350cfun	21	\N	\N	\N
nocobase-admin-menu	xzjgh6n1pxo	22	\N	\N	\N
nocobase-admin-menu	q25ez0sddx0	23	\N	\N	\N
w55w350cfun	w55w350cfun	0	f	properties	\N
y05re45hs3a	w55w350cfun	1	\N	\N	8
5n3prf95enu	5n3prf95enu	0	f	properties	\N
jmayzuhpdzl	5n3prf95enu	1	\N	\N	1
77znodag4w0	77znodag4w0	0	f	properties	\N
5n3prf95enu	77znodag4w0	1	\N	\N	1
jmayzuhpdzl	77znodag4w0	2	\N	\N	1
oj491oo69he	5n3prf95enu	2	\N	\N	\N
oj491oo69he	77znodag4w0	3	\N	\N	\N
8t2c5f2jjl9	jmayzuhpdzl	2	\N	\N	\N
8t2c5f2jjl9	5n3prf95enu	3	\N	\N	\N
8t2c5f2jjl9	77znodag4w0	4	\N	\N	\N
66lgu9id6bj	jmayzuhpdzl	3	\N	\N	\N
66lgu9id6bj	5n3prf95enu	4	\N	\N	\N
66lgu9id6bj	77znodag4w0	5	\N	\N	\N
jfqsx79zobd	jmayzuhpdzl	4	\N	\N	\N
jfqsx79zobd	5n3prf95enu	5	\N	\N	\N
jfqsx79zobd	77znodag4w0	6	\N	\N	\N
wsafpwbqr88	jmayzuhpdzl	5	\N	\N	\N
wsafpwbqr88	5n3prf95enu	6	\N	\N	\N
wsafpwbqr88	77znodag4w0	7	\N	\N	\N
ifzzkj7loaj	jmayzuhpdzl	6	\N	\N	\N
7poa6levyva	unis1bj47de	1	\N	\N	11
fe7kgdo55ax	qxskufg0hv4	2	\N	\N	\N
hmft2ujv1uf	qxskufg0hv4	3	\N	\N	\N
nocobase-admin-menu	qxskufg0hv4	4	\N	\N	\N
qxskufg0hv4	qxskufg0hv4	0	f	properties	\N
7poa6levyva	qxskufg0hv4	1	\N	\N	12
pkcprxz6rfy	pkcprxz6rfy	0	f	properties	\N
7poa6levyva	pkcprxz6rfy	1	\N	\N	13
fe7kgdo55ax	pkcprxz6rfy	2	\N	\N	\N
hmft2ujv1uf	pkcprxz6rfy	3	\N	\N	\N
nocobase-admin-menu	pkcprxz6rfy	4	\N	\N	\N
hupe35j3waf	hupe35j3waf	0	f	properties	\N
j0x0k0rv3yw	hupe35j3waf	1	\N	\N	1
7poa6levyva	hupe35j3waf	2	\N	\N	\N
fe7kgdo55ax	j0x0k0rv3yw	2	\N	\N	\N
fe7kgdo55ax	hupe35j3waf	3	\N	\N	\N
hmft2ujv1uf	j0x0k0rv3yw	3	\N	\N	\N
hmft2ujv1uf	hupe35j3waf	4	\N	\N	\N
nocobase-admin-menu	j0x0k0rv3yw	4	\N	\N	\N
nocobase-admin-menu	hupe35j3waf	5	\N	\N	\N
p352d38u95n	p352d38u95n	0	f	properties	\N
7x6oyetmotw	p352d38u95n	1	\N	\N	7
j0x0k0rv3yw	j0x0k0rv3yw	0	f	properties	\N
7poa6levyva	j0x0k0rv3yw	1	\N	\N	24
ifzzkj7loaj	5n3prf95enu	7	\N	\N	\N
ifzzkj7loaj	77znodag4w0	8	\N	\N	\N
k99w3v09n98	jmayzuhpdzl	7	\N	\N	\N
k99w3v09n98	5n3prf95enu	8	\N	\N	\N
k99w3v09n98	77znodag4w0	9	\N	\N	\N
48d58aj2z3f	jmayzuhpdzl	8	\N	\N	\N
48d58aj2z3f	5n3prf95enu	9	\N	\N	\N
48d58aj2z3f	77znodag4w0	10	\N	\N	\N
dnlwo60b33v	jmayzuhpdzl	9	\N	\N	\N
dnlwo60b33v	5n3prf95enu	10	\N	\N	\N
dnlwo60b33v	77znodag4w0	11	\N	\N	\N
89nfa89tbje	jmayzuhpdzl	10	\N	\N	\N
89nfa89tbje	5n3prf95enu	11	\N	\N	\N
89nfa89tbje	77znodag4w0	12	\N	\N	\N
nc92u2m878d	jmayzuhpdzl	13	\N	\N	\N
nc92u2m878d	5n3prf95enu	14	\N	\N	\N
nc92u2m878d	77znodag4w0	15	\N	\N	\N
jiq42lrek0j	jmayzuhpdzl	14	\N	\N	\N
jiq42lrek0j	5n3prf95enu	15	\N	\N	\N
jiq42lrek0j	77znodag4w0	16	\N	\N	\N
w149la0utnx	jmayzuhpdzl	15	\N	\N	\N
w149la0utnx	5n3prf95enu	16	\N	\N	\N
w149la0utnx	77znodag4w0	17	\N	\N	\N
z02388u42s9	jmayzuhpdzl	16	\N	\N	\N
z02388u42s9	5n3prf95enu	17	\N	\N	\N
z02388u42s9	77znodag4w0	18	\N	\N	\N
llvsctq28hp	jmayzuhpdzl	17	\N	\N	\N
llvsctq28hp	5n3prf95enu	18	\N	\N	\N
llvsctq28hp	77znodag4w0	19	\N	\N	\N
8xvbgh18zfk	jmayzuhpdzl	18	\N	\N	\N
8xvbgh18zfk	5n3prf95enu	19	\N	\N	\N
8xvbgh18zfk	77znodag4w0	20	\N	\N	\N
2pij3wiepc4	jmayzuhpdzl	19	\N	\N	\N
2pij3wiepc4	5n3prf95enu	20	\N	\N	\N
2pij3wiepc4	77znodag4w0	21	\N	\N	\N
we414l1saan	jmayzuhpdzl	20	\N	\N	\N
we414l1saan	5n3prf95enu	21	\N	\N	\N
we414l1saan	77znodag4w0	22	\N	\N	\N
t4v2kcudvg5	jmayzuhpdzl	11	\N	\N	\N
t4v2kcudvg5	5n3prf95enu	12	\N	\N	\N
t4v2kcudvg5	77znodag4w0	13	\N	\N	\N
q9zjnv8mc9j	jmayzuhpdzl	12	\N	\N	\N
q9zjnv8mc9j	5n3prf95enu	13	\N	\N	\N
q9zjnv8mc9j	77znodag4w0	14	\N	\N	\N
nocobase-admin-menu	jmayzuhpdzl	21	\N	\N	\N
nocobase-admin-menu	5n3prf95enu	22	\N	\N	\N
nocobase-admin-menu	77znodag4w0	23	\N	\N	\N
vww45l1kt1c	vww45l1kt1c	0	f	properties	\N
p352d38u95n	vww45l1kt1c	1	\N	\N	1
krq5msd3dso	krq5msd3dso	0	f	properties	\N
vww45l1kt1c	krq5msd3dso	1	\N	\N	1
p352d38u95n	krq5msd3dso	2	\N	\N	1
w149la0utnx	p352d38u95n	15	\N	\N	\N
w149la0utnx	vww45l1kt1c	16	\N	\N	\N
w149la0utnx	krq5msd3dso	17	\N	\N	\N
z02388u42s9	p352d38u95n	16	\N	\N	\N
z02388u42s9	vww45l1kt1c	17	\N	\N	\N
z02388u42s9	krq5msd3dso	18	\N	\N	\N
llvsctq28hp	p352d38u95n	17	\N	\N	\N
llvsctq28hp	vww45l1kt1c	18	\N	\N	\N
llvsctq28hp	krq5msd3dso	19	\N	\N	\N
8xvbgh18zfk	p352d38u95n	18	\N	\N	\N
8xvbgh18zfk	vww45l1kt1c	19	\N	\N	\N
8xvbgh18zfk	krq5msd3dso	20	\N	\N	\N
2pij3wiepc4	p352d38u95n	19	\N	\N	\N
2pij3wiepc4	vww45l1kt1c	20	\N	\N	\N
2pij3wiepc4	krq5msd3dso	21	\N	\N	\N
we414l1saan	p352d38u95n	20	\N	\N	\N
we414l1saan	vww45l1kt1c	21	\N	\N	\N
we414l1saan	krq5msd3dso	22	\N	\N	\N
t4v2kcudvg5	p352d38u95n	11	\N	\N	\N
t4v2kcudvg5	vww45l1kt1c	12	\N	\N	\N
t4v2kcudvg5	krq5msd3dso	13	\N	\N	\N
q9zjnv8mc9j	p352d38u95n	12	\N	\N	\N
q9zjnv8mc9j	vww45l1kt1c	13	\N	\N	\N
q9zjnv8mc9j	krq5msd3dso	14	\N	\N	\N
nocobase-admin-menu	p352d38u95n	21	\N	\N	\N
nocobase-admin-menu	vww45l1kt1c	22	\N	\N	\N
nocobase-admin-menu	krq5msd3dso	23	\N	\N	\N
7x6oyetmotw	vww45l1kt1c	2	\N	\N	\N
7x6oyetmotw	krq5msd3dso	3	\N	\N	\N
lmp1irsvgom	p352d38u95n	2	\N	\N	\N
lmp1irsvgom	vww45l1kt1c	3	\N	\N	\N
lmp1irsvgom	krq5msd3dso	4	\N	\N	\N
3nhe9kyydb1	p352d38u95n	3	\N	\N	\N
3nhe9kyydb1	vww45l1kt1c	4	\N	\N	\N
3nhe9kyydb1	krq5msd3dso	5	\N	\N	\N
1t1bel9ufqz	p352d38u95n	4	\N	\N	\N
1t1bel9ufqz	vww45l1kt1c	5	\N	\N	\N
1t1bel9ufqz	krq5msd3dso	6	\N	\N	\N
oxj8sl5a4x4	p352d38u95n	5	\N	\N	\N
oxj8sl5a4x4	vww45l1kt1c	6	\N	\N	\N
oxj8sl5a4x4	krq5msd3dso	7	\N	\N	\N
ew9dla1iwk8	p352d38u95n	6	\N	\N	\N
ew9dla1iwk8	vww45l1kt1c	7	\N	\N	\N
ew9dla1iwk8	krq5msd3dso	8	\N	\N	\N
haxe3y5jbxr	p352d38u95n	7	\N	\N	\N
haxe3y5jbxr	vww45l1kt1c	8	\N	\N	\N
haxe3y5jbxr	krq5msd3dso	9	\N	\N	\N
48d58aj2z3f	p352d38u95n	8	\N	\N	\N
48d58aj2z3f	vww45l1kt1c	9	\N	\N	\N
48d58aj2z3f	krq5msd3dso	10	\N	\N	\N
dnlwo60b33v	p352d38u95n	9	\N	\N	\N
dnlwo60b33v	vww45l1kt1c	10	\N	\N	\N
dnlwo60b33v	krq5msd3dso	11	\N	\N	\N
89nfa89tbje	p352d38u95n	10	\N	\N	\N
89nfa89tbje	vww45l1kt1c	11	\N	\N	\N
89nfa89tbje	krq5msd3dso	12	\N	\N	\N
nc92u2m878d	p352d38u95n	13	\N	\N	\N
nc92u2m878d	vww45l1kt1c	14	\N	\N	\N
nc92u2m878d	krq5msd3dso	15	\N	\N	\N
jiq42lrek0j	p352d38u95n	14	\N	\N	\N
jiq42lrek0j	vww45l1kt1c	15	\N	\N	\N
jiq42lrek0j	krq5msd3dso	16	\N	\N	\N
fe7kgdo55ax	4jc43siezjp	2	\N	\N	\N
hmft2ujv1uf	4jc43siezjp	3	\N	\N	\N
nocobase-admin-menu	4jc43siezjp	4	\N	\N	\N
4jc43siezjp	4jc43siezjp	0	f	properties	\N
7poa6levyva	4jc43siezjp	1	\N	\N	16
fe7kgdo55ax	yivjshzifwl	2	\N	\N	\N
hmft2ujv1uf	yivjshzifwl	3	\N	\N	\N
nocobase-admin-menu	yivjshzifwl	4	\N	\N	\N
yivjshzifwl	yivjshzifwl	0	f	properties	\N
7poa6levyva	yivjshzifwl	1	\N	\N	9
f1naeic0v01	f1naeic0v01	0	f	properties	\N
8syckvf383p	f1naeic0v01	1	\N	\N	1
7poa6levyva	p2fd2nllyzz	3	\N	\N	\N
fe7kgdo55ax	p2fd2nllyzz	4	\N	\N	\N
hmft2ujv1uf	p2fd2nllyzz	5	\N	\N	\N
nocobase-admin-menu	p2fd2nllyzz	6	\N	\N	\N
yivjshzifwl	p2fd2nllyzz	2	\N	\N	\N
p2fd2nllyzz	p2fd2nllyzz	0	f	properties	\N
pde5ayqzqo1	p2fd2nllyzz	1	\N	\N	2
5lsetx6q4um	f1naeic0v01	2	\N	\N	\N
8syckvf383p	8syckvf383p	0	f	properties	\N
5lsetx6q4um	8syckvf383p	1	\N	\N	1
yivjshzifwl	8syckvf383p	2	\N	\N	\N
yivjshzifwl	f1naeic0v01	3	\N	\N	\N
7poa6levyva	5lsetx6q4um	2	\N	\N	\N
7poa6levyva	8syckvf383p	3	\N	\N	\N
7poa6levyva	f1naeic0v01	4	\N	\N	\N
fe7kgdo55ax	5lsetx6q4um	3	\N	\N	\N
fe7kgdo55ax	8syckvf383p	4	\N	\N	\N
fe7kgdo55ax	f1naeic0v01	5	\N	\N	\N
hmft2ujv1uf	5lsetx6q4um	4	\N	\N	\N
hmft2ujv1uf	8syckvf383p	5	\N	\N	\N
hmft2ujv1uf	f1naeic0v01	6	\N	\N	\N
nocobase-admin-menu	5lsetx6q4um	5	\N	\N	\N
nocobase-admin-menu	8syckvf383p	6	\N	\N	\N
nocobase-admin-menu	f1naeic0v01	7	\N	\N	\N
5lsetx6q4um	5lsetx6q4um	0	f	properties	\N
yivjshzifwl	5lsetx6q4um	1	\N	\N	1
v0hdkdeyzrd	v0hdkdeyzrd	0	f	properties	\N
fg366x2n25f	fg366x2n25f	0	f	properties	\N
v0hdkdeyzrd	fg366x2n25f	1	\N	\N	1
g3wb17ry7i2	g3wb17ry7i2	0	f	properties	\N
fg366x2n25f	g3wb17ry7i2	1	\N	\N	1
v0hdkdeyzrd	g3wb17ry7i2	2	\N	\N	1
2yh8xonuy9p	2yh8xonuy9p	0	f	properties	\N
fg366x2n25f	2yh8xonuy9p	1	\N	\N	2
v0hdkdeyzrd	2yh8xonuy9p	2	\N	\N	2
d7ss6dyrft2	d7ss6dyrft2	0	f	properties	\N
fg366x2n25f	d7ss6dyrft2	1	\N	\N	3
v0hdkdeyzrd	d7ss6dyrft2	2	\N	\N	3
lrpe7x7uska	lrpe7x7uska	0	f	properties	\N
5ra7uzzi0b0	lrpe7x7uska	1	\N	\N	1
cnt5l2vyvus	cnt5l2vyvus	0	f	properties	\N
lrpe7x7uska	cnt5l2vyvus	1	\N	\N	1
5ra7uzzi0b0	cnt5l2vyvus	2	\N	\N	1
2yh8xonuy9p	lrpe7x7uska	2	\N	\N	\N
2yh8xonuy9p	cnt5l2vyvus	3	\N	\N	\N
fg366x2n25f	5ra7uzzi0b0	2	\N	\N	\N
fg366x2n25f	lrpe7x7uska	3	\N	\N	\N
fg366x2n25f	cnt5l2vyvus	4	\N	\N	\N
v0hdkdeyzrd	5ra7uzzi0b0	3	\N	\N	\N
v0hdkdeyzrd	lrpe7x7uska	4	\N	\N	\N
v0hdkdeyzrd	cnt5l2vyvus	5	\N	\N	\N
5ra7uzzi0b0	5ra7uzzi0b0	0	f	properties	\N
2yh8xonuy9p	5ra7uzzi0b0	1	\N	\N	1
em6cpoit5dn	em6cpoit5dn	0	f	properties	\N
4rfztuqwvcn	em6cpoit5dn	1	\N	\N	1
9ha55op1k8z	9ha55op1k8z	0	f	properties	\N
em6cpoit5dn	9ha55op1k8z	1	\N	\N	1
4rfztuqwvcn	9ha55op1k8z	2	\N	\N	1
2yh8xonuy9p	em6cpoit5dn	2	\N	\N	\N
2yh8xonuy9p	9ha55op1k8z	3	\N	\N	\N
fg366x2n25f	4rfztuqwvcn	2	\N	\N	\N
fg366x2n25f	em6cpoit5dn	3	\N	\N	\N
fg366x2n25f	9ha55op1k8z	4	\N	\N	\N
v0hdkdeyzrd	4rfztuqwvcn	3	\N	\N	\N
v0hdkdeyzrd	em6cpoit5dn	4	\N	\N	\N
v0hdkdeyzrd	9ha55op1k8z	5	\N	\N	\N
x74knwfm0hx	x74knwfm0hx	0	f	properties	\N
4rfztuqwvcn	4rfztuqwvcn	0	f	properties	\N
2yh8xonuy9p	4rfztuqwvcn	1	\N	\N	2
wtx7vw7yz0x	wtx7vw7yz0x	0	f	properties	\N
mgxem84qs7g	wtx7vw7yz0x	1	\N	\N	1
y5v7ivsb3ot	y5v7ivsb3ot	0	f	properties	\N
wtx7vw7yz0x	y5v7ivsb3ot	1	\N	\N	1
mgxem84qs7g	y5v7ivsb3ot	2	\N	\N	1
2yh8xonuy9p	wtx7vw7yz0x	2	\N	\N	\N
2yh8xonuy9p	y5v7ivsb3ot	3	\N	\N	\N
fg366x2n25f	mgxem84qs7g	2	\N	\N	\N
fg366x2n25f	wtx7vw7yz0x	3	\N	\N	\N
fg366x2n25f	y5v7ivsb3ot	4	\N	\N	\N
v0hdkdeyzrd	mgxem84qs7g	3	\N	\N	\N
v0hdkdeyzrd	wtx7vw7yz0x	4	\N	\N	\N
v0hdkdeyzrd	y5v7ivsb3ot	5	\N	\N	\N
mgxem84qs7g	mgxem84qs7g	0	f	properties	\N
2yh8xonuy9p	mgxem84qs7g	1	\N	\N	3
ksp2jvw2zju	ksp2jvw2zju	0	f	properties	\N
lt4x5i1gin9	ksp2jvw2zju	1	\N	\N	1
qlix4l9q49g	qlix4l9q49g	0	f	properties	\N
ksp2jvw2zju	qlix4l9q49g	1	\N	\N	1
lt4x5i1gin9	qlix4l9q49g	2	\N	\N	1
2yh8xonuy9p	ksp2jvw2zju	2	\N	\N	\N
2yh8xonuy9p	qlix4l9q49g	3	\N	\N	\N
fg366x2n25f	lt4x5i1gin9	2	\N	\N	\N
fg366x2n25f	ksp2jvw2zju	3	\N	\N	\N
fg366x2n25f	qlix4l9q49g	4	\N	\N	\N
v0hdkdeyzrd	lt4x5i1gin9	3	\N	\N	\N
v0hdkdeyzrd	ksp2jvw2zju	4	\N	\N	\N
v0hdkdeyzrd	qlix4l9q49g	5	\N	\N	\N
i5ep94ei4hn	i5ep94ei4hn	0	f	properties	\N
i5ep94ei4hn	x74knwfm0hx	1	\N	\N	1
lt4x5i1gin9	lt4x5i1gin9	0	f	properties	\N
2yh8xonuy9p	lt4x5i1gin9	1	\N	\N	4
7qdtw3aqf8f	7qdtw3aqf8f	0	f	properties	\N
x74knwfm0hx	7qdtw3aqf8f	1	\N	\N	1
ugc9ztt4hb4	x74knwfm0hx	2	\N	\N	\N
ao2a67rjlld	i5ep94ei4hn	2	\N	\N	\N
ao2a67rjlld	x74knwfm0hx	3	\N	\N	\N
bwbd6lebhkb	i5ep94ei4hn	3	\N	\N	\N
bwbd6lebhkb	x74knwfm0hx	4	\N	\N	\N
m8tbcrs4z9t	i5ep94ei4hn	4	\N	\N	\N
m8tbcrs4z9t	x74knwfm0hx	5	\N	\N	\N
q4dinm52meb	i5ep94ei4hn	5	\N	\N	\N
q4dinm52meb	x74knwfm0hx	6	\N	\N	\N
vs0l89adzhc	i5ep94ei4hn	6	\N	\N	\N
vs0l89adzhc	x74knwfm0hx	7	\N	\N	\N
493pimn830r	i5ep94ei4hn	7	\N	\N	\N
493pimn830r	x74knwfm0hx	8	\N	\N	\N
nocobase-admin-menu	i5ep94ei4hn	8	\N	\N	\N
nocobase-admin-menu	x74knwfm0hx	9	\N	\N	\N
ugc9ztt4hb4	bzk49nzivdu	1	\N	\N	3
ugc9ztt4hb4	pfhb8ncb652	1	\N	\N	4
ugc9ztt4hb4	ainrki9f600	1	\N	\N	5
ugc9ztt4hb4	oae1g24te1h	1	\N	\N	6
ugc9ztt4hb4	z4nqlth7kk8	1	\N	\N	7
ugc9ztt4hb4	hswwx0lxpac	1	\N	\N	8
ugc9ztt4hb4	s2txozhh9f0	1	\N	\N	9
ugc9ztt4hb4	fb0lajxibgu	1	\N	\N	10
ugc9ztt4hb4	i5ep94ei4hn	1	\N	\N	2
9znhwv6jh2d	9znhwv6jh2d	0	f	properties	\N
7qdtw3aqf8f	9znhwv6jh2d	1	\N	\N	1
dohzvch4noi	dohzvch4noi	0	f	properties	\N
9znhwv6jh2d	dohzvch4noi	1	\N	\N	1
7qdtw3aqf8f	dohzvch4noi	2	\N	\N	1
oyw4y44yqgd	oyw4y44yqgd	0	f	properties	\N
dohzvch4noi	oyw4y44yqgd	1	\N	\N	1
9znhwv6jh2d	oyw4y44yqgd	2	\N	\N	1
7qdtw3aqf8f	oyw4y44yqgd	3	\N	\N	1
bztjip2msxq	bztjip2msxq	0	f	properties	\N
oyw4y44yqgd	bztjip2msxq	1	\N	\N	1
dohzvch4noi	bztjip2msxq	2	\N	\N	1
9znhwv6jh2d	bztjip2msxq	3	\N	\N	1
7qdtw3aqf8f	bztjip2msxq	4	\N	\N	1
x74knwfm0hx	9znhwv6jh2d	2	\N	\N	\N
x74knwfm0hx	dohzvch4noi	3	\N	\N	\N
x74knwfm0hx	oyw4y44yqgd	4	\N	\N	\N
x74knwfm0hx	bztjip2msxq	5	\N	\N	\N
i5ep94ei4hn	7qdtw3aqf8f	2	\N	\N	\N
i5ep94ei4hn	9znhwv6jh2d	3	\N	\N	\N
i5ep94ei4hn	dohzvch4noi	4	\N	\N	\N
i5ep94ei4hn	oyw4y44yqgd	5	\N	\N	\N
i5ep94ei4hn	bztjip2msxq	6	\N	\N	\N
ugc9ztt4hb4	7qdtw3aqf8f	3	\N	\N	\N
ugc9ztt4hb4	9znhwv6jh2d	4	\N	\N	\N
ugc9ztt4hb4	dohzvch4noi	5	\N	\N	\N
b410c64osaf	b410c64osaf	0	f	properties	\N
mupdgh8dhyb	mupdgh8dhyb	0	f	properties	\N
lzuobjmh9nr	lzuobjmh9nr	0	f	properties	\N
2yh8xonuy9p	lzuobjmh9nr	1	\N	\N	6
p62fqqqtc8f	p62fqqqtc8f	0	f	properties	\N
jibscsx0dfw	p62fqqqtc8f	1	\N	\N	1
1oeceyajjp1	1oeceyajjp1	0	f	properties	\N
p62fqqqtc8f	1oeceyajjp1	1	\N	\N	1
jibscsx0dfw	1oeceyajjp1	2	\N	\N	1
2yh8xonuy9p	p62fqqqtc8f	2	\N	\N	\N
2yh8xonuy9p	1oeceyajjp1	3	\N	\N	\N
fg366x2n25f	jibscsx0dfw	2	\N	\N	\N
fg366x2n25f	p62fqqqtc8f	3	\N	\N	\N
fg366x2n25f	1oeceyajjp1	4	\N	\N	\N
v0hdkdeyzrd	jibscsx0dfw	3	\N	\N	\N
v0hdkdeyzrd	p62fqqqtc8f	4	\N	\N	\N
v0hdkdeyzrd	1oeceyajjp1	5	\N	\N	\N
jibscsx0dfw	jibscsx0dfw	0	f	properties	\N
2yh8xonuy9p	jibscsx0dfw	1	\N	\N	5
nk5b4nu4r4m	nk5b4nu4r4m	0	f	properties	\N
lzuobjmh9nr	nk5b4nu4r4m	1	\N	\N	1
pai6scdjeqt	pai6scdjeqt	0	f	properties	\N
nk5b4nu4r4m	pai6scdjeqt	1	\N	\N	1
lzuobjmh9nr	pai6scdjeqt	2	\N	\N	1
2yh8xonuy9p	nk5b4nu4r4m	2	\N	\N	\N
2yh8xonuy9p	pai6scdjeqt	3	\N	\N	\N
fg366x2n25f	lzuobjmh9nr	2	\N	\N	\N
fg366x2n25f	nk5b4nu4r4m	3	\N	\N	\N
fg366x2n25f	pai6scdjeqt	4	\N	\N	\N
v0hdkdeyzrd	lzuobjmh9nr	3	\N	\N	\N
v0hdkdeyzrd	nk5b4nu4r4m	4	\N	\N	\N
v0hdkdeyzrd	pai6scdjeqt	5	\N	\N	\N
7poa6levyva	mupdgh8dhyb	1	\N	\N	17
2h7gnmez0eb	2h7gnmez0eb	0	f	properties	\N
eoz95qtwix6	2h7gnmez0eb	1	\N	\N	1
kye7kplejx4	kye7kplejx4	0	f	properties	\N
2h7gnmez0eb	kye7kplejx4	1	\N	\N	1
eoz95qtwix6	kye7kplejx4	2	\N	\N	1
pv8ilcp4ez0	pv8ilcp4ez0	0	f	properties	\N
2h7gnmez0eb	pv8ilcp4ez0	1	\N	\N	2
eoz95qtwix6	pv8ilcp4ez0	2	\N	\N	2
mo9367563k2	mo9367563k2	0	f	properties	\N
pv8ilcp4ez0	mo9367563k2	1	\N	\N	1
2h7gnmez0eb	mo9367563k2	2	\N	\N	1
eoz95qtwix6	mo9367563k2	3	\N	\N	1
hk90w8ktd8b	hk90w8ktd8b	0	f	properties	\N
mo9367563k2	hk90w8ktd8b	1	\N	\N	1
pv8ilcp4ez0	hk90w8ktd8b	2	\N	\N	1
2h7gnmez0eb	hk90w8ktd8b	3	\N	\N	1
eoz95qtwix6	hk90w8ktd8b	4	\N	\N	1
fetusergrtk	fetusergrtk	0	f	properties	\N
hk90w8ktd8b	fetusergrtk	1	\N	\N	1
mo9367563k2	fetusergrtk	2	\N	\N	1
pv8ilcp4ez0	fetusergrtk	3	\N	\N	1
2h7gnmez0eb	fetusergrtk	4	\N	\N	1
eoz95qtwix6	fetusergrtk	5	\N	\N	1
8avia19u880	8avia19u880	0	f	properties	\N
pv8ilcp4ez0	8avia19u880	1	\N	\N	2
2h7gnmez0eb	8avia19u880	2	\N	\N	2
eoz95qtwix6	8avia19u880	3	\N	\N	2
hwi0frrc1o1	hwi0frrc1o1	0	f	properties	\N
8avia19u880	hwi0frrc1o1	1	\N	\N	1
pv8ilcp4ez0	hwi0frrc1o1	2	\N	\N	1
2h7gnmez0eb	hwi0frrc1o1	3	\N	\N	1
eoz95qtwix6	hwi0frrc1o1	4	\N	\N	1
u1nyxe00lc6	u1nyxe00lc6	0	f	properties	\N
hwi0frrc1o1	u1nyxe00lc6	1	\N	\N	1
8avia19u880	u1nyxe00lc6	2	\N	\N	1
eoz95qtwix6	eoz95qtwix6	0	f	properties	\N
n65uanub9sx	n65uanub9sx	0	f	properties	\N
b410c64osaf	n65uanub9sx	1	\N	\N	1
fvz3km1i6ms	fvz3km1i6ms	0	f	properties	\N
b410c64osaf	fvz3km1i6ms	1	\N	\N	2
fe7kgdo55ax	mupdgh8dhyb	2	\N	\N	\N
hmft2ujv1uf	mupdgh8dhyb	3	\N	\N	\N
nocobase-admin-menu	mupdgh8dhyb	4	\N	\N	\N
pv8ilcp4ez0	u1nyxe00lc6	3	\N	\N	1
2h7gnmez0eb	u1nyxe00lc6	4	\N	\N	1
eoz95qtwix6	u1nyxe00lc6	5	\N	\N	1
rxmunii1ry1	rxmunii1ry1	0	f	properties	\N
pv8ilcp4ez0	rxmunii1ry1	1	\N	\N	3
2h7gnmez0eb	rxmunii1ry1	2	\N	\N	3
eoz95qtwix6	rxmunii1ry1	3	\N	\N	3
5i5wcujn2r0	5i5wcujn2r0	0	f	properties	\N
rxmunii1ry1	5i5wcujn2r0	1	\N	\N	1
pv8ilcp4ez0	5i5wcujn2r0	2	\N	\N	1
2h7gnmez0eb	5i5wcujn2r0	3	\N	\N	1
eoz95qtwix6	5i5wcujn2r0	4	\N	\N	1
6ajwqegl8fu	6ajwqegl8fu	0	f	properties	\N
5i5wcujn2r0	6ajwqegl8fu	1	\N	\N	1
rxmunii1ry1	6ajwqegl8fu	2	\N	\N	1
pv8ilcp4ez0	6ajwqegl8fu	3	\N	\N	1
2h7gnmez0eb	6ajwqegl8fu	4	\N	\N	1
eoz95qtwix6	6ajwqegl8fu	5	\N	\N	1
eg8g77o8vr3	eg8g77o8vr3	0	f	properties	\N
pv8ilcp4ez0	eg8g77o8vr3	1	\N	\N	4
2h7gnmez0eb	eg8g77o8vr3	2	\N	\N	4
eoz95qtwix6	eg8g77o8vr3	3	\N	\N	4
pfrp5as10jq	pfrp5as10jq	0	f	properties	\N
eg8g77o8vr3	pfrp5as10jq	1	\N	\N	1
pv8ilcp4ez0	pfrp5as10jq	2	\N	\N	1
2h7gnmez0eb	pfrp5as10jq	3	\N	\N	1
eoz95qtwix6	pfrp5as10jq	4	\N	\N	1
m6euh07s1zs	m6euh07s1zs	0	f	properties	\N
pfrp5as10jq	m6euh07s1zs	1	\N	\N	1
eg8g77o8vr3	m6euh07s1zs	2	\N	\N	1
pv8ilcp4ez0	m6euh07s1zs	3	\N	\N	1
2h7gnmez0eb	m6euh07s1zs	4	\N	\N	1
eoz95qtwix6	m6euh07s1zs	5	\N	\N	1
gltkn1uzhh9	gltkn1uzhh9	0	f	properties	\N
pv8ilcp4ez0	gltkn1uzhh9	1	\N	\N	5
2h7gnmez0eb	gltkn1uzhh9	2	\N	\N	5
eoz95qtwix6	gltkn1uzhh9	3	\N	\N	5
0czsrowjaug	0czsrowjaug	0	f	properties	\N
gltkn1uzhh9	0czsrowjaug	1	\N	\N	1
pv8ilcp4ez0	0czsrowjaug	2	\N	\N	1
2h7gnmez0eb	0czsrowjaug	3	\N	\N	1
eoz95qtwix6	0czsrowjaug	4	\N	\N	1
tjpv9f744r6	tjpv9f744r6	0	f	properties	\N
0czsrowjaug	tjpv9f744r6	1	\N	\N	1
gltkn1uzhh9	tjpv9f744r6	2	\N	\N	1
pv8ilcp4ez0	tjpv9f744r6	3	\N	\N	1
2h7gnmez0eb	tjpv9f744r6	4	\N	\N	1
eoz95qtwix6	tjpv9f744r6	5	\N	\N	1
ll2so9vdgu3	ll2so9vdgu3	0	f	properties	\N
pv8ilcp4ez0	ll2so9vdgu3	1	\N	\N	6
2h7gnmez0eb	ll2so9vdgu3	2	\N	\N	6
eoz95qtwix6	ll2so9vdgu3	3	\N	\N	6
0jqiruu9vf6	0jqiruu9vf6	0	f	properties	\N
ll2so9vdgu3	0jqiruu9vf6	1	\N	\N	1
pv8ilcp4ez0	0jqiruu9vf6	2	\N	\N	1
2h7gnmez0eb	0jqiruu9vf6	3	\N	\N	1
eoz95qtwix6	0jqiruu9vf6	4	\N	\N	1
b6910vi3jym	b6910vi3jym	0	f	properties	\N
0jqiruu9vf6	b6910vi3jym	1	\N	\N	1
ll2so9vdgu3	b6910vi3jym	2	\N	\N	1
pv8ilcp4ez0	b6910vi3jym	3	\N	\N	1
2h7gnmez0eb	b6910vi3jym	4	\N	\N	1
eoz95qtwix6	b6910vi3jym	5	\N	\N	1
quxuyp8dl2x	quxuyp8dl2x	0	f	properties	\N
2h7gnmez0eb	quxuyp8dl2x	1	\N	\N	3
eoz95qtwix6	quxuyp8dl2x	2	\N	\N	3
swpktoj72vi	swpktoj72vi	0	f	properties	\N
9bxpugcgkui	swpktoj72vi	1	\N	\N	1
83dc85bfozz	83dc85bfozz	0	f	properties	\N
swpktoj72vi	83dc85bfozz	1	\N	\N	1
9bxpugcgkui	83dc85bfozz	2	\N	\N	1
7poa6levyva	swpktoj72vi	2	\N	\N	\N
7poa6levyva	83dc85bfozz	3	\N	\N	\N
fe7kgdo55ax	9bxpugcgkui	2	\N	\N	\N
fe7kgdo55ax	swpktoj72vi	3	\N	\N	\N
fe7kgdo55ax	83dc85bfozz	4	\N	\N	\N
hmft2ujv1uf	9bxpugcgkui	3	\N	\N	\N
hmft2ujv1uf	swpktoj72vi	4	\N	\N	\N
hmft2ujv1uf	83dc85bfozz	5	\N	\N	\N
nocobase-admin-menu	9bxpugcgkui	4	\N	\N	\N
nocobase-admin-menu	swpktoj72vi	5	\N	\N	\N
nocobase-admin-menu	83dc85bfozz	6	\N	\N	\N
9bxpugcgkui	9bxpugcgkui	0	f	properties	\N
7poa6levyva	9bxpugcgkui	1	\N	\N	18
ugc9ztt4hb4	oyw4y44yqgd	6	\N	\N	\N
ugc9ztt4hb4	bztjip2msxq	7	\N	\N	\N
ao2a67rjlld	7qdtw3aqf8f	4	\N	\N	\N
ao2a67rjlld	9znhwv6jh2d	5	\N	\N	\N
ao2a67rjlld	dohzvch4noi	6	\N	\N	\N
ao2a67rjlld	oyw4y44yqgd	7	\N	\N	\N
ao2a67rjlld	bztjip2msxq	8	\N	\N	\N
bwbd6lebhkb	7qdtw3aqf8f	5	\N	\N	\N
bwbd6lebhkb	9znhwv6jh2d	6	\N	\N	\N
bwbd6lebhkb	dohzvch4noi	7	\N	\N	\N
bwbd6lebhkb	oyw4y44yqgd	8	\N	\N	\N
bwbd6lebhkb	bztjip2msxq	9	\N	\N	\N
m8tbcrs4z9t	7qdtw3aqf8f	6	\N	\N	\N
m8tbcrs4z9t	9znhwv6jh2d	7	\N	\N	\N
m8tbcrs4z9t	dohzvch4noi	8	\N	\N	\N
m8tbcrs4z9t	oyw4y44yqgd	9	\N	\N	\N
m8tbcrs4z9t	bztjip2msxq	10	\N	\N	\N
q4dinm52meb	7qdtw3aqf8f	7	\N	\N	\N
q4dinm52meb	9znhwv6jh2d	8	\N	\N	\N
q4dinm52meb	dohzvch4noi	9	\N	\N	\N
q4dinm52meb	oyw4y44yqgd	10	\N	\N	\N
q4dinm52meb	bztjip2msxq	11	\N	\N	\N
vs0l89adzhc	7qdtw3aqf8f	8	\N	\N	\N
vs0l89adzhc	9znhwv6jh2d	9	\N	\N	\N
vs0l89adzhc	dohzvch4noi	10	\N	\N	\N
vs0l89adzhc	oyw4y44yqgd	11	\N	\N	\N
vs0l89adzhc	bztjip2msxq	12	\N	\N	\N
493pimn830r	7qdtw3aqf8f	9	\N	\N	\N
493pimn830r	9znhwv6jh2d	10	\N	\N	\N
493pimn830r	dohzvch4noi	11	\N	\N	\N
493pimn830r	oyw4y44yqgd	12	\N	\N	\N
493pimn830r	bztjip2msxq	13	\N	\N	\N
nocobase-admin-menu	7qdtw3aqf8f	10	\N	\N	\N
nocobase-admin-menu	9znhwv6jh2d	11	\N	\N	\N
nocobase-admin-menu	dohzvch4noi	12	\N	\N	\N
nocobase-admin-menu	oyw4y44yqgd	13	\N	\N	\N
nocobase-admin-menu	bztjip2msxq	14	\N	\N	\N
oekbnvx2n7m	oekbnvx2n7m	0	f	properties	\N
i5ep94ei4hn	oekbnvx2n7m	2	\N	\N	\N
ugc9ztt4hb4	oekbnvx2n7m	3	\N	\N	\N
ao2a67rjlld	oekbnvx2n7m	4	\N	\N	\N
bwbd6lebhkb	oekbnvx2n7m	5	\N	\N	\N
m8tbcrs4z9t	oekbnvx2n7m	6	\N	\N	\N
q4dinm52meb	oekbnvx2n7m	7	\N	\N	\N
vs0l89adzhc	oekbnvx2n7m	8	\N	\N	\N
493pimn830r	oekbnvx2n7m	9	\N	\N	\N
nocobase-admin-menu	oekbnvx2n7m	10	\N	\N	\N
x74knwfm0hx	oekbnvx2n7m	1	\N	\N	2
c5d9aolt3oi	c5d9aolt3oi	0	f	properties	\N
2p6lbnuww8r	c5d9aolt3oi	1	\N	\N	1
2p6lbnuww8r	ypdn0dkn4wx	2	\N	\N	\N
2lzmasj4pju	2lzmasj4pju	0	f	properties	\N
abxv8689kv3	2lzmasj4pju	1	\N	\N	1
44890jxlzup	2lzmasj4pju	2	\N	\N	\N
xa635tbvi5c	abxv8689kv3	2	\N	\N	\N
xa635tbvi5c	2lzmasj4pju	3	\N	\N	\N
4dgysxrfq7o	abxv8689kv3	3	\N	\N	\N
4dgysxrfq7o	2lzmasj4pju	4	\N	\N	\N
sf8fl742bgm	abxv8689kv3	4	\N	\N	\N
sf8fl742bgm	2lzmasj4pju	5	\N	\N	\N
sptin92gm5m	abxv8689kv3	5	\N	\N	\N
sptin92gm5m	2lzmasj4pju	6	\N	\N	\N
i0lnhtci4u6	abxv8689kv3	6	\N	\N	\N
i0lnhtci4u6	2lzmasj4pju	7	\N	\N	\N
swxvjglsevf	abxv8689kv3	7	\N	\N	\N
swxvjglsevf	2lzmasj4pju	8	\N	\N	\N
nocobase-admin-menu	abxv8689kv3	8	\N	\N	\N
nocobase-admin-menu	2lzmasj4pju	9	\N	\N	\N
abxv8689kv3	abxv8689kv3	0	f	properties	\N
44890jxlzup	abxv8689kv3	1	\N	\N	7
zy4jidwmnvw	zy4jidwmnvw	0	f	properties	\N
0kxudizv0xf	zy4jidwmnvw	1	\N	\N	1
q5no45c40c6	q5no45c40c6	0	f	properties	\N
zy4jidwmnvw	q5no45c40c6	1	\N	\N	1
0kxudizv0xf	q5no45c40c6	2	\N	\N	1
imo18or3xxo	imo18or3xxo	0	f	properties	\N
q5no45c40c6	imo18or3xxo	1	\N	\N	1
zy4jidwmnvw	imo18or3xxo	2	\N	\N	1
0kxudizv0xf	imo18or3xxo	3	\N	\N	1
mr7dvvk94ts	mr7dvvk94ts	0	f	properties	\N
imo18or3xxo	mr7dvvk94ts	1	\N	\N	1
q5no45c40c6	mr7dvvk94ts	2	\N	\N	1
zy4jidwmnvw	mr7dvvk94ts	3	\N	\N	1
0kxudizv0xf	mr7dvvk94ts	4	\N	\N	1
9xqwn851uzs	9xqwn851uzs	0	f	properties	\N
imo18or3xxo	9xqwn851uzs	1	\N	\N	2
q5no45c40c6	9xqwn851uzs	2	\N	\N	2
zy4jidwmnvw	9xqwn851uzs	3	\N	\N	2
0kxudizv0xf	9xqwn851uzs	4	\N	\N	2
bztjip2msxq	zy4jidwmnvw	2	\N	\N	\N
bztjip2msxq	q5no45c40c6	3	\N	\N	\N
bztjip2msxq	imo18or3xxo	4	\N	\N	\N
bztjip2msxq	mr7dvvk94ts	5	\N	\N	\N
bztjip2msxq	9xqwn851uzs	5	\N	\N	\N
oyw4y44yqgd	0kxudizv0xf	2	\N	\N	\N
oyw4y44yqgd	zy4jidwmnvw	3	\N	\N	\N
oyw4y44yqgd	q5no45c40c6	4	\N	\N	\N
oyw4y44yqgd	imo18or3xxo	5	\N	\N	\N
oyw4y44yqgd	mr7dvvk94ts	6	\N	\N	\N
oyw4y44yqgd	9xqwn851uzs	6	\N	\N	\N
dohzvch4noi	0kxudizv0xf	3	\N	\N	\N
dohzvch4noi	zy4jidwmnvw	4	\N	\N	\N
dohzvch4noi	q5no45c40c6	5	\N	\N	\N
dohzvch4noi	imo18or3xxo	6	\N	\N	\N
dohzvch4noi	mr7dvvk94ts	7	\N	\N	\N
dohzvch4noi	9xqwn851uzs	7	\N	\N	\N
9znhwv6jh2d	0kxudizv0xf	4	\N	\N	\N
9znhwv6jh2d	zy4jidwmnvw	5	\N	\N	\N
9znhwv6jh2d	q5no45c40c6	6	\N	\N	\N
9znhwv6jh2d	imo18or3xxo	7	\N	\N	\N
9znhwv6jh2d	mr7dvvk94ts	8	\N	\N	\N
9znhwv6jh2d	9xqwn851uzs	8	\N	\N	\N
7qdtw3aqf8f	0kxudizv0xf	5	\N	\N	\N
7qdtw3aqf8f	zy4jidwmnvw	6	\N	\N	\N
7qdtw3aqf8f	q5no45c40c6	7	\N	\N	\N
7qdtw3aqf8f	imo18or3xxo	8	\N	\N	\N
7qdtw3aqf8f	mr7dvvk94ts	9	\N	\N	\N
7qdtw3aqf8f	9xqwn851uzs	9	\N	\N	\N
x74knwfm0hx	0kxudizv0xf	6	\N	\N	\N
x74knwfm0hx	zy4jidwmnvw	7	\N	\N	\N
x74knwfm0hx	q5no45c40c6	8	\N	\N	\N
x74knwfm0hx	imo18or3xxo	9	\N	\N	\N
x74knwfm0hx	mr7dvvk94ts	10	\N	\N	\N
x74knwfm0hx	9xqwn851uzs	10	\N	\N	\N
i5ep94ei4hn	0kxudizv0xf	7	\N	\N	\N
i5ep94ei4hn	zy4jidwmnvw	8	\N	\N	\N
i5ep94ei4hn	q5no45c40c6	9	\N	\N	\N
i5ep94ei4hn	imo18or3xxo	10	\N	\N	\N
i5ep94ei4hn	mr7dvvk94ts	11	\N	\N	\N
i5ep94ei4hn	9xqwn851uzs	11	\N	\N	\N
ugc9ztt4hb4	0kxudizv0xf	8	\N	\N	\N
ugc9ztt4hb4	zy4jidwmnvw	9	\N	\N	\N
ugc9ztt4hb4	q5no45c40c6	10	\N	\N	\N
ugc9ztt4hb4	imo18or3xxo	11	\N	\N	\N
ugc9ztt4hb4	mr7dvvk94ts	12	\N	\N	\N
ugc9ztt4hb4	9xqwn851uzs	12	\N	\N	\N
ao2a67rjlld	0kxudizv0xf	9	\N	\N	\N
ao2a67rjlld	zy4jidwmnvw	10	\N	\N	\N
ao2a67rjlld	q5no45c40c6	11	\N	\N	\N
ao2a67rjlld	imo18or3xxo	12	\N	\N	\N
ao2a67rjlld	mr7dvvk94ts	13	\N	\N	\N
ao2a67rjlld	9xqwn851uzs	13	\N	\N	\N
bwbd6lebhkb	0kxudizv0xf	10	\N	\N	\N
bwbd6lebhkb	zy4jidwmnvw	11	\N	\N	\N
bwbd6lebhkb	q5no45c40c6	12	\N	\N	\N
0kxudizv0xf	0kxudizv0xf	0	f	properties	\N
bztjip2msxq	0kxudizv0xf	1	\N	\N	1
c5d9aolt3oi	ypdn0dkn4wx	1	\N	\N	1
7poa6levyva	c5d9aolt3oi	2	\N	\N	\N
7poa6levyva	ypdn0dkn4wx	3	\N	\N	\N
fe7kgdo55ax	2p6lbnuww8r	2	\N	\N	\N
fe7kgdo55ax	c5d9aolt3oi	3	\N	\N	\N
fe7kgdo55ax	ypdn0dkn4wx	4	\N	\N	\N
hmft2ujv1uf	2p6lbnuww8r	3	\N	\N	\N
hmft2ujv1uf	c5d9aolt3oi	4	\N	\N	\N
hmft2ujv1uf	ypdn0dkn4wx	5	\N	\N	\N
nocobase-admin-menu	2p6lbnuww8r	4	\N	\N	\N
nocobase-admin-menu	c5d9aolt3oi	5	\N	\N	\N
nocobase-admin-menu	ypdn0dkn4wx	6	\N	\N	\N
2p6lbnuww8r	2p6lbnuww8r	0	f	properties	\N
7poa6levyva	2p6lbnuww8r	1	\N	\N	19
bwbd6lebhkb	imo18or3xxo	13	\N	\N	\N
bwbd6lebhkb	mr7dvvk94ts	14	\N	\N	\N
bwbd6lebhkb	9xqwn851uzs	14	\N	\N	\N
m8tbcrs4z9t	0kxudizv0xf	11	\N	\N	\N
m8tbcrs4z9t	zy4jidwmnvw	12	\N	\N	\N
m8tbcrs4z9t	q5no45c40c6	13	\N	\N	\N
m8tbcrs4z9t	imo18or3xxo	14	\N	\N	\N
m8tbcrs4z9t	mr7dvvk94ts	15	\N	\N	\N
m8tbcrs4z9t	9xqwn851uzs	15	\N	\N	\N
q4dinm52meb	0kxudizv0xf	12	\N	\N	\N
q4dinm52meb	zy4jidwmnvw	13	\N	\N	\N
q4dinm52meb	q5no45c40c6	14	\N	\N	\N
q4dinm52meb	imo18or3xxo	15	\N	\N	\N
q4dinm52meb	mr7dvvk94ts	16	\N	\N	\N
q4dinm52meb	9xqwn851uzs	16	\N	\N	\N
vs0l89adzhc	0kxudizv0xf	13	\N	\N	\N
vs0l89adzhc	zy4jidwmnvw	14	\N	\N	\N
vs0l89adzhc	q5no45c40c6	15	\N	\N	\N
vs0l89adzhc	imo18or3xxo	16	\N	\N	\N
vs0l89adzhc	mr7dvvk94ts	17	\N	\N	\N
vs0l89adzhc	9xqwn851uzs	17	\N	\N	\N
493pimn830r	0kxudizv0xf	14	\N	\N	\N
493pimn830r	zy4jidwmnvw	15	\N	\N	\N
493pimn830r	q5no45c40c6	16	\N	\N	\N
493pimn830r	imo18or3xxo	17	\N	\N	\N
493pimn830r	mr7dvvk94ts	18	\N	\N	\N
493pimn830r	9xqwn851uzs	18	\N	\N	\N
nocobase-admin-menu	0kxudizv0xf	15	\N	\N	\N
nocobase-admin-menu	zy4jidwmnvw	16	\N	\N	\N
nocobase-admin-menu	q5no45c40c6	17	\N	\N	\N
nocobase-admin-menu	imo18or3xxo	18	\N	\N	\N
nocobase-admin-menu	mr7dvvk94ts	19	\N	\N	\N
nocobase-admin-menu	9xqwn851uzs	19	\N	\N	\N
h6z84g2plev	h6z84g2plev	0	f	properties	\N
lhbk1av87n1	h6z84g2plev	1	\N	\N	1
fj7mqkmuy05	fj7mqkmuy05	0	f	properties	\N
h6z84g2plev	fj7mqkmuy05	1	\N	\N	1
lhbk1av87n1	fj7mqkmuy05	2	\N	\N	1
mr7dvvk94ts	h6z84g2plev	2	\N	\N	\N
mr7dvvk94ts	fj7mqkmuy05	3	\N	\N	\N
imo18or3xxo	lhbk1av87n1	2	\N	\N	\N
imo18or3xxo	h6z84g2plev	3	\N	\N	\N
imo18or3xxo	fj7mqkmuy05	4	\N	\N	\N
q5no45c40c6	lhbk1av87n1	3	\N	\N	\N
q5no45c40c6	h6z84g2plev	4	\N	\N	\N
q5no45c40c6	fj7mqkmuy05	5	\N	\N	\N
zy4jidwmnvw	lhbk1av87n1	4	\N	\N	\N
zy4jidwmnvw	h6z84g2plev	5	\N	\N	\N
zy4jidwmnvw	fj7mqkmuy05	6	\N	\N	\N
0kxudizv0xf	lhbk1av87n1	5	\N	\N	\N
0kxudizv0xf	h6z84g2plev	6	\N	\N	\N
0kxudizv0xf	fj7mqkmuy05	7	\N	\N	\N
bztjip2msxq	lhbk1av87n1	6	\N	\N	\N
bztjip2msxq	h6z84g2plev	7	\N	\N	\N
bztjip2msxq	fj7mqkmuy05	8	\N	\N	\N
oyw4y44yqgd	lhbk1av87n1	7	\N	\N	\N
oyw4y44yqgd	h6z84g2plev	8	\N	\N	\N
oyw4y44yqgd	fj7mqkmuy05	9	\N	\N	\N
dohzvch4noi	lhbk1av87n1	8	\N	\N	\N
dohzvch4noi	h6z84g2plev	9	\N	\N	\N
dohzvch4noi	fj7mqkmuy05	10	\N	\N	\N
9znhwv6jh2d	lhbk1av87n1	9	\N	\N	\N
9znhwv6jh2d	h6z84g2plev	10	\N	\N	\N
9znhwv6jh2d	fj7mqkmuy05	11	\N	\N	\N
7qdtw3aqf8f	lhbk1av87n1	10	\N	\N	\N
7qdtw3aqf8f	h6z84g2plev	11	\N	\N	\N
7qdtw3aqf8f	fj7mqkmuy05	12	\N	\N	\N
x74knwfm0hx	lhbk1av87n1	11	\N	\N	\N
x74knwfm0hx	h6z84g2plev	12	\N	\N	\N
x74knwfm0hx	fj7mqkmuy05	13	\N	\N	\N
i5ep94ei4hn	lhbk1av87n1	12	\N	\N	\N
i5ep94ei4hn	h6z84g2plev	13	\N	\N	\N
i5ep94ei4hn	fj7mqkmuy05	14	\N	\N	\N
ugc9ztt4hb4	lhbk1av87n1	13	\N	\N	\N
ugc9ztt4hb4	h6z84g2plev	14	\N	\N	\N
ugc9ztt4hb4	fj7mqkmuy05	15	\N	\N	\N
ao2a67rjlld	lhbk1av87n1	14	\N	\N	\N
ao2a67rjlld	h6z84g2plev	15	\N	\N	\N
ao2a67rjlld	fj7mqkmuy05	16	\N	\N	\N
bwbd6lebhkb	lhbk1av87n1	15	\N	\N	\N
bwbd6lebhkb	h6z84g2plev	16	\N	\N	\N
bwbd6lebhkb	fj7mqkmuy05	17	\N	\N	\N
m8tbcrs4z9t	lhbk1av87n1	16	\N	\N	\N
m8tbcrs4z9t	h6z84g2plev	17	\N	\N	\N
m8tbcrs4z9t	fj7mqkmuy05	18	\N	\N	\N
q4dinm52meb	lhbk1av87n1	17	\N	\N	\N
q4dinm52meb	h6z84g2plev	18	\N	\N	\N
q4dinm52meb	fj7mqkmuy05	19	\N	\N	\N
vs0l89adzhc	lhbk1av87n1	18	\N	\N	\N
vs0l89adzhc	h6z84g2plev	19	\N	\N	\N
vs0l89adzhc	fj7mqkmuy05	20	\N	\N	\N
493pimn830r	lhbk1av87n1	19	\N	\N	\N
493pimn830r	h6z84g2plev	20	\N	\N	\N
493pimn830r	fj7mqkmuy05	21	\N	\N	\N
nocobase-admin-menu	lhbk1av87n1	20	\N	\N	\N
nocobase-admin-menu	h6z84g2plev	21	\N	\N	\N
nocobase-admin-menu	fj7mqkmuy05	22	\N	\N	\N
lhbk1av87n1	lhbk1av87n1	0	f	properties	\N
mr7dvvk94ts	lhbk1av87n1	1	\N	\N	1
z3izb1wk1tb	z3izb1wk1tb	0	f	properties	\N
7mxt8s0yifl	z3izb1wk1tb	1	\N	\N	1
r46d3k59dyb	r46d3k59dyb	0	f	properties	\N
z3izb1wk1tb	r46d3k59dyb	1	\N	\N	1
7mxt8s0yifl	r46d3k59dyb	2	\N	\N	1
mr7dvvk94ts	z3izb1wk1tb	2	\N	\N	\N
mr7dvvk94ts	r46d3k59dyb	3	\N	\N	\N
imo18or3xxo	7mxt8s0yifl	2	\N	\N	\N
imo18or3xxo	z3izb1wk1tb	3	\N	\N	\N
imo18or3xxo	r46d3k59dyb	4	\N	\N	\N
q5no45c40c6	7mxt8s0yifl	3	\N	\N	\N
q5no45c40c6	z3izb1wk1tb	4	\N	\N	\N
q5no45c40c6	r46d3k59dyb	5	\N	\N	\N
zy4jidwmnvw	7mxt8s0yifl	4	\N	\N	\N
zy4jidwmnvw	z3izb1wk1tb	5	\N	\N	\N
zy4jidwmnvw	r46d3k59dyb	6	\N	\N	\N
0kxudizv0xf	7mxt8s0yifl	5	\N	\N	\N
0kxudizv0xf	z3izb1wk1tb	6	\N	\N	\N
0kxudizv0xf	r46d3k59dyb	7	\N	\N	\N
bztjip2msxq	7mxt8s0yifl	6	\N	\N	\N
bztjip2msxq	z3izb1wk1tb	7	\N	\N	\N
bztjip2msxq	r46d3k59dyb	8	\N	\N	\N
oyw4y44yqgd	7mxt8s0yifl	7	\N	\N	\N
oyw4y44yqgd	z3izb1wk1tb	8	\N	\N	\N
oyw4y44yqgd	r46d3k59dyb	9	\N	\N	\N
dohzvch4noi	7mxt8s0yifl	8	\N	\N	\N
dohzvch4noi	z3izb1wk1tb	9	\N	\N	\N
dohzvch4noi	r46d3k59dyb	10	\N	\N	\N
9znhwv6jh2d	7mxt8s0yifl	9	\N	\N	\N
9znhwv6jh2d	z3izb1wk1tb	10	\N	\N	\N
9znhwv6jh2d	r46d3k59dyb	11	\N	\N	\N
7mxt8s0yifl	7mxt8s0yifl	0	f	properties	\N
mr7dvvk94ts	7mxt8s0yifl	1	\N	\N	2
7qdtw3aqf8f	7mxt8s0yifl	10	\N	\N	\N
7qdtw3aqf8f	z3izb1wk1tb	11	\N	\N	\N
7qdtw3aqf8f	r46d3k59dyb	12	\N	\N	\N
x74knwfm0hx	7mxt8s0yifl	11	\N	\N	\N
x74knwfm0hx	z3izb1wk1tb	12	\N	\N	\N
x74knwfm0hx	r46d3k59dyb	13	\N	\N	\N
i5ep94ei4hn	7mxt8s0yifl	12	\N	\N	\N
i5ep94ei4hn	z3izb1wk1tb	13	\N	\N	\N
i5ep94ei4hn	r46d3k59dyb	14	\N	\N	\N
ugc9ztt4hb4	7mxt8s0yifl	13	\N	\N	\N
ugc9ztt4hb4	z3izb1wk1tb	14	\N	\N	\N
ugc9ztt4hb4	r46d3k59dyb	15	\N	\N	\N
ao2a67rjlld	7mxt8s0yifl	14	\N	\N	\N
ao2a67rjlld	z3izb1wk1tb	15	\N	\N	\N
ao2a67rjlld	r46d3k59dyb	16	\N	\N	\N
bwbd6lebhkb	7mxt8s0yifl	15	\N	\N	\N
bwbd6lebhkb	z3izb1wk1tb	16	\N	\N	\N
bwbd6lebhkb	r46d3k59dyb	17	\N	\N	\N
m8tbcrs4z9t	7mxt8s0yifl	16	\N	\N	\N
m8tbcrs4z9t	z3izb1wk1tb	17	\N	\N	\N
m8tbcrs4z9t	r46d3k59dyb	18	\N	\N	\N
q4dinm52meb	7mxt8s0yifl	17	\N	\N	\N
q4dinm52meb	z3izb1wk1tb	18	\N	\N	\N
q4dinm52meb	r46d3k59dyb	19	\N	\N	\N
vs0l89adzhc	7mxt8s0yifl	18	\N	\N	\N
vs0l89adzhc	z3izb1wk1tb	19	\N	\N	\N
vs0l89adzhc	r46d3k59dyb	20	\N	\N	\N
493pimn830r	7mxt8s0yifl	19	\N	\N	\N
493pimn830r	z3izb1wk1tb	20	\N	\N	\N
493pimn830r	r46d3k59dyb	21	\N	\N	\N
nocobase-admin-menu	7mxt8s0yifl	20	\N	\N	\N
nocobase-admin-menu	z3izb1wk1tb	21	\N	\N	\N
nocobase-admin-menu	r46d3k59dyb	22	\N	\N	\N
0i6xo0z7gmw	0i6xo0z7gmw	0	f	properties	\N
vkwm4wpz1us	0i6xo0z7gmw	1	\N	\N	1
ktueizjrxpb	ktueizjrxpb	0	f	properties	\N
0i6xo0z7gmw	ktueizjrxpb	1	\N	\N	1
vkwm4wpz1us	ktueizjrxpb	2	\N	\N	1
mr7dvvk94ts	0i6xo0z7gmw	2	\N	\N	\N
mr7dvvk94ts	ktueizjrxpb	3	\N	\N	\N
imo18or3xxo	vkwm4wpz1us	2	\N	\N	\N
imo18or3xxo	0i6xo0z7gmw	3	\N	\N	\N
imo18or3xxo	ktueizjrxpb	4	\N	\N	\N
q5no45c40c6	vkwm4wpz1us	3	\N	\N	\N
q5no45c40c6	0i6xo0z7gmw	4	\N	\N	\N
q5no45c40c6	ktueizjrxpb	5	\N	\N	\N
zy4jidwmnvw	vkwm4wpz1us	4	\N	\N	\N
zy4jidwmnvw	0i6xo0z7gmw	5	\N	\N	\N
zy4jidwmnvw	ktueizjrxpb	6	\N	\N	\N
0kxudizv0xf	vkwm4wpz1us	5	\N	\N	\N
0kxudizv0xf	0i6xo0z7gmw	6	\N	\N	\N
0kxudizv0xf	ktueizjrxpb	7	\N	\N	\N
bztjip2msxq	vkwm4wpz1us	6	\N	\N	\N
bztjip2msxq	0i6xo0z7gmw	7	\N	\N	\N
bztjip2msxq	ktueizjrxpb	8	\N	\N	\N
oyw4y44yqgd	vkwm4wpz1us	7	\N	\N	\N
oyw4y44yqgd	0i6xo0z7gmw	8	\N	\N	\N
oyw4y44yqgd	ktueizjrxpb	9	\N	\N	\N
dohzvch4noi	vkwm4wpz1us	8	\N	\N	\N
dohzvch4noi	0i6xo0z7gmw	9	\N	\N	\N
dohzvch4noi	ktueizjrxpb	10	\N	\N	\N
9znhwv6jh2d	vkwm4wpz1us	9	\N	\N	\N
9znhwv6jh2d	0i6xo0z7gmw	10	\N	\N	\N
9znhwv6jh2d	ktueizjrxpb	11	\N	\N	\N
7qdtw3aqf8f	vkwm4wpz1us	10	\N	\N	\N
7qdtw3aqf8f	0i6xo0z7gmw	11	\N	\N	\N
7qdtw3aqf8f	ktueizjrxpb	12	\N	\N	\N
x74knwfm0hx	vkwm4wpz1us	11	\N	\N	\N
x74knwfm0hx	0i6xo0z7gmw	12	\N	\N	\N
x74knwfm0hx	ktueizjrxpb	13	\N	\N	\N
i5ep94ei4hn	vkwm4wpz1us	12	\N	\N	\N
i5ep94ei4hn	0i6xo0z7gmw	13	\N	\N	\N
i5ep94ei4hn	ktueizjrxpb	14	\N	\N	\N
ugc9ztt4hb4	vkwm4wpz1us	13	\N	\N	\N
ugc9ztt4hb4	0i6xo0z7gmw	14	\N	\N	\N
ugc9ztt4hb4	ktueizjrxpb	15	\N	\N	\N
ao2a67rjlld	vkwm4wpz1us	14	\N	\N	\N
ao2a67rjlld	0i6xo0z7gmw	15	\N	\N	\N
ao2a67rjlld	ktueizjrxpb	16	\N	\N	\N
bwbd6lebhkb	vkwm4wpz1us	15	\N	\N	\N
bwbd6lebhkb	0i6xo0z7gmw	16	\N	\N	\N
bwbd6lebhkb	ktueizjrxpb	17	\N	\N	\N
m8tbcrs4z9t	vkwm4wpz1us	16	\N	\N	\N
m8tbcrs4z9t	0i6xo0z7gmw	17	\N	\N	\N
m8tbcrs4z9t	ktueizjrxpb	18	\N	\N	\N
q4dinm52meb	vkwm4wpz1us	17	\N	\N	\N
q4dinm52meb	0i6xo0z7gmw	18	\N	\N	\N
q4dinm52meb	ktueizjrxpb	19	\N	\N	\N
vs0l89adzhc	vkwm4wpz1us	18	\N	\N	\N
vs0l89adzhc	0i6xo0z7gmw	19	\N	\N	\N
vs0l89adzhc	ktueizjrxpb	20	\N	\N	\N
493pimn830r	vkwm4wpz1us	19	\N	\N	\N
493pimn830r	0i6xo0z7gmw	20	\N	\N	\N
493pimn830r	ktueizjrxpb	21	\N	\N	\N
nocobase-admin-menu	vkwm4wpz1us	20	\N	\N	\N
nocobase-admin-menu	0i6xo0z7gmw	21	\N	\N	\N
nocobase-admin-menu	ktueizjrxpb	22	\N	\N	\N
vkwm4wpz1us	vkwm4wpz1us	0	f	properties	\N
mr7dvvk94ts	vkwm4wpz1us	1	\N	\N	3
h2owc9efe7d	h2owc9efe7d	0	f	properties	\N
r4wwu0h2xhc	h2owc9efe7d	1	\N	\N	1
h0ax2mnno9e	h0ax2mnno9e	0	f	properties	\N
h2owc9efe7d	h0ax2mnno9e	1	\N	\N	1
r4wwu0h2xhc	h0ax2mnno9e	2	\N	\N	1
mr7dvvk94ts	h2owc9efe7d	2	\N	\N	\N
mr7dvvk94ts	h0ax2mnno9e	3	\N	\N	\N
imo18or3xxo	r4wwu0h2xhc	2	\N	\N	\N
imo18or3xxo	h2owc9efe7d	3	\N	\N	\N
imo18or3xxo	h0ax2mnno9e	4	\N	\N	\N
q5no45c40c6	r4wwu0h2xhc	3	\N	\N	\N
q5no45c40c6	h2owc9efe7d	4	\N	\N	\N
q5no45c40c6	h0ax2mnno9e	5	\N	\N	\N
zy4jidwmnvw	r4wwu0h2xhc	4	\N	\N	\N
zy4jidwmnvw	h2owc9efe7d	5	\N	\N	\N
zy4jidwmnvw	h0ax2mnno9e	6	\N	\N	\N
0kxudizv0xf	r4wwu0h2xhc	5	\N	\N	\N
0kxudizv0xf	h2owc9efe7d	6	\N	\N	\N
0kxudizv0xf	h0ax2mnno9e	7	\N	\N	\N
bztjip2msxq	r4wwu0h2xhc	6	\N	\N	\N
bztjip2msxq	h2owc9efe7d	7	\N	\N	\N
bztjip2msxq	h0ax2mnno9e	8	\N	\N	\N
oyw4y44yqgd	r4wwu0h2xhc	7	\N	\N	\N
oyw4y44yqgd	h2owc9efe7d	8	\N	\N	\N
oyw4y44yqgd	h0ax2mnno9e	9	\N	\N	\N
dohzvch4noi	r4wwu0h2xhc	8	\N	\N	\N
dohzvch4noi	h2owc9efe7d	9	\N	\N	\N
dohzvch4noi	h0ax2mnno9e	10	\N	\N	\N
9znhwv6jh2d	r4wwu0h2xhc	9	\N	\N	\N
9znhwv6jh2d	h2owc9efe7d	10	\N	\N	\N
9znhwv6jh2d	h0ax2mnno9e	11	\N	\N	\N
r4wwu0h2xhc	r4wwu0h2xhc	0	f	properties	\N
mr7dvvk94ts	r4wwu0h2xhc	1	\N	\N	4
7qdtw3aqf8f	r4wwu0h2xhc	10	\N	\N	\N
7qdtw3aqf8f	h2owc9efe7d	11	\N	\N	\N
7qdtw3aqf8f	h0ax2mnno9e	12	\N	\N	\N
x74knwfm0hx	r4wwu0h2xhc	11	\N	\N	\N
x74knwfm0hx	h2owc9efe7d	12	\N	\N	\N
x74knwfm0hx	h0ax2mnno9e	13	\N	\N	\N
i5ep94ei4hn	r4wwu0h2xhc	12	\N	\N	\N
i5ep94ei4hn	h2owc9efe7d	13	\N	\N	\N
i5ep94ei4hn	h0ax2mnno9e	14	\N	\N	\N
ugc9ztt4hb4	r4wwu0h2xhc	13	\N	\N	\N
ugc9ztt4hb4	h2owc9efe7d	14	\N	\N	\N
ugc9ztt4hb4	h0ax2mnno9e	15	\N	\N	\N
ao2a67rjlld	r4wwu0h2xhc	14	\N	\N	\N
ao2a67rjlld	h2owc9efe7d	15	\N	\N	\N
ao2a67rjlld	h0ax2mnno9e	16	\N	\N	\N
bwbd6lebhkb	r4wwu0h2xhc	15	\N	\N	\N
bwbd6lebhkb	h2owc9efe7d	16	\N	\N	\N
bwbd6lebhkb	h0ax2mnno9e	17	\N	\N	\N
m8tbcrs4z9t	r4wwu0h2xhc	16	\N	\N	\N
m8tbcrs4z9t	h2owc9efe7d	17	\N	\N	\N
m8tbcrs4z9t	h0ax2mnno9e	18	\N	\N	\N
q4dinm52meb	r4wwu0h2xhc	17	\N	\N	\N
q4dinm52meb	h2owc9efe7d	18	\N	\N	\N
q4dinm52meb	h0ax2mnno9e	19	\N	\N	\N
vs0l89adzhc	r4wwu0h2xhc	18	\N	\N	\N
vs0l89adzhc	h2owc9efe7d	19	\N	\N	\N
vs0l89adzhc	h0ax2mnno9e	20	\N	\N	\N
493pimn830r	r4wwu0h2xhc	19	\N	\N	\N
493pimn830r	h2owc9efe7d	20	\N	\N	\N
493pimn830r	h0ax2mnno9e	21	\N	\N	\N
nocobase-admin-menu	r4wwu0h2xhc	20	\N	\N	\N
nocobase-admin-menu	h2owc9efe7d	21	\N	\N	\N
nocobase-admin-menu	h0ax2mnno9e	22	\N	\N	\N
jybbjrsdqyi	jybbjrsdqyi	0	f	properties	\N
trkntmt0j43	jybbjrsdqyi	1	\N	\N	1
x34msmoy2z7	x34msmoy2z7	0	f	properties	\N
jybbjrsdqyi	x34msmoy2z7	1	\N	\N	1
trkntmt0j43	x34msmoy2z7	2	\N	\N	1
mr7dvvk94ts	jybbjrsdqyi	2	\N	\N	\N
mr7dvvk94ts	x34msmoy2z7	3	\N	\N	\N
imo18or3xxo	trkntmt0j43	2	\N	\N	\N
imo18or3xxo	jybbjrsdqyi	3	\N	\N	\N
imo18or3xxo	x34msmoy2z7	4	\N	\N	\N
q5no45c40c6	trkntmt0j43	3	\N	\N	\N
q5no45c40c6	jybbjrsdqyi	4	\N	\N	\N
q5no45c40c6	x34msmoy2z7	5	\N	\N	\N
zy4jidwmnvw	trkntmt0j43	4	\N	\N	\N
zy4jidwmnvw	jybbjrsdqyi	5	\N	\N	\N
zy4jidwmnvw	x34msmoy2z7	6	\N	\N	\N
0kxudizv0xf	trkntmt0j43	5	\N	\N	\N
0kxudizv0xf	jybbjrsdqyi	6	\N	\N	\N
0kxudizv0xf	x34msmoy2z7	7	\N	\N	\N
bztjip2msxq	trkntmt0j43	6	\N	\N	\N
bztjip2msxq	jybbjrsdqyi	7	\N	\N	\N
bztjip2msxq	x34msmoy2z7	8	\N	\N	\N
oyw4y44yqgd	trkntmt0j43	7	\N	\N	\N
oyw4y44yqgd	jybbjrsdqyi	8	\N	\N	\N
oyw4y44yqgd	x34msmoy2z7	9	\N	\N	\N
dohzvch4noi	trkntmt0j43	8	\N	\N	\N
dohzvch4noi	jybbjrsdqyi	9	\N	\N	\N
dohzvch4noi	x34msmoy2z7	10	\N	\N	\N
9znhwv6jh2d	trkntmt0j43	9	\N	\N	\N
9znhwv6jh2d	jybbjrsdqyi	10	\N	\N	\N
9znhwv6jh2d	x34msmoy2z7	11	\N	\N	\N
7qdtw3aqf8f	trkntmt0j43	10	\N	\N	\N
7qdtw3aqf8f	jybbjrsdqyi	11	\N	\N	\N
7qdtw3aqf8f	x34msmoy2z7	12	\N	\N	\N
x74knwfm0hx	trkntmt0j43	11	\N	\N	\N
x74knwfm0hx	jybbjrsdqyi	12	\N	\N	\N
x74knwfm0hx	x34msmoy2z7	13	\N	\N	\N
i5ep94ei4hn	trkntmt0j43	12	\N	\N	\N
i5ep94ei4hn	jybbjrsdqyi	13	\N	\N	\N
i5ep94ei4hn	x34msmoy2z7	14	\N	\N	\N
ugc9ztt4hb4	trkntmt0j43	13	\N	\N	\N
ugc9ztt4hb4	jybbjrsdqyi	14	\N	\N	\N
ugc9ztt4hb4	x34msmoy2z7	15	\N	\N	\N
ao2a67rjlld	trkntmt0j43	14	\N	\N	\N
ao2a67rjlld	jybbjrsdqyi	15	\N	\N	\N
ao2a67rjlld	x34msmoy2z7	16	\N	\N	\N
bwbd6lebhkb	trkntmt0j43	15	\N	\N	\N
bwbd6lebhkb	jybbjrsdqyi	16	\N	\N	\N
bwbd6lebhkb	x34msmoy2z7	17	\N	\N	\N
m8tbcrs4z9t	trkntmt0j43	16	\N	\N	\N
m8tbcrs4z9t	jybbjrsdqyi	17	\N	\N	\N
m8tbcrs4z9t	x34msmoy2z7	18	\N	\N	\N
q4dinm52meb	trkntmt0j43	17	\N	\N	\N
q4dinm52meb	jybbjrsdqyi	18	\N	\N	\N
q4dinm52meb	x34msmoy2z7	19	\N	\N	\N
vs0l89adzhc	trkntmt0j43	18	\N	\N	\N
vs0l89adzhc	jybbjrsdqyi	19	\N	\N	\N
vs0l89adzhc	x34msmoy2z7	20	\N	\N	\N
493pimn830r	trkntmt0j43	19	\N	\N	\N
493pimn830r	jybbjrsdqyi	20	\N	\N	\N
493pimn830r	x34msmoy2z7	21	\N	\N	\N
nocobase-admin-menu	trkntmt0j43	20	\N	\N	\N
nocobase-admin-menu	jybbjrsdqyi	21	\N	\N	\N
nocobase-admin-menu	x34msmoy2z7	22	\N	\N	\N
trkntmt0j43	trkntmt0j43	0	f	properties	\N
mr7dvvk94ts	trkntmt0j43	1	\N	\N	5
q99h3pa86a9	q99h3pa86a9	0	f	properties	\N
qa9xun5vwcj	q99h3pa86a9	1	\N	\N	1
2w9s2xktcaq	2w9s2xktcaq	0	f	properties	\N
q99h3pa86a9	2w9s2xktcaq	1	\N	\N	1
qa9xun5vwcj	2w9s2xktcaq	2	\N	\N	1
mr7dvvk94ts	q99h3pa86a9	2	\N	\N	\N
mr7dvvk94ts	2w9s2xktcaq	3	\N	\N	\N
imo18or3xxo	qa9xun5vwcj	2	\N	\N	\N
imo18or3xxo	q99h3pa86a9	3	\N	\N	\N
imo18or3xxo	2w9s2xktcaq	4	\N	\N	\N
q5no45c40c6	qa9xun5vwcj	3	\N	\N	\N
q5no45c40c6	q99h3pa86a9	4	\N	\N	\N
q5no45c40c6	2w9s2xktcaq	5	\N	\N	\N
zy4jidwmnvw	qa9xun5vwcj	4	\N	\N	\N
zy4jidwmnvw	q99h3pa86a9	5	\N	\N	\N
zy4jidwmnvw	2w9s2xktcaq	6	\N	\N	\N
0kxudizv0xf	qa9xun5vwcj	5	\N	\N	\N
0kxudizv0xf	q99h3pa86a9	6	\N	\N	\N
0kxudizv0xf	2w9s2xktcaq	7	\N	\N	\N
bztjip2msxq	qa9xun5vwcj	6	\N	\N	\N
bztjip2msxq	q99h3pa86a9	7	\N	\N	\N
bztjip2msxq	2w9s2xktcaq	8	\N	\N	\N
oyw4y44yqgd	qa9xun5vwcj	7	\N	\N	\N
oyw4y44yqgd	q99h3pa86a9	8	\N	\N	\N
oyw4y44yqgd	2w9s2xktcaq	9	\N	\N	\N
dohzvch4noi	qa9xun5vwcj	8	\N	\N	\N
dohzvch4noi	q99h3pa86a9	9	\N	\N	\N
dohzvch4noi	2w9s2xktcaq	10	\N	\N	\N
9znhwv6jh2d	qa9xun5vwcj	9	\N	\N	\N
9znhwv6jh2d	q99h3pa86a9	10	\N	\N	\N
9znhwv6jh2d	2w9s2xktcaq	11	\N	\N	\N
qa9xun5vwcj	qa9xun5vwcj	0	f	properties	\N
mr7dvvk94ts	qa9xun5vwcj	1	\N	\N	6
7qdtw3aqf8f	qa9xun5vwcj	10	\N	\N	\N
7qdtw3aqf8f	q99h3pa86a9	11	\N	\N	\N
7qdtw3aqf8f	2w9s2xktcaq	12	\N	\N	\N
x74knwfm0hx	qa9xun5vwcj	11	\N	\N	\N
x74knwfm0hx	q99h3pa86a9	12	\N	\N	\N
x74knwfm0hx	2w9s2xktcaq	13	\N	\N	\N
i5ep94ei4hn	qa9xun5vwcj	12	\N	\N	\N
i5ep94ei4hn	q99h3pa86a9	13	\N	\N	\N
i5ep94ei4hn	2w9s2xktcaq	14	\N	\N	\N
ugc9ztt4hb4	qa9xun5vwcj	13	\N	\N	\N
ugc9ztt4hb4	q99h3pa86a9	14	\N	\N	\N
ugc9ztt4hb4	2w9s2xktcaq	15	\N	\N	\N
ao2a67rjlld	qa9xun5vwcj	14	\N	\N	\N
ao2a67rjlld	q99h3pa86a9	15	\N	\N	\N
ao2a67rjlld	2w9s2xktcaq	16	\N	\N	\N
bwbd6lebhkb	qa9xun5vwcj	15	\N	\N	\N
bwbd6lebhkb	q99h3pa86a9	16	\N	\N	\N
bwbd6lebhkb	2w9s2xktcaq	17	\N	\N	\N
m8tbcrs4z9t	qa9xun5vwcj	16	\N	\N	\N
m8tbcrs4z9t	q99h3pa86a9	17	\N	\N	\N
m8tbcrs4z9t	2w9s2xktcaq	18	\N	\N	\N
q4dinm52meb	qa9xun5vwcj	17	\N	\N	\N
q4dinm52meb	q99h3pa86a9	18	\N	\N	\N
q4dinm52meb	2w9s2xktcaq	19	\N	\N	\N
vs0l89adzhc	qa9xun5vwcj	18	\N	\N	\N
vs0l89adzhc	q99h3pa86a9	19	\N	\N	\N
vs0l89adzhc	2w9s2xktcaq	20	\N	\N	\N
493pimn830r	qa9xun5vwcj	19	\N	\N	\N
493pimn830r	q99h3pa86a9	20	\N	\N	\N
493pimn830r	2w9s2xktcaq	21	\N	\N	\N
nocobase-admin-menu	qa9xun5vwcj	20	\N	\N	\N
nocobase-admin-menu	q99h3pa86a9	21	\N	\N	\N
nocobase-admin-menu	2w9s2xktcaq	22	\N	\N	\N
zfyh24viwdy	zfyh24viwdy	0	f	properties	\N
e218oz4chyl	zfyh24viwdy	1	\N	\N	1
3h2a3ty94tj	3h2a3ty94tj	0	f	properties	\N
zfyh24viwdy	3h2a3ty94tj	1	\N	\N	1
e218oz4chyl	3h2a3ty94tj	2	\N	\N	1
mr7dvvk94ts	zfyh24viwdy	2	\N	\N	\N
mr7dvvk94ts	3h2a3ty94tj	3	\N	\N	\N
imo18or3xxo	e218oz4chyl	2	\N	\N	\N
imo18or3xxo	zfyh24viwdy	3	\N	\N	\N
imo18or3xxo	3h2a3ty94tj	4	\N	\N	\N
q5no45c40c6	e218oz4chyl	3	\N	\N	\N
q5no45c40c6	zfyh24viwdy	4	\N	\N	\N
q5no45c40c6	3h2a3ty94tj	5	\N	\N	\N
zy4jidwmnvw	e218oz4chyl	4	\N	\N	\N
zy4jidwmnvw	zfyh24viwdy	5	\N	\N	\N
zy4jidwmnvw	3h2a3ty94tj	6	\N	\N	\N
0kxudizv0xf	e218oz4chyl	5	\N	\N	\N
0kxudizv0xf	zfyh24viwdy	6	\N	\N	\N
0kxudizv0xf	3h2a3ty94tj	7	\N	\N	\N
bztjip2msxq	e218oz4chyl	6	\N	\N	\N
bztjip2msxq	zfyh24viwdy	7	\N	\N	\N
bztjip2msxq	3h2a3ty94tj	8	\N	\N	\N
oyw4y44yqgd	e218oz4chyl	7	\N	\N	\N
oyw4y44yqgd	zfyh24viwdy	8	\N	\N	\N
oyw4y44yqgd	3h2a3ty94tj	9	\N	\N	\N
dohzvch4noi	e218oz4chyl	8	\N	\N	\N
dohzvch4noi	zfyh24viwdy	9	\N	\N	\N
dohzvch4noi	3h2a3ty94tj	10	\N	\N	\N
9znhwv6jh2d	e218oz4chyl	9	\N	\N	\N
9znhwv6jh2d	zfyh24viwdy	10	\N	\N	\N
9znhwv6jh2d	3h2a3ty94tj	11	\N	\N	\N
7qdtw3aqf8f	e218oz4chyl	10	\N	\N	\N
7qdtw3aqf8f	zfyh24viwdy	11	\N	\N	\N
7qdtw3aqf8f	3h2a3ty94tj	12	\N	\N	\N
x74knwfm0hx	e218oz4chyl	11	\N	\N	\N
x74knwfm0hx	zfyh24viwdy	12	\N	\N	\N
x74knwfm0hx	3h2a3ty94tj	13	\N	\N	\N
i5ep94ei4hn	e218oz4chyl	12	\N	\N	\N
i5ep94ei4hn	zfyh24viwdy	13	\N	\N	\N
i5ep94ei4hn	3h2a3ty94tj	14	\N	\N	\N
ugc9ztt4hb4	e218oz4chyl	13	\N	\N	\N
ugc9ztt4hb4	zfyh24viwdy	14	\N	\N	\N
ugc9ztt4hb4	3h2a3ty94tj	15	\N	\N	\N
ao2a67rjlld	e218oz4chyl	14	\N	\N	\N
ao2a67rjlld	zfyh24viwdy	15	\N	\N	\N
ao2a67rjlld	3h2a3ty94tj	16	\N	\N	\N
bwbd6lebhkb	e218oz4chyl	15	\N	\N	\N
bwbd6lebhkb	zfyh24viwdy	16	\N	\N	\N
bwbd6lebhkb	3h2a3ty94tj	17	\N	\N	\N
m8tbcrs4z9t	e218oz4chyl	16	\N	\N	\N
m8tbcrs4z9t	zfyh24viwdy	17	\N	\N	\N
m8tbcrs4z9t	3h2a3ty94tj	18	\N	\N	\N
q4dinm52meb	e218oz4chyl	17	\N	\N	\N
q4dinm52meb	zfyh24viwdy	18	\N	\N	\N
q4dinm52meb	3h2a3ty94tj	19	\N	\N	\N
vs0l89adzhc	e218oz4chyl	18	\N	\N	\N
vs0l89adzhc	zfyh24viwdy	19	\N	\N	\N
vs0l89adzhc	3h2a3ty94tj	20	\N	\N	\N
493pimn830r	e218oz4chyl	19	\N	\N	\N
493pimn830r	zfyh24viwdy	20	\N	\N	\N
493pimn830r	3h2a3ty94tj	21	\N	\N	\N
nocobase-admin-menu	e218oz4chyl	20	\N	\N	\N
nocobase-admin-menu	zfyh24viwdy	21	\N	\N	\N
nocobase-admin-menu	3h2a3ty94tj	22	\N	\N	\N
e218oz4chyl	e218oz4chyl	0	f	properties	\N
mr7dvvk94ts	e218oz4chyl	1	\N	\N	7
dqzfsmyk8ay	dqzfsmyk8ay	0	f	properties	\N
5dqm9vvouxz	dqzfsmyk8ay	1	\N	\N	1
b33sc3cahsg	b33sc3cahsg	0	f	properties	\N
dqzfsmyk8ay	b33sc3cahsg	1	\N	\N	1
5dqm9vvouxz	b33sc3cahsg	2	\N	\N	1
mr7dvvk94ts	dqzfsmyk8ay	2	\N	\N	\N
mr7dvvk94ts	b33sc3cahsg	3	\N	\N	\N
imo18or3xxo	5dqm9vvouxz	2	\N	\N	\N
imo18or3xxo	dqzfsmyk8ay	3	\N	\N	\N
imo18or3xxo	b33sc3cahsg	4	\N	\N	\N
q5no45c40c6	5dqm9vvouxz	3	\N	\N	\N
q5no45c40c6	dqzfsmyk8ay	4	\N	\N	\N
q5no45c40c6	b33sc3cahsg	5	\N	\N	\N
zy4jidwmnvw	5dqm9vvouxz	4	\N	\N	\N
zy4jidwmnvw	dqzfsmyk8ay	5	\N	\N	\N
zy4jidwmnvw	b33sc3cahsg	6	\N	\N	\N
0kxudizv0xf	5dqm9vvouxz	5	\N	\N	\N
0kxudizv0xf	dqzfsmyk8ay	6	\N	\N	\N
0kxudizv0xf	b33sc3cahsg	7	\N	\N	\N
bztjip2msxq	5dqm9vvouxz	6	\N	\N	\N
bztjip2msxq	dqzfsmyk8ay	7	\N	\N	\N
bztjip2msxq	b33sc3cahsg	8	\N	\N	\N
oyw4y44yqgd	5dqm9vvouxz	7	\N	\N	\N
oyw4y44yqgd	dqzfsmyk8ay	8	\N	\N	\N
oyw4y44yqgd	b33sc3cahsg	9	\N	\N	\N
dohzvch4noi	5dqm9vvouxz	8	\N	\N	\N
dohzvch4noi	dqzfsmyk8ay	9	\N	\N	\N
dohzvch4noi	b33sc3cahsg	10	\N	\N	\N
9znhwv6jh2d	5dqm9vvouxz	9	\N	\N	\N
9znhwv6jh2d	dqzfsmyk8ay	10	\N	\N	\N
9znhwv6jh2d	b33sc3cahsg	11	\N	\N	\N
5dqm9vvouxz	5dqm9vvouxz	0	f	properties	\N
mr7dvvk94ts	5dqm9vvouxz	1	\N	\N	8
7qdtw3aqf8f	5dqm9vvouxz	10	\N	\N	\N
7qdtw3aqf8f	dqzfsmyk8ay	11	\N	\N	\N
7qdtw3aqf8f	b33sc3cahsg	12	\N	\N	\N
x74knwfm0hx	5dqm9vvouxz	11	\N	\N	\N
x74knwfm0hx	dqzfsmyk8ay	12	\N	\N	\N
x74knwfm0hx	b33sc3cahsg	13	\N	\N	\N
i5ep94ei4hn	5dqm9vvouxz	12	\N	\N	\N
i5ep94ei4hn	dqzfsmyk8ay	13	\N	\N	\N
i5ep94ei4hn	b33sc3cahsg	14	\N	\N	\N
ugc9ztt4hb4	5dqm9vvouxz	13	\N	\N	\N
ugc9ztt4hb4	dqzfsmyk8ay	14	\N	\N	\N
ugc9ztt4hb4	b33sc3cahsg	15	\N	\N	\N
ao2a67rjlld	5dqm9vvouxz	14	\N	\N	\N
ao2a67rjlld	dqzfsmyk8ay	15	\N	\N	\N
ao2a67rjlld	b33sc3cahsg	16	\N	\N	\N
bwbd6lebhkb	5dqm9vvouxz	15	\N	\N	\N
bwbd6lebhkb	dqzfsmyk8ay	16	\N	\N	\N
bwbd6lebhkb	b33sc3cahsg	17	\N	\N	\N
m8tbcrs4z9t	5dqm9vvouxz	16	\N	\N	\N
m8tbcrs4z9t	dqzfsmyk8ay	17	\N	\N	\N
m8tbcrs4z9t	b33sc3cahsg	18	\N	\N	\N
q4dinm52meb	5dqm9vvouxz	17	\N	\N	\N
q4dinm52meb	dqzfsmyk8ay	18	\N	\N	\N
q4dinm52meb	b33sc3cahsg	19	\N	\N	\N
vs0l89adzhc	5dqm9vvouxz	18	\N	\N	\N
vs0l89adzhc	dqzfsmyk8ay	19	\N	\N	\N
vs0l89adzhc	b33sc3cahsg	20	\N	\N	\N
493pimn830r	5dqm9vvouxz	19	\N	\N	\N
493pimn830r	dqzfsmyk8ay	20	\N	\N	\N
493pimn830r	b33sc3cahsg	21	\N	\N	\N
nocobase-admin-menu	5dqm9vvouxz	20	\N	\N	\N
nocobase-admin-menu	dqzfsmyk8ay	21	\N	\N	\N
nocobase-admin-menu	b33sc3cahsg	22	\N	\N	\N
tdkqbjvhskr	tdkqbjvhskr	0	f	properties	\N
bj7d5uc6lnd	tdkqbjvhskr	1	\N	\N	1
0u09lqdoyvt	0u09lqdoyvt	0	f	properties	\N
tdkqbjvhskr	0u09lqdoyvt	1	\N	\N	1
bj7d5uc6lnd	0u09lqdoyvt	2	\N	\N	1
mr7dvvk94ts	tdkqbjvhskr	2	\N	\N	\N
mr7dvvk94ts	0u09lqdoyvt	3	\N	\N	\N
imo18or3xxo	bj7d5uc6lnd	2	\N	\N	\N
imo18or3xxo	tdkqbjvhskr	3	\N	\N	\N
imo18or3xxo	0u09lqdoyvt	4	\N	\N	\N
q5no45c40c6	bj7d5uc6lnd	3	\N	\N	\N
q5no45c40c6	tdkqbjvhskr	4	\N	\N	\N
q5no45c40c6	0u09lqdoyvt	5	\N	\N	\N
zy4jidwmnvw	bj7d5uc6lnd	4	\N	\N	\N
zy4jidwmnvw	tdkqbjvhskr	5	\N	\N	\N
zy4jidwmnvw	0u09lqdoyvt	6	\N	\N	\N
0kxudizv0xf	bj7d5uc6lnd	5	\N	\N	\N
0kxudizv0xf	tdkqbjvhskr	6	\N	\N	\N
0kxudizv0xf	0u09lqdoyvt	7	\N	\N	\N
bztjip2msxq	bj7d5uc6lnd	6	\N	\N	\N
bztjip2msxq	tdkqbjvhskr	7	\N	\N	\N
bztjip2msxq	0u09lqdoyvt	8	\N	\N	\N
oyw4y44yqgd	bj7d5uc6lnd	7	\N	\N	\N
oyw4y44yqgd	tdkqbjvhskr	8	\N	\N	\N
oyw4y44yqgd	0u09lqdoyvt	9	\N	\N	\N
dohzvch4noi	bj7d5uc6lnd	8	\N	\N	\N
dohzvch4noi	tdkqbjvhskr	9	\N	\N	\N
dohzvch4noi	0u09lqdoyvt	10	\N	\N	\N
9znhwv6jh2d	bj7d5uc6lnd	9	\N	\N	\N
9znhwv6jh2d	tdkqbjvhskr	10	\N	\N	\N
9znhwv6jh2d	0u09lqdoyvt	11	\N	\N	\N
7qdtw3aqf8f	bj7d5uc6lnd	10	\N	\N	\N
7qdtw3aqf8f	tdkqbjvhskr	11	\N	\N	\N
7qdtw3aqf8f	0u09lqdoyvt	12	\N	\N	\N
x74knwfm0hx	bj7d5uc6lnd	11	\N	\N	\N
x74knwfm0hx	tdkqbjvhskr	12	\N	\N	\N
x74knwfm0hx	0u09lqdoyvt	13	\N	\N	\N
i5ep94ei4hn	bj7d5uc6lnd	12	\N	\N	\N
i5ep94ei4hn	tdkqbjvhskr	13	\N	\N	\N
i5ep94ei4hn	0u09lqdoyvt	14	\N	\N	\N
ugc9ztt4hb4	bj7d5uc6lnd	13	\N	\N	\N
ugc9ztt4hb4	tdkqbjvhskr	14	\N	\N	\N
ugc9ztt4hb4	0u09lqdoyvt	15	\N	\N	\N
ao2a67rjlld	bj7d5uc6lnd	14	\N	\N	\N
ao2a67rjlld	tdkqbjvhskr	15	\N	\N	\N
ao2a67rjlld	0u09lqdoyvt	16	\N	\N	\N
bwbd6lebhkb	bj7d5uc6lnd	15	\N	\N	\N
bwbd6lebhkb	tdkqbjvhskr	16	\N	\N	\N
bwbd6lebhkb	0u09lqdoyvt	17	\N	\N	\N
m8tbcrs4z9t	bj7d5uc6lnd	16	\N	\N	\N
m8tbcrs4z9t	tdkqbjvhskr	17	\N	\N	\N
m8tbcrs4z9t	0u09lqdoyvt	18	\N	\N	\N
q4dinm52meb	bj7d5uc6lnd	17	\N	\N	\N
q4dinm52meb	tdkqbjvhskr	18	\N	\N	\N
q4dinm52meb	0u09lqdoyvt	19	\N	\N	\N
vs0l89adzhc	bj7d5uc6lnd	18	\N	\N	\N
vs0l89adzhc	tdkqbjvhskr	19	\N	\N	\N
vs0l89adzhc	0u09lqdoyvt	20	\N	\N	\N
493pimn830r	bj7d5uc6lnd	19	\N	\N	\N
493pimn830r	tdkqbjvhskr	20	\N	\N	\N
493pimn830r	0u09lqdoyvt	21	\N	\N	\N
nocobase-admin-menu	bj7d5uc6lnd	20	\N	\N	\N
nocobase-admin-menu	tdkqbjvhskr	21	\N	\N	\N
nocobase-admin-menu	0u09lqdoyvt	22	\N	\N	\N
bj7d5uc6lnd	bj7d5uc6lnd	0	f	properties	\N
mr7dvvk94ts	bj7d5uc6lnd	1	\N	\N	9
3o26e8k5cba	3o26e8k5cba	0	f	properties	\N
imo18or3xxo	3o26e8k5cba	2	\N	\N	\N
q5no45c40c6	3o26e8k5cba	3	\N	\N	\N
zy4jidwmnvw	3o26e8k5cba	4	\N	\N	\N
0kxudizv0xf	3o26e8k5cba	5	\N	\N	\N
bztjip2msxq	3o26e8k5cba	6	\N	\N	\N
oyw4y44yqgd	3o26e8k5cba	7	\N	\N	\N
dohzvch4noi	3o26e8k5cba	8	\N	\N	\N
9znhwv6jh2d	3o26e8k5cba	9	\N	\N	\N
7qdtw3aqf8f	3o26e8k5cba	10	\N	\N	\N
x74knwfm0hx	3o26e8k5cba	11	\N	\N	\N
i5ep94ei4hn	3o26e8k5cba	12	\N	\N	\N
ugc9ztt4hb4	3o26e8k5cba	13	\N	\N	\N
ao2a67rjlld	3o26e8k5cba	14	\N	\N	\N
bwbd6lebhkb	3o26e8k5cba	15	\N	\N	\N
m8tbcrs4z9t	3o26e8k5cba	16	\N	\N	\N
q4dinm52meb	3o26e8k5cba	17	\N	\N	\N
vs0l89adzhc	3o26e8k5cba	18	\N	\N	\N
493pimn830r	3o26e8k5cba	19	\N	\N	\N
nocobase-admin-menu	3o26e8k5cba	20	\N	\N	\N
9xqwn851uzs	3o26e8k5cba	1	\N	\N	1
ioq8ld31vte	ioq8ld31vte	0	f	properties	\N
cm22blbci2c	ioq8ld31vte	1	\N	\N	1
ojgs7eoz5hg	ojgs7eoz5hg	0	f	properties	\N
ioq8ld31vte	ojgs7eoz5hg	1	\N	\N	1
cm22blbci2c	ojgs7eoz5hg	2	\N	\N	1
y05re45hs3a	ioq8ld31vte	2	\N	\N	\N
y05re45hs3a	ojgs7eoz5hg	3	\N	\N	\N
dsptk8t0mbr	cm22blbci2c	2	\N	\N	\N
dsptk8t0mbr	ioq8ld31vte	3	\N	\N	\N
dsptk8t0mbr	ojgs7eoz5hg	4	\N	\N	\N
7qih7hq26ge	cm22blbci2c	3	\N	\N	\N
7qih7hq26ge	ioq8ld31vte	4	\N	\N	\N
7qih7hq26ge	ojgs7eoz5hg	5	\N	\N	\N
m9ru2u1mst5	cm22blbci2c	4	\N	\N	\N
m9ru2u1mst5	ioq8ld31vte	5	\N	\N	\N
m9ru2u1mst5	ojgs7eoz5hg	6	\N	\N	\N
t5a2xk7thpn	cm22blbci2c	5	\N	\N	\N
t5a2xk7thpn	ioq8ld31vte	6	\N	\N	\N
t5a2xk7thpn	ojgs7eoz5hg	7	\N	\N	\N
ra6axo18rlo	cm22blbci2c	6	\N	\N	\N
ra6axo18rlo	ioq8ld31vte	7	\N	\N	\N
ra6axo18rlo	ojgs7eoz5hg	8	\N	\N	\N
7peksipcht7	cm22blbci2c	7	\N	\N	\N
7peksipcht7	ioq8ld31vte	8	\N	\N	\N
7peksipcht7	ojgs7eoz5hg	9	\N	\N	\N
vxyfqljr7j6	cm22blbci2c	8	\N	\N	\N
vxyfqljr7j6	ioq8ld31vte	9	\N	\N	\N
vxyfqljr7j6	ojgs7eoz5hg	10	\N	\N	\N
v0xzwwlb3u7	cm22blbci2c	9	\N	\N	\N
v0xzwwlb3u7	ioq8ld31vte	10	\N	\N	\N
v0xzwwlb3u7	ojgs7eoz5hg	11	\N	\N	\N
eajx55rxxy3	cm22blbci2c	10	\N	\N	\N
eajx55rxxy3	ioq8ld31vte	11	\N	\N	\N
eajx55rxxy3	ojgs7eoz5hg	12	\N	\N	\N
8kxzcotfeb3	cm22blbci2c	11	\N	\N	\N
8kxzcotfeb3	ioq8ld31vte	12	\N	\N	\N
8kxzcotfeb3	ojgs7eoz5hg	13	\N	\N	\N
5z0xpoxz87w	cm22blbci2c	12	\N	\N	\N
5z0xpoxz87w	ioq8ld31vte	13	\N	\N	\N
5z0xpoxz87w	ojgs7eoz5hg	14	\N	\N	\N
o9klwv4nzei	cm22blbci2c	13	\N	\N	\N
o9klwv4nzei	ioq8ld31vte	14	\N	\N	\N
o9klwv4nzei	ojgs7eoz5hg	15	\N	\N	\N
ozzmhtdpth4	cm22blbci2c	14	\N	\N	\N
ozzmhtdpth4	ioq8ld31vte	15	\N	\N	\N
ozzmhtdpth4	ojgs7eoz5hg	16	\N	\N	\N
b8mogqkr3um	cm22blbci2c	15	\N	\N	\N
b8mogqkr3um	ioq8ld31vte	16	\N	\N	\N
b8mogqkr3um	ojgs7eoz5hg	17	\N	\N	\N
b56io1plq44	cm22blbci2c	16	\N	\N	\N
b56io1plq44	ioq8ld31vte	17	\N	\N	\N
b56io1plq44	ojgs7eoz5hg	18	\N	\N	\N
13qbrfhlbny	cm22blbci2c	17	\N	\N	\N
13qbrfhlbny	ioq8ld31vte	18	\N	\N	\N
13qbrfhlbny	ojgs7eoz5hg	19	\N	\N	\N
oqsecaif6am	cm22blbci2c	18	\N	\N	\N
oqsecaif6am	ioq8ld31vte	19	\N	\N	\N
oqsecaif6am	ojgs7eoz5hg	20	\N	\N	\N
63aby9t5qmb	cm22blbci2c	19	\N	\N	\N
63aby9t5qmb	ioq8ld31vte	20	\N	\N	\N
63aby9t5qmb	ojgs7eoz5hg	21	\N	\N	\N
mwrnryoju9y	cm22blbci2c	20	\N	\N	\N
mwrnryoju9y	ioq8ld31vte	21	\N	\N	\N
mwrnryoju9y	ojgs7eoz5hg	22	\N	\N	\N
nocobase-admin-menu	cm22blbci2c	21	\N	\N	\N
nocobase-admin-menu	ioq8ld31vte	22	\N	\N	\N
nocobase-admin-menu	ojgs7eoz5hg	23	\N	\N	\N
cm22blbci2c	cm22blbci2c	0	f	properties	\N
y05re45hs3a	cm22blbci2c	1	\N	\N	6
x3ls6jq4ldm	x3ls6jq4ldm	0	f	properties	\N
fvz3km1i6ms	x3ls6jq4ldm	1	\N	\N	2
7poa6levyva	ssd1y8mk1mx	1	\N	\N	21
fe7kgdo55ax	ssd1y8mk1mx	2	\N	\N	\N
hmft2ujv1uf	ssd1y8mk1mx	3	\N	\N	\N
nocobase-admin-menu	ssd1y8mk1mx	4	\N	\N	\N
ssd1y8mk1mx	ssd1y8mk1mx	0	f	properties	\N
cm46dlsp65t	cm46dlsp65t	0	f	properties	\N
xkyavrac3i1	cm46dlsp65t	1	\N	\N	1
jdpnao7e4yj	jdpnao7e4yj	0	f	properties	\N
cm46dlsp65t	jdpnao7e4yj	1	\N	\N	1
xkyavrac3i1	jdpnao7e4yj	2	\N	\N	1
pde5ayqzqo1	xkyavrac3i1	3	\N	\N	\N
pde5ayqzqo1	cm46dlsp65t	4	\N	\N	\N
pde5ayqzqo1	jdpnao7e4yj	5	\N	\N	\N
yivjshzifwl	xkyavrac3i1	4	\N	\N	\N
yivjshzifwl	cm46dlsp65t	5	\N	\N	\N
yivjshzifwl	jdpnao7e4yj	6	\N	\N	\N
7poa6levyva	xkyavrac3i1	5	\N	\N	\N
7poa6levyva	cm46dlsp65t	6	\N	\N	\N
7poa6levyva	jdpnao7e4yj	7	\N	\N	\N
fe7kgdo55ax	xkyavrac3i1	6	\N	\N	\N
fe7kgdo55ax	cm46dlsp65t	7	\N	\N	\N
fe7kgdo55ax	jdpnao7e4yj	8	\N	\N	\N
hmft2ujv1uf	xkyavrac3i1	7	\N	\N	\N
hmft2ujv1uf	cm46dlsp65t	8	\N	\N	\N
hmft2ujv1uf	jdpnao7e4yj	9	\N	\N	\N
nocobase-admin-menu	xkyavrac3i1	8	\N	\N	\N
nocobase-admin-menu	cm46dlsp65t	9	\N	\N	\N
nocobase-admin-menu	jdpnao7e4yj	10	\N	\N	\N
fvz3km1i6ms	cm46dlsp65t	2	\N	\N	\N
fvz3km1i6ms	jdpnao7e4yj	3	\N	\N	\N
b410c64osaf	xkyavrac3i1	2	\N	\N	\N
b410c64osaf	cm46dlsp65t	3	\N	\N	\N
b410c64osaf	jdpnao7e4yj	4	\N	\N	\N
xkyavrac3i1	xkyavrac3i1	0	f	properties	\N
fvz3km1i6ms	xkyavrac3i1	1	\N	\N	1
6fy9l9kloul	6fy9l9kloul	0	f	properties	\N
x3ls6jq4ldm	6fy9l9kloul	1	\N	\N	1
mxutorz6z5i	mxutorz6z5i	0	f	properties	\N
6fy9l9kloul	mxutorz6z5i	1	\N	\N	1
x3ls6jq4ldm	mxutorz6z5i	2	\N	\N	1
pde5ayqzqo1	x3ls6jq4ldm	3	\N	\N	\N
pde5ayqzqo1	6fy9l9kloul	4	\N	\N	\N
pde5ayqzqo1	mxutorz6z5i	5	\N	\N	\N
yivjshzifwl	x3ls6jq4ldm	4	\N	\N	\N
yivjshzifwl	6fy9l9kloul	5	\N	\N	\N
yivjshzifwl	mxutorz6z5i	6	\N	\N	\N
7poa6levyva	x3ls6jq4ldm	5	\N	\N	\N
7poa6levyva	6fy9l9kloul	6	\N	\N	\N
7poa6levyva	mxutorz6z5i	7	\N	\N	\N
fe7kgdo55ax	x3ls6jq4ldm	6	\N	\N	\N
fe7kgdo55ax	6fy9l9kloul	7	\N	\N	\N
fe7kgdo55ax	mxutorz6z5i	8	\N	\N	\N
hmft2ujv1uf	x3ls6jq4ldm	7	\N	\N	\N
hmft2ujv1uf	6fy9l9kloul	8	\N	\N	\N
hmft2ujv1uf	mxutorz6z5i	9	\N	\N	\N
nocobase-admin-menu	x3ls6jq4ldm	8	\N	\N	\N
nocobase-admin-menu	6fy9l9kloul	9	\N	\N	\N
nocobase-admin-menu	mxutorz6z5i	10	\N	\N	\N
fvz3km1i6ms	6fy9l9kloul	2	\N	\N	\N
fvz3km1i6ms	mxutorz6z5i	3	\N	\N	\N
b410c64osaf	x3ls6jq4ldm	2	\N	\N	\N
b410c64osaf	6fy9l9kloul	3	\N	\N	\N
rnko20ymzdm	rnko20ymzdm	0	f	properties	\N
52h8j6knyh0	rnko20ymzdm	1	\N	\N	1
f70h0f0jiha	f70h0f0jiha	0	f	properties	\N
52h8j6knyh0	f70h0f0jiha	1	\N	\N	2
0f0yp3ro5dp	0f0yp3ro5dp	0	f	properties	\N
f70h0f0jiha	0f0yp3ro5dp	1	\N	\N	1
52h8j6knyh0	0f0yp3ro5dp	2	\N	\N	1
ugkql0r3ggt	ugkql0r3ggt	0	f	properties	\N
0f0yp3ro5dp	ugkql0r3ggt	1	\N	\N	1
f70h0f0jiha	ugkql0r3ggt	2	\N	\N	1
52h8j6knyh0	ugkql0r3ggt	3	\N	\N	1
a61oc4tl7m1	a61oc4tl7m1	0	f	properties	\N
0f0yp3ro5dp	a61oc4tl7m1	1	\N	\N	2
f70h0f0jiha	a61oc4tl7m1	2	\N	\N	2
52h8j6knyh0	a61oc4tl7m1	3	\N	\N	2
7poa6levyva	f8feuhfiywv	1	\N	\N	22
fe7kgdo55ax	f8feuhfiywv	2	\N	\N	\N
hmft2ujv1uf	f8feuhfiywv	3	\N	\N	\N
nocobase-admin-menu	f8feuhfiywv	4	\N	\N	\N
f8feuhfiywv	f8feuhfiywv	0	f	properties	\N
5v81x55p2nk	rnko20ymzdm	2	\N	\N	\N
5v81x55p2nk	f70h0f0jiha	2	\N	\N	\N
5v81x55p2nk	0f0yp3ro5dp	3	\N	\N	\N
5v81x55p2nk	ugkql0r3ggt	4	\N	\N	\N
5v81x55p2nk	a61oc4tl7m1	4	\N	\N	\N
52h8j6knyh0	52h8j6knyh0	0	f	properties	\N
5v81x55p2nk	52h8j6knyh0	1	\N	\N	1
9bxpugcgkui	52h8j6knyh0	2	\N	\N	\N
9bxpugcgkui	rnko20ymzdm	3	\N	\N	\N
9bxpugcgkui	f70h0f0jiha	3	\N	\N	\N
9bxpugcgkui	0f0yp3ro5dp	4	\N	\N	\N
9bxpugcgkui	ugkql0r3ggt	5	\N	\N	\N
9bxpugcgkui	a61oc4tl7m1	5	\N	\N	\N
7poa6levyva	5v81x55p2nk	2	\N	\N	\N
7poa6levyva	52h8j6knyh0	3	\N	\N	\N
7poa6levyva	rnko20ymzdm	4	\N	\N	\N
7poa6levyva	f70h0f0jiha	4	\N	\N	\N
7poa6levyva	0f0yp3ro5dp	5	\N	\N	\N
7poa6levyva	ugkql0r3ggt	6	\N	\N	\N
7poa6levyva	a61oc4tl7m1	6	\N	\N	\N
fe7kgdo55ax	5v81x55p2nk	3	\N	\N	\N
fe7kgdo55ax	52h8j6knyh0	4	\N	\N	\N
fe7kgdo55ax	rnko20ymzdm	5	\N	\N	\N
fe7kgdo55ax	f70h0f0jiha	5	\N	\N	\N
fe7kgdo55ax	0f0yp3ro5dp	6	\N	\N	\N
fe7kgdo55ax	ugkql0r3ggt	7	\N	\N	\N
fe7kgdo55ax	a61oc4tl7m1	7	\N	\N	\N
hmft2ujv1uf	5v81x55p2nk	4	\N	\N	\N
hmft2ujv1uf	52h8j6knyh0	5	\N	\N	\N
hmft2ujv1uf	rnko20ymzdm	6	\N	\N	\N
hmft2ujv1uf	f70h0f0jiha	6	\N	\N	\N
hmft2ujv1uf	0f0yp3ro5dp	7	\N	\N	\N
hmft2ujv1uf	ugkql0r3ggt	8	\N	\N	\N
hmft2ujv1uf	a61oc4tl7m1	8	\N	\N	\N
nocobase-admin-menu	5v81x55p2nk	5	\N	\N	\N
nocobase-admin-menu	52h8j6knyh0	6	\N	\N	\N
nocobase-admin-menu	rnko20ymzdm	7	\N	\N	\N
nocobase-admin-menu	f70h0f0jiha	7	\N	\N	\N
nocobase-admin-menu	0f0yp3ro5dp	8	\N	\N	\N
nocobase-admin-menu	ugkql0r3ggt	9	\N	\N	\N
nocobase-admin-menu	a61oc4tl7m1	9	\N	\N	\N
5v81x55p2nk	5v81x55p2nk	0	f	properties	\N
9bxpugcgkui	5v81x55p2nk	1	\N	\N	2
am9f5xsj7ms	am9f5xsj7ms	0	f	properties	\N
x4src7kopyo	am9f5xsj7ms	1	\N	\N	1
j9dtajdmaoa	j9dtajdmaoa	0	f	properties	\N
am9f5xsj7ms	j9dtajdmaoa	1	\N	\N	1
x4src7kopyo	j9dtajdmaoa	2	\N	\N	1
ugkql0r3ggt	am9f5xsj7ms	2	\N	\N	\N
ugkql0r3ggt	j9dtajdmaoa	3	\N	\N	\N
0f0yp3ro5dp	x4src7kopyo	2	\N	\N	\N
0f0yp3ro5dp	am9f5xsj7ms	3	\N	\N	\N
0f0yp3ro5dp	j9dtajdmaoa	4	\N	\N	\N
f70h0f0jiha	x4src7kopyo	3	\N	\N	\N
f70h0f0jiha	am9f5xsj7ms	4	\N	\N	\N
f70h0f0jiha	j9dtajdmaoa	5	\N	\N	\N
52h8j6knyh0	x4src7kopyo	4	\N	\N	\N
52h8j6knyh0	am9f5xsj7ms	5	\N	\N	\N
52h8j6knyh0	j9dtajdmaoa	6	\N	\N	\N
5v81x55p2nk	x4src7kopyo	5	\N	\N	\N
5v81x55p2nk	am9f5xsj7ms	6	\N	\N	\N
5v81x55p2nk	j9dtajdmaoa	7	\N	\N	\N
9bxpugcgkui	x4src7kopyo	6	\N	\N	\N
9bxpugcgkui	am9f5xsj7ms	7	\N	\N	\N
9bxpugcgkui	j9dtajdmaoa	8	\N	\N	\N
7poa6levyva	x4src7kopyo	7	\N	\N	\N
7poa6levyva	am9f5xsj7ms	8	\N	\N	\N
7poa6levyva	j9dtajdmaoa	9	\N	\N	\N
fe7kgdo55ax	x4src7kopyo	8	\N	\N	\N
fe7kgdo55ax	am9f5xsj7ms	9	\N	\N	\N
fe7kgdo55ax	j9dtajdmaoa	10	\N	\N	\N
hmft2ujv1uf	x4src7kopyo	9	\N	\N	\N
hmft2ujv1uf	am9f5xsj7ms	10	\N	\N	\N
hmft2ujv1uf	j9dtajdmaoa	11	\N	\N	\N
nocobase-admin-menu	x4src7kopyo	10	\N	\N	\N
nocobase-admin-menu	am9f5xsj7ms	11	\N	\N	\N
nocobase-admin-menu	j9dtajdmaoa	12	\N	\N	\N
x4src7kopyo	x4src7kopyo	0	f	properties	\N
ugkql0r3ggt	x4src7kopyo	1	\N	\N	1
0f0yp3ro5dp	l8by3cc8sei	2	\N	\N	\N
f70h0f0jiha	l8by3cc8sei	3	\N	\N	\N
52h8j6knyh0	l8by3cc8sei	4	\N	\N	\N
5v81x55p2nk	l8by3cc8sei	5	\N	\N	\N
9bxpugcgkui	l8by3cc8sei	6	\N	\N	\N
7poa6levyva	l8by3cc8sei	7	\N	\N	\N
fe7kgdo55ax	l8by3cc8sei	8	\N	\N	\N
l8by3cc8sei	l8by3cc8sei	0	f	properties	\N
ugkql0r3ggt	l8by3cc8sei	1	\N	\N	2
ge2jd4uyinh	ge2jd4uyinh	0	f	properties	\N
hmft2ujv1uf	l8by3cc8sei	9	\N	\N	\N
nocobase-admin-menu	l8by3cc8sei	10	\N	\N	\N
q3szmzf1eqa	q3szmzf1eqa	0	f	properties	\N
ugkql0r3ggt	q3szmzf1eqa	1	\N	\N	4
b410c64osaf	mxutorz6z5i	4	\N	\N	\N
0f0yp3ro5dp	7guv5eckse5	2	\N	\N	\N
f70h0f0jiha	7guv5eckse5	3	\N	\N	\N
52h8j6knyh0	7guv5eckse5	4	\N	\N	\N
5v81x55p2nk	7guv5eckse5	5	\N	\N	\N
9bxpugcgkui	7guv5eckse5	6	\N	\N	\N
7poa6levyva	7guv5eckse5	7	\N	\N	\N
fe7kgdo55ax	7guv5eckse5	8	\N	\N	\N
hmft2ujv1uf	7guv5eckse5	9	\N	\N	\N
nocobase-admin-menu	7guv5eckse5	10	\N	\N	\N
7guv5eckse5	7guv5eckse5	0	f	properties	\N
ugkql0r3ggt	7guv5eckse5	1	\N	\N	3
0f0yp3ro5dp	q3szmzf1eqa	2	\N	\N	\N
f70h0f0jiha	q3szmzf1eqa	3	\N	\N	\N
52h8j6knyh0	q3szmzf1eqa	4	\N	\N	\N
5v81x55p2nk	q3szmzf1eqa	5	\N	\N	\N
9bxpugcgkui	q3szmzf1eqa	6	\N	\N	\N
7poa6levyva	q3szmzf1eqa	7	\N	\N	\N
fe7kgdo55ax	q3szmzf1eqa	8	\N	\N	\N
hmft2ujv1uf	q3szmzf1eqa	9	\N	\N	\N
nocobase-admin-menu	q3szmzf1eqa	10	\N	\N	\N
w75rqpzvfdq	w75rqpzvfdq	0	f	properties	\N
pxsyhrbz249	ge2jd4uyinh	1	\N	\N	1
ugkql0r3ggt	pxsyhrbz249	2	\N	\N	\N
ugkql0r3ggt	ge2jd4uyinh	3	\N	\N	\N
x4src7kopyo	ge2jd4uyinh	2	\N	\N	\N
0f0yp3ro5dp	pxsyhrbz249	3	\N	\N	\N
0f0yp3ro5dp	ge2jd4uyinh	4	\N	\N	\N
f70h0f0jiha	pxsyhrbz249	4	\N	\N	\N
f70h0f0jiha	ge2jd4uyinh	5	\N	\N	\N
52h8j6knyh0	pxsyhrbz249	5	\N	\N	\N
52h8j6knyh0	ge2jd4uyinh	6	\N	\N	\N
5v81x55p2nk	pxsyhrbz249	6	\N	\N	\N
5v81x55p2nk	ge2jd4uyinh	7	\N	\N	\N
9bxpugcgkui	pxsyhrbz249	7	\N	\N	\N
9bxpugcgkui	ge2jd4uyinh	8	\N	\N	\N
7poa6levyva	pxsyhrbz249	8	\N	\N	\N
7poa6levyva	ge2jd4uyinh	9	\N	\N	\N
fe7kgdo55ax	pxsyhrbz249	9	\N	\N	\N
fe7kgdo55ax	ge2jd4uyinh	10	\N	\N	\N
hmft2ujv1uf	pxsyhrbz249	10	\N	\N	\N
hmft2ujv1uf	ge2jd4uyinh	11	\N	\N	\N
nocobase-admin-menu	pxsyhrbz249	11	\N	\N	\N
nocobase-admin-menu	ge2jd4uyinh	12	\N	\N	\N
pxsyhrbz249	pxsyhrbz249	0	f	properties	\N
x4src7kopyo	pxsyhrbz249	1	\N	\N	2
68fxhhuy71v	68fxhhuy71v	0	f	properties	\N
iipcd9rycsd	iipcd9rycsd	0	f	properties	\N
w75rqpzvfdq	68fxhhuy71v	1	\N	\N	1
ugkql0r3ggt	w75rqpzvfdq	2	\N	\N	\N
ugkql0r3ggt	68fxhhuy71v	3	\N	\N	\N
x4src7kopyo	68fxhhuy71v	2	\N	\N	\N
0f0yp3ro5dp	w75rqpzvfdq	3	\N	\N	\N
0f0yp3ro5dp	68fxhhuy71v	4	\N	\N	\N
f70h0f0jiha	w75rqpzvfdq	4	\N	\N	\N
f70h0f0jiha	68fxhhuy71v	5	\N	\N	\N
52h8j6knyh0	w75rqpzvfdq	5	\N	\N	\N
52h8j6knyh0	68fxhhuy71v	6	\N	\N	\N
5v81x55p2nk	w75rqpzvfdq	6	\N	\N	\N
5v81x55p2nk	68fxhhuy71v	7	\N	\N	\N
9bxpugcgkui	w75rqpzvfdq	7	\N	\N	\N
9bxpugcgkui	68fxhhuy71v	8	\N	\N	\N
7poa6levyva	w75rqpzvfdq	8	\N	\N	\N
7poa6levyva	68fxhhuy71v	9	\N	\N	\N
x4src7kopyo	w75rqpzvfdq	1	\N	\N	3
fe7kgdo55ax	w75rqpzvfdq	9	\N	\N	\N
fe7kgdo55ax	68fxhhuy71v	10	\N	\N	\N
hmft2ujv1uf	w75rqpzvfdq	10	\N	\N	\N
hmft2ujv1uf	68fxhhuy71v	11	\N	\N	\N
nocobase-admin-menu	w75rqpzvfdq	11	\N	\N	\N
nocobase-admin-menu	68fxhhuy71v	12	\N	\N	\N
1w4nstqxr2n	iipcd9rycsd	1	\N	\N	1
ugkql0r3ggt	1w4nstqxr2n	2	\N	\N	\N
ugkql0r3ggt	iipcd9rycsd	3	\N	\N	\N
x4src7kopyo	iipcd9rycsd	2	\N	\N	\N
0f0yp3ro5dp	1w4nstqxr2n	3	\N	\N	\N
0f0yp3ro5dp	iipcd9rycsd	4	\N	\N	\N
f70h0f0jiha	1w4nstqxr2n	4	\N	\N	\N
f70h0f0jiha	iipcd9rycsd	5	\N	\N	\N
52h8j6knyh0	1w4nstqxr2n	5	\N	\N	\N
52h8j6knyh0	iipcd9rycsd	6	\N	\N	\N
5v81x55p2nk	1w4nstqxr2n	6	\N	\N	\N
5v81x55p2nk	iipcd9rycsd	7	\N	\N	\N
9bxpugcgkui	1w4nstqxr2n	7	\N	\N	\N
9bxpugcgkui	iipcd9rycsd	8	\N	\N	\N
7poa6levyva	1w4nstqxr2n	8	\N	\N	\N
7poa6levyva	iipcd9rycsd	9	\N	\N	\N
fe7kgdo55ax	1w4nstqxr2n	9	\N	\N	\N
fe7kgdo55ax	iipcd9rycsd	10	\N	\N	\N
hmft2ujv1uf	1w4nstqxr2n	10	\N	\N	\N
hmft2ujv1uf	iipcd9rycsd	11	\N	\N	\N
nocobase-admin-menu	1w4nstqxr2n	11	\N	\N	\N
nocobase-admin-menu	iipcd9rycsd	12	\N	\N	\N
1w4nstqxr2n	1w4nstqxr2n	0	f	properties	\N
x4src7kopyo	1w4nstqxr2n	1	\N	\N	4
\.


--
-- TOC entry 3968 (class 0 OID 316461)
-- Dependencies: 292
-- Data for Name: uiSchemas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."uiSchemas" ("x-uid", name, schema) FROM stdin;
nocobase-admin-menu	48fcn16gcjd	{"type":"void","x-component":"Menu","x-designer":"Menu.Designer","x-initializer":"MenuItemInitializers","x-component-props":{"mode":"mix","theme":"dark","onSelect":"{{ onSelect }}","sideMenuRefScopeKey":"sideMenuRef"}}
5z0xpoxz87w	khvf9qfpcj9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Actions\\") }}","x-decorator":"TableV2.Column.ActionBar","x-component":"TableV2.Column","x-toolbar":"TableColumnSchemaToolbar","x-initializer":"table:configureItemActions","x-settings":"fieldSettings:TableColumn","x-toolbar-props":{"initializer":"table:configureItemActions"},"x-action-column":"actions","x-app-version":"1.3.52"}
8kxzcotfeb3	ejl5zw8c3lf	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"DndContext","x-component":"Space","x-component-props":{"split":"|"},"x-app-version":"1.3.52"}
ofsyyzcz0jq	9apbkoia5mm	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
fqae3xzvq38	b5v0vmg9nnz	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
9azfkzbvd2t	1ylidu4qxd1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action-props":{"skipScopeCheck":true},"x-acl-action":"projects:create","x-decorator":"FormBlockProvider","x-use-decorator-props":"useCreateFormBlockDecoratorProps","x-decorator-props":{"dataSource":"main","collection":"projects","isCusomeizeCreate":true},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:createForm","x-component":"CardItem","x-app-version":"1.3.52"}
sptin92gm5m	5hzxhcamshu	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock","x-app-version":"1.3.52"}
493pimn830r	ofnv4gt2fs2	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Transactions","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{"icon":"transactionoutlined"},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}],"x-app-version":"1.3.52"}
vs0l89adzhc	page	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page","x-app-version":"1.3.52"}
q4dinm52meb	1qna3ye7pzz	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock","x-app-version":"1.3.52"}
swxvjglsevf	hjx2crb3tn9	{"x-uid":"swxvjglsevf","name":"hjx2crb3tn9","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Funds","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{"icon":"walletoutlined"},"x-server-hooks":[{"type":"onSelfSave","method":"extractTextToLocale"}],"x-app-version":"1.3.52"}
8ko2451l30w	1w9b2n2f55t	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"FormV2","x-use-component-props":"useCreateFormBlockProps","x-app-version":"1.3.52"}
6htbvgte0tk	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"form:configureFields","x-app-version":"1.3.52"}
q8kb3rudliu	j2mg5jr3uya	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"createForm:configureActions","x-component":"ActionBar","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.52"}
f2okp6we9r4	cd9kpxmgq2m	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
0rkqjpoxqsl	bzxu4kms79k	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
4v9tbohv1d0	name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.name","x-component-props":{},"x-app-version":"1.3.52"}
3pk8qjxsfbs	c0cghj85y1b	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
ldouqmsxpff	fzepw4w7eey	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
hmvf7nbobg9	total_amount	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.total_amount","x-component-props":{},"x-app-version":"1.3.52"}
x2xf38d0owf	i5vpms8595u	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
8wsfz8fbwev	m66ty1nkdwt	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
63aby9t5qmb	59x1x89fotc	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"All Project","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}]}
i0lnhtci4u6	page	{"x-uid":"i0lnhtci4u6","name":"page","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page","x-app-version":"1.3.52","x-component-props":{"enablePageTabs":false,"hidePageTitle":false,"disablePageHeader":false}}
oqsecaif6am	page	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page"}
e84mi71anac	construction_site	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.construction_site","x-component-props":{},"x-app-version":"1.3.52"}
mqaicqp9non	4mtqzxv1n26	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
4bi35t1c7vh	actions	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"table:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":"var(--nb-spacing)"}},"x-app-version":"1.3.52"}
44890jxlzup	gzw1nq8u65c	{"_isJSONSchemaObject":true,"version":"2.0","type":"array","x-initializer":"table:configureColumns","x-component":"TableV2","x-use-component-props":"useTableBlockProps","x-component-props":{"rowKey":"id","rowSelection":{"type":"checkbox"}},"x-app-version":"1.3.52"}
kd1zqe8fefe	21tschgc6kt	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
pa54y3l77ck	actual_expenditures	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.actual_expenditures","x-component-props":{},"x-app-version":"1.3.52"}
or37h0ojd97	0b6fbmkre71	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
6o0xla43m1w	total_amount	{"x-uid":"6o0xla43m1w","name":"total_amount","_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"projects.total_amount","x-component":"CollectionField","x-component-props":{"formatStyle":"normal","separator":"0.0,00","step":"1","addonBefore":"","addonAfter":" đ","unitConversionType":"*","unitConversion":0},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
ymry3cg3xok	target_amount	{"x-uid":"ymry3cg3xok","name":"target_amount","_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"funds.target_amount","x-component-props":{},"x-app-version":"1.3.52","required":true,"x-validator":[{"format":"integer"}]}
ijeiw8vjxy8	dibtk205vpv	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
ccyy0t4x4b1	plf5xuwed67	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
eezrjzkkyvu	84qmhn377do	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
1qnhdoz7zx7	name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"funds.name","x-component-props":{},"x-app-version":"1.3.52"}
13qbrfhlbny	yjgjhp3s47d	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock"}
b56io1plq44	aa19936x4pu	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
b8mogqkr3um	sww7kzaiy4i	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
z8rrsav5fpp	sb54uclcs0y	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
pmtq1o4ie72	construction_site	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"projects.construction_site","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
096g2sd50x7	4m1kd1iql8e	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
tahclmi8sl1	v010h3ujen7	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
16s4kortrtf	description	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"funds.description","x-component-props":{},"x-app-version":"1.3.52"}
sf8fl742bgm	lsfbypik4ea	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
4dgysxrfq7o	omfooquuzt2	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
xa635tbvi5c	9essa2vv5ov	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableBlockProvider","x-acl-action":"funds:list","x-use-decorator-props":"useTableBlockDecoratorProps","x-decorator-props":{"collection":"funds","dataSource":"main","action":"list","params":{"pageSize":20},"rowKey":"id","showIndex":true,"dragSort":false},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:table","x-component":"CardItem","x-filter-targets":[],"x-app-version":"1.3.52"}
ycrd44g95eb	wa2ojhf4k13	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
6mfoefonzd3	name	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"funds.name","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
p44o4tgbok2	jd6v83isxzv	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
qk4a3nsuk92	hp1cefpz7ki	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
gdl25xyq69l	i6xqv81a36e	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
uewsbd9z1kr	description	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"funds.description","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
m8tbcrs4z9t	4acn7v7infi	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
bwbd6lebhkb	2mz50bittc5	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
ao2a67rjlld	0bssew0g5fr	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableBlockProvider","x-acl-action":"transactions:list","x-use-decorator-props":"useTableBlockDecoratorProps","x-decorator-props":{"collection":"transactions","dataSource":"main","action":"list","params":{"pageSize":20},"rowKey":"id","showIndex":true,"dragSort":false},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:table","x-component":"CardItem","x-filter-targets":[],"x-app-version":"1.3.52"}
yc5x6qvg4mh	actions	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"table:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":"var(--nb-spacing)"}},"x-app-version":"1.3.52"}
ugc9ztt4hb4	crgy9ihxua4	{"_isJSONSchemaObject":true,"version":"2.0","type":"array","x-initializer":"table:configureColumns","x-component":"TableV2","x-use-component-props":"useTableBlockProps","x-component-props":{"rowKey":"id","rowSelection":{"type":"checkbox"}},"x-app-version":"1.3.52"}
gdup67jb4ev	target_amount	{"x-uid":"gdup67jb4ev","name":"target_amount","_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"funds.target_amount","x-component":"CollectionField","x-component-props":{"formatStyle":"normal","separator":"0 0,00","step":"1","addonAfter":" đ"},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
bzk49nzivdu	e2t8i4mcmsh	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
h0dmilgg31n	transaction_code	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"transactions.transaction_code","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
pfhb8ncb652	wooldseeqrj	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
8kgds5aufmv	amount	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"transactions.amount","x-component":"CollectionField","x-component-props":{},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
ainrki9f600	lvpg6m9pix6	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
4l7u09ydsdg	description	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"transactions.description","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
oae1g24te1h	ngouauoucj8	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
hvx8jvtqk6e	from_account_no	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"transactions.from_account_no","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
z4nqlth7kk8	m49bywjvusx	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
ct41p5st7f6	from_account_name	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"transactions.from_account_name","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
hswwx0lxpac	4ahrmihzccw	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
zwjfadzxpj5	from_bank_name	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"transactions.from_bank_name","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
s2txozhh9f0	lsdjui6pkuo	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
ealssr8e9sy	o5eri1lkbvy	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
jjs5urekma8	pd2vf8srx0d	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
hxeqe8wc2b5	user	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"transactions.user","x-component":"CollectionField","x-component-props":{"fieldNames":{"value":"id","label":"id"},"ellipsis":true,"size":"small"},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
fb0lajxibgu	xnsgniav7ba	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
se2q3viuytu	fund	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"transactions.fund","x-component":"CollectionField","x-component-props":{"fieldNames":{"value":"id","label":"id"},"ellipsis":true,"size":"small"},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
quxu2mc9wp8	l34vtwa7gun	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Filter\\") }}","x-action":"filter","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:filter","x-component":"Filter.Action","x-use-component-props":"useFilterActionProps","x-component-props":{"icon":"FilterOutlined"},"x-align":"left","x-app-version":"1.3.52"}
b1i4rvkf4kb	dei4tl4q518	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Delete\\") }}","x-action":"destroy","x-component":"Action","x-use-component-props":"useBulkDestroyActionProps","x-component-props":{"icon":"DeleteOutlined","confirm":{"title":"{{t('Delete record')}}","content":"{{t('Are you sure you want to delete it?')}}"}},"x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:bulkDelete","x-decorator":"ACLActionProvider","x-acl-action-props":{"skipScopeCheck":true},"x-action-settings":{"triggerWorkflows":[]},"x-acl-action":"funds:destroy","x-align":"right","type":"void","x-app-version":"1.3.52"}
s1cwhtqw32h	wnm64aeu1gv	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Refresh\\") }}","x-action":"refresh","x-component":"Action","x-use-component-props":"useRefreshActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:refresh","x-component-props":{"icon":"ReloadOutlined"},"x-align":"right","type":"void","x-app-version":"1.3.52"}
h7gipxths0w	bwkeoabdwja	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-action":"create","x-acl-action":"create","title":"{{t('Add new')}}","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:addNew","x-component":"Action","x-decorator":"ACLActionProvider","x-component-props":{"openMode":"drawer","type":"primary","component":"CreateRecordAction","icon":"PlusOutlined"},"x-action-context":{"dataSource":"main","collection":"funds"},"x-align":"right","x-acl-action-props":{"skipScopeCheck":true},"x-app-version":"1.3.52"}
5qlc1z95ykr	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Add record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"},"x-app-version":"1.3.52"}
201yvs0pndu	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab","x-initializer-props":{"gridInitializer":"popup:addNew:addBlock"},"x-app-version":"1.3.52"}
pyia20ca1id	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Add new\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{},"x-app-version":"1.3.52"}
ieq8aso0l50	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:addNew:addBlock","x-app-version":"1.3.52"}
kdcbf9y1icj	98u9d5j6djq	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
g8idtoqr1fo	bdcqarmmefp	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
9ayo1a8z8f1	qobvmm6yopi	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action-props":{"skipScopeCheck":true},"x-acl-action":"funds:create","x-decorator":"FormBlockProvider","x-use-decorator-props":"useCreateFormBlockDecoratorProps","x-decorator-props":{"dataSource":"main","collection":"funds"},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:createForm","x-component":"CardItem","x-app-version":"1.3.52"}
ke60pjxuu9p	5aunhq6dt8q	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"FormV2","x-use-component-props":"useCreateFormBlockProps","x-app-version":"1.3.52"}
95272w6sxpp	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"form:configureFields","x-app-version":"1.3.52"}
kzelz9rby9p	8lm4hxu85od	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"createForm:configureActions","x-component":"ActionBar","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.52"}
u2jpfjneg59	6anltzicmaz	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
tmd3tr2ug71	qep4egkbv3n	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
i41kv6nughv	name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"funds.name","x-component-props":{},"x-app-version":"1.3.52"}
rmad1x9kyzg	lg1zbezdgac	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
d6p3jlzlzul	9hbsezj18xw	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
fvd5i7hod1p	target_amount	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"funds.target_amount","x-component-props":{},"x-app-version":"1.3.52"}
n3l4en2z9cr	fiogd3avyz3	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
ffa1o1vwibc	nj8tbudh7fm	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
zocsd5mcji4	current_amount	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"funds.current_amount","x-component-props":{},"x-app-version":"1.3.52"}
cik9oe1yhz2	12w7l9pakmg	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
a9s5surx189	8o5a3mikw5h	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
z150jbdrf5z	description	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"funds.description","x-component-props":{},"x-app-version":"1.3.52"}
ier7nfy9ohr	8x3xtr0kj4w	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
ihbsljjbzpc	9p81zb2xqto	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
axen9h3vgvx	project_id	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"funds.project_id","x-component-props":{},"x-app-version":"1.3.52"}
pvnx4ocbmqu	kcwndbw0b0h	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Submit\\") }}","x-action":"submit","x-component":"Action","x-use-component-props":"useCreateActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:createSubmit","x-component-props":{"type":"primary","htmlType":"submit"},"x-action-settings":{"triggerWorkflows":[]},"type":"void","x-app-version":"1.3.52"}
tjanawnnfnl	1kp6tm8qowq	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Submit\\") }}","x-action":"submit","x-component":"Action","x-use-component-props":"useUpdateActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:updateSubmit","x-component-props":{"type":"primary","htmlType":"submit"},"x-action-settings":{"triggerWorkflows":[]},"type":"void","x-app-version":"1.3.52"}
wow0bz8vt48	e601nyxqfhc	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Submit\\") }}","x-action":"submit","x-component":"Action","x-use-component-props":"useCreateActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:createSubmit","x-component-props":{"type":"primary","htmlType":"submit"},"x-action-settings":{"triggerWorkflows":[]},"type":"void","x-app-version":"1.3.52"}
ozzmhtdpth4	1fr3zb83m2b	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableBlockProvider","x-acl-action":"projects:list","x-use-decorator-props":"useTableBlockDecoratorProps","x-decorator-props":{"collection":"projects","dataSource":"main","action":"list","params":{"pageSize":20},"rowKey":"id","showIndex":true,"dragSort":false},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:table","x-component":"CardItem","x-filter-targets":[],"x-app-version":"1.3.52"}
sioow55xwz6	actions	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"table:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":"var(--nb-spacing)"}},"x-app-version":"1.3.52"}
o9klwv4nzei	e342huvbzgr	{"_isJSONSchemaObject":true,"version":"2.0","type":"array","x-initializer":"table:configureColumns","x-component":"TableV2","x-use-component-props":"useTableBlockProps","x-component-props":{"rowKey":"id","rowSelection":{"type":"checkbox"}},"x-app-version":"1.3.52"}
dv1xjwdmvcg	hqrmmrjsh20	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
llct24nw1vt	3cnuo63tb8o	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
tg2hn64ei8t	uasqyx5oqd7	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Actions\\") }}","x-decorator":"TableV2.Column.ActionBar","x-component":"TableV2.Column","x-toolbar":"TableColumnSchemaToolbar","x-initializer":"table:configureItemActions","x-settings":"fieldSettings:TableColumn","x-toolbar-props":{"initializer":"table:configureItemActions"},"x-action-column":"actions","x-app-version":"1.3.52"}
w4ciktesp5j	fx71zh7006b	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"DndContext","x-component":"Space","x-component-props":{"split":"|"},"x-app-version":"1.3.52"}
zwh6db27axk	tab1	{"x-uid":"zwh6db27axk","name":"tab1","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Donate","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{}}
ylyr9dd0a50	e1hh5wk5mgy	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Edit\\") }}","x-action":"update","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:edit","x-component":"Action.Link","x-component-props":{"openMode":"drawer","icon":"EditOutlined"},"x-action-context":{"dataSource":"main","collection":"funds"},"x-decorator":"ACLActionProvider","x-designer-props":{"linkageAction":true}}
r3e9s9hvz53	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Edit record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"}}
46p5wcng6sm	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab"}
a62axznlu5x	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Edit\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{}}
ndgk36ztoyy	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:common:addBlock"}
1dvfg1afm18	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"View record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"}}
5b0fu481dm6	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab"}
1cnwu64uyw3	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:common:addBlock"}
0jpwramwssw	is_deleted	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","title":"Is Deleted","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"AssignedField","x-decorator":"FormItem","x-collection-field":"projects.is_deleted","x-app-version":"1.3.52"}
q3rv0rnfki7	lgy2ig5idii	{"x-uid":"q3rv0rnfki7","name":"lgy2ig5idii","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Donate","x-action":"view","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:view","x-component":"Action.Link","x-component-props":{"openMode":"modal","iconColor":"#1677FF","danger":false,"openSize":"large"},"x-action-context":{"dataSource":"main","collection":"funds"},"x-decorator":"ACLActionProvider","x-designer-props":{"linkageAction":true}}
n6clrt61fg7	current_amount	{"x-uid":"n6clrt61fg7","name":"current_amount","_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"funds.current_amount","x-component":"CollectionField","x-component-props":{"formatStyle":"normal","separator":"0 0,00","step":"1","addonAfter":" đ"},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
ia5t1r0r4sd	qyz8ao1g4v3	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Delete\\") }}","x-action":"destroy","x-component":"Action","x-use-component-props":"useBulkDestroyActionProps","x-component-props":{"icon":"DeleteOutlined","confirm":{"title":"{{t('Delete record')}}","content":"{{t('Are you sure you want to delete it?')}}"}},"x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:bulkDelete","x-decorator":"ACLActionProvider","x-acl-action-props":{"skipScopeCheck":true},"x-action-settings":{"triggerWorkflows":[]},"x-acl-action":"transactions:destroy","x-align":"right","type":"void","x-app-version":"1.3.52"}
eedm4y5z08l	0e1pt8wb9cq	{"x-uid":"eedm4y5z08l","name":"0e1pt8wb9cq","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52","x-component-props":{"sorter":true}}
lo3cfi2mnr8	s3c1j5iduds	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Delete\\") }}","x-action":"destroy","x-component":"Action","x-use-component-props":"useBulkDestroyActionProps","x-component-props":{"icon":"DeleteOutlined","confirm":{"title":"{{t('Delete record')}}","content":"{{t('Are you sure you want to delete it?')}}"}},"x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:bulkDelete","x-decorator":"ACLActionProvider","x-acl-action-props":{"skipScopeCheck":true},"x-action-settings":{"triggerWorkflows":[]},"x-acl-action":"proposes:destroy","x-align":"right","type":"void","x-app-version":"1.3.52"}
u4bsei62yq1	0v8vxz7amo6	{"x-uid":"u4bsei62yq1","name":"0v8vxz7amo6","_isJSONSchemaObject":true,"version":"2.0","title":"Complete","x-action":"refresh","x-component":"Action","x-use-component-props":"useRefreshActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:refresh","x-component-props":{"icon":"checkoutlined","iconColor":"#1677FF","danger":false,"type":"default","confirm":{}},"x-align":"right","type":"void","x-app-version":"1.3.52"}
9bwzzp890dg	k3k816swj55	{"x-uid":"9bwzzp890dg","name":"k3k816swj55","_isJSONSchemaObject":true,"version":"2.0","title":"Delete","x-component":"Action.Link","x-use-component-props":"useCustomizeUpdateActionProps","x-action":"customize:update","x-decorator":"ACLActionProvider","x-acl-action":"update","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:updateRecord","x-action-settings":{"assignedValues":{"is_deleted":1},"onSuccess":{"manualClose":false,"redirecting":false,"successMessage":"{{t(\\"Delete successfully\\")}}"},"triggerWorkflows":[],"schemaUid":"netkmp5tosm"},"x-designer-props":{"linkageAction":true},"type":"void","x-component-props":{"iconColor":"#1677FF","danger":false,"confirm":{"title":"Perform the {{title}}","content":"Are you sure you want to perform the {{title}} action?"}},"x-linkage-rules":[{"condition":{"$and":[{"fund_id":{"current_amount":{"$eq":0}}},{"is_deleted":{"$eq":0}}]},"actions":[]}]}
mwrnryoju9y	32hxjugshmx	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Projects","x-component":"Menu.SubMenu","x-decorator":"ACLMenuItemProvider","x-component-props":{"icon":"fundprojectionscreenoutlined"},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}],"x-app-version":"1.3.52"}
juw6e13fsr0	oeoc263ovz9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
uy1ulbd1nwj	zn9kx8hpg0h	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
a0bovbqnxzj	eywakn05a9z	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-editable":false,"x-decorator":"FormItem","x-decorator-props":{"engine":"handlebars"},"x-toolbar":"FormItemSchemaToolbar","x-settings":"blockSettings:markdown","x-component":"Markdown.Void","x-component-props":{"content":"{{t(\\"This is a demo text, **supports Markdown syntax**.\\")}}"},"x-app-version":"1.3.52"}
3cjgaszqe4s	59ows0evr3m	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
7fjcdlzesft	name	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"projects.name","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
u62y9zt7gwu	gatcfte56ai	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-action":"create","x-acl-action":"create","title":"{{t('Add new')}}","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:addNew","x-component":"Action","x-decorator":"ACLActionProvider","x-component-props":{"openMode":"drawer","type":"primary","component":"CreateRecordAction","icon":"PlusOutlined"},"x-action-context":{"dataSource":"main","collection":"transactions"},"x-align":"right","x-acl-action-props":{"skipScopeCheck":true},"x-app-version":"1.3.52"}
ypqs0x71ybe	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Add record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"},"x-app-version":"1.3.52"}
b4vqfssnx0n	nr3mj3clc4h	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
k99w3v09n98	01azxtyuhdz	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Detail","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{},"x-app-version":"1.3.52"}
ifzzkj7loaj	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:common:addBlock","x-app-version":"1.3.52"}
wsafpwbqr88	lgjqxy2k16o	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
jfqsx79zobd	s5q11gjtgxl	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
66lgu9id6bj	wxk4p5z3yug	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action":"proposes:get","x-decorator":"DetailsBlockProvider","x-use-decorator-props":"useDetailsDecoratorProps","x-decorator-props":{"dataSource":"main","collection":"proposes","readPretty":true,"action":"get"},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:details","x-component":"CardItem","x-app-version":"1.3.52"}
8t2c5f2jjl9	j1bpn8gn2xb	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Details","x-read-pretty":true,"x-use-component-props":"useDetailsProps","x-app-version":"1.3.52"}
70d6z1b7lwj	s66vuexnmj0	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
odogwwfdotc	9exndg5sc69	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"details:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":24}},"x-app-version":"1.3.52"}
oj491oo69he	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"details:configureFields","x-app-version":"1.3.52"}
zxkfxhzh2gm	yxfyxwqeo2i	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
lqjukoezd9x	name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.name","x-component-props":{},"x-app-version":"1.3.52"}
nzd7m9vow2n	user_id	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.user_id","x-component-props":{},"x-app-version":"1.3.52"}
bt4zbtd0av4	7w2ckj60c13	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
1t1bel9ufqz	kp9xrpg4wlh	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
3nhe9kyydb1	ewnuqrapz5v	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action-props":{"skipScopeCheck":false},"x-acl-action":"proposes:update","x-decorator":"FormBlockProvider","x-use-decorator-props":"useEditFormBlockDecoratorProps","x-decorator-props":{"action":"get","dataSource":"main","collection":"proposes"},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:editForm","x-component":"CardItem","x-app-version":"1.3.52"}
477zuqkignt	zqpomug9bmb	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Filter\\") }}","x-action":"filter","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:filter","x-component":"Filter.Action","x-use-component-props":"useFilterActionProps","x-component-props":{"icon":"FilterOutlined"},"x-align":"left","x-app-version":"1.3.52"}
0oc8hgh9w2v	3z7qpnrl5ai	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Delete\\") }}","x-action":"destroy","x-component":"Action","x-use-component-props":"useBulkDestroyActionProps","x-component-props":{"icon":"DeleteOutlined","confirm":{"title":"{{t('Delete record')}}","content":"{{t('Are you sure you want to delete it?')}}"}},"x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:bulkDelete","x-decorator":"ACLActionProvider","x-acl-action-props":{"skipScopeCheck":true},"x-action-settings":{"triggerWorkflows":[]},"x-acl-action":"projects:destroy","x-align":"right","type":"void","x-app-version":"1.3.52"}
n6ymieugvwp	dd45hwbkgog	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Refresh\\") }}","x-action":"refresh","x-component":"Action","x-use-component-props":"useRefreshActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:refresh","x-component-props":{"icon":"ReloadOutlined"},"x-align":"right","type":"void","x-app-version":"1.3.52"}
b3d6kcz2ih3	ci2amyam5fs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-action":"create","x-acl-action":"create","title":"{{t('Add new')}}","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:addNew","x-component":"Action","x-decorator":"ACLActionProvider","x-component-props":{"openMode":"drawer","type":"primary","component":"CreateRecordAction","icon":"PlusOutlined"},"x-action-context":{"dataSource":"main","collection":"projects"},"x-align":"right","x-acl-action-props":{"skipScopeCheck":true},"x-app-version":"1.3.52"}
mwjoqz5w6cn	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Add record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"},"x-app-version":"1.3.52"}
08elwnxsu63	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab","x-initializer-props":{"gridInitializer":"popup:addNew:addBlock"},"x-app-version":"1.3.52"}
bws6e7i5xki	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Add new\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{},"x-app-version":"1.3.52"}
3i3tciuj9cf	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:addNew:addBlock","x-app-version":"1.3.52"}
lmp1irsvgom	7yxthrgbiuu	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"FormV2","x-use-component-props":"useEditFormBlockProps","x-app-version":"1.3.52"}
7x6oyetmotw	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"form:configureFields","x-app-version":"1.3.52"}
vieqoc3iqo8	ndj5ha26p8y	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"editForm:configureActions","x-component":"ActionBar","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.52"}
kjig4l36dxf	rf2b4mueaaz	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Detail","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{},"x-app-version":"1.3.52"}
qlc8gbizzyo	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:common:addBlock","x-app-version":"1.3.52"}
y05digxvovk	jc3gpeoe1y3	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
ys27uzlmxsy	o7x8133uc89	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
dd1t7s27fl2	l6h4ycq88bu	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
juylvd7o6f1	yerffh4dwyb	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action":"funds:get","x-decorator":"DetailsBlockProvider","x-use-decorator-props":"useDetailsDecoratorProps","x-decorator-props":{"dataSource":"main","collection":"funds","readPretty":true,"action":"get"},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:details","x-component":"CardItem","x-app-version":"1.3.52"}
rl4zzyovnti	umhow9bfjld	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Details","x-read-pretty":true,"x-use-component-props":"useDetailsProps","x-app-version":"1.3.52"}
79bhmhhhbpw	710c6qh7ycg	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"details:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":24}},"x-app-version":"1.3.52"}
w2vajpu7d09	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"details:configureFields","x-app-version":"1.3.52"}
o4sv4g52p6d	57ermxieplf	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
vvv2g0wrw0w	description	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.description","x-component-props":{},"x-app-version":"1.3.52"}
m0w82up0q8s	daousyatcad	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
pgsd6vdilnn	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab","x-initializer-props":{"gridInitializer":"popup:addNew:addBlock"},"x-app-version":"1.3.52"}
mexjj7b1g93	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Add new\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{},"x-app-version":"1.3.52"}
qkanxqd13dl	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:addNew:addBlock","x-app-version":"1.3.52"}
3fffemef0cp	s91xsg1k1xy	{"x-uid":"3fffemef0cp","name":"s91xsg1k1xy","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableBlockProvider","x-acl-action":"transactions:list","x-use-decorator-props":"useTableBlockDecoratorProps","x-decorator-props":{"collection":"transactions","dataSource":"main","action":"list","params":{"pageSize":10},"rowKey":"id","showIndex":true,"dragSort":true},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:table","x-component":"CardItem","x-filter-targets":[],"x-app-version":"1.3.52","x-component-props":{"heightMode":"specifyValue","height":400}}
we414l1saan	hduyt89cmxx	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Proposes","x-component":"Menu.SubMenu","x-decorator":"ACLMenuItemProvider","x-component-props":{},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}],"x-app-version":"1.3.52"}
2pij3wiepc4	for1hq80t0m	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"All Propose","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}]}
8xvbgh18zfk	page	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page"}
llvsctq28hp	jmo8zwaoazt	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock"}
z02388u42s9	k3eb6uxddvc	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
w149la0utnx	55voaoaab8b	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
jiq42lrek0j	6hwm3fr3k7e	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableBlockProvider","x-acl-action":"proposes:list","x-use-decorator-props":"useTableBlockDecoratorProps","x-decorator-props":{"collection":"proposes","dataSource":"main","action":"list","params":{"pageSize":20},"rowKey":"id","showIndex":true,"dragSort":false},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:table","x-component":"CardItem","x-filter-targets":[],"x-app-version":"1.3.52"}
c6mpmcq8sh2	actions	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"table:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":"var(--nb-spacing)"}},"x-app-version":"1.3.52"}
6o5do9pffgb	construction_site	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.construction_site","x-component-props":{},"x-app-version":"1.3.52"}
omrj7itu5zh	sxd5xzef9lz	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
q62uhq5ae4j	ndz6cul7aah	{"x-uid":"q62uhq5ae4j","name":"ndz6cul7aah","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52","x-component-props":{"width":"50.46"}}
ofj1wcu4xrm	status	{"x-uid":"ofj1wcu4xrm","name":"status","_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.status","x-component-props":{"style":{"width":"100%"}},"x-app-version":"1.3.52","x-decorator-props":{"showTitle":true}}
iv85lfibly6	7tex6sje0ex	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
bmvfdpfnwm7	qo225i2ktfy	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
44xfv2htpp8	name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"funds.name","x-component-props":{},"x-app-version":"1.3.52"}
exawjrxxnyl	96ehwc5tzbx	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
4gnesuyiq9w	actions	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"table:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":"var(--nb-spacing)"}},"x-app-version":"1.3.52"}
c5ha41uevsk	72ks6fmb82c	{"_isJSONSchemaObject":true,"version":"2.0","type":"array","x-initializer":"table:configureColumns","x-component":"TableV2","x-use-component-props":"useTableBlockProps","x-component-props":{"rowKey":"id","rowSelection":{"type":"checkbox"}},"x-app-version":"1.3.52"}
q5sp3fyrz47	w24t61b0cm9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
6e6up9qf6jw	1no126qpkl3	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
i99shgxsfzv	vvfk2rus3w5	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action-props":{"skipScopeCheck":true},"x-acl-action":"transactions:create","x-decorator":"FormBlockProvider","x-use-decorator-props":"useCreateFormBlockDecoratorProps","x-decorator-props":{"dataSource":"main","collection":"transactions"},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:createForm","x-component":"CardItem","x-app-version":"1.3.52"}
0ypbdd2x5je	ppmv4wa0coo	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"FormV2","x-use-component-props":"useCreateFormBlockProps","x-app-version":"1.3.52"}
n596xt7b4gz	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"form:configureFields","x-app-version":"1.3.52"}
vpvmqhclo5c	s8hsftruj5n	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"createForm:configureActions","x-component":"ActionBar","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.52"}
ihct2s452fk	xzovp33mqqg	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
sar3oe26nhy	9kzbft37198	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
sbqwil5ak06	g96nlttke53	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
dpybyp9mp99	name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.name","x-component-props":{},"x-app-version":"1.3.52"}
63gg7k4it9i	za68gz7n6ii	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
cstsfoq8ikx	suquwdgm1uc	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
nm1chep0bne	zv2ptb9377i	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
jp7lvat0n6v	transaction_code	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.transaction_code","x-component-props":{},"x-app-version":"1.3.52"}
tmd80idiv6m	dygdg74wmzn	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
6b8gvniyido	nlkt42wtkjf	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
scwpkth7he2	amount	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.amount","x-component-props":{},"x-app-version":"1.3.52"}
x9r1x9f3ap1	x7iker4jouu	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
ozcyb4ilthn	from_account_no	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.from_account_no","x-component-props":{},"x-app-version":"1.3.52"}
nk5ihe0ofrc	wgu0ykz8key	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
fewsuwh96j5	9zrzso4ibcg	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
1o4mazo8kd0	description	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.description","x-component-props":{},"x-app-version":"1.3.52"}
nxd1qkr7fcc	ilupjzsmpnj	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
9y2lst1ttb7	fh1elv50m48	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
e0m6mgk2io2	from_account_name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.from_account_name","x-component-props":{},"x-app-version":"1.3.52"}
7lo8pf0a9b2	5q3eptbsvfc	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
mt66jgcipr7	b5g0ggo40fj	{"x-uid":"mt66jgcipr7","name":"b5g0ggo40fj","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52","x-component-props":{"width":50}}
nrcje3g1v32	2ilphy4klwn	{"x-uid":"nrcje3g1v32","name":"2ilphy4klwn","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-component-props":{"width":"35.71"}}
baejb3hqiri	col_4ef2qerhuyt	{"x-uid":"baejb3hqiri","name":"col_4ef2qerhuyt","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-index":1,"x-component-props":{"width":"63.80"}}
a34yf2mk2rl	9ihzvpqiais	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
opdt2fve9yc	target_amount	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"funds.target_amount","x-component-props":{},"x-app-version":"1.3.52"}
v8pm38ygyj6	rce6rzoprt4	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
2iy67o2x7wb	current_amount	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"funds.current_amount","x-component-props":{},"x-app-version":"1.3.52"}
ca500qzqwpk	hm69jgichxv	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
3ziz6e0pemu	539xf3vy6da	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
n07zn4dv9k3	description	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"funds.description","x-component-props":{},"x-app-version":"1.3.52"}
w1aflb6zk5u	y1fjyqsirei	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
tbnpnb6qaq5	k70u7po6r17	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
s2n46ebz6ox	from_bank_name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.from_bank_name","x-component-props":{},"x-app-version":"1.3.52"}
darepap4yo5	y1yneaw7dlh	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Filter\\") }}","x-action":"filter","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:filter","x-component":"Filter.Action","x-use-component-props":"useFilterActionProps","x-component-props":{"icon":"FilterOutlined"},"x-align":"left","x-app-version":"1.3.52"}
v0xzwwlb3u7	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Edit record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"}}
zvja1suwswo	row_s45pdbb3vca	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-index":0}
vxyfqljr7j6	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab"}
4dhqobwleva	col_ofhyb583f77	{"x-uid":"4dhqobwleva","name":"col_ofhyb583f77","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-index":2,"x-component-props":{"width":"49.57"}}
06xh3zz9ikp	name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.name","x-component-props":{},"x-app-version":"1.3.52"}
eajx55rxxy3	1bn3vtpcelj	{"x-uid":"eajx55rxxy3","name":"1bn3vtpcelj","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Edit\\") }}","x-action":"update","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:edit","x-component":"Action.Link","x-component-props":{"openMode":"drawer","icon":"EditOutlined"},"x-action-context":{"dataSource":"main","collection":"projects"},"x-decorator":"ACLActionProvider","x-designer-props":{"linkageAction":true},"x-linkage-rules":[]}
m078f77gart	y8mczini2oc	{"x-uid":"m078f77gart","name":"y8mczini2oc","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-settings":"blockSettings:iframe","x-decorator":"BlockItem","x-decorator-props":{"name":"iframe"},"x-component":"Iframe","x-component-props":{"mode":"html","height":410,"engine":"handlebars","params":[],"url":"{{$nPopupRecord.qrCodeUrl}}","htmlId":"8411zu1034t","heightMode":"specifyValue"},"x-app-version":"1.3.52"}
7peksipcht7	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Edit\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{}}
ra6axo18rlo	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:common:addBlock"}
u2nl9by49q9	v6c22nd1q8b	{"x-uid":"u2nl9by49q9","name":"v6c22nd1q8b","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52","x-component-props":{"width":50}}
pir294lj4m7	col_u4wqmn2n2xx	{"x-uid":"pir294lj4m7","name":"col_u4wqmn2n2xx","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-index":1,"x-component-props":{"width":50}}
evsjbnt3nj9	col_ccv8v86lne0	{"x-uid":"evsjbnt3nj9","name":"col_ccv8v86lne0","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-index":1,"x-component-props":{"width":50}}
o3j0f3cycr5	nlxpbyddauk	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
7jrdbvcj410	amount	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"transactions.amount","x-component":"CollectionField","x-component-props":{},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
068ltvadyqz	user.username	{"_isJSONSchemaObject":true,"version":"2.0","x-component":"CollectionField","x-read-pretty":true,"x-collection-field":"users.username","x-component-props":{"ellipsis":true},"x-app-version":"1.3.52"}
r7obcvpr4jw	xcf5jjijoci	{"x-uid":"r7obcvpr4jw","name":"xcf5jjijoci","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52","title":"User"}
r6v5yp99nbl	hvz3z0l472s	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
v4rijabnpgp	jelli5ph393	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
zwlt9p2m4v5	user_id	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.user_id","x-component-props":{},"x-app-version":"1.3.52"}
xw2eyjxkao7	1aaec77urfj	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
ilc9ma1uakv	ky7ifn0wvzk	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
xhaimvl6v3t	fund_id	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.fund_id","x-component-props":{},"x-app-version":"1.3.52"}
nc92u2m878d	jny1nkdk994	{"_isJSONSchemaObject":true,"version":"2.0","type":"array","x-initializer":"table:configureColumns","x-component":"TableV2","x-use-component-props":"useTableBlockProps","x-component-props":{"rowKey":"id","rowSelection":{"type":"checkbox"}},"x-app-version":"1.3.52"}
q9zjnv8mc9j	actions	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Actions\\") }}","x-action-column":"actions","x-decorator":"TableV2.Column.ActionBar","x-component":"TableV2.Column","x-toolbar":"TableColumnSchemaToolbar","x-initializer":"table:configureItemActions","x-settings":"fieldSettings:TableColumn","x-toolbar-props":{"initializer":"table:configureItemActions"},"x-app-version":"1.3.52"}
t4v2kcudvg5	ugsm4niooyn	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"DndContext","x-component":"Space","x-component-props":{"split":"|"},"x-app-version":"1.3.52"}
cqmi48x5af4	uhn1vpzxq4w	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
hnaxt3uhbf5	name	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"proposes.name","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
17dq5190uui	jt80k2o2eef	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
04h4z2y4t0n	description	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"proposes.description","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
ip2da8grdsg	dxf0l9l8naq	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
pyyifyhng5d	construction_site	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"proposes.construction_site","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
jn9py3ik437	kqy6n061mbh	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
asdvjj2f2ep	821dfbdeigb	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
ff39sktd5ow	name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.name","x-component-props":{},"x-app-version":"1.3.52"}
92aku8acnew	description	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.description","x-component-props":{},"x-app-version":"1.3.52"}
qar6tcv8yiy	7oxlpaypogo	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-action":"create","x-acl-action":"create","title":"{{t('Add new')}}","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:addNew","x-component":"Action","x-decorator":"ACLActionProvider","x-component-props":{"openMode":"drawer","type":"primary","component":"CreateRecordAction","icon":"PlusOutlined"},"x-action-context":{"dataSource":"main","collection":"proposes"},"x-align":"right","x-acl-action-props":{"skipScopeCheck":true},"x-app-version":"1.3.52"}
oq8pk1fas1b	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Add record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"},"x-app-version":"1.3.52"}
5r6schkvw42	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab","x-initializer-props":{"gridInitializer":"popup:addNew:addBlock"},"x-app-version":"1.3.52"}
14ah27jh466	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Add new\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{},"x-app-version":"1.3.52"}
c9jng183okr	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:addNew:addBlock","x-app-version":"1.3.52"}
a529wwd0i2s	0w27t40oqvj	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
dy05mp2bbzv	usahmk917n0	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
1uaumvtamrv	rsqkq24ev17	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action-props":{"skipScopeCheck":true},"x-acl-action":"proposes:create","x-decorator":"FormBlockProvider","x-use-decorator-props":"useCreateFormBlockDecoratorProps","x-decorator-props":{"dataSource":"main","collection":"proposes"},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:createForm","x-component":"CardItem","x-app-version":"1.3.52"}
36ljw6t1ji6	s3bzn4bey9p	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"FormV2","x-use-component-props":"useCreateFormBlockProps","x-app-version":"1.3.52"}
nesj0yhxnjz	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"form:configureFields","x-app-version":"1.3.52"}
l122naqh3xo	2pmsrhfkln5	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"createForm:configureActions","x-component":"ActionBar","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.52"}
fjzwuvjm63z	description	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.description","x-component-props":{},"x-app-version":"1.3.52"}
32r1y0ys2a2	g41xhonq59h	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
okop6i9v7hc	1nrd43213rc	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
nikbm0jtaz4	construction_site	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.construction_site","x-component-props":{},"x-app-version":"1.3.52"}
t5a2xk7thpn	1327khvsoaq	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
m9ru2u1mst5	mjuoq59p08i	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
wtu8v3wspnv	69n7eixy9f7	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
oi4cs4tbslz	construction_site	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.construction_site","x-component-props":{},"x-app-version":"1.3.52"}
sqveon4lmdc	9f2hiwn3fwh	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Submit\\") }}","x-action":"submit","x-component":"Action","x-use-component-props":"useCreateActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:createSubmit","x-component-props":{"type":"primary","htmlType":"submit"},"x-action-settings":{"triggerWorkflows":[]},"type":"void","x-app-version":"1.3.52"}
f5gqw6rcwi2	dna6pgi1659	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
edrpkkzgupe	status	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"proposes.status","x-component":"CollectionField","x-component-props":{"style":{"width":"100%"},"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
thv52rwsoxt	viewer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"View record\\") }}","x-component":"RecordPicker.Viewer","x-component-props":{"className":"nb-action-popup"},"x-app-version":"1.3.52"}
8v6rpwj5ri4	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab","x-app-version":"1.3.52"}
9t48whaaivs	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Details\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{},"x-app-version":"1.3.52"}
eryrnjnsqbz	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:common:addBlock","x-app-version":"1.3.52"}
kc1yrwtergx	pf4w57q838j	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"View record\\") }}","x-component":"AssociationField.Viewer","x-component-props":{"className":"nb-action-popup"},"x-index":0,"x-app-version":"1.3.52"}
i4co6cjozyb	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab","x-app-version":"1.3.52"}
hhxn3vmfdza	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Details\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{},"x-app-version":"1.3.52"}
omnoqlxcozq	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:common:addBlock","x-app-version":"1.3.52"}
cf5a2ublhsc	createdBy	{"x-uid":"cf5a2ublhsc","name":"createdBy","_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"proposes.createdBy","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52","x-action-context":{"dataSource":"main","association":"proposes.createdBy"}}
89nfa89tbje	f526qouacp7	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Edit\\") }}","x-action":"update","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:edit","x-component":"Action.Link","x-component-props":{"openMode":"drawer","icon":"EditOutlined"},"x-action-context":{"dataSource":"main","collection":"proposes"},"x-decorator":"ACLActionProvider","x-designer-props":{"linkageAction":true}}
dnlwo60b33v	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Edit record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"}}
48d58aj2z3f	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab"}
haxe3y5jbxr	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Edit\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{}}
ew9dla1iwk8	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:common:addBlock"}
oxj8sl5a4x4	j51o4ur4zbc	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
7qih7hq26ge	g6a24feg1nu	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action-props":{"skipScopeCheck":false},"x-acl-action":"projects:update","x-decorator":"FormBlockProvider","x-use-decorator-props":"useEditFormBlockDecoratorProps","x-decorator-props":{"action":"get","dataSource":"main","collection":"projects"},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:editForm","x-component":"CardItem","x-app-version":"1.3.52"}
dsptk8t0mbr	ug198sh2bz3	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"FormV2","x-use-component-props":"useEditFormBlockProps","x-app-version":"1.3.52"}
y05re45hs3a	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"form:configureFields","x-app-version":"1.3.52"}
d1nvsr6gr5f	tr4ng6l73xr	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"editForm:configureActions","x-component":"ActionBar","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.52"}
t9zhqlgl8bp	kpb2gk33sm0	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
ytc4bcsv2fo	il4p4oxqw16	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
t9p0imxotch	oy9qjv1zgja	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
6ilsm5v4e33	xorzjdtj7et	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
zzluxay6dp9	construction_site	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.construction_site","x-component-props":{},"x-app-version":"1.3.52"}
ajm7jf8wbgk	p7hr0kegxx9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
mn6suiqsq19	jkgo120wuw9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
netkmp5tosm	l7lm0ny2gai	{"type":"void","x-component":"Grid","x-initializer":"assignFieldValuesForm:configureFields"}
agmpv6q8rox	juducfqox3n	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
uj9cahk9uzq	from_bank_name	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"transactions.from_bank_name","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
hnj686cgnhr	x7i5xmr7ntw	{"x-uid":"hnj686cgnhr","name":"x7i5xmr7ntw","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52","title":"Bank"}
ey3u6lhj0uv	55n8zhkxsk5	{"x-uid":"ey3u6lhj0uv","name":"55n8zhkxsk5","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52","x-component-props":{"fixed":"none"}}
uxyn4hf3h2i	cet6dyf5kbi	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
ffem491m0vg	is_deleted	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","title":"Is Deleted","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"AssignedField","x-decorator":"FormItem","x-collection-field":"projects.is_deleted","x-app-version":"1.3.52"}
lrcv0hhmq8j	qr_code_url	{"x-uid":"lrcv0hhmq8j","name":"qr_code_url","_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"funds.qr_code_url","x-component-props":{"component":"Input.Preview","size":"large"},"x-index":1,"x-app-version":"1.3.52"}
dz7uttxfka4	status	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.status","x-component-props":{"style":{"width":"100%"}},"x-app-version":"1.3.52"}
dnconr08rue	vs81slt04nn	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Submit\\") }}","x-action":"submit","x-component":"Action","x-use-component-props":"useUpdateActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:updateSubmit","x-component-props":{"type":"primary","htmlType":"submit"},"x-action-settings":{"triggerWorkflows":[]},"type":"void","x-app-version":"1.3.52"}
wtnow9fgrz0	iohtmi7t9fs	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Submit\\") }}","x-action":"submit","x-component":"Action","x-use-component-props":"useUpdateActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:updateSubmit","x-component-props":{"type":"primary","htmlType":"submit"},"x-action-settings":{"triggerWorkflows":[]},"type":"void","x-app-version":"1.3.52"}
uucrlkvfum6	xjcdidi6qj3	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
x8573v0yx54	zrslcko6lok	{"x-uid":"x8573v0yx54","name":"zrslcko6lok","_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Delete\\") }}","x-action":"destroy","x-component":"Action.Link","x-use-component-props":"useDestroyActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:delete","x-component-props":{"icon":"DeleteOutlined","confirm":{"title":"Perform the {{title}}","content":"Are you sure you want to perform the {{title}} action?"},"refreshDataBlockRequest":true},"x-action-settings":{"triggerWorkflows":[]},"x-decorator":"ACLActionProvider","x-designer-props":{"linkageAction":true},"type":"void"}
qpttqm9478o	cb8hqbtbku5	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Delete\\") }}","x-action":"destroy","x-component":"Action.Link","x-use-component-props":"useDestroyActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:delete","x-component-props":{"icon":"DeleteOutlined","confirm":{"title":"{{t('Delete record')}}","content":"{{t('Are you sure you want to delete it?')}}"},"refreshDataBlockRequest":true},"x-action-settings":{"triggerWorkflows":[]},"x-decorator":"ACLActionProvider","x-designer-props":{"linkageAction":true},"type":"void"}
unopjyt9vno	row_azic1uldjup	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-index":3}
w3cqnks1ky7	h6btuw2lpd6	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
0ubcv6ojxmb	transaction_code	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"transactions.transaction_code","x-component":"CollectionField","x-component-props":{"ellipsis":true},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
8z2v8mkvtfb	ciitp1wep2f	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Submit\\") }}","x-action":"submit","x-component":"Action","x-use-component-props":"useCreateActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:createSubmit","x-component-props":{"type":"primary","htmlType":"submit"},"x-action-settings":{"triggerWorkflows":[]},"type":"void","x-app-version":"1.3.52"}
ohr2n5borj4	zmqs1ydojhh	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col"}
9hwsgvjy1w5	7euk578kt21	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
qnzmj17al63	total_amount	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.total_amount","x-component-props":{},"x-app-version":"1.3.52"}
jkiooahp540	g8w76yna0rk	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
szg62voxazi	dmn9omfvshj	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
iam40dae216	vu0dkdyqrf3	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action-props":{"skipScopeCheck":false},"x-acl-action":"funds:update","x-decorator":"FormBlockProvider","x-use-decorator-props":"useEditFormBlockDecoratorProps","x-decorator-props":{"action":"get","dataSource":"main","collection":"funds"},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:editForm","x-component":"CardItem","x-app-version":"1.3.52"}
f4amot355dj	1ozitjxozb9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"FormV2","x-use-component-props":"useEditFormBlockProps","x-app-version":"1.3.52"}
h0tf2zekdwj	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"form:configureFields","x-app-version":"1.3.52"}
zy0akbfpvko	8antk7n9b64	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"editForm:configureActions","x-component":"ActionBar","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.52"}
mecmm2xcryc	aot4wbwyyvm	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
9zvtkobxxxa	n7ju2ske8x4	{"type":"void","x-component":"Grid","x-initializer":"assignFieldValuesForm:configureFields"}
1fxamj5etq0	g0fsnzie0q5	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
pf5jgr5qt8w	djjgt4g6stj	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
ktjaxuy24vi	fyfuf78apt8	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
pxcipvysrb8	f3y1of8i1qi	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-index":1,"x-app-version":"1.3.52"}
qeotrvptuc2	mhjpvgrsm9p	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
1oxe2et0fqk	xlbp5q9tjpb	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action":"projects:view","x-decorator":"DetailsBlockProvider","x-use-decorator-props":"useDetailsWithPaginationDecoratorProps","x-decorator-props":{"dataSource":"main","collection":"projects","readPretty":true,"action":"list","params":{"pageSize":1}},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:detailsWithPagination","x-component":"CardItem","x-app-version":"1.3.52"}
xus25o42nmo	5kkue7x5hc9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Details","x-read-pretty":true,"x-use-component-props":"useDetailsWithPaginationProps","x-app-version":"1.3.52"}
gfead56fb65	khx0754uhmv	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"details:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":24}},"x-app-version":"1.3.52"}
2tn2s78dgt2	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"details:configureFields","x-app-version":"1.3.52"}
ylmz2mzwtqx	pagination	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Pagination","x-use-component-props":"useDetailsPaginationProps","x-app-version":"1.3.52"}
ofzpw6kgdnf	scghlwxeu99	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
frvao9fnovq	icxzp06srul	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
87qrrxy0dvc	name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.name","x-component-props":{},"x-app-version":"1.3.52"}
bhoej14nttw	bcbsla060sw	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
s1borw8npes	total_amount	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.total_amount","x-component-props":{},"x-app-version":"1.3.52"}
fdyf18qtufe	cu2c3hm0ma4	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
4b3h23e6qwv	gcocnt5jmu4	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
crak5ro4w9c	construction_site	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.construction_site","x-component-props":{},"x-app-version":"1.3.52"}
m4zfle677q0	2mp2zuc5g3w	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
2fu3ut5ov50	uvicmbgn5r4	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
x2fnijiy8rm	actual_expenditures	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.actual_expenditures","x-component-props":{},"x-app-version":"1.3.52"}
d1etvwwa4o3	8sus1sfsx09	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
pih9m66uox0	1q06k9gio15	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
96x36oteery	fund_id	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.fund_id","x-component-props":{"fieldNames":{"value":"id","label":"id"}},"x-app-version":"1.3.52"}
g1zqulbaq33	lohgfrxkrn8	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
svu377s09m8	createdAt	{"x-uid":"svu377s09m8","name":"createdAt","_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"projects.createdAt","x-component":"CollectionField","x-component-props":{"dateFormat":"MMMM Do YYYY","showTime":false},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
f8feuhfiywv	vzalufg5uj4	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
fu4hqwdhjna	ua1vwt915j0	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
rgikecs0vb3	9r1dp9d3rlk	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"CardItem","x-settings":"blockSettings:image","x-app-version":"1.3.52"}
0p09a8u5xr9	landing	{"_isJSONSchemaObject":true,"version":"2.0","x-component":"Landing","x-app-version":"1.3.52"}
ycph2iwspsy	op533frw76t	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
z8sfah8xqx2	awu0ue4yidj	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
dtwqv1j8ahg	images_attach	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.images_attach","x-component-props":{},"x-use-component-props":"useAttachmentFieldProps","x-app-version":"1.3.52"}
rnko20ymzdm	actionBar	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"list:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":"var(--nb-spacing)"}},"x-app-version":"1.3.52"}
5po28o9th2g	9fviq2pm5md	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
4xrh6k2pmoo	f9eqtqefd3t	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
xzo61aenrhv	p7v5lm31wcf	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
gpuc5o56mm3	images	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.images","x-component-props":{},"x-app-version":"1.3.52"}
8k1zlpvo9rl	wiesgyg58mg	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Trang Chủ","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{"icon":"homeoutlined"},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}],"x-app-version":"1.3.52"}
hfflouqm5vf	eu4zsxgngjy	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock","x-app-version":"1.3.52"}
xt3d9e6vpx3	page	{"x-uid":"xt3d9e6vpx3","name":"page","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page","x-app-version":"1.3.52","x-component-props":{"disablePageHeader":true}}
6gy09u6gkvr	b1mae2da89r	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Filter\\") }}","x-action":"filter","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:filter","x-component":"Filter.Action","x-use-component-props":"useFilterActionProps","x-component-props":{"icon":"FilterOutlined"},"x-align":"left","x-app-version":"1.3.52"}
s41jwc7ushc	gqlhz16n5je	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
tavzpgzflnv	xjp2f8pugvx	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
hmft2ujv1uf	5ddwiuc4980	{"x-uid":"hmft2ujv1uf","name":"5ddwiuc4980","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Chi tiết dự án","x-component":"Menu.Item","x-decorator":"ACLMenuItemProvider","x-component-props":{"hidden":true},"x-server-hooks":[{"type":"onSelfCreate","method":"bindMenuToRole"},{"type":"onSelfSave","method":"extractTextToLocale"}],"x-app-version":"1.3.52"}
7poa6levyva	ml05bw54cfa	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"page:addBlock","x-app-version":"1.3.52"}
6qulve4ybk4	28ipw0hnn0f	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
4ryyxzuq87v	k0fmx8fwpy6	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
zrm37tg78ob	images	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.images","x-component-props":{},"x-use-component-props":"useAttachmentFieldProps","x-app-version":"1.3.52"}
cbhgjqiskk5	3hw8ivc03z8	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
f70h0f0jiha	list	{"_isJSONSchemaObject":true,"version":"2.0","type":"array","x-component":"List","x-use-component-props":"useListBlockProps","x-app-version":"1.3.52"}
4jc43siezjp	10piaxniyaf	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
0f0yp3ro5dp	item	{"_isJSONSchemaObject":true,"version":"2.0","type":"object","x-component":"List.Item","x-read-pretty":true,"x-use-component-props":"useListItemProps","x-app-version":"1.3.52"}
oq5d1lxpmfu	gl4xiqu0c66	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
3p9f7asal9h	lv5n4euwvqr	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
fe7kgdo55ax	page	{"x-uid":"fe7kgdo55ax","name":"page","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Page","x-app-version":"1.3.52","x-component-props":{"disablePageHeader":true}}
p2fd2nllyzz	s0fp6p9ut2y	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-index":1,"x-app-version":"1.3.52"}
0ddzjfp9gg6	gs0mbkzv0y7	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
387jrys6pj9	sub_title	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.sub_title","x-component-props":{},"x-app-version":"1.3.52"}
2p6lbnuww8r	row_4c7vf74o0m4	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-index":14}
c5d9aolt3oi	kk9zw2con2a	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col"}
unis1bj47de	grgfquq7p3t	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
gwkooqabv4x	lq1p6lf0d2p	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
ugkql0r3ggt	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"details:configureFields","x-app-version":"1.3.52"}
a61oc4tl7m1	actionBar	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-align":"left","x-initializer":"list:configureItemActions","x-component":"ActionBar","x-use-component-props":"useListActionBarProps","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.52"}
jibscsx0dfw	qendcaq0u1t	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
jmayzuhpdzl	prnc93evei0	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
v0hdkdeyzrd	jaen61nqaow	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action":"projects:view","x-decorator":"DetailsBlockProvider","x-use-decorator-props":"useDetailsWithPaginationDecoratorProps","x-decorator-props":{"dataSource":"main","collection":"projects","readPretty":true,"action":"list","params":{"pageSize":1}},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:detailsWithPagination","x-component":"CardItem","x-app-version":"1.3.52"}
fg366x2n25f	j86wvwfhduz	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Details","x-read-pretty":true,"x-use-component-props":"useDetailsWithPaginationProps","x-app-version":"1.3.52"}
g3wb17ry7i2	oq6rze1evpb	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"details:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":24}},"x-app-version":"1.3.52"}
2yh8xonuy9p	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"details:configureFields","x-app-version":"1.3.52"}
d7ss6dyrft2	pagination	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Pagination","x-use-component-props":"useDetailsPaginationProps","x-app-version":"1.3.52"}
5ra7uzzi0b0	1lgpznm7vxs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
lrpe7x7uska	7dkt6pm4cm4	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
cnt5l2vyvus	id	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.id","x-component-props":{},"x-read-pretty":true,"x-app-version":"1.3.52"}
4rfztuqwvcn	xyl7qe8x7cv	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
em6cpoit5dn	9dib8x7ltsg	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
9ha55op1k8z	name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.name","x-component-props":{},"x-app-version":"1.3.52"}
mgxem84qs7g	ld6p1cwd79d	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
wtx7vw7yz0x	zt3daum6tb5	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
ris4kebta55	rk3lj3o34vz	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
y5v7ivsb3ot	total_amount	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.total_amount","x-component-props":{},"x-app-version":"1.3.52"}
lt4x5i1gin9	udtyrkucgkd	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
ksp2jvw2zju	oc9mp8epqj9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
qlix4l9q49g	construction_site	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.construction_site","x-component-props":{},"x-app-version":"1.3.52"}
5n3prf95enu	iius52f8mo5	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
77znodag4w0	images	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.images","x-component-props":{},"x-use-component-props":"useAttachmentFieldProps","x-app-version":"1.3.52"}
p352d38u95n	9l7fhv0zb93	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
p62fqqqtc8f	1kldb9are0i	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
1oeceyajjp1	images	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.images","x-component-props":{},"x-use-component-props":"useAttachmentFieldProps","x-app-version":"1.3.52"}
lzuobjmh9nr	lrxdgyheuht	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
nk5b4nu4r4m	03zr42jo35m	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
pai6scdjeqt	sub_title	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.sub_title","x-component-props":{},"x-app-version":"1.3.52"}
qos4gy0bday	ujrjmya3bl2	{"x-uid":"qos4gy0bday","name":"ujrjmya3bl2","_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"Detail","x-action":"customize:link","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:link","x-component":"Action.Link","x-use-component-props":"useLinkActionProps","x-designer-props":{"linkageAction":true},"x-component-props":{"iconColor":"#1677FF","danger":false,"url":"admin/hmft2ujv1uf","params":[{"name":"id","value":"{{$nRecord.id}}"},{"name":"fundId","value":"{{$nRecord.fund_id.id}}"}]}}
vww45l1kt1c	38aixf9l925	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
krq5msd3dso	images	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"proposes.images","x-component-props":{},"x-use-component-props":"useAttachmentFieldProps","x-app-version":"1.3.52"}
x4src7kopyo	w1f7gliwtyn	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
l8by3cc8sei	km2jizghjxq	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
9cnsplg5f8i	72v0eueipj3	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
5v81x55p2nk	col_uoqwlaeflf6	{"x-uid":"5v81x55p2nk","name":"col_uoqwlaeflf6","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-index":1,"x-component-props":{"width":"49.87"}}
am9f5xsj7ms	ijylqzp134z	{"x-uid":"am9f5xsj7ms","name":"ijylqzp134z","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52","x-component-props":{"width":25}}
ge2jd4uyinh	amount	{"x-uid":"ge2jd4uyinh","name":"amount","_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.amount","x-component-props":{},"x-app-version":"1.3.52","x-decorator-props":{"showTitle":false}}
w55w350cfun	3vsdfowi9jd	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
xzjgh6n1pxo	wo541gsgl4h	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
q25ez0sddx0	description	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.description","x-component-props":{},"x-app-version":"1.3.52"}
h0ax2mnno9e	transaction_code	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.transaction_code","x-component-props":{},"x-app-version":"1.3.52"}
trkntmt0j43	qjd9o8evo8m	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
jybbjrsdqyi	dbkfz7epzpo	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
x34msmoy2z7	from_account_no	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.from_account_no","x-component-props":{},"x-app-version":"1.3.52"}
qa9xun5vwcj	c9w73iph2a7	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
q99h3pa86a9	t1bh4pgoa16	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
2w9s2xktcaq	from_account_name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.from_account_name","x-component-props":{},"x-app-version":"1.3.52"}
e218oz4chyl	v5fi4kywdvu	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
zfyh24viwdy	nzl26bt6tc2	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
3h2a3ty94tj	from_bank_name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.from_bank_name","x-component-props":{},"x-app-version":"1.3.52"}
5dqm9vvouxz	4pq40frfpa6	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
dqzfsmyk8ay	i0aoc76mym6	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
b33sc3cahsg	user	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.user","x-component-props":{"fieldNames":{"value":"id","label":"id"}},"x-app-version":"1.3.52"}
bj7d5uc6lnd	5o2kdgwdq98	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
tdkqbjvhskr	j8g2cmfwto7	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
0u09lqdoyvt	fund	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.fund","x-component-props":{"fieldNames":{"value":"id","label":"id"}},"x-app-version":"1.3.52"}
3o26e8k5cba	bganen032st	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Submit\\") }}","x-action":"submit","x-component":"Action","x-use-component-props":"useUpdateActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:updateSubmit","x-component-props":{"type":"primary","htmlType":"submit"},"x-action-settings":{"triggerWorkflows":[]},"type":"void","x-app-version":"1.3.52"}
xkyavrac3i1	b5wirmu6r55	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-collection-field":"name","x-component":"Grid.Row","x-app-version":"1.3.52"}
eoz95qtwix6	eoz95qtwix6	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action":"projects:view","x-decorator":"DetailsBlockProvider","x-use-decorator-props":"useDetailsWithPaginationDecoratorProps","x-decorator-props":{"dataSource":"main","collection":"projects","readPretty":true,"action":"list","params":{"pageSize":1}},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:detailsWithPagination","x-component":"CardItem","x-app-version":"1.3.52","x-index":0}
2h7gnmez0eb	j86wvwfhduz	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Details","x-read-pretty":true,"x-use-component-props":"useDetailsWithPaginationProps","x-app-version":"1.3.52","x-index":1}
kye7kplejx4	oq6rze1evpb	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"details:configureActions","x-component":"ActionBar","x-component-props":{"style":{"marginBottom":24}},"x-app-version":"1.3.52","x-index":1}
pv8ilcp4ez0	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"details:configureFields","x-app-version":"1.3.52","x-index":2}
mo9367563k2	1lgpznm7vxs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52","x-index":1}
hk90w8ktd8b	7dkt6pm4cm4	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52","x-index":1}
fetusergrtk	id	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.id","x-component-props":{},"x-read-pretty":true,"x-app-version":"1.3.52","x-index":1}
8avia19u880	xyl7qe8x7cv	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52","x-index":2}
hwi0frrc1o1	9dib8x7ltsg	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52","x-index":1}
u1nyxe00lc6	name	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.name","x-component-props":{},"x-app-version":"1.3.52","x-index":1}
rxmunii1ry1	ld6p1cwd79d	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52","x-index":3}
5i5wcujn2r0	zt3daum6tb5	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52","x-index":1}
6ajwqegl8fu	total_amount	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.total_amount","x-component-props":{},"x-app-version":"1.3.52","x-index":1}
eg8g77o8vr3	udtyrkucgkd	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52","x-index":4}
pfrp5as10jq	oc9mp8epqj9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52","x-index":1}
m6euh07s1zs	construction_site	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.construction_site","x-component-props":{},"x-app-version":"1.3.52","x-index":1}
gltkn1uzhh9	qendcaq0u1t	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52","x-index":5}
yivjshzifwl	9cpz8awc0fu	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
0czsrowjaug	1kldb9are0i	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52","x-index":1}
7guv5eckse5	3gve41npdh6	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
tjpv9f744r6	images	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.images","x-component-props":{},"x-use-component-props":"useAttachmentFieldProps","x-app-version":"1.3.52","x-index":1}
ll2so9vdgu3	lrxdgyheuht	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52","x-index":6}
0jqiruu9vf6	03zr42jo35m	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52","x-index":1}
b6910vi3jym	sub_title	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.sub_title","x-component-props":{},"x-app-version":"1.3.52","x-index":1}
quxuyp8dl2x	pagination	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Pagination","x-use-component-props":"useDetailsPaginationProps","x-app-version":"1.3.52","x-index":3}
cm46dlsp65t	xm2n4k0v72h	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
q3szmzf1eqa	cmft0hwzk3f	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
68fxhhuy71v	from_account_name	{"x-uid":"68fxhhuy71v","name":"from_account_name","_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.from_account_name","x-component-props":{},"x-app-version":"1.3.52","x-decorator-props":{"showTitle":false}}
iipcd9rycsd	from_bank_name	{"x-uid":"iipcd9rycsd","name":"from_bank_name","_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.from_bank_name","x-component-props":{},"x-app-version":"1.3.52","x-decorator-props":{"showTitle":false},"description":""}
pde5ayqzqo1	col_odcegh5w9pb	{"x-uid":"pde5ayqzqo1","name":"col_odcegh5w9pb","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-index":1,"x-component-props":{"width":50}}
pxsyhrbz249	col_7rm6cpurb8p	{"x-uid":"pxsyhrbz249","name":"col_7rm6cpurb8p","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-index":1,"x-component-props":{"width":25}}
w75rqpzvfdq	col_tee1znazv4f	{"x-uid":"w75rqpzvfdq","name":"col_tee1znazv4f","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-index":2,"x-component-props":{"width":25}}
1w4nstqxr2n	col_5qtmgj1qg1n	{"x-uid":"1w4nstqxr2n","name":"col_5qtmgj1qg1n","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-index":3,"x-component-props":{"width":25}}
pbpsju21w1y	fromxe1ognk	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Refresh\\") }}","x-action":"refresh","x-component":"Action","x-use-component-props":"useRefreshActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:refresh","x-component-props":{"icon":"ReloadOutlined"},"x-align":"right","type":"void","x-app-version":"1.3.52"}
j0x0k0rv3yw	z0rr8522rdf	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
hupe35j3waf	wdcjw5oonnf	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
x3ls6jq4ldm	7m04sefds5p	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-collection-field":"sub_title","x-component":"Grid.Row","x-app-version":"1.3.52"}
6fy9l9kloul	dqb2nempowo	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
ypdn0dkn4wx	qltijl6t53w	{"x-uid":"ypdn0dkn4wx","name":"qltijl6t53w","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-settings":"blockSettings:iframe","x-decorator":"BlockItem","x-decorator-props":{"name":"iframe"},"x-component":"Iframe","x-component-props":{"mode":"html","height":200,"engine":"string","params":[],"htmlId":"kfrlwu4mh96","heightMode":"specifyValue"},"x-app-version":"1.3.52"}
mxutorz6z5i	sub_title	{"x-uid":"mxutorz6z5i","name":"sub_title","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"InfoField","x-component-props":{"name":"sub_title","headerType":"p"},"x-settings":"fieldSettings:component:header picker","x-decorator":"FormItem","x-app-version":"1.3.52"}
jdpnao7e4yj	name	{"x-uid":"jdpnao7e4yj","name":"name","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"InfoField","x-component-props":{"name":"name","headerType":"h2"},"x-settings":"fieldSettings:component:header picker","x-decorator":"FormItem","x-app-version":"1.3.52","x-async":false,"x-index":1}
i5ep94ei4hn	74v0up0r5vs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Actions\\") }}","x-decorator":"TableV2.Column.ActionBar","x-component":"TableV2.Column","x-toolbar":"TableColumnSchemaToolbar","x-initializer":"table:configureItemActions","x-settings":"fieldSettings:TableColumn","x-toolbar-props":{"initializer":"table:configureItemActions"},"x-action-column":"actions","x-app-version":"1.3.52"}
x74knwfm0hx	luf7vtkqq1b	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"DndContext","x-component":"Space","x-component-props":{"split":"|"},"x-app-version":"1.3.52"}
7qdtw3aqf8f	3um9q5ispqm	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Edit\\") }}","x-action":"update","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:edit","x-component":"Action.Link","x-component-props":{"openMode":"drawer","icon":"EditOutlined"},"x-action-context":{"dataSource":"main","collection":"transactions"},"x-decorator":"ACLActionProvider","x-designer-props":{"linkageAction":true}}
9znhwv6jh2d	drawer	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{ t(\\"Edit record\\") }}","x-component":"Action.Container","x-component-props":{"className":"nb-action-popup"}}
dohzvch4noi	tabs	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Tabs","x-component-props":{},"x-initializer":"popup:addTab"}
oyw4y44yqgd	tab1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","title":"{{t(\\"Edit\\")}}","x-component":"Tabs.TabPane","x-designer":"Tabs.Designer","x-component-props":{}}
bztjip2msxq	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"popup:common:addBlock"}
oekbnvx2n7m	w5sg29xsuwg	{"_isJSONSchemaObject":true,"version":"2.0","title":"{{ t(\\"Delete\\") }}","x-action":"destroy","x-component":"Action.Link","x-use-component-props":"useDestroyActionProps","x-toolbar":"ActionSchemaToolbar","x-settings":"actionSettings:delete","x-component-props":{"icon":"DeleteOutlined","confirm":{"title":"{{t('Delete record')}}","content":"{{t('Are you sure you want to delete it?')}}"},"refreshDataBlockRequest":true},"x-action-settings":{"triggerWorkflows":[]},"x-decorator":"ACLActionProvider","x-designer-props":{"linkageAction":true},"type":"void"}
cm22blbci2c	3n6konsxrcv	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
ioq8ld31vte	ujdem34nq3l	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
ojgs7eoz5hg	fund_id	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"projects.fund_id","x-component-props":{"fieldNames":{"value":"id","label":"id"}},"x-app-version":"1.3.52"}
qxskufg0hv4	jgngp3286ie	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
swpktoj72vi	gf7pul5epv8	{"x-uid":"swpktoj72vi","name":"gf7pul5epv8","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52","x-component-props":{"width":"50.13"}}
j9dtajdmaoa	createdAt	{"x-uid":"j9dtajdmaoa","name":"createdAt","_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.createdAt","x-component-props":{"dateFormat":"DD/MM/YYYY","showTime":true,"timeFormat":"h:mm a"},"x-read-pretty":true,"x-app-version":"1.3.52","x-decorator-props":{"showTitle":false}}
abxv8689kv3	ho0c7mbjda1	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"TableV2.Column.Decorator","x-toolbar":"TableColumnSchemaToolbar","x-settings":"fieldSettings:TableColumn","x-component":"TableV2.Column","x-app-version":"1.3.52"}
2lzmasj4pju	project_id	{"_isJSONSchemaObject":true,"version":"2.0","x-collection-field":"funds.project_id","x-component":"CollectionField","x-component-props":{},"x-read-pretty":true,"x-decorator":null,"x-decorator-props":{"labelStyle":{"display":"none"}},"x-app-version":"1.3.52"}
ssd1y8mk1mx	9879c23cj0s	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
r1jfuy0x2g2	ihoxsztugt7	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
mupdgh8dhyb	pfoxy9zmkx7	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
swbgm59qce3	ufrasmewkf9	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
n65uanub9sx	header picker	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-use-component-props":"useHeaderPickerProps","x-use-decorator-props":"useBlockScopeDecoratorProps","x-app-version":"1.3.52"}
fvz3km1i6ms	fields	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"info:configureFields","x-app-version":"1.3.52"}
pkcprxz6rfy	lzsv1w75i9y	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
b410c64osaf	t7cx7ml1ss1	{"x-uid":"b410c64osaf","name":"t7cx7ml1ss1","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"DataBlockProvider","x-decorator-props":{"dataSource":"main","collection":"projects","action":"list","params":{"filter":{"$and":[{"id":{"$eq":"{{$nURLSearchParams.id}}"}}]}}},"x-component":"CardItem","x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:header picker","x-designer":"FormV2.Designer","x-component-props":{"useConfigureFields":true},"x-use-decorator-props":"useBlockScopeDecoratorProps","x-app-version":"1.3.52"}
9bxpugcgkui	s13ehtexjiz	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
lhbk1av87n1	zc7kwh6kagc	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
0kxudizv0xf	klwlhf63eyz	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
zy4jidwmnvw	cea73ch8trk	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
q5no45c40c6	g42m4asqz7s	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action-props":{"skipScopeCheck":false},"x-acl-action":"transactions:update","x-decorator":"FormBlockProvider","x-use-decorator-props":"useEditFormBlockDecoratorProps","x-decorator-props":{"action":"get","dataSource":"main","collection":"transactions"},"x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:editForm","x-component":"CardItem","x-app-version":"1.3.52"}
imo18or3xxo	eiyx95gi2ex	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"FormV2","x-use-component-props":"useEditFormBlockProps","x-app-version":"1.3.52"}
mr7dvvk94ts	grid	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid","x-initializer":"form:configureFields","x-app-version":"1.3.52"}
9xqwn851uzs	vlamjp62x2t	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-initializer":"editForm:configureActions","x-component":"ActionBar","x-component-props":{"layout":"one-column"},"x-app-version":"1.3.52"}
h6z84g2plev	pgqgrxu3saz	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
fj7mqkmuy05	id	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.id","x-component-props":{},"x-read-pretty":true,"x-app-version":"1.3.52"}
7mxt8s0yifl	qwzluez9x09	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
z3izb1wk1tb	8j5opzefy68	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
r46d3k59dyb	amount	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.amount","x-component-props":{},"x-app-version":"1.3.52"}
vkwm4wpz1us	7b3laozce26	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
0i6xo0z7gmw	aejmv2c9ff7	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
ktueizjrxpb	description	{"_isJSONSchemaObject":true,"version":"2.0","type":"string","x-toolbar":"FormItemSchemaToolbar","x-settings":"fieldSettings:FormItem","x-component":"CollectionField","x-decorator":"FormItem","x-collection-field":"transactions.description","x-component-props":{},"x-app-version":"1.3.52"}
r4wwu0h2xhc	nhia9ko11ng	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Row","x-app-version":"1.3.52"}
h2owc9efe7d	q9ogag58p1b	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-app-version":"1.3.52"}
52h8j6knyh0	bkswmhrdrp3	{"x-uid":"52h8j6knyh0","name":"bkswmhrdrp3","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-acl-action":"transactions:view","x-decorator":"List.Decorator","x-use-decorator-props":"useListBlockDecoratorProps","x-decorator-props":{"collection":"transactions","dataSource":"main","readPretty":true,"action":"list","params":{"pageSize":10,"filter":{"$and":[{"fund_id":{"$eq":"{{$nURLSearchParams.fundId}}"}}]},"sort":["-createdAt"]},"runWhenParamsChanged":true,"rowKey":"id"},"x-component":"CardItem","x-toolbar":"BlockSchemaToolbar","x-settings":"blockSettings:list","x-app-version":"1.3.52","x-component-props":{"heightMode":"specifyValue","height":500}}
5lsetx6q4um	col_6njh32yy0yn	{"x-uid":"5lsetx6q4um","name":"col_6njh32yy0yn","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Grid.Col","x-index":0,"x-component-props":{"width":50}}
8syckvf383p	hhlzz16lp9n	{"x-uid":"8syckvf383p","name":"hhlzz16lp9n","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-decorator":"DataBlockProvider","x-component":"FormItem","x-settings":"blockSettings:carousel","x-toolbar":"BlockSchemaToolbar","x-decorator-props":{"rowKey":"id","runWhenParamsChanged":true,"readPretty":true,"dataSource":"main","collection":"projects","action":"list","request":{"params":{"appends":["images"]}},"params":{"filter":{"$and":[{"id":{"$eq":"{{$nURLSearchParams.id}}"}}]}},"carousel":{"objectFit":"contain","height":500}},"x-use-decorator-props":"useBlockScopeDecoratorProps","x-app-version":"1.3.52"}
f1naeic0v01	carousel	{"_isJSONSchemaObject":true,"version":"2.0","type":"void","x-component":"Carousel","x-use-component-props":"useBlockScopeDecoratorProps","x-app-version":"1.3.52"}
83dc85bfozz	159taitaspr	{"x-uid":"83dc85bfozz","name":"159taitaspr","_isJSONSchemaObject":true,"version":"2.0","type":"void","x-settings":"blockSettings:markdown","x-decorator":"CardItem","x-decorator-props":{"name":"markdown","engine":"string"},"x-component":"Markdown.Void","x-editable":false,"x-component-props":{"content":"### Thông tin chi tiết\\n\\nTheo lãnh đạo xã Trà Tập, đợt mưa trước đó đã gây sạt lở ta-luy dương sau trường. Do đó, chính quyền địa phương đã cho đóng cửa điểm trường trên, dời lớp học về điểm trường cũ (bằng gỗ), chờ phương án xây dựng kè phía sau. Tuy nhiên, đợt mưa này tiếp tục gây sạt lở khiến điểm trường bị sập.\\n\\nĐược biết, điểm trường Răng Chuối mới khánh thành hồi tháng 9 với tổng kinh phí xây dựng hơn 1,4 tỉ đồng, do một nhà tài trợ tại TP HCM hỗ trợ toàn bộ chi phí.\\n\\nCông trình có tổng diện tích gần 200m², tường xây kiên cố, 2 phòng học, 1 phòng ở tập thể, bếp ăn, khu vệ sinh, sân chơi, tường rào.\\n\\nĐiểm trường có 35 học sinh mầm non và tiểu học. Ngôi trường mới đưa vào sử dụng thay thế điểm trường tạm vốn đã xuống cấp.\\n\\nNgoài điểm trường Răng Chuối bị thiệt hại, tại huyện Nam Trà My những ngày qua trời mưa lớn kéo dài khiến nhiều điểm sạt lở tuyến đường bị đứt gãy, hư hỏng nặng.\\n\\nHuyện Nam Trà My đã chỉ đạo các địa phương cắm biển báo nguy hiểm và cắm biển cấm xe tải trọng lớn, chỉ đạo đơn vị duy tu bảo vệ kè tạm để đảm bảo giao thông xe tải nhỏ và xe ô tô con lưu thông.\\n","heightMode":"specifyValue","height":500},"x-app-version":"1.3.52"}
\.


--
-- TOC entry 3969 (class 0 OID 316467)
-- Dependencies: 293
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, "createdAt", "updatedAt", nickname, username, email, phone, password, "appLang", "resetToken", "systemSettings", sort, "createdById", "updatedById") FROM stdin;
1	2024-11-22 08:42:38.679+00	2024-11-25 06:09:25.389+00	Super Admin	nocobase	admin@nocobase.com	\N	cb9f202d91599a21382c42be46ee032487d7ad26dd17d17f3b827a8cb07174f8	\N	\N	{"themeId":5}	1	\N	\N
\.


--
-- TOC entry 3970 (class 0 OID 316473)
-- Dependencies: 294
-- Data for Name: usersAuthenticators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."usersAuthenticators" ("createdAt", "updatedAt", authenticator, "userId", uuid, nickname, avatar, meta, "createdById", "updatedById") FROM stdin;
\.


--
-- TOC entry 3972 (class 0 OID 316482)
-- Dependencies: 296
-- Data for Name: users_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_jobs (id, "createdAt", "updatedAt", "jobId", "userId", "executionId", "nodeId", "workflowId", status, result) FROM stdin;
\.


--
-- TOC entry 3974 (class 0 OID 316488)
-- Dependencies: 298
-- Data for Name: verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.verifications (id, "createdAt", "updatedAt", type, receiver, status, "expiresAt", content, "providerId") FROM stdin;
\.


--
-- TOC entry 3975 (class 0 OID 316494)
-- Dependencies: 299
-- Data for Name: verifications_providers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.verifications_providers (id, "createdAt", "updatedAt", title, type, options, "default") FROM stdin;
\.


--
-- TOC entry 3976 (class 0 OID 316499)
-- Dependencies: 300
-- Data for Name: workflows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.workflows (id, "createdAt", "updatedAt", key, title, enabled, description, type, "triggerTitle", config, executed, "allExecuted", current, sync, options) FROM stdin;
12	2024-11-23 08:33:04.685+00	2024-11-23 09:09:45.259+00	okdlz4mlk8m	Pre-Delete Project	t	\N	collection	\N	{"mode": 2, "appends": ["fund_id"], "changed": ["is_deleted"], "condition": {"$and": [{"fund_id": {"current_amount": {"$gt": 0}}}, {"is_deleted": {"$eq": 0}}]}, "collection": "projects"}	3	3	t	f	{}
11	2024-11-23 07:06:06.908+00	2024-11-23 08:55:36.67+00	iib4y9voya1	Pre-Delete Project	f	\N	collection	\N	{"mode": 2, "appends": ["updatedBy", "fund_id", "createdBy"], "changed": ["is_deleted"], "condition": {"$and": [{"fund_id": {"current_amount": {"$eq": 0}}}]}, "collection": "projects"}	6	6	t	f	{"deleteExecutionOnStatus": []}
22	2024-11-23 11:49:01.633+00	2024-11-29 20:13:20.423+00	07lrf76z5ab	Approve Propose	t	\N	collection	\N	{"mode": 2, "appends": ["createdBy"], "changed": ["status"], "condition": {"$and": []}, "collection": "proposes"}	9	9	t	f	{}
\.


--
-- TOC entry 4033 (class 0 OID 0)
-- Dependencies: 216
-- Name: apiKeys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."apiKeys_id_seq"', 1, false);


--
-- TOC entry 4034 (class 0 OID 0)
-- Dependencies: 218
-- Name: applicationPlugins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."applicationPlugins_id_seq"', 68, true);


--
-- TOC entry 4035 (class 0 OID 0)
-- Dependencies: 220
-- Name: applicationVersion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."applicationVersion_id_seq"', 1, true);


--
-- TOC entry 4036 (class 0 OID 0)
-- Dependencies: 222
-- Name: attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attachments_id_seq', 24, true);


--
-- TOC entry 4037 (class 0 OID 0)
-- Dependencies: 224
-- Name: authenticators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authenticators_id_seq', 1, true);


--
-- TOC entry 4038 (class 0 OID 0)
-- Dependencies: 227
-- Name: collectionCategories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."collectionCategories_id_seq"', 1, false);


--
-- TOC entry 4039 (class 0 OID 0)
-- Dependencies: 238
-- Name: dataSourcesRolesResourcesActions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."dataSourcesRolesResourcesActions_id_seq"', 1, false);


--
-- TOC entry 4040 (class 0 OID 0)
-- Dependencies: 240
-- Name: dataSourcesRolesResourcesScopes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."dataSourcesRolesResourcesScopes_id_seq"', 2, true);


--
-- TOC entry 4041 (class 0 OID 0)
-- Dependencies: 241
-- Name: dataSourcesRolesResources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."dataSourcesRolesResources_id_seq"', 1, false);


--
-- TOC entry 4042 (class 0 OID 0)
-- Dependencies: 243
-- Name: executions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.executions_id_seq', 33, true);


--
-- TOC entry 4043 (class 0 OID 0)
-- Dependencies: 246
-- Name: flow_nodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.flow_nodes_id_seq', 71, true);


--
-- TOC entry 4044 (class 0 OID 0)
-- Dependencies: 248
-- Name: funds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.funds_id_seq', 25, true);


--
-- TOC entry 4045 (class 0 OID 0)
-- Dependencies: 250
-- Name: hello_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hello_id_seq', 1, false);


--
-- TOC entry 4046 (class 0 OID 0)
-- Dependencies: 253
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.images_id_seq', 1, false);


--
-- TOC entry 4047 (class 0 OID 0)
-- Dependencies: 255
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jobs_id_seq', 103, true);


--
-- TOC entry 4048 (class 0 OID 0)
-- Dependencies: 258
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_id_seq', 27, true);


--
-- TOC entry 4049 (class 0 OID 0)
-- Dependencies: 260
-- Name: proposes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proposes_id_seq', 23, true);


--
-- TOC entry 4050 (class 0 OID 0)
-- Dependencies: 264
-- Name: rolesResourcesActions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."rolesResourcesActions_id_seq"', 1, false);


--
-- TOC entry 4051 (class 0 OID 0)
-- Dependencies: 266
-- Name: rolesResourcesScopes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."rolesResourcesScopes_id_seq"', 1, false);


--
-- TOC entry 4052 (class 0 OID 0)
-- Dependencies: 267
-- Name: rolesResources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."rolesResources_id_seq"', 1, false);


--
-- TOC entry 4053 (class 0 OID 0)
-- Dependencies: 271
-- Name: sequences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sequences_id_seq', 1, false);


--
-- TOC entry 4054 (class 0 OID 0)
-- Dependencies: 273
-- Name: storages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.storages_id_seq', 1, true);


--
-- TOC entry 4055 (class 0 OID 0)
-- Dependencies: 274
-- Name: student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_id_seq', 1, false);


--
-- TOC entry 4056 (class 0 OID 0)
-- Dependencies: 276
-- Name: systemSettings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."systemSettings_id_seq"', 1, true);


--
-- TOC entry 4057 (class 0 OID 0)
-- Dependencies: 278
-- Name: t_587vrvz0gcb_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t_587vrvz0gcb_id_seq', 2, true);


--
-- TOC entry 4058 (class 0 OID 0)
-- Dependencies: 283
-- Name: themeConfig_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."themeConfig_id_seq"', 5, true);


--
-- TOC entry 4059 (class 0 OID 0)
-- Dependencies: 285
-- Name: tokenBlacklist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tokenBlacklist_id_seq"', 1, false);


--
-- TOC entry 4060 (class 0 OID 0)
-- Dependencies: 287
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transactions_id_seq', 4, true);


--
-- TOC entry 4061 (class 0 OID 0)
-- Dependencies: 289
-- Name: uiSchemaServerHooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."uiSchemaServerHooks_id_seq"', 1, false);


--
-- TOC entry 4062 (class 0 OID 0)
-- Dependencies: 295
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- TOC entry 4063 (class 0 OID 0)
-- Dependencies: 297
-- Name: users_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_jobs_id_seq', 1, false);


--
-- TOC entry 4064 (class 0 OID 0)
-- Dependencies: 301
-- Name: workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.workflows_id_seq', 22, true);


--
-- TOC entry 3550 (class 2606 OID 316544)
-- Name: apiKeys apiKeys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."apiKeys"
    ADD CONSTRAINT "apiKeys_pkey" PRIMARY KEY (id);


--
-- TOC entry 3553 (class 2606 OID 316546)
-- Name: applicationPlugins applicationPlugins_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationPlugins"
    ADD CONSTRAINT "applicationPlugins_name_key" UNIQUE (name);


--
-- TOC entry 3555 (class 2606 OID 316548)
-- Name: applicationPlugins applicationPlugins_packageName_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationPlugins"
    ADD CONSTRAINT "applicationPlugins_packageName_key" UNIQUE ("packageName");


--
-- TOC entry 3557 (class 2606 OID 316550)
-- Name: applicationPlugins applicationPlugins_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationPlugins"
    ADD CONSTRAINT "applicationPlugins_pkey" PRIMARY KEY (id);


--
-- TOC entry 3559 (class 2606 OID 316552)
-- Name: applicationVersion applicationVersion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."applicationVersion"
    ADD CONSTRAINT "applicationVersion_pkey" PRIMARY KEY (id);


--
-- TOC entry 3562 (class 2606 OID 316554)
-- Name: attachments attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachments
    ADD CONSTRAINT attachments_pkey PRIMARY KEY (id);


--
-- TOC entry 3566 (class 2606 OID 316556)
-- Name: authenticators authenticators_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authenticators
    ADD CONSTRAINT authenticators_name_key UNIQUE (name);


--
-- TOC entry 3568 (class 2606 OID 316558)
-- Name: authenticators authenticators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authenticators
    ADD CONSTRAINT authenticators_pkey PRIMARY KEY (id);


--
-- TOC entry 3570 (class 2606 OID 316560)
-- Name: chinaRegions chinaRegions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."chinaRegions"
    ADD CONSTRAINT "chinaRegions_pkey" PRIMARY KEY (code);


--
-- TOC entry 3573 (class 2606 OID 316562)
-- Name: collectionCategories collectionCategories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."collectionCategories"
    ADD CONSTRAINT "collectionCategories_pkey" PRIMARY KEY (id);


--
-- TOC entry 3575 (class 2606 OID 316564)
-- Name: collectionCategory collectionCategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."collectionCategory"
    ADD CONSTRAINT "collectionCategory_pkey" PRIMARY KEY ("collectionName", "categoryId");


--
-- TOC entry 3578 (class 2606 OID 316566)
-- Name: collections collections_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_name_key UNIQUE (name);


--
-- TOC entry 3580 (class 2606 OID 316568)
-- Name: collections collections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_pkey PRIMARY KEY (key);


--
-- TOC entry 3584 (class 2606 OID 316570)
-- Name: customRequestsRoles customRequestsRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."customRequestsRoles"
    ADD CONSTRAINT "customRequestsRoles_pkey" PRIMARY KEY ("customRequestKey", "roleName");


--
-- TOC entry 3582 (class 2606 OID 316572)
-- Name: customRequests customRequests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."customRequests"
    ADD CONSTRAINT "customRequests_pkey" PRIMARY KEY (key);


--
-- TOC entry 3589 (class 2606 OID 316574)
-- Name: dataSourcesCollections dataSourcesCollections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesCollections"
    ADD CONSTRAINT "dataSourcesCollections_pkey" PRIMARY KEY (key);


--
-- TOC entry 3593 (class 2606 OID 316576)
-- Name: dataSourcesFields dataSourcesFields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesFields"
    ADD CONSTRAINT "dataSourcesFields_pkey" PRIMARY KEY (key);


--
-- TOC entry 3606 (class 2606 OID 316578)
-- Name: dataSourcesRolesResourcesActions dataSourcesRolesResourcesActions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResourcesActions"
    ADD CONSTRAINT "dataSourcesRolesResourcesActions_pkey" PRIMARY KEY (id);


--
-- TOC entry 3610 (class 2606 OID 316580)
-- Name: dataSourcesRolesResourcesScopes dataSourcesRolesResourcesScopes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResourcesScopes"
    ADD CONSTRAINT "dataSourcesRolesResourcesScopes_pkey" PRIMARY KEY (id);


--
-- TOC entry 3602 (class 2606 OID 316582)
-- Name: dataSourcesRolesResources dataSourcesRolesResources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRolesResources"
    ADD CONSTRAINT "dataSourcesRolesResources_pkey" PRIMARY KEY (id);


--
-- TOC entry 3598 (class 2606 OID 316584)
-- Name: dataSourcesRoles dataSourcesRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSourcesRoles"
    ADD CONSTRAINT "dataSourcesRoles_pkey" PRIMARY KEY (id);


--
-- TOC entry 3587 (class 2606 OID 316586)
-- Name: dataSources dataSources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataSources"
    ADD CONSTRAINT "dataSources_pkey" PRIMARY KEY (key);


--
-- TOC entry 3613 (class 2606 OID 316588)
-- Name: executions executions_eventKey_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.executions
    ADD CONSTRAINT "executions_eventKey_key" UNIQUE ("eventKey");


--
-- TOC entry 3615 (class 2606 OID 316590)
-- Name: executions executions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.executions
    ADD CONSTRAINT executions_pkey PRIMARY KEY (id);


--
-- TOC entry 3620 (class 2606 OID 316592)
-- Name: fields fields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fields
    ADD CONSTRAINT fields_pkey PRIMARY KEY (key);


--
-- TOC entry 3624 (class 2606 OID 316594)
-- Name: flow_nodes flow_nodes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flow_nodes
    ADD CONSTRAINT flow_nodes_pkey PRIMARY KEY (id);


--
-- TOC entry 3629 (class 2606 OID 316596)
-- Name: funds funds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funds
    ADD CONSTRAINT funds_pkey PRIMARY KEY (id);


--
-- TOC entry 3633 (class 2606 OID 316598)
-- Name: hello hello_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hello
    ADD CONSTRAINT hello_pkey PRIMARY KEY (id);


--
-- TOC entry 3635 (class 2606 OID 316600)
-- Name: iframeHtml iframeHtml_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."iframeHtml"
    ADD CONSTRAINT "iframeHtml_pkey" PRIMARY KEY (id);


--
-- TOC entry 3640 (class 2606 OID 316602)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3747 (class 2606 OID 365368)
-- Name: kafka_configs kafka_configs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kafka_configs
    ADD CONSTRAINT kafka_configs_pkey PRIMARY KEY (id);


--
-- TOC entry 3745 (class 2606 OID 365357)
-- Name: kafka_topics kafka_topics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kafka_topics
    ADD CONSTRAINT kafka_topics_pkey PRIMARY KEY (id);


--
-- TOC entry 3643 (class 2606 OID 316604)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (name);


--
-- TOC entry 3645 (class 2606 OID 316606)
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- TOC entry 3648 (class 2606 OID 316608)
-- Name: proposes proposes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proposes
    ADD CONSTRAINT proposes_pkey PRIMARY KEY (id);


--
-- TOC entry 3658 (class 2606 OID 316610)
-- Name: rolesResourcesActions rolesResourcesActions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResourcesActions"
    ADD CONSTRAINT "rolesResourcesActions_pkey" PRIMARY KEY (id);


--
-- TOC entry 3662 (class 2606 OID 316612)
-- Name: rolesResourcesScopes rolesResourcesScopes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResourcesScopes"
    ADD CONSTRAINT "rolesResourcesScopes_pkey" PRIMARY KEY (id);


--
-- TOC entry 3655 (class 2606 OID 316614)
-- Name: rolesResources rolesResources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesResources"
    ADD CONSTRAINT "rolesResources_pkey" PRIMARY KEY (id);


--
-- TOC entry 3664 (class 2606 OID 316616)
-- Name: rolesUischemas rolesUischemas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesUischemas"
    ADD CONSTRAINT "rolesUischemas_pkey" PRIMARY KEY ("roleName", "uiSchemaXUid");


--
-- TOC entry 3667 (class 2606 OID 316618)
-- Name: rolesUsers rolesUsers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."rolesUsers"
    ADD CONSTRAINT "rolesUsers_pkey" PRIMARY KEY ("roleName", "userId");


--
-- TOC entry 3651 (class 2606 OID 316620)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (name);


--
-- TOC entry 3653 (class 2606 OID 316622)
-- Name: roles roles_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_title_key UNIQUE (title);


--
-- TOC entry 3670 (class 2606 OID 316624)
-- Name: sequences sequences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sequences
    ADD CONSTRAINT sequences_pkey PRIMARY KEY (id);


--
-- TOC entry 3672 (class 2606 OID 316626)
-- Name: storages storages_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storages
    ADD CONSTRAINT storages_name_key UNIQUE (name);


--
-- TOC entry 3674 (class 2606 OID 316628)
-- Name: storages storages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storages
    ADD CONSTRAINT storages_pkey PRIMARY KEY (id);


--
-- TOC entry 3676 (class 2606 OID 316630)
-- Name: systemSettings systemSettings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."systemSettings"
    ADD CONSTRAINT "systemSettings_pkey" PRIMARY KEY (id);


--
-- TOC entry 3679 (class 2606 OID 316632)
-- Name: t_587vrvz0gcb t_587vrvz0gcb_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_587vrvz0gcb
    ADD CONSTRAINT t_587vrvz0gcb_pkey PRIMARY KEY (id);


--
-- TOC entry 3682 (class 2606 OID 316634)
-- Name: t_bzkvdw2a767 t_bzkvdw2a767_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_bzkvdw2a767
    ADD CONSTRAINT t_bzkvdw2a767_pkey PRIMARY KEY (f_s8php2rxxwe, f_qxu5av3g0sx);


--
-- TOC entry 3743 (class 2606 OID 365323)
-- Name: t_ncaek4uddrw t_ncaek4uddrw_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_ncaek4uddrw
    ADD CONSTRAINT t_ncaek4uddrw_pkey PRIMARY KEY (f_j72jrq1b0nw, f_9k9506pi4rq);


--
-- TOC entry 3685 (class 2606 OID 316636)
-- Name: t_s9b2jhcxq9q t_s9b2jhcxq9q_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_s9b2jhcxq9q
    ADD CONSTRAINT t_s9b2jhcxq9q_pkey PRIMARY KEY (f_b37rybuw15a, f_8o3qqdvq8bk);


--
-- TOC entry 3687 (class 2606 OID 316638)
-- Name: themeConfig themeConfig_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."themeConfig"
    ADD CONSTRAINT "themeConfig_pkey" PRIMARY KEY (id);


--
-- TOC entry 3689 (class 2606 OID 316640)
-- Name: tokenBlacklist tokenBlacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tokenBlacklist"
    ADD CONSTRAINT "tokenBlacklist_pkey" PRIMARY KEY (id);


--
-- TOC entry 3695 (class 2606 OID 316642)
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- TOC entry 3699 (class 2606 OID 316644)
-- Name: uiSchemaServerHooks uiSchemaServerHooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemaServerHooks"
    ADD CONSTRAINT "uiSchemaServerHooks_pkey" PRIMARY KEY (id);


--
-- TOC entry 3702 (class 2606 OID 316646)
-- Name: uiSchemaTemplates uiSchemaTemplates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemaTemplates"
    ADD CONSTRAINT "uiSchemaTemplates_pkey" PRIMARY KEY (key);


--
-- TOC entry 3705 (class 2606 OID 316648)
-- Name: uiSchemaTreePath uiSchemaTreePath_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemaTreePath"
    ADD CONSTRAINT "uiSchemaTreePath_pkey" PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 3708 (class 2606 OID 316650)
-- Name: uiSchemas uiSchemas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."uiSchemas"
    ADD CONSTRAINT "uiSchemas_pkey" PRIMARY KEY ("x-uid");


--
-- TOC entry 3721 (class 2606 OID 316652)
-- Name: usersAuthenticators usersAuthenticators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."usersAuthenticators"
    ADD CONSTRAINT "usersAuthenticators_pkey" PRIMARY KEY (authenticator, "userId");


--
-- TOC entry 3711 (class 2606 OID 316654)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 3726 (class 2606 OID 316656)
-- Name: users_jobs users_jobs_jobId_userId_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_jobs
    ADD CONSTRAINT "users_jobs_jobId_userId_key" UNIQUE ("jobId", "userId");


--
-- TOC entry 3730 (class 2606 OID 316658)
-- Name: users_jobs users_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_jobs
    ADD CONSTRAINT users_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3713 (class 2606 OID 316660)
-- Name: users users_phone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);


--
-- TOC entry 3715 (class 2606 OID 316662)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3717 (class 2606 OID 316664)
-- Name: users users_resetToken_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_resetToken_key" UNIQUE ("resetToken");


--
-- TOC entry 3719 (class 2606 OID 316666)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 3734 (class 2606 OID 316668)
-- Name: verifications verifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verifications
    ADD CONSTRAINT verifications_pkey PRIMARY KEY (id);


--
-- TOC entry 3737 (class 2606 OID 316670)
-- Name: verifications_providers verifications_providers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verifications_providers
    ADD CONSTRAINT verifications_providers_pkey PRIMARY KEY (id);


--
-- TOC entry 3740 (class 2606 OID 316672)
-- Name: workflows workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workflows
    ADD CONSTRAINT workflows_pkey PRIMARY KEY (id);


--
-- TOC entry 3551 (class 1259 OID 316673)
-- Name: api_keys_role_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX api_keys_role_name ON public."apiKeys" USING btree ("roleName");


--
-- TOC entry 3560 (class 1259 OID 316674)
-- Name: attachments_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX attachments_created_by_id ON public.attachments USING btree ("createdById");


--
-- TOC entry 3563 (class 1259 OID 316675)
-- Name: attachments_storage_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX attachments_storage_id ON public.attachments USING btree ("storageId");


--
-- TOC entry 3564 (class 1259 OID 316676)
-- Name: authenticators_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authenticators_created_by_id ON public.authenticators USING btree ("createdById");


--
-- TOC entry 3571 (class 1259 OID 316677)
-- Name: china_regions_parent_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX china_regions_parent_code ON public."chinaRegions" USING btree ("parentCode");


--
-- TOC entry 3576 (class 1259 OID 316678)
-- Name: collection_category_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX collection_category_category_id ON public."collectionCategory" USING btree ("categoryId");


--
-- TOC entry 3585 (class 1259 OID 316679)
-- Name: custom_requests_roles_role_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX custom_requests_roles_role_name ON public."customRequestsRoles" USING btree ("roleName");


--
-- TOC entry 3590 (class 1259 OID 316680)
-- Name: data_sources_collections_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_collections_data_source_key ON public."dataSourcesCollections" USING btree ("dataSourceKey");


--
-- TOC entry 3591 (class 1259 OID 316681)
-- Name: data_sources_collections_name_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX data_sources_collections_name_data_source_key ON public."dataSourcesCollections" USING btree (name, "dataSourceKey");


--
-- TOC entry 3594 (class 1259 OID 316682)
-- Name: data_sources_fields_collection_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_fields_collection_key ON public."dataSourcesFields" USING btree ("collectionKey");


--
-- TOC entry 3595 (class 1259 OID 316683)
-- Name: data_sources_fields_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_fields_data_source_key ON public."dataSourcesFields" USING btree ("dataSourceKey");


--
-- TOC entry 3596 (class 1259 OID 316684)
-- Name: data_sources_fields_name_collection_name_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX data_sources_fields_name_collection_name_data_source_key ON public."dataSourcesFields" USING btree (name, "collectionName", "dataSourceKey");


--
-- TOC entry 3599 (class 1259 OID 316685)
-- Name: data_sources_roles_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_data_source_key ON public."dataSourcesRoles" USING btree ("dataSourceKey");


--
-- TOC entry 3607 (class 1259 OID 316686)
-- Name: data_sources_roles_resources_actions_roles_resource_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_actions_roles_resource_id ON public."dataSourcesRolesResourcesActions" USING btree ("rolesResourceId");


--
-- TOC entry 3608 (class 1259 OID 316687)
-- Name: data_sources_roles_resources_actions_scope_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_actions_scope_id ON public."dataSourcesRolesResourcesActions" USING btree ("scopeId");


--
-- TOC entry 3603 (class 1259 OID 316688)
-- Name: data_sources_roles_resources_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_data_source_key ON public."dataSourcesRolesResources" USING btree ("dataSourceKey");


--
-- TOC entry 3604 (class 1259 OID 316689)
-- Name: data_sources_roles_resources_role_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_role_name ON public."dataSourcesRolesResources" USING btree ("roleName");


--
-- TOC entry 3611 (class 1259 OID 316690)
-- Name: data_sources_roles_resources_scopes_data_source_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_resources_scopes_data_source_key ON public."dataSourcesRolesResourcesScopes" USING btree ("dataSourceKey");


--
-- TOC entry 3600 (class 1259 OID 316691)
-- Name: data_sources_roles_role_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX data_sources_roles_role_name ON public."dataSourcesRoles" USING btree ("roleName");


--
-- TOC entry 3616 (class 1259 OID 316692)
-- Name: executions_workflow_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX executions_workflow_id ON public.executions USING btree ("workflowId");


--
-- TOC entry 3617 (class 1259 OID 316693)
-- Name: fields_collection_name_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX fields_collection_name_name ON public.fields USING btree ("collectionName", name);


--
-- TOC entry 3618 (class 1259 OID 316694)
-- Name: fields_parent_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fields_parent_key ON public.fields USING btree ("parentKey");


--
-- TOC entry 3621 (class 1259 OID 316695)
-- Name: fields_reverse_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fields_reverse_key ON public.fields USING btree ("reverseKey");


--
-- TOC entry 3622 (class 1259 OID 316696)
-- Name: flow_nodes_downstream_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX flow_nodes_downstream_id ON public.flow_nodes USING btree ("downstreamId");


--
-- TOC entry 3625 (class 1259 OID 316697)
-- Name: flow_nodes_upstream_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX flow_nodes_upstream_id ON public.flow_nodes USING btree ("upstreamId");


--
-- TOC entry 3626 (class 1259 OID 316698)
-- Name: flow_nodes_workflow_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX flow_nodes_workflow_id ON public.flow_nodes USING btree ("workflowId");


--
-- TOC entry 3627 (class 1259 OID 316699)
-- Name: funds_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX funds_created_by_id ON public.funds USING btree ("createdById");


--
-- TOC entry 3630 (class 1259 OID 316700)
-- Name: funds_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX funds_project_id ON public.funds USING btree (project_id);


--
-- TOC entry 3631 (class 1259 OID 316701)
-- Name: funds_updated_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX funds_updated_by_id ON public.funds USING btree ("updatedById");


--
-- TOC entry 3636 (class 1259 OID 316702)
-- Name: iframe_html_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX iframe_html_created_by_id ON public."iframeHtml" USING btree ("createdById");


--
-- TOC entry 3637 (class 1259 OID 316703)
-- Name: jobs_execution_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_execution_id ON public.jobs USING btree ("executionId");


--
-- TOC entry 3638 (class 1259 OID 316704)
-- Name: jobs_node_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_node_id ON public.jobs USING btree ("nodeId");


--
-- TOC entry 3641 (class 1259 OID 316705)
-- Name: jobs_upstream_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_upstream_id ON public.jobs USING btree ("upstreamId");


--
-- TOC entry 3646 (class 1259 OID 316706)
-- Name: proposes_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX proposes_created_by_id ON public.proposes USING btree ("createdById");


--
-- TOC entry 3649 (class 1259 OID 316707)
-- Name: proposes_updated_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX proposes_updated_by_id ON public.proposes USING btree ("updatedById");


--
-- TOC entry 3659 (class 1259 OID 316708)
-- Name: roles_resources_actions_roles_resource_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX roles_resources_actions_roles_resource_id ON public."rolesResourcesActions" USING btree ("rolesResourceId");


--
-- TOC entry 3660 (class 1259 OID 316709)
-- Name: roles_resources_actions_scope_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX roles_resources_actions_scope_id ON public."rolesResourcesActions" USING btree ("scopeId");


--
-- TOC entry 3656 (class 1259 OID 316710)
-- Name: roles_resources_role_name_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX roles_resources_role_name_name ON public."rolesResources" USING btree ("roleName", name);


--
-- TOC entry 3665 (class 1259 OID 316711)
-- Name: roles_uischemas_ui_schema_x_uid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX roles_uischemas_ui_schema_x_uid ON public."rolesUischemas" USING btree ("uiSchemaXUid");


--
-- TOC entry 3668 (class 1259 OID 316712)
-- Name: roles_users_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX roles_users_user_id ON public."rolesUsers" USING btree ("userId");


--
-- TOC entry 3677 (class 1259 OID 316713)
-- Name: system_settings_logo_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX system_settings_logo_id ON public."systemSettings" USING btree ("logoId");


--
-- TOC entry 3680 (class 1259 OID 316714)
-- Name: t_bzkvdw2a767_f_qxu5av3g0sx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX t_bzkvdw2a767_f_qxu5av3g0sx ON public.t_bzkvdw2a767 USING btree (f_qxu5av3g0sx);


--
-- TOC entry 3741 (class 1259 OID 365324)
-- Name: t_ncaek4uddrw_f_9k9506pi4rq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX t_ncaek4uddrw_f_9k9506pi4rq ON public.t_ncaek4uddrw USING btree (f_9k9506pi4rq);


--
-- TOC entry 3683 (class 1259 OID 316715)
-- Name: t_s9b2jhcxq9q_f_8o3qqdvq8bk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX t_s9b2jhcxq9q_f_8o3qqdvq8bk ON public.t_s9b2jhcxq9q USING btree (f_8o3qqdvq8bk);


--
-- TOC entry 3690 (class 1259 OID 316716)
-- Name: token_blacklist_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX token_blacklist_token ON public."tokenBlacklist" USING btree (token);


--
-- TOC entry 3691 (class 1259 OID 316717)
-- Name: transactions_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX transactions_created_by_id ON public.transactions USING btree ("createdById");


--
-- TOC entry 3692 (class 1259 OID 316718)
-- Name: transactions_f_e47my4oktv2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX transactions_f_e47my4oktv2 ON public.transactions USING btree (f_e47my4oktv2);


--
-- TOC entry 3693 (class 1259 OID 316719)
-- Name: transactions_fund_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX transactions_fund_id ON public.transactions USING btree (fund_id);


--
-- TOC entry 3696 (class 1259 OID 316720)
-- Name: transactions_updated_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX transactions_updated_by_id ON public.transactions USING btree ("updatedById");


--
-- TOC entry 3697 (class 1259 OID 316721)
-- Name: transactions_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX transactions_user_id ON public.transactions USING btree (user_id);


--
-- TOC entry 3700 (class 1259 OID 316722)
-- Name: ui_schema_server_hooks_uid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ui_schema_server_hooks_uid ON public."uiSchemaServerHooks" USING btree (uid);


--
-- TOC entry 3703 (class 1259 OID 316723)
-- Name: ui_schema_templates_uid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ui_schema_templates_uid ON public."uiSchemaTemplates" USING btree (uid);


--
-- TOC entry 3706 (class 1259 OID 316724)
-- Name: ui_schema_tree_path_descendant; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ui_schema_tree_path_descendant ON public."uiSchemaTreePath" USING btree (descendant);


--
-- TOC entry 3722 (class 1259 OID 316725)
-- Name: users_authenticators_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_authenticators_created_by_id ON public."usersAuthenticators" USING btree ("createdById");


--
-- TOC entry 3723 (class 1259 OID 316726)
-- Name: users_authenticators_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_authenticators_user_id ON public."usersAuthenticators" USING btree ("userId");


--
-- TOC entry 3709 (class 1259 OID 316727)
-- Name: users_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_created_by_id ON public.users USING btree ("createdById");


--
-- TOC entry 3724 (class 1259 OID 316728)
-- Name: users_jobs_execution_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_execution_id ON public.users_jobs USING btree ("executionId");


--
-- TOC entry 3727 (class 1259 OID 316729)
-- Name: users_jobs_job_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_job_id ON public.users_jobs USING btree ("jobId");


--
-- TOC entry 3728 (class 1259 OID 316730)
-- Name: users_jobs_node_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_node_id ON public.users_jobs USING btree ("nodeId");


--
-- TOC entry 3731 (class 1259 OID 316731)
-- Name: users_jobs_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_user_id ON public.users_jobs USING btree ("userId");


--
-- TOC entry 3732 (class 1259 OID 316732)
-- Name: users_jobs_workflow_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_jobs_workflow_id ON public.users_jobs USING btree ("workflowId");


--
-- TOC entry 3735 (class 1259 OID 316733)
-- Name: verifications_provider_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX verifications_provider_id ON public.verifications USING btree ("providerId");


--
-- TOC entry 3738 (class 1259 OID 316734)
-- Name: workflows_key_current; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX workflows_key_current ON public.workflows USING btree (key, current);


-- Completed on 2024-11-30 10:07:12 UTC

--
-- PostgreSQL database dump complete
--

