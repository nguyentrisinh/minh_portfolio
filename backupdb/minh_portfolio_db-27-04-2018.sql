PGDMP     )                    v            minh_portfolio_db    9.6.4    9.6.4 _   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    118786    minh_portfolio_db    DATABASE     �   CREATE DATABASE minh_portfolio_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
 !   DROP DATABASE minh_portfolio_db;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1                       1259    120534    about_me_aboutme    TABLE     �   CREATE TABLE about_me_aboutme (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(100) NOT NULL,
    description text NOT NULL,
    resume_file character varying(100)
);
 $   DROP TABLE public.about_me_aboutme;
       public         postgres    false    3                       1259    120573    about_me_skillitem    TABLE     �   CREATE TABLE about_me_skillitem (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    percentage integer NOT NULL,
    skill_plugin_item_id integer NOT NULL
);
 &   DROP TABLE public.about_me_skillitem;
       public         postgres    false    3                       1259    120571    about_me_skillitem_id_seq    SEQUENCE     {   CREATE SEQUENCE about_me_skillitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.about_me_skillitem_id_seq;
       public       postgres    false    3    278            �           0    0    about_me_skillitem_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE about_me_skillitem_id_seq OWNED BY about_me_skillitem.id;
            public       postgres    false    277                       1259    120579    about_me_skillplugin    TABLE     �   CREATE TABLE about_me_skillplugin (
    cmsplugin_ptr_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 (   DROP TABLE public.about_me_skillplugin;
       public         postgres    false    3                       1259    120549    about_me_statisticitem    TABLE     �   CREATE TABLE about_me_statisticitem (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    statistic character varying(100) NOT NULL,
    statistic_plugin_id_id integer NOT NULL
);
 *   DROP TABLE public.about_me_statisticitem;
       public         postgres    false    3                       1259    120547    about_me_statisticitem_id_seq    SEQUENCE        CREATE SEQUENCE about_me_statisticitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.about_me_statisticitem_id_seq;
       public       postgres    false    3    275            �           0    0    about_me_statisticitem_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE about_me_statisticitem_id_seq OWNED BY about_me_statisticitem.id;
            public       postgres    false    274                       1259    120555    about_me_statisticplugin    TABLE     �   CREATE TABLE about_me_statisticplugin (
    cmsplugin_ptr_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 ,   DROP TABLE public.about_me_statisticplugin;
       public         postgres    false    3                       1259    120607    about_me_timelineblock    TABLE     }  CREATE TABLE about_me_timelineblock (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    content text,
    is_left boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    timeline_header_id_id integer NOT NULL,
    period_time character varying(250) NOT NULL,
    url character varying(250)
);
 *   DROP TABLE public.about_me_timelineblock;
       public         postgres    false    3                       1259    120605    about_me_timelineblock_id_seq    SEQUENCE        CREATE SEQUENCE about_me_timelineblock_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.about_me_timelineblock_id_seq;
       public       postgres    false    3    281            �           0    0    about_me_timelineblock_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE about_me_timelineblock_id_seq OWNED BY about_me_timelineblock.id;
            public       postgres    false    280                       1259    120618    about_me_timelineheader    TABLE     �   CREATE TABLE about_me_timelineheader (
    title character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    "order" integer NOT NULL
);
 +   DROP TABLE public.about_me_timelineheader;
       public         postgres    false    3            �            1259    119441    aldryn_style_style    TABLE        CREATE TABLE aldryn_style_style (
    label character varying(128) NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    class_name character varying(50) NOT NULL,
    id_name character varying(50) NOT NULL,
    tag_type character varying(50) NOT NULL,
    padding_left smallint,
    padding_right smallint,
    padding_top smallint,
    padding_bottom smallint,
    margin_left smallint,
    margin_right smallint,
    margin_top smallint,
    margin_bottom smallint,
    additional_class_names text NOT NULL
);
 &   DROP TABLE public.aldryn_style_style;
       public         postgres    false    3            �            1259    118818 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    118816    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    192    3                        0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       postgres    false    191            �            1259    118828    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    118826    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    3    194                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       postgres    false    193            �            1259    118810    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    118808    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    190    3                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       postgres    false    189            �            1259    118836 	   auth_user    TABLE     �  CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    3            �            1259    118846    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    118844    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    3    198                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       postgres    false    197            �            1259    118834    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    3    196                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       postgres    false    195            �            1259    118854    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    118852 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    3    200                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       postgres    false    199            �            1259    118957    cms_aliaspluginmodel    TABLE     �   CREATE TABLE cms_aliaspluginmodel (
    cmsplugin_ptr_id integer NOT NULL,
    plugin_id integer,
    alias_placeholder_id integer
);
 (   DROP TABLE public.cms_aliaspluginmodel;
       public         postgres    false    3            �            1259    118946    cms_cmsplugin    TABLE     �  CREATE TABLE cms_cmsplugin (
    id integer NOT NULL,
    "position" smallint NOT NULL,
    language character varying(15) NOT NULL,
    plugin_type character varying(50) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    changed_date timestamp with time zone NOT NULL,
    parent_id integer,
    placeholder_id integer,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    path character varying(255) NOT NULL,
    CONSTRAINT cms_cmsplugin_depth_check CHECK ((depth >= 0)),
    CONSTRAINT cms_cmsplugin_numchild_check CHECK ((numchild >= 0)),
    CONSTRAINT cms_cmsplugin_position_check CHECK (("position" >= 0))
);
 !   DROP TABLE public.cms_cmsplugin;
       public         postgres    false    3            �            1259    118944    cms_cmsplugin_id_seq    SEQUENCE     v   CREATE SEQUENCE cms_cmsplugin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cms_cmsplugin_id_seq;
       public       postgres    false    3    206                       0    0    cms_cmsplugin_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE cms_cmsplugin_id_seq OWNED BY cms_cmsplugin.id;
            public       postgres    false    205            �            1259    118964    cms_globalpagepermission    TABLE     �  CREATE TABLE cms_globalpagepermission (
    id integer NOT NULL,
    can_change boolean NOT NULL,
    can_add boolean NOT NULL,
    can_delete boolean NOT NULL,
    can_change_advanced_settings boolean NOT NULL,
    can_publish boolean NOT NULL,
    can_change_permissions boolean NOT NULL,
    can_move_page boolean NOT NULL,
    can_view boolean NOT NULL,
    can_recover_page boolean NOT NULL,
    group_id integer,
    user_id integer
);
 ,   DROP TABLE public.cms_globalpagepermission;
       public         postgres    false    3            �            1259    118962    cms_globalpagepermission_id_seq    SEQUENCE     �   CREATE SEQUENCE cms_globalpagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.cms_globalpagepermission_id_seq;
       public       postgres    false    3    209                       0    0    cms_globalpagepermission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE cms_globalpagepermission_id_seq OWNED BY cms_globalpagepermission.id;
            public       postgres    false    208            �            1259    118972    cms_globalpagepermission_sites    TABLE     �   CREATE TABLE cms_globalpagepermission_sites (
    id integer NOT NULL,
    globalpagepermission_id integer NOT NULL,
    site_id integer NOT NULL
);
 2   DROP TABLE public.cms_globalpagepermission_sites;
       public         postgres    false    3            �            1259    118970 %   cms_globalpagepermission_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE cms_globalpagepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.cms_globalpagepermission_sites_id_seq;
       public       postgres    false    3    211                       0    0 %   cms_globalpagepermission_sites_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE cms_globalpagepermission_sites_id_seq OWNED BY cms_globalpagepermission_sites.id;
            public       postgres    false    210            �            1259    118980    cms_page    TABLE     �  CREATE TABLE cms_page (
    id integer NOT NULL,
    created_by character varying(255) NOT NULL,
    changed_by character varying(255) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    changed_date timestamp with time zone NOT NULL,
    publication_date timestamp with time zone,
    publication_end_date timestamp with time zone,
    in_navigation boolean NOT NULL,
    soft_root boolean NOT NULL,
    reverse_id character varying(40),
    navigation_extenders character varying(80),
    template character varying(100) NOT NULL,
    login_required boolean NOT NULL,
    limit_visibility_in_menu smallint,
    is_home boolean NOT NULL,
    application_urls character varying(200),
    application_namespace character varying(200),
    publisher_is_draft boolean NOT NULL,
    languages character varying(255),
    xframe_options integer NOT NULL,
    publisher_public_id integer,
    is_page_type boolean NOT NULL,
    node_id integer NOT NULL
);
    DROP TABLE public.cms_page;
       public         postgres    false    3            �            1259    118978    cms_page_id_seq    SEQUENCE     q   CREATE SEQUENCE cms_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.cms_page_id_seq;
       public       postgres    false    3    213            	           0    0    cms_page_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE cms_page_id_seq OWNED BY cms_page.id;
            public       postgres    false    212            �            1259    119128    cms_page_placeholders    TABLE     �   CREATE TABLE cms_page_placeholders (
    id integer NOT NULL,
    page_id integer NOT NULL,
    placeholder_id integer NOT NULL
);
 )   DROP TABLE public.cms_page_placeholders;
       public         postgres    false    3            �            1259    119126    cms_page_placeholders_id_seq    SEQUENCE     ~   CREATE SEQUENCE cms_page_placeholders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.cms_page_placeholders_id_seq;
       public       postgres    false    3    221            
           0    0    cms_page_placeholders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE cms_page_placeholders_id_seq OWNED BY cms_page_placeholders.id;
            public       postgres    false    220            �            1259    118998    cms_pagepermission    TABLE     �  CREATE TABLE cms_pagepermission (
    id integer NOT NULL,
    can_change boolean NOT NULL,
    can_add boolean NOT NULL,
    can_delete boolean NOT NULL,
    can_change_advanced_settings boolean NOT NULL,
    can_publish boolean NOT NULL,
    can_change_permissions boolean NOT NULL,
    can_move_page boolean NOT NULL,
    can_view boolean NOT NULL,
    grant_on integer NOT NULL,
    group_id integer,
    page_id integer,
    user_id integer
);
 &   DROP TABLE public.cms_pagepermission;
       public         postgres    false    3            �            1259    118996    cms_pagepermission_id_seq    SEQUENCE     {   CREATE SEQUENCE cms_pagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.cms_pagepermission_id_seq;
       public       postgres    false    3    215                       0    0    cms_pagepermission_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE cms_pagepermission_id_seq OWNED BY cms_pagepermission.id;
            public       postgres    false    214            �            1259    119107    cms_pageuser    TABLE     d   CREATE TABLE cms_pageuser (
    user_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);
     DROP TABLE public.cms_pageuser;
       public         postgres    false    3            �            1259    119112    cms_pageusergroup    TABLE     j   CREATE TABLE cms_pageusergroup (
    group_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);
 %   DROP TABLE public.cms_pageusergroup;
       public         postgres    false    3            �            1259    119119    cms_placeholder    TABLE     �   CREATE TABLE cms_placeholder (
    id integer NOT NULL,
    slot character varying(255) NOT NULL,
    default_width smallint,
    CONSTRAINT cms_placeholder_default_width_check CHECK ((default_width >= 0))
);
 #   DROP TABLE public.cms_placeholder;
       public         postgres    false    3            �            1259    119117    cms_placeholder_id_seq    SEQUENCE     x   CREATE SEQUENCE cms_placeholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cms_placeholder_id_seq;
       public       postgres    false    219    3                       0    0    cms_placeholder_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE cms_placeholder_id_seq OWNED BY cms_placeholder.id;
            public       postgres    false    218            �            1259    119138    cms_placeholderreference    TABLE     �   CREATE TABLE cms_placeholderreference (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(255) NOT NULL,
    placeholder_ref_id integer
);
 ,   DROP TABLE public.cms_placeholderreference;
       public         postgres    false    3            �            1259    119145    cms_staticplaceholder    TABLE     &  CREATE TABLE cms_staticplaceholder (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    dirty boolean NOT NULL,
    creation_method character varying(20) NOT NULL,
    draft_id integer,
    public_id integer,
    site_id integer
);
 )   DROP TABLE public.cms_staticplaceholder;
       public         postgres    false    3            �            1259    119143    cms_staticplaceholder_id_seq    SEQUENCE     ~   CREATE SEQUENCE cms_staticplaceholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.cms_staticplaceholder_id_seq;
       public       postgres    false    3    224                       0    0    cms_staticplaceholder_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE cms_staticplaceholder_id_seq OWNED BY cms_staticplaceholder.id;
            public       postgres    false    223            �            1259    119158 	   cms_title    TABLE     {  CREATE TABLE cms_title (
    id integer NOT NULL,
    language character varying(15) NOT NULL,
    title character varying(255) NOT NULL,
    page_title character varying(255),
    menu_title character varying(255),
    meta_description text,
    slug character varying(255) NOT NULL,
    path character varying(255) NOT NULL,
    has_url_overwrite boolean NOT NULL,
    redirect character varying(2048),
    creation_date timestamp with time zone NOT NULL,
    published boolean NOT NULL,
    publisher_is_draft boolean NOT NULL,
    publisher_state smallint NOT NULL,
    page_id integer NOT NULL,
    publisher_public_id integer
);
    DROP TABLE public.cms_title;
       public         postgres    false    3            �            1259    119156    cms_title_id_seq    SEQUENCE     r   CREATE SEQUENCE cms_title_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cms_title_id_seq;
       public       postgres    false    3    226                       0    0    cms_title_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE cms_title_id_seq OWNED BY cms_title.id;
            public       postgres    false    225            �            1259    119560    cms_treenode    TABLE     S  CREATE TABLE cms_treenode (
    id integer NOT NULL,
    path character varying(255) NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    parent_id integer,
    site_id integer NOT NULL,
    CONSTRAINT cms_treenode_depth_check CHECK ((depth >= 0)),
    CONSTRAINT cms_treenode_numchild_check CHECK ((numchild >= 0))
);
     DROP TABLE public.cms_treenode;
       public         postgres    false    3            �            1259    119558    cms_treenode_id_seq    SEQUENCE     u   CREATE SEQUENCE cms_treenode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cms_treenode_id_seq;
       public       postgres    false    233    3                       0    0    cms_treenode_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE cms_treenode_id_seq OWNED BY cms_treenode.id;
            public       postgres    false    232            �            1259    119513    cms_urlconfrevision    TABLE     l   CREATE TABLE cms_urlconfrevision (
    id integer NOT NULL,
    revision character varying(255) NOT NULL
);
 '   DROP TABLE public.cms_urlconfrevision;
       public         postgres    false    3            �            1259    119511    cms_urlconfrevision_id_seq    SEQUENCE     |   CREATE SEQUENCE cms_urlconfrevision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.cms_urlconfrevision_id_seq;
       public       postgres    false    231    3                       0    0    cms_urlconfrevision_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE cms_urlconfrevision_id_seq OWNED BY cms_urlconfrevision.id;
            public       postgres    false    230            �            1259    119173    cms_usersettings    TABLE     �   CREATE TABLE cms_usersettings (
    id integer NOT NULL,
    language character varying(10) NOT NULL,
    clipboard_id integer,
    user_id integer NOT NULL
);
 $   DROP TABLE public.cms_usersettings;
       public         postgres    false    3            �            1259    119171    cms_usersettings_id_seq    SEQUENCE     y   CREATE SEQUENCE cms_usersettings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.cms_usersettings_id_seq;
       public       postgres    false    228    3                       0    0    cms_usersettings_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE cms_usersettings_id_seq OWNED BY cms_usersettings.id;
            public       postgres    false    227                       1259    120670    contact_me_contactme    TABLE     �   CREATE TABLE contact_me_contactme (
    cmsplugin_ptr_id integer NOT NULL,
    phone character varying(100) NOT NULL,
    address character varying(250) NOT NULL,
    email character varying(150) NOT NULL
);
 (   DROP TABLE public.contact_me_contactme;
       public         postgres    false    3                       1259    120680    contact_me_message    TABLE     >  CREATE TABLE contact_me_message (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    email character varying(250) NOT NULL,
    subject character varying(500) NOT NULL,
    message text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 &   DROP TABLE public.contact_me_message;
       public         postgres    false    3                       1259    120678    contact_me_message_id_seq    SEQUENCE     {   CREATE SEQUENCE contact_me_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.contact_me_message_id_seq;
       public       postgres    false    285    3                       0    0    contact_me_message_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE contact_me_message_id_seq OWNED BY contact_me_message.id;
            public       postgres    false    284            �            1259    118914    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    3            �            1259    118912    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    3    202                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       postgres    false    201            �            1259    118800    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    118798    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    3    188                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       postgres    false    187            �            1259    118789    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    118787    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    3    186                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       postgres    false    185                       1259    120506    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    118938    django_site    TABLE     �   CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         postgres    false    3            �            1259    118936    django_site_id_seq    SEQUENCE     t   CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public       postgres    false    204    3                       0    0    django_site_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;
            public       postgres    false    203            �            1259    119597    djangocms_column_column    TABLE     z   CREATE TABLE djangocms_column_column (
    cmsplugin_ptr_id integer NOT NULL,
    width character varying(50) NOT NULL
);
 +   DROP TABLE public.djangocms_column_column;
       public         postgres    false    3            �            1259    119602    djangocms_column_multicolumns    TABLE     V   CREATE TABLE djangocms_column_multicolumns (
    cmsplugin_ptr_id integer NOT NULL
);
 1   DROP TABLE public.djangocms_column_multicolumns;
       public         postgres    false    3            �            1259    119793    djangocms_file_file    TABLE     f  CREATE TABLE djangocms_file_file (
    cmsplugin_ptr_id integer NOT NULL,
    file_name character varying(255) NOT NULL,
    link_target character varying(255) NOT NULL,
    link_title character varying(255) NOT NULL,
    file_src_id integer,
    attributes text NOT NULL,
    template character varying(255) NOT NULL,
    show_file_size boolean NOT NULL
);
 '   DROP TABLE public.djangocms_file_file;
       public         postgres    false    3            �            1259    119862    djangocms_file_folder    TABLE       CREATE TABLE djangocms_file_folder (
    template character varying(255) NOT NULL,
    link_target character varying(255) NOT NULL,
    show_file_size boolean NOT NULL,
    attributes text NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    folder_src_id integer
);
 )   DROP TABLE public.djangocms_file_folder;
       public         postgres    false    3            �            1259    119882    djangocms_googlemap_googlemap    TABLE     b  CREATE TABLE djangocms_googlemap_googlemap (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    zoom smallint NOT NULL,
    lat double precision,
    lng double precision,
    width character varying(6) NOT NULL,
    height character varying(6) NOT NULL,
    scrollwheel boolean NOT NULL,
    double_click_zoom boolean NOT NULL,
    draggable boolean NOT NULL,
    keyboard_shortcuts boolean NOT NULL,
    pan_control boolean NOT NULL,
    zoom_control boolean NOT NULL,
    street_view_control boolean NOT NULL,
    style text NOT NULL,
    fullscreen_control boolean NOT NULL,
    map_type_control character varying(255) NOT NULL,
    rotate_control boolean NOT NULL,
    scale_control boolean NOT NULL,
    template character varying(255) NOT NULL,
    CONSTRAINT djangocms_googlemap_googlemap_zoom_check CHECK ((zoom >= 0))
);
 1   DROP TABLE public.djangocms_googlemap_googlemap;
       public         postgres    false    3            �            1259    119971 #   djangocms_googlemap_googlemapmarker    TABLE     :  CREATE TABLE djangocms_googlemap_googlemapmarker (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    lat numeric(10,6),
    lng numeric(10,6),
    show_content boolean NOT NULL,
    info_content text NOT NULL,
    icon_id integer
);
 7   DROP TABLE public.djangocms_googlemap_googlemapmarker;
       public         postgres    false    3            �            1259    119979 "   djangocms_googlemap_googlemaproute    TABLE       CREATE TABLE djangocms_googlemap_googlemaproute (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    origin character varying(255) NOT NULL,
    destination character varying(255) NOT NULL,
    travel_mode character varying(255) NOT NULL
);
 6   DROP TABLE public.djangocms_googlemap_googlemaproute;
       public         postgres    false    3            �            1259    120004    djangocms_link_link    TABLE     �  CREATE TABLE djangocms_link_link (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(255) NOT NULL,
    external_link character varying(2040) NOT NULL,
    anchor character varying(255) NOT NULL,
    mailto character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    target character varying(255) NOT NULL,
    internal_link_id integer,
    attributes text NOT NULL,
    template character varying(255) NOT NULL
);
 '   DROP TABLE public.djangocms_link_link;
       public         postgres    false    3            �            1259    120081    djangocms_picture_picture    TABLE     ^  CREATE TABLE djangocms_picture_picture (
    cmsplugin_ptr_id integer NOT NULL,
    link_url character varying(2040) NOT NULL,
    alignment character varying(255) NOT NULL,
    link_page_id integer,
    height integer,
    width integer,
    picture_id integer,
    attributes text NOT NULL,
    caption_text text NOT NULL,
    link_attributes text NOT NULL,
    link_target character varying(255) NOT NULL,
    use_automatic_scaling boolean NOT NULL,
    use_crop boolean NOT NULL,
    use_no_cropping boolean NOT NULL,
    use_upscale boolean NOT NULL,
    thumbnail_options_id integer,
    external_picture character varying(255) NOT NULL,
    template character varying(255) NOT NULL,
    CONSTRAINT djangocms_picture_picture_height_3db3e080_check CHECK ((height >= 0)),
    CONSTRAINT djangocms_picture_picture_width_5bba3699_check CHECK ((width >= 0))
);
 -   DROP TABLE public.djangocms_picture_picture;
       public         postgres    false    3                       1259    120243    djangocms_snippet_snippet    TABLE     �   CREATE TABLE djangocms_snippet_snippet (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    html text NOT NULL,
    template character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 -   DROP TABLE public.djangocms_snippet_snippet;
       public         postgres    false    3                        1259    120241     djangocms_snippet_snippet_id_seq    SEQUENCE     �   CREATE SEQUENCE djangocms_snippet_snippet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.djangocms_snippet_snippet_id_seq;
       public       postgres    false    257    3                       0    0     djangocms_snippet_snippet_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE djangocms_snippet_snippet_id_seq OWNED BY djangocms_snippet_snippet.id;
            public       postgres    false    256                       1259    120254    djangocms_snippet_snippetptr    TABLE     v   CREATE TABLE djangocms_snippet_snippetptr (
    cmsplugin_ptr_id integer NOT NULL,
    snippet_id integer NOT NULL
);
 0   DROP TABLE public.djangocms_snippet_snippetptr;
       public         postgres    false    3                       1259    120299    djangocms_text_ckeditor_text    TABLE     m   CREATE TABLE djangocms_text_ckeditor_text (
    cmsplugin_ptr_id integer NOT NULL,
    body text NOT NULL
);
 0   DROP TABLE public.djangocms_text_ckeditor_text;
       public         postgres    false    3                       1259    120322    djangocms_video_videoplayer    TABLE       CREATE TABLE djangocms_video_videoplayer (
    cmsplugin_ptr_id integer NOT NULL,
    embed_link character varying(255) NOT NULL,
    poster_id integer,
    attributes text NOT NULL,
    label character varying(255) NOT NULL,
    template character varying(255) NOT NULL
);
 /   DROP TABLE public.djangocms_video_videoplayer;
       public         postgres    false    3                       1259    120389    djangocms_video_videosource    TABLE     �   CREATE TABLE djangocms_video_videosource (
    cmsplugin_ptr_id integer NOT NULL,
    text_title character varying(255) NOT NULL,
    text_description text NOT NULL,
    attributes text NOT NULL,
    source_file_id integer
);
 /   DROP TABLE public.djangocms_video_videosource;
       public         postgres    false    3                       1259    120397    djangocms_video_videotrack    TABLE       CREATE TABLE djangocms_video_videotrack (
    cmsplugin_ptr_id integer NOT NULL,
    kind character varying(255) NOT NULL,
    srclang character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    attributes text NOT NULL,
    src_id integer
);
 .   DROP TABLE public.djangocms_video_videotrack;
       public         postgres    false    3                       1259    120430    easy_thumbnails_source    TABLE     �   CREATE TABLE easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);
 *   DROP TABLE public.easy_thumbnails_source;
       public         postgres    false    3                       1259    120428    easy_thumbnails_source_id_seq    SEQUENCE        CREATE SEQUENCE easy_thumbnails_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.easy_thumbnails_source_id_seq;
       public       postgres    false    3    264                       0    0    easy_thumbnails_source_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE easy_thumbnails_source_id_seq OWNED BY easy_thumbnails_source.id;
            public       postgres    false    263            
           1259    120438    easy_thumbnails_thumbnail    TABLE     �   CREATE TABLE easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);
 -   DROP TABLE public.easy_thumbnails_thumbnail;
       public         postgres    false    3            	           1259    120436     easy_thumbnails_thumbnail_id_seq    SEQUENCE     �   CREATE SEQUENCE easy_thumbnails_thumbnail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.easy_thumbnails_thumbnail_id_seq;
       public       postgres    false    3    266                       0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE easy_thumbnails_thumbnail_id_seq OWNED BY easy_thumbnails_thumbnail.id;
            public       postgres    false    265                       1259    120464 #   easy_thumbnails_thumbnaildimensions    TABLE     D  CREATE TABLE easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);
 7   DROP TABLE public.easy_thumbnails_thumbnaildimensions;
       public         postgres    false    3                       1259    120462 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE     �   CREATE SEQUENCE easy_thumbnails_thumbnaildimensions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq;
       public       postgres    false    3    268                       0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE easy_thumbnails_thumbnaildimensions_id_seq OWNED BY easy_thumbnails_thumbnaildimensions.id;
            public       postgres    false    267            �            1259    119629    filer_clipboard    TABLE     X   CREATE TABLE filer_clipboard (
    id integer NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.filer_clipboard;
       public         postgres    false    3            �            1259    119627    filer_clipboard_id_seq    SEQUENCE     x   CREATE SEQUENCE filer_clipboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.filer_clipboard_id_seq;
       public       postgres    false    3    237                       0    0    filer_clipboard_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE filer_clipboard_id_seq OWNED BY filer_clipboard.id;
            public       postgres    false    236            �            1259    119637    filer_clipboarditem    TABLE        CREATE TABLE filer_clipboarditem (
    id integer NOT NULL,
    clipboard_id integer NOT NULL,
    file_id integer NOT NULL
);
 '   DROP TABLE public.filer_clipboarditem;
       public         postgres    false    3            �            1259    119635    filer_clipboarditem_id_seq    SEQUENCE     |   CREATE SEQUENCE filer_clipboarditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.filer_clipboarditem_id_seq;
       public       postgres    false    239    3                       0    0    filer_clipboarditem_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE filer_clipboarditem_id_seq OWNED BY filer_clipboarditem.id;
            public       postgres    false    238            �            1259    119645 
   filer_file    TABLE       CREATE TABLE filer_file (
    id integer NOT NULL,
    file character varying(255),
    _file_size bigint,
    sha1 character varying(40) NOT NULL,
    has_all_mandatory_data boolean NOT NULL,
    original_filename character varying(255),
    name character varying(255) NOT NULL,
    description text,
    uploaded_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    is_public boolean NOT NULL,
    folder_id integer,
    owner_id integer,
    polymorphic_ctype_id integer
);
    DROP TABLE public.filer_file;
       public         postgres    false    3            �            1259    119643    filer_file_id_seq    SEQUENCE     s   CREATE SEQUENCE filer_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.filer_file_id_seq;
       public       postgres    false    241    3                       0    0    filer_file_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE filer_file_id_seq OWNED BY filer_file.id;
            public       postgres    false    240            �            1259    119656    filer_folder    TABLE     �  CREATE TABLE filer_folder (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    uploaded_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    owner_id integer,
    parent_id integer,
    CONSTRAINT filer_folder_level_check CHECK ((level >= 0)),
    CONSTRAINT filer_folder_lft_check CHECK ((lft >= 0)),
    CONSTRAINT filer_folder_rght_check CHECK ((rght >= 0)),
    CONSTRAINT filer_folder_tree_id_check CHECK ((tree_id >= 0))
);
     DROP TABLE public.filer_folder;
       public         postgres    false    3            �            1259    119654    filer_folder_id_seq    SEQUENCE     u   CREATE SEQUENCE filer_folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.filer_folder_id_seq;
       public       postgres    false    3    243                       0    0    filer_folder_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE filer_folder_id_seq OWNED BY filer_folder.id;
            public       postgres    false    242            �            1259    119668    filer_folderpermission    TABLE       CREATE TABLE filer_folderpermission (
    id integer NOT NULL,
    type smallint NOT NULL,
    everybody boolean NOT NULL,
    can_edit smallint,
    can_read smallint,
    can_add_children smallint,
    folder_id integer,
    group_id integer,
    user_id integer
);
 *   DROP TABLE public.filer_folderpermission;
       public         postgres    false    3            �            1259    119666    filer_folderpermission_id_seq    SEQUENCE        CREATE SEQUENCE filer_folderpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.filer_folderpermission_id_seq;
       public       postgres    false    3    245                       0    0    filer_folderpermission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE filer_folderpermission_id_seq OWNED BY filer_folderpermission.id;
            public       postgres    false    244            �            1259    119676    filer_image    TABLE     �  CREATE TABLE filer_image (
    file_ptr_id integer NOT NULL,
    _height integer,
    _width integer,
    date_taken timestamp with time zone,
    default_alt_text character varying(255),
    default_caption character varying(255),
    author character varying(255),
    must_always_publish_author_credit boolean NOT NULL,
    must_always_publish_copyright boolean NOT NULL,
    subject_location character varying(64) NOT NULL
);
    DROP TABLE public.filer_image;
       public         postgres    false    3            �            1259    119766    filer_thumbnailoption    TABLE     �   CREATE TABLE filer_thumbnailoption (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    crop boolean NOT NULL,
    upscale boolean NOT NULL
);
 )   DROP TABLE public.filer_thumbnailoption;
       public         postgres    false    3            �            1259    119764    filer_thumbnailoption_id_seq    SEQUENCE     ~   CREATE SEQUENCE filer_thumbnailoption_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.filer_thumbnailoption_id_seq;
       public       postgres    false    248    3                        0    0    filer_thumbnailoption_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE filer_thumbnailoption_id_seq OWNED BY filer_thumbnailoption.id;
            public       postgres    false    247                       1259    120521    hero_area_heroarea    TABLE     �  CREATE TABLE hero_area_heroarea (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(100) NOT NULL,
    name character varying(100) NOT NULL,
    working_position character varying(100) NOT NULL,
    background_image character varying(100) NOT NULL,
    linkedin_url character varying(255),
    github_url character varying(255),
    facebook_url character varying(255)
);
 &   DROP TABLE public.hero_area_heroarea;
       public         postgres    false    3                       1259    120496    menus_cachekey    TABLE     �   CREATE TABLE menus_cachekey (
    id integer NOT NULL,
    language character varying(255) NOT NULL,
    site integer NOT NULL,
    key character varying(255) NOT NULL,
    CONSTRAINT menus_cachekey_site_check CHECK ((site >= 0))
);
 "   DROP TABLE public.menus_cachekey;
       public         postgres    false    3                       1259    120494    menus_cachekey_id_seq    SEQUENCE     w   CREATE SEQUENCE menus_cachekey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.menus_cachekey_id_seq;
       public       postgres    false    3    270            !           0    0    menus_cachekey_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE menus_cachekey_id_seq OWNED BY menus_cachekey.id;
            public       postgres    false    269                       1259    120700    portfolio_app_demourlitem    TABLE     _  CREATE TABLE portfolio_app_demourlitem (
    id integer NOT NULL,
    demo_url character varying(500) NOT NULL,
    type smallint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    project_id_id integer NOT NULL,
    CONSTRAINT portfolio_app_demourlitem_type_check CHECK ((type >= 0))
);
 -   DROP TABLE public.portfolio_app_demourlitem;
       public         postgres    false    3                       1259    120698     portfolio_app_demourlitem_id_seq    SEQUENCE     �   CREATE SEQUENCE portfolio_app_demourlitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.portfolio_app_demourlitem_id_seq;
       public       postgres    false    3    287            "           0    0     portfolio_app_demourlitem_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE portfolio_app_demourlitem_id_seq OWNED BY portfolio_app_demourlitem.id;
            public       postgres    false    286            !           1259    120712    portfolio_app_mediaasset    TABLE     �  CREATE TABLE portfolio_app_mediaasset (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    type smallint NOT NULL,
    media_asset character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    project_id_id integer NOT NULL,
    CONSTRAINT portfolio_app_mediaasset_type_check CHECK ((type >= 0))
);
 ,   DROP TABLE public.portfolio_app_mediaasset;
       public         postgres    false    3                        1259    120710    portfolio_app_mediaasset_id_seq    SEQUENCE     �   CREATE SEQUENCE portfolio_app_mediaasset_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.portfolio_app_mediaasset_id_seq;
       public       postgres    false    289    3            #           0    0    portfolio_app_mediaasset_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE portfolio_app_mediaasset_id_seq OWNED BY portfolio_app_mediaasset.id;
            public       postgres    false    288            "           1259    120719    portfolio_app_project    TABLE     t  CREATE TABLE portfolio_app_project (
    cmsplugin_ptr_id integer NOT NULL,
    slug character varying(255) NOT NULL,
    title character varying(250),
    sub_title character varying(250),
    short_description text NOT NULL,
    description text NOT NULL,
    skills character varying(255),
    roles character varying(255),
    client character varying(255),
    length character varying(50),
    demo_url character varying(255),
    youtube_embed_url character varying(255),
    top_image character varying(500) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 )   DROP TABLE public.portfolio_app_project;
       public         postgres    false    3            %           1259    120734    portfolio_app_project_tags    TABLE     �   CREATE TABLE portfolio_app_project_tags (
    id integer NOT NULL,
    project_id integer NOT NULL,
    tag_id integer NOT NULL
);
 .   DROP TABLE public.portfolio_app_project_tags;
       public         postgres    false    3            $           1259    120732 !   portfolio_app_project_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE portfolio_app_project_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.portfolio_app_project_tags_id_seq;
       public       postgres    false    293    3            $           0    0 !   portfolio_app_project_tags_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE portfolio_app_project_tags_id_seq OWNED BY portfolio_app_project_tags.id;
            public       postgres    false    292            #           1259    120727    portfolio_app_tag    TABLE     t   CREATE TABLE portfolio_app_tag (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(100) NOT NULL
);
 %   DROP TABLE public.portfolio_app_tag;
       public         postgres    false    3            �	           2604    120576    about_me_skillitem id    DEFAULT     p   ALTER TABLE ONLY about_me_skillitem ALTER COLUMN id SET DEFAULT nextval('about_me_skillitem_id_seq'::regclass);
 D   ALTER TABLE public.about_me_skillitem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    278    277    278            	           2604    120552    about_me_statisticitem id    DEFAULT     x   ALTER TABLE ONLY about_me_statisticitem ALTER COLUMN id SET DEFAULT nextval('about_me_statisticitem_id_seq'::regclass);
 H   ALTER TABLE public.about_me_statisticitem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    274    275    275            �	           2604    120610    about_me_timelineblock id    DEFAULT     x   ALTER TABLE ONLY about_me_timelineblock ALTER COLUMN id SET DEFAULT nextval('about_me_timelineblock_id_seq'::regclass);
 H   ALTER TABLE public.about_me_timelineblock ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    280    281    281            P	           2604    118821    auth_group id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    192    191    192            Q	           2604    118831    auth_group_permissions id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    193    194    194            O	           2604    118813    auth_permission id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    189    190    190            R	           2604    118839    auth_user id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    195    196            S	           2604    118849    auth_user_groups id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    198    198            T	           2604    118857    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    200    200            X	           2604    118949    cms_cmsplugin id    DEFAULT     f   ALTER TABLE ONLY cms_cmsplugin ALTER COLUMN id SET DEFAULT nextval('cms_cmsplugin_id_seq'::regclass);
 ?   ALTER TABLE public.cms_cmsplugin ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205    206            \	           2604    118967    cms_globalpagepermission id    DEFAULT     |   ALTER TABLE ONLY cms_globalpagepermission ALTER COLUMN id SET DEFAULT nextval('cms_globalpagepermission_id_seq'::regclass);
 J   ALTER TABLE public.cms_globalpagepermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            ]	           2604    118975 !   cms_globalpagepermission_sites id    DEFAULT     �   ALTER TABLE ONLY cms_globalpagepermission_sites ALTER COLUMN id SET DEFAULT nextval('cms_globalpagepermission_sites_id_seq'::regclass);
 P   ALTER TABLE public.cms_globalpagepermission_sites ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            ^	           2604    118983    cms_page id    DEFAULT     \   ALTER TABLE ONLY cms_page ALTER COLUMN id SET DEFAULT nextval('cms_page_id_seq'::regclass);
 :   ALTER TABLE public.cms_page ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    213    213            b	           2604    119131    cms_page_placeholders id    DEFAULT     v   ALTER TABLE ONLY cms_page_placeholders ALTER COLUMN id SET DEFAULT nextval('cms_page_placeholders_id_seq'::regclass);
 G   ALTER TABLE public.cms_page_placeholders ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221            _	           2604    119001    cms_pagepermission id    DEFAULT     p   ALTER TABLE ONLY cms_pagepermission ALTER COLUMN id SET DEFAULT nextval('cms_pagepermission_id_seq'::regclass);
 D   ALTER TABLE public.cms_pagepermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            `	           2604    119122    cms_placeholder id    DEFAULT     j   ALTER TABLE ONLY cms_placeholder ALTER COLUMN id SET DEFAULT nextval('cms_placeholder_id_seq'::regclass);
 A   ALTER TABLE public.cms_placeholder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    219    219            c	           2604    119148    cms_staticplaceholder id    DEFAULT     v   ALTER TABLE ONLY cms_staticplaceholder ALTER COLUMN id SET DEFAULT nextval('cms_staticplaceholder_id_seq'::regclass);
 G   ALTER TABLE public.cms_staticplaceholder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    223    224            d	           2604    119161    cms_title id    DEFAULT     ^   ALTER TABLE ONLY cms_title ALTER COLUMN id SET DEFAULT nextval('cms_title_id_seq'::regclass);
 ;   ALTER TABLE public.cms_title ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    225    226            g	           2604    119563    cms_treenode id    DEFAULT     d   ALTER TABLE ONLY cms_treenode ALTER COLUMN id SET DEFAULT nextval('cms_treenode_id_seq'::regclass);
 >   ALTER TABLE public.cms_treenode ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232    233            f	           2604    119516    cms_urlconfrevision id    DEFAULT     r   ALTER TABLE ONLY cms_urlconfrevision ALTER COLUMN id SET DEFAULT nextval('cms_urlconfrevision_id_seq'::regclass);
 E   ALTER TABLE public.cms_urlconfrevision ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230    231            e	           2604    119176    cms_usersettings id    DEFAULT     l   ALTER TABLE ONLY cms_usersettings ALTER COLUMN id SET DEFAULT nextval('cms_usersettings_id_seq'::regclass);
 B   ALTER TABLE public.cms_usersettings ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    228    227    228            �	           2604    120683    contact_me_message id    DEFAULT     p   ALTER TABLE ONLY contact_me_message ALTER COLUMN id SET DEFAULT nextval('contact_me_message_id_seq'::regclass);
 D   ALTER TABLE public.contact_me_message ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    284    285    285            U	           2604    118917    django_admin_log id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    202    202            N	           2604    118803    django_content_type id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    187    188    188            M	           2604    118792    django_migrations id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    186    185    186            W	           2604    118941    django_site id    DEFAULT     b   ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    204    204            w	           2604    120246    djangocms_snippet_snippet id    DEFAULT     ~   ALTER TABLE ONLY djangocms_snippet_snippet ALTER COLUMN id SET DEFAULT nextval('djangocms_snippet_snippet_id_seq'::regclass);
 K   ALTER TABLE public.djangocms_snippet_snippet ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    257    256    257            x	           2604    120433    easy_thumbnails_source id    DEFAULT     x   ALTER TABLE ONLY easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_source_id_seq'::regclass);
 H   ALTER TABLE public.easy_thumbnails_source ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    263    264    264            y	           2604    120441    easy_thumbnails_thumbnail id    DEFAULT     ~   ALTER TABLE ONLY easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_thumbnail_id_seq'::regclass);
 K   ALTER TABLE public.easy_thumbnails_thumbnail ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    266    265    266            z	           2604    120467 &   easy_thumbnails_thumbnaildimensions id    DEFAULT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_thumbnaildimensions_id_seq'::regclass);
 U   ALTER TABLE public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    267    268    268            j	           2604    119632    filer_clipboard id    DEFAULT     j   ALTER TABLE ONLY filer_clipboard ALTER COLUMN id SET DEFAULT nextval('filer_clipboard_id_seq'::regclass);
 A   ALTER TABLE public.filer_clipboard ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    236    237    237            k	           2604    119640    filer_clipboarditem id    DEFAULT     r   ALTER TABLE ONLY filer_clipboarditem ALTER COLUMN id SET DEFAULT nextval('filer_clipboarditem_id_seq'::regclass);
 E   ALTER TABLE public.filer_clipboarditem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    239    238    239            l	           2604    119648    filer_file id    DEFAULT     `   ALTER TABLE ONLY filer_file ALTER COLUMN id SET DEFAULT nextval('filer_file_id_seq'::regclass);
 <   ALTER TABLE public.filer_file ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    241    241            m	           2604    119659    filer_folder id    DEFAULT     d   ALTER TABLE ONLY filer_folder ALTER COLUMN id SET DEFAULT nextval('filer_folder_id_seq'::regclass);
 >   ALTER TABLE public.filer_folder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    243    243            r	           2604    119671    filer_folderpermission id    DEFAULT     x   ALTER TABLE ONLY filer_folderpermission ALTER COLUMN id SET DEFAULT nextval('filer_folderpermission_id_seq'::regclass);
 H   ALTER TABLE public.filer_folderpermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    245    245            s	           2604    119769    filer_thumbnailoption id    DEFAULT     v   ALTER TABLE ONLY filer_thumbnailoption ALTER COLUMN id SET DEFAULT nextval('filer_thumbnailoption_id_seq'::regclass);
 G   ALTER TABLE public.filer_thumbnailoption ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    248    247    248            }	           2604    120499    menus_cachekey id    DEFAULT     h   ALTER TABLE ONLY menus_cachekey ALTER COLUMN id SET DEFAULT nextval('menus_cachekey_id_seq'::regclass);
 @   ALTER TABLE public.menus_cachekey ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    270    269    270            �	           2604    120703    portfolio_app_demourlitem id    DEFAULT     ~   ALTER TABLE ONLY portfolio_app_demourlitem ALTER COLUMN id SET DEFAULT nextval('portfolio_app_demourlitem_id_seq'::regclass);
 K   ALTER TABLE public.portfolio_app_demourlitem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    287    286    287            �	           2604    120715    portfolio_app_mediaasset id    DEFAULT     |   ALTER TABLE ONLY portfolio_app_mediaasset ALTER COLUMN id SET DEFAULT nextval('portfolio_app_mediaasset_id_seq'::regclass);
 J   ALTER TABLE public.portfolio_app_mediaasset ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    288    289    289            �	           2604    120737    portfolio_app_project_tags id    DEFAULT     �   ALTER TABLE ONLY portfolio_app_project_tags ALTER COLUMN id SET DEFAULT nextval('portfolio_app_project_tags_id_seq'::regclass);
 L   ALTER TABLE public.portfolio_app_project_tags ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    292    293    293            �          0    120534    about_me_aboutme 
   TABLE DATA               V   COPY about_me_aboutme (cmsplugin_ptr_id, title, description, resume_file) FROM stdin;
    public       postgres    false    273   �e      �          0    120573    about_me_skillitem 
   TABLE DATA               R   COPY about_me_skillitem (id, title, percentage, skill_plugin_item_id) FROM stdin;
    public       postgres    false    278   �g      %           0    0    about_me_skillitem_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('about_me_skillitem_id_seq', 64, true);
            public       postgres    false    277            �          0    120579    about_me_skillplugin 
   TABLE DATA               Q   COPY about_me_skillplugin (cmsplugin_ptr_id, created_at, updated_at) FROM stdin;
    public       postgres    false    279   Kh      �          0    120549    about_me_statisticitem 
   TABLE DATA               W   COPY about_me_statisticitem (id, title, statistic, statistic_plugin_id_id) FROM stdin;
    public       postgres    false    275   �h      &           0    0    about_me_statisticitem_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('about_me_statisticitem_id_seq', 33, true);
            public       postgres    false    274            �          0    120555    about_me_statisticplugin 
   TABLE DATA               U   COPY about_me_statisticplugin (cmsplugin_ptr_id, created_at, updated_at) FROM stdin;
    public       postgres    false    276   i      �          0    120607    about_me_timelineblock 
   TABLE DATA               �   COPY about_me_timelineblock (id, title, content, is_left, created_at, updated_at, timeline_header_id_id, period_time, url) FROM stdin;
    public       postgres    false    281   {i      '           0    0    about_me_timelineblock_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('about_me_timelineblock_id_seq', 10, true);
            public       postgres    false    280            �          0    120618    about_me_timelineheader 
   TABLE DATA               d   COPY about_me_timelineheader (title, created_at, updated_at, cmsplugin_ptr_id, "order") FROM stdin;
    public       postgres    false    282   �j      �          0    119441    aldryn_style_style 
   TABLE DATA               �   COPY aldryn_style_style (label, cmsplugin_ptr_id, class_name, id_name, tag_type, padding_left, padding_right, padding_top, padding_bottom, margin_left, margin_right, margin_top, margin_bottom, additional_class_names) FROM stdin;
    public       postgres    false    229   tk      �          0    118818 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       postgres    false    192   �k      (           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       postgres    false    191            �          0    118828    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    194   �k      )           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       postgres    false    193            �          0    118810    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    190   �k      *           0    0    auth_permission_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_permission_id_seq', 191, true);
            public       postgres    false    189            �          0    118836 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    196   �s      �          0    118846    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    198   �t      +           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       postgres    false    197            ,           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 2, true);
            public       postgres    false    195            �          0    118854    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    200   �t      -           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    199            �          0    118957    cms_aliaspluginmodel 
   TABLE DATA               Z   COPY cms_aliaspluginmodel (cmsplugin_ptr_id, plugin_id, alias_placeholder_id) FROM stdin;
    public       postgres    false    207   �t      �          0    118946    cms_cmsplugin 
   TABLE DATA               �   COPY cms_cmsplugin (id, "position", language, plugin_type, creation_date, changed_date, parent_id, placeholder_id, depth, numchild, path) FROM stdin;
    public       postgres    false    206   u      .           0    0    cms_cmsplugin_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('cms_cmsplugin_id_seq', 53, true);
            public       postgres    false    205            �          0    118964    cms_globalpagepermission 
   TABLE DATA               �   COPY cms_globalpagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, can_recover_page, group_id, user_id) FROM stdin;
    public       postgres    false    209   cw      /           0    0    cms_globalpagepermission_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('cms_globalpagepermission_id_seq', 1, false);
            public       postgres    false    208            �          0    118972    cms_globalpagepermission_sites 
   TABLE DATA               W   COPY cms_globalpagepermission_sites (id, globalpagepermission_id, site_id) FROM stdin;
    public       postgres    false    211   �w      0           0    0 %   cms_globalpagepermission_sites_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('cms_globalpagepermission_sites_id_seq', 1, false);
            public       postgres    false    210            �          0    118980    cms_page 
   TABLE DATA               y  COPY cms_page (id, created_by, changed_by, creation_date, changed_date, publication_date, publication_end_date, in_navigation, soft_root, reverse_id, navigation_extenders, template, login_required, limit_visibility_in_menu, is_home, application_urls, application_namespace, publisher_is_draft, languages, xframe_options, publisher_public_id, is_page_type, node_id) FROM stdin;
    public       postgres    false    213   �w      1           0    0    cms_page_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('cms_page_id_seq', 4, true);
            public       postgres    false    212            �          0    119128    cms_page_placeholders 
   TABLE DATA               E   COPY cms_page_placeholders (id, page_id, placeholder_id) FROM stdin;
    public       postgres    false    221   �x      2           0    0    cms_page_placeholders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('cms_page_placeholders_id_seq', 19, true);
            public       postgres    false    220            �          0    118998    cms_pagepermission 
   TABLE DATA               �   COPY cms_pagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, grant_on, group_id, page_id, user_id) FROM stdin;
    public       postgres    false    215   �x      3           0    0    cms_pagepermission_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('cms_pagepermission_id_seq', 1, false);
            public       postgres    false    214            �          0    119107    cms_pageuser 
   TABLE DATA               ;   COPY cms_pageuser (user_ptr_id, created_by_id) FROM stdin;
    public       postgres    false    216   y      �          0    119112    cms_pageusergroup 
   TABLE DATA               A   COPY cms_pageusergroup (group_ptr_id, created_by_id) FROM stdin;
    public       postgres    false    217   7y      �          0    119119    cms_placeholder 
   TABLE DATA               ;   COPY cms_placeholder (id, slot, default_width) FROM stdin;
    public       postgres    false    219   Ty      4           0    0    cms_placeholder_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('cms_placeholder_id_seq', 20, true);
            public       postgres    false    218            �          0    119138    cms_placeholderreference 
   TABLE DATA               W   COPY cms_placeholderreference (cmsplugin_ptr_id, name, placeholder_ref_id) FROM stdin;
    public       postgres    false    222   �y      �          0    119145    cms_staticplaceholder 
   TABLE DATA               n   COPY cms_staticplaceholder (id, name, code, dirty, creation_method, draft_id, public_id, site_id) FROM stdin;
    public       postgres    false    224   
z      5           0    0    cms_staticplaceholder_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('cms_staticplaceholder_id_seq', 1, false);
            public       postgres    false    223            �          0    119158 	   cms_title 
   TABLE DATA               �   COPY cms_title (id, language, title, page_title, menu_title, meta_description, slug, path, has_url_overwrite, redirect, creation_date, published, publisher_is_draft, publisher_state, page_id, publisher_public_id) FROM stdin;
    public       postgres    false    226   'z      6           0    0    cms_title_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('cms_title_id_seq', 4, true);
            public       postgres    false    225            �          0    119560    cms_treenode 
   TABLE DATA               N   COPY cms_treenode (id, path, depth, numchild, parent_id, site_id) FROM stdin;
    public       postgres    false    233   �z      7           0    0    cms_treenode_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('cms_treenode_id_seq', 2, true);
            public       postgres    false    232            �          0    119513    cms_urlconfrevision 
   TABLE DATA               4   COPY cms_urlconfrevision (id, revision) FROM stdin;
    public       postgres    false    231   �z      8           0    0    cms_urlconfrevision_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('cms_urlconfrevision_id_seq', 1, false);
            public       postgres    false    230            �          0    119173    cms_usersettings 
   TABLE DATA               H   COPY cms_usersettings (id, language, clipboard_id, user_id) FROM stdin;
    public       postgres    false    228   2{      9           0    0    cms_usersettings_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('cms_usersettings_id_seq', 1, true);
            public       postgres    false    227            �          0    120670    contact_me_contactme 
   TABLE DATA               P   COPY contact_me_contactme (cmsplugin_ptr_id, phone, address, email) FROM stdin;
    public       postgres    false    283   X{      �          0    120680    contact_me_message 
   TABLE DATA               `   COPY contact_me_message (id, name, email, subject, message, created_at, updated_at) FROM stdin;
    public       postgres    false    285   �{      :           0    0    contact_me_message_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('contact_me_message_id_seq', 1, false);
            public       postgres    false    284            �          0    118914    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    202   �{      ;           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 19, true);
            public       postgres    false    201            �          0    118800    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    188   "~      <           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 64, true);
            public       postgres    false    187            �          0    118789    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    186   ��      =           0    0    django_migrations_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('django_migrations_id_seq', 125, true);
            public       postgres    false    185            �          0    120506    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    271    �      �          0    118938    django_site 
   TABLE DATA               0   COPY django_site (id, domain, name) FROM stdin;
    public       postgres    false    204   d�      >           0    0    django_site_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('django_site_id_seq', 1, true);
            public       postgres    false    203            �          0    119597    djangocms_column_column 
   TABLE DATA               C   COPY djangocms_column_column (cmsplugin_ptr_id, width) FROM stdin;
    public       postgres    false    234   ��      �          0    119602    djangocms_column_multicolumns 
   TABLE DATA               B   COPY djangocms_column_multicolumns (cmsplugin_ptr_id) FROM stdin;
    public       postgres    false    235   ��      �          0    119793    djangocms_file_file 
   TABLE DATA               �   COPY djangocms_file_file (cmsplugin_ptr_id, file_name, link_target, link_title, file_src_id, attributes, template, show_file_size) FROM stdin;
    public       postgres    false    249   ˋ      �          0    119862    djangocms_file_folder 
   TABLE DATA               |   COPY djangocms_file_folder (template, link_target, show_file_size, attributes, cmsplugin_ptr_id, folder_src_id) FROM stdin;
    public       postgres    false    250   �      �          0    119882    djangocms_googlemap_googlemap 
   TABLE DATA               -  COPY djangocms_googlemap_googlemap (cmsplugin_ptr_id, title, zoom, lat, lng, width, height, scrollwheel, double_click_zoom, draggable, keyboard_shortcuts, pan_control, zoom_control, street_view_control, style, fullscreen_control, map_type_control, rotate_control, scale_control, template) FROM stdin;
    public       postgres    false    251   �      �          0    119971 #   djangocms_googlemap_googlemapmarker 
   TABLE DATA               �   COPY djangocms_googlemap_googlemapmarker (cmsplugin_ptr_id, title, address, lat, lng, show_content, info_content, icon_id) FROM stdin;
    public       postgres    false    252   "�      �          0    119979 "   djangocms_googlemap_googlemaproute 
   TABLE DATA               p   COPY djangocms_googlemap_googlemaproute (cmsplugin_ptr_id, title, origin, destination, travel_mode) FROM stdin;
    public       postgres    false    253   ?�      �          0    120004    djangocms_link_link 
   TABLE DATA               �   COPY djangocms_link_link (cmsplugin_ptr_id, name, external_link, anchor, mailto, phone, target, internal_link_id, attributes, template) FROM stdin;
    public       postgres    false    254   \�      �          0    120081    djangocms_picture_picture 
   TABLE DATA               %  COPY djangocms_picture_picture (cmsplugin_ptr_id, link_url, alignment, link_page_id, height, width, picture_id, attributes, caption_text, link_attributes, link_target, use_automatic_scaling, use_crop, use_no_cropping, use_upscale, thumbnail_options_id, external_picture, template) FROM stdin;
    public       postgres    false    255   y�      �          0    120243    djangocms_snippet_snippet 
   TABLE DATA               L   COPY djangocms_snippet_snippet (id, name, html, template, slug) FROM stdin;
    public       postgres    false    257   ��      ?           0    0     djangocms_snippet_snippet_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('djangocms_snippet_snippet_id_seq', 1, false);
            public       postgres    false    256            �          0    120254    djangocms_snippet_snippetptr 
   TABLE DATA               M   COPY djangocms_snippet_snippetptr (cmsplugin_ptr_id, snippet_id) FROM stdin;
    public       postgres    false    258   ��      �          0    120299    djangocms_text_ckeditor_text 
   TABLE DATA               G   COPY djangocms_text_ckeditor_text (cmsplugin_ptr_id, body) FROM stdin;
    public       postgres    false    259   Ќ      �          0    120322    djangocms_video_videoplayer 
   TABLE DATA               t   COPY djangocms_video_videoplayer (cmsplugin_ptr_id, embed_link, poster_id, attributes, label, template) FROM stdin;
    public       postgres    false    260   �      �          0    120389    djangocms_video_videosource 
   TABLE DATA               z   COPY djangocms_video_videosource (cmsplugin_ptr_id, text_title, text_description, attributes, source_file_id) FROM stdin;
    public       postgres    false    261   
�      �          0    120397    djangocms_video_videotrack 
   TABLE DATA               i   COPY djangocms_video_videotrack (cmsplugin_ptr_id, kind, srclang, label, attributes, src_id) FROM stdin;
    public       postgres    false    262   '�      �          0    120430    easy_thumbnails_source 
   TABLE DATA               K   COPY easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
    public       postgres    false    264   D�      @           0    0    easy_thumbnails_source_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('easy_thumbnails_source_id_seq', 1, false);
            public       postgres    false    263            �          0    120438    easy_thumbnails_thumbnail 
   TABLE DATA               Y   COPY easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
    public       postgres    false    266   a�      A           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('easy_thumbnails_thumbnail_id_seq', 1, false);
            public       postgres    false    265            �          0    120464 #   easy_thumbnails_thumbnaildimensions 
   TABLE DATA               W   COPY easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
    public       postgres    false    268   ~�      B           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('easy_thumbnails_thumbnaildimensions_id_seq', 1, false);
            public       postgres    false    267            �          0    119629    filer_clipboard 
   TABLE DATA               /   COPY filer_clipboard (id, user_id) FROM stdin;
    public       postgres    false    237   ��      C           0    0    filer_clipboard_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('filer_clipboard_id_seq', 1, false);
            public       postgres    false    236            �          0    119637    filer_clipboarditem 
   TABLE DATA               A   COPY filer_clipboarditem (id, clipboard_id, file_id) FROM stdin;
    public       postgres    false    239   ��      D           0    0    filer_clipboarditem_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('filer_clipboarditem_id_seq', 1, false);
            public       postgres    false    238            �          0    119645 
   filer_file 
   TABLE DATA               �   COPY filer_file (id, file, _file_size, sha1, has_all_mandatory_data, original_filename, name, description, uploaded_at, modified_at, is_public, folder_id, owner_id, polymorphic_ctype_id) FROM stdin;
    public       postgres    false    241   Ս      E           0    0    filer_file_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('filer_file_id_seq', 1, false);
            public       postgres    false    240            �          0    119656    filer_folder 
   TABLE DATA                  COPY filer_folder (id, name, uploaded_at, created_at, modified_at, lft, rght, tree_id, level, owner_id, parent_id) FROM stdin;
    public       postgres    false    243   �      F           0    0    filer_folder_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('filer_folder_id_seq', 1, false);
            public       postgres    false    242            �          0    119668    filer_folderpermission 
   TABLE DATA               �   COPY filer_folderpermission (id, type, everybody, can_edit, can_read, can_add_children, folder_id, group_id, user_id) FROM stdin;
    public       postgres    false    245   �      G           0    0    filer_folderpermission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('filer_folderpermission_id_seq', 1, false);
            public       postgres    false    244            �          0    119676    filer_image 
   TABLE DATA               �   COPY filer_image (file_ptr_id, _height, _width, date_taken, default_alt_text, default_caption, author, must_always_publish_author_credit, must_always_publish_copyright, subject_location) FROM stdin;
    public       postgres    false    246   ,�      �          0    119766    filer_thumbnailoption 
   TABLE DATA               P   COPY filer_thumbnailoption (id, name, width, height, crop, upscale) FROM stdin;
    public       postgres    false    248   I�      H           0    0    filer_thumbnailoption_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('filer_thumbnailoption_id_seq', 1, false);
            public       postgres    false    247            �          0    120521    hero_area_heroarea 
   TABLE DATA               �   COPY hero_area_heroarea (cmsplugin_ptr_id, title, name, working_position, background_image, linkedin_url, github_url, facebook_url) FROM stdin;
    public       postgres    false    272   f�      �          0    120496    menus_cachekey 
   TABLE DATA               :   COPY menus_cachekey (id, language, site, key) FROM stdin;
    public       postgres    false    270   �      I           0    0    menus_cachekey_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('menus_cachekey_id_seq', 19, true);
            public       postgres    false    269            �          0    120700    portfolio_app_demourlitem 
   TABLE DATA               g   COPY portfolio_app_demourlitem (id, demo_url, type, created_at, updated_at, project_id_id) FROM stdin;
    public       postgres    false    287   m�      J           0    0     portfolio_app_demourlitem_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('portfolio_app_demourlitem_id_seq', 1, false);
            public       postgres    false    286            �          0    120712    portfolio_app_mediaasset 
   TABLE DATA               o   COPY portfolio_app_mediaasset (id, name, type, media_asset, created_at, updated_at, project_id_id) FROM stdin;
    public       postgres    false    289   ��      K           0    0    portfolio_app_mediaasset_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('portfolio_app_mediaasset_id_seq', 10, true);
            public       postgres    false    288            �          0    120719    portfolio_app_project 
   TABLE DATA               �   COPY portfolio_app_project (cmsplugin_ptr_id, slug, title, sub_title, short_description, description, skills, roles, client, length, demo_url, youtube_embed_url, top_image, created_at, updated_at) FROM stdin;
    public       postgres    false    290   �      �          0    120734    portfolio_app_project_tags 
   TABLE DATA               E   COPY portfolio_app_project_tags (id, project_id, tag_id) FROM stdin;
    public       postgres    false    293   �      L           0    0 !   portfolio_app_project_tags_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('portfolio_app_project_tags_id_seq', 4, true);
            public       postgres    false    292            �          0    120727    portfolio_app_tag 
   TABLE DATA               <   COPY portfolio_app_tag (cmsplugin_ptr_id, name) FROM stdin;
    public       postgres    false    291   ��      �
           2606    120541 &   about_me_aboutme about_me_aboutme_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY about_me_aboutme
    ADD CONSTRAINT about_me_aboutme_pkey PRIMARY KEY (cmsplugin_ptr_id);
 P   ALTER TABLE ONLY public.about_me_aboutme DROP CONSTRAINT about_me_aboutme_pkey;
       public         postgres    false    273    273            �
           2606    120578 *   about_me_skillitem about_me_skillitem_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY about_me_skillitem
    ADD CONSTRAINT about_me_skillitem_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.about_me_skillitem DROP CONSTRAINT about_me_skillitem_pkey;
       public         postgres    false    278    278            �
           2606    120583 .   about_me_skillplugin about_me_skillplugin_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY about_me_skillplugin
    ADD CONSTRAINT about_me_skillplugin_pkey PRIMARY KEY (cmsplugin_ptr_id);
 X   ALTER TABLE ONLY public.about_me_skillplugin DROP CONSTRAINT about_me_skillplugin_pkey;
       public         postgres    false    279    279            �
           2606    120554 2   about_me_statisticitem about_me_statisticitem_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY about_me_statisticitem
    ADD CONSTRAINT about_me_statisticitem_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.about_me_statisticitem DROP CONSTRAINT about_me_statisticitem_pkey;
       public         postgres    false    275    275            �
           2606    120559 6   about_me_statisticplugin about_me_statisticplugin_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY about_me_statisticplugin
    ADD CONSTRAINT about_me_statisticplugin_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.about_me_statisticplugin DROP CONSTRAINT about_me_statisticplugin_pkey;
       public         postgres    false    276    276            �
           2606    120615 2   about_me_timelineblock about_me_timelineblock_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY about_me_timelineblock
    ADD CONSTRAINT about_me_timelineblock_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.about_me_timelineblock DROP CONSTRAINT about_me_timelineblock_pkey;
       public         postgres    false    281    281            �
           2606    120637 4   about_me_timelineheader about_me_timelineheader_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY about_me_timelineheader
    ADD CONSTRAINT about_me_timelineheader_pkey PRIMARY KEY (cmsplugin_ptr_id);
 ^   ALTER TABLE ONLY public.about_me_timelineheader DROP CONSTRAINT about_me_timelineheader_pkey;
       public         postgres    false    282    282            
           2606    119448 *   aldryn_style_style aldryn_style_style_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY aldryn_style_style
    ADD CONSTRAINT aldryn_style_style_pkey PRIMARY KEY (cmsplugin_ptr_id);
 T   ALTER TABLE ONLY public.aldryn_style_style DROP CONSTRAINT aldryn_style_style_pkey;
       public         postgres    false    229    229            �	           2606    118825    auth_group auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    192    192            �	           2606    118880 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    194    194    194            �	           2606    118833 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    194    194            �	           2606    118823    auth_group auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    192    192            �	           2606    118866 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    190    190    190            �	           2606    118815 $   auth_permission auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    190    190            �	           2606    118851 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    198    198            �	           2606    118895 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    198    198    198            �	           2606    118841    auth_user auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    196    196            �	           2606    118859 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    200    200            �	           2606    118909 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    200    200    200            �	           2606    119456     auth_user auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    196    196            �	           2606    118961 .   cms_aliaspluginmodel cms_aliaspluginmodel_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_pkey PRIMARY KEY (cmsplugin_ptr_id);
 X   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_pkey;
       public         postgres    false    207    207            �	           2606    119434 .   cms_cmsplugin cms_cmsplugin_path_4917bb44_uniq 
   CONSTRAINT     b   ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_path_4917bb44_uniq UNIQUE (path);
 X   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_path_4917bb44_uniq;
       public         postgres    false    206    206            �	           2606    118956     cms_cmsplugin cms_cmsplugin_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_pkey;
       public         postgres    false    206    206            �	           2606    119052 ^   cms_globalpagepermission_sites cms_globalpagepermission_globalpagepermission_id__db684f41_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_globalpagepermission_id__db684f41_uniq UNIQUE (globalpagepermission_id, site_id);
 �   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermission_globalpagepermission_id__db684f41_uniq;
       public         postgres    false    211    211    211            �	           2606    118969 6   cms_globalpagepermission cms_globalpagepermission_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_pkey;
       public         postgres    false    209    209            �	           2606    118977 B   cms_globalpagepermission_sites cms_globalpagepermission_sites_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_sites_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermission_sites_pkey;
       public         postgres    false    211    211            �	           2606    119572 :   cms_page cms_page_node_id_publisher_is_draft_c1293d6a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_node_id_publisher_is_draft_c1293d6a_uniq UNIQUE (node_id, publisher_is_draft);
 d   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_node_id_publisher_is_draft_c1293d6a_uniq;
       public         postgres    false    213    213    213            �	           2606    118993    cms_page cms_page_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_pkey;
       public         postgres    false    213    213            �	           2606    119216 P   cms_page_placeholders cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq UNIQUE (page_id, placeholder_id);
 z   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq;
       public         postgres    false    221    221    221            �	           2606    119133 0   cms_page_placeholders cms_page_placeholders_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_pkey;
       public         postgres    false    221    221            �	           2606    118995 )   cms_page cms_page_publisher_public_id_key 
   CONSTRAINT     l   ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_key UNIQUE (publisher_public_id);
 S   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_publisher_public_id_key;
       public         postgres    false    213    213            �	           2606    119003 *   cms_pagepermission cms_pagepermission_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_pkey;
       public         postgres    false    215    215            �	           2606    119111    cms_pageuser cms_pageuser_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY cms_pageuser
    ADD CONSTRAINT cms_pageuser_pkey PRIMARY KEY (user_ptr_id);
 H   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_pkey;
       public         postgres    false    216    216            �	           2606    119116 (   cms_pageusergroup cms_pageusergroup_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_pkey PRIMARY KEY (group_ptr_id);
 R   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_pkey;
       public         postgres    false    217    217            �	           2606    119125 $   cms_placeholder cms_placeholder_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY cms_placeholder
    ADD CONSTRAINT cms_placeholder_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.cms_placeholder DROP CONSTRAINT cms_placeholder_pkey;
       public         postgres    false    219    219            �	           2606    119142 6   cms_placeholderreference cms_placeholderreference_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY cms_placeholderreference
    ADD CONSTRAINT cms_placeholderreference_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderreference_pkey;
       public         postgres    false    222    222            �	           2606    119155 F   cms_staticplaceholder cms_staticplaceholder_code_site_id_21ba079c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_code_site_id_21ba079c_uniq UNIQUE (code, site_id);
 p   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_code_site_id_21ba079c_uniq;
       public         postgres    false    224    224    224            
           2606    119153 0   cms_staticplaceholder cms_staticplaceholder_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_pkey;
       public         postgres    false    224    224            
           2606    119170 2   cms_title cms_title_language_page_id_61aaf084_uniq 
   CONSTRAINT     s   ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_language_page_id_61aaf084_uniq UNIQUE (language, page_id);
 \   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_language_page_id_61aaf084_uniq;
       public         postgres    false    226    226    226            
           2606    119166    cms_title cms_title_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_pkey;
       public         postgres    false    226    226            
           2606    119168 +   cms_title cms_title_publisher_public_id_key 
   CONSTRAINT     n   ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_key UNIQUE (publisher_public_id);
 U   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_publisher_public_id_key;
       public         postgres    false    226    226             
           2606    119569 "   cms_treenode cms_treenode_path_key 
   CONSTRAINT     V   ALTER TABLE ONLY cms_treenode
    ADD CONSTRAINT cms_treenode_path_key UNIQUE (path);
 L   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_path_key;
       public         postgres    false    233    233            "
           2606    119567    cms_treenode cms_treenode_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY cms_treenode
    ADD CONSTRAINT cms_treenode_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_pkey;
       public         postgres    false    233    233            
           2606    119518 ,   cms_urlconfrevision cms_urlconfrevision_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY cms_urlconfrevision
    ADD CONSTRAINT cms_urlconfrevision_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.cms_urlconfrevision DROP CONSTRAINT cms_urlconfrevision_pkey;
       public         postgres    false    231    231            
           2606    119178 &   cms_usersettings cms_usersettings_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY cms_usersettings
    ADD CONSTRAINT cms_usersettings_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_pkey;
       public         postgres    false    228    228            
           2606    119180 -   cms_usersettings cms_usersettings_user_id_key 
   CONSTRAINT     d   ALTER TABLE ONLY cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_key UNIQUE (user_id);
 W   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_user_id_key;
       public         postgres    false    228    228            �
           2606    120677 .   contact_me_contactme contact_me_contactme_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY contact_me_contactme
    ADD CONSTRAINT contact_me_contactme_pkey PRIMARY KEY (cmsplugin_ptr_id);
 X   ALTER TABLE ONLY public.contact_me_contactme DROP CONSTRAINT contact_me_contactme_pkey;
       public         postgres    false    283    283            �
           2606    120688 *   contact_me_message contact_me_message_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY contact_me_message
    ADD CONSTRAINT contact_me_message_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.contact_me_message DROP CONSTRAINT contact_me_message_pkey;
       public         postgres    false    285    285            �	           2606    118923 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    202    202            �	           2606    118807 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    188    188    188            �	           2606    118805 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    188    188            �	           2606    118797 (   django_migrations django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    186    186            �
           2606    120513 "   django_session django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    271    271            �	           2606    120517 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     b   ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public         postgres    false    204    204            �	           2606    118943    django_site django_site_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public         postgres    false    204    204            %
           2606    119601 4   djangocms_column_column djangocms_column_column_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY djangocms_column_column
    ADD CONSTRAINT djangocms_column_column_pkey PRIMARY KEY (cmsplugin_ptr_id);
 ^   ALTER TABLE ONLY public.djangocms_column_column DROP CONSTRAINT djangocms_column_column_pkey;
       public         postgres    false    234    234            '
           2606    119606 @   djangocms_column_multicolumns djangocms_column_multicolumns_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_column_multicolumns
    ADD CONSTRAINT djangocms_column_multicolumns_pkey PRIMARY KEY (cmsplugin_ptr_id);
 j   ALTER TABLE ONLY public.djangocms_column_multicolumns DROP CONSTRAINT djangocms_column_multicolumns_pkey;
       public         postgres    false    235    235            I
           2606    119797 ,   djangocms_file_file djangocms_file_file_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_pkey PRIMARY KEY (cmsplugin_ptr_id);
 V   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_pkey;
       public         postgres    false    249    249            L
           2606    119869 0   djangocms_file_folder djangocms_file_folder_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_pkey PRIMARY KEY (cmsplugin_ptr_id);
 Z   ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folder_pkey;
       public         postgres    false    250    250            N
           2606    119890 @   djangocms_googlemap_googlemap djangocms_googlemap_googlemap_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap_googlemap_pkey PRIMARY KEY (cmsplugin_ptr_id);
 j   ALTER TABLE ONLY public.djangocms_googlemap_googlemap DROP CONSTRAINT djangocms_googlemap_googlemap_pkey;
       public         postgres    false    251    251            Q
           2606    119978 L   djangocms_googlemap_googlemapmarker djangocms_googlemap_googlemapmarker_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap_googlemapmarker_pkey PRIMARY KEY (cmsplugin_ptr_id);
 v   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap_googlemapmarker_pkey;
       public         postgres    false    252    252            S
           2606    119986 J   djangocms_googlemap_googlemaproute djangocms_googlemap_googlemaproute_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap_googlemaproute_pkey PRIMARY KEY (cmsplugin_ptr_id);
 t   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute DROP CONSTRAINT djangocms_googlemap_googlemaproute_pkey;
       public         postgres    false    253    253            V
           2606    120011 ,   djangocms_link_link djangocms_link_link_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_pkey PRIMARY KEY (cmsplugin_ptr_id);
 V   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_pkey;
       public         postgres    false    254    254            Z
           2606    120088 8   djangocms_picture_picture djangocms_picture_picture_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_pkey PRIMARY KEY (cmsplugin_ptr_id);
 b   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_picture_pkey;
       public         postgres    false    255    255            ^
           2606    120253 <   djangocms_snippet_snippet djangocms_snippet_snippet_name_key 
   CONSTRAINT     p   ALTER TABLE ONLY djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_name_key UNIQUE (name);
 f   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_name_key;
       public         postgres    false    257    257            `
           2606    120251 8   djangocms_snippet_snippet djangocms_snippet_snippet_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_pkey;
       public         postgres    false    257    257            c
           2606    120292 F   djangocms_snippet_snippet djangocms_snippet_snippet_slug_bd43cd96_uniq 
   CONSTRAINT     z   ALTER TABLE ONLY djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_slug_bd43cd96_uniq UNIQUE (slug);
 p   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_slug_bd43cd96_uniq;
       public         postgres    false    257    257            e
           2606    120258 >   djangocms_snippet_snippetptr djangocms_snippet_snippetptr_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_snippetptr_pkey PRIMARY KEY (cmsplugin_ptr_id);
 h   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_snippetptr_pkey;
       public         postgres    false    258    258            h
           2606    120306 >   djangocms_text_ckeditor_text djangocms_text_ckeditor_text_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckeditor_text_pkey PRIMARY KEY (cmsplugin_ptr_id);
 h   ALTER TABLE ONLY public.djangocms_text_ckeditor_text DROP CONSTRAINT djangocms_text_ckeditor_text_pkey;
       public         postgres    false    259    259            j
           2606    120331 6   djangocms_video_videoplayer djangocms_video_video_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_video_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_video_pkey;
       public         postgres    false    260    260            m
           2606    120396 <   djangocms_video_videosource djangocms_video_videosource_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_videosource_pkey PRIMARY KEY (cmsplugin_ptr_id);
 f   ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_videosource_pkey;
       public         postgres    false    261    261            p
           2606    120404 :   djangocms_video_videotrack djangocms_video_videotrack_pkey 
   CONSTRAINT        ALTER TABLE ONLY djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_pkey PRIMARY KEY (cmsplugin_ptr_id);
 d   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_videotrack_pkey;
       public         postgres    false    262    262            u
           2606    120435 2   easy_thumbnails_source easy_thumbnails_source_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_pkey;
       public         postgres    false    264    264            y
           2606    120447 M   easy_thumbnails_source easy_thumbnails_source_storage_hash_name_481ce32d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq UNIQUE (storage_hash, name);
 w   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq;
       public         postgres    false    264    264    264            {
           2606    120445 Y   easy_thumbnails_thumbnail easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq UNIQUE (storage_hash, name, source_id);
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq;
       public         postgres    false    266    266    266    266            
           2606    120443 8   easy_thumbnails_thumbnail easy_thumbnails_thumbnail_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnail_pkey;
       public         postgres    false    266    266            �
           2606    120471 L   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey;
       public         postgres    false    268    268            �
           2606    120473 X   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_thumbnail_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key;
       public         postgres    false    268    268            )
           2606    119634 $   filer_clipboard filer_clipboard_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY filer_clipboard
    ADD CONSTRAINT filer_clipboard_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_pkey;
       public         postgres    false    237    237            .
           2606    119642 ,   filer_clipboarditem filer_clipboarditem_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_pkey;
       public         postgres    false    239    239            2
           2606    119653    filer_file filer_file_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_pkey;
       public         postgres    false    241    241            9
           2606    119675 6   filer_folder filer_folder_parent_id_name_bc773258_uniq 
   CONSTRAINT     u   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_parent_id_name_bc773258_uniq UNIQUE (parent_id, name);
 `   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_name_bc773258_uniq;
       public         postgres    false    243    243    243            ;
           2606    119665    filer_folder filer_folder_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_pkey;
       public         postgres    false    243    243            A
           2606    119673 2   filer_folderpermission filer_folderpermission_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_pkey;
       public         postgres    false    245    245            D
           2606    119683    filer_image filer_image_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY filer_image
    ADD CONSTRAINT filer_image_pkey PRIMARY KEY (file_ptr_id);
 F   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_pkey;
       public         postgres    false    246    246            F
           2606    119771 0   filer_thumbnailoption filer_thumbnailoption_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY filer_thumbnailoption
    ADD CONSTRAINT filer_thumbnailoption_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.filer_thumbnailoption DROP CONSTRAINT filer_thumbnailoption_pkey;
       public         postgres    false    248    248            �
           2606    120528 *   hero_area_heroarea hero_area_heroarea_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY hero_area_heroarea
    ADD CONSTRAINT hero_area_heroarea_pkey PRIMARY KEY (cmsplugin_ptr_id);
 T   ALTER TABLE ONLY public.hero_area_heroarea DROP CONSTRAINT hero_area_heroarea_pkey;
       public         postgres    false    272    272            �
           2606    120505 "   menus_cachekey menus_cachekey_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY menus_cachekey
    ADD CONSTRAINT menus_cachekey_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.menus_cachekey DROP CONSTRAINT menus_cachekey_pkey;
       public         postgres    false    270    270            �
           2606    120709 8   portfolio_app_demourlitem portfolio_app_demourlitem_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY portfolio_app_demourlitem
    ADD CONSTRAINT portfolio_app_demourlitem_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.portfolio_app_demourlitem DROP CONSTRAINT portfolio_app_demourlitem_pkey;
       public         postgres    false    287    287            �
           2606    120718 6   portfolio_app_mediaasset portfolio_app_mediaasset_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY portfolio_app_mediaasset
    ADD CONSTRAINT portfolio_app_mediaasset_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.portfolio_app_mediaasset DROP CONSTRAINT portfolio_app_mediaasset_pkey;
       public         postgres    false    289    289            �
           2606    120726 0   portfolio_app_project portfolio_app_project_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY portfolio_app_project
    ADD CONSTRAINT portfolio_app_project_pkey PRIMARY KEY (cmsplugin_ptr_id);
 Z   ALTER TABLE ONLY public.portfolio_app_project DROP CONSTRAINT portfolio_app_project_pkey;
       public         postgres    false    290    290            �
           2606    120739 :   portfolio_app_project_tags portfolio_app_project_tags_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_project_tags_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_project_tags_pkey;
       public         postgres    false    293    293            �
           2606    120763 U   portfolio_app_project_tags portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq UNIQUE (project_id, tag_id);
    ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq;
       public         postgres    false    293    293    293            �
           2606    120731 (   portfolio_app_tag portfolio_app_tag_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY portfolio_app_tag
    ADD CONSTRAINT portfolio_app_tag_pkey PRIMARY KEY (cmsplugin_ptr_id);
 R   ALTER TABLE ONLY public.portfolio_app_tag DROP CONSTRAINT portfolio_app_tag_pkey;
       public         postgres    false    291    291            �
           1259    120589 4   about_me_skillitem_statistic_plugin_item_id_dd93ca1b    INDEX     |   CREATE INDEX about_me_skillitem_statistic_plugin_item_id_dd93ca1b ON about_me_skillitem USING btree (skill_plugin_item_id);
 H   DROP INDEX public.about_me_skillitem_statistic_plugin_item_id_dd93ca1b;
       public         postgres    false    278            �
           1259    120565 6   about_me_statisticitem_statistic_plugin_id_id_d6a86d36    INDEX     �   CREATE INDEX about_me_statisticitem_statistic_plugin_id_id_d6a86d36 ON about_me_statisticitem USING btree (statistic_plugin_id_id);
 J   DROP INDEX public.about_me_statisticitem_statistic_plugin_id_id_d6a86d36;
       public         postgres    false    275            �
           1259    120629 5   about_me_timelineblock_timeline_header_id_id_e80418fe    INDEX     �   CREATE INDEX about_me_timelineblock_timeline_header_id_id_e80418fe ON about_me_timelineblock USING btree (timeline_header_id_id);
 I   DROP INDEX public.about_me_timelineblock_timeline_header_id_id_e80418fe;
       public         postgres    false    281            �	           1259    118868    auth_group_name_a6ea08ec_like    INDEX     a   CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    192            �	           1259    118881 (   auth_group_permissions_group_id_b120cbf9    INDEX     h   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    194            �	           1259    118882 -   auth_group_permissions_permission_id_84c5c92e    INDEX     r   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    194            �	           1259    118867 (   auth_permission_content_type_id_2f476e4b    INDEX     h   CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    190            �	           1259    118897 "   auth_user_groups_group_id_97559544    INDEX     \   CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    198            �	           1259    118896 !   auth_user_groups_user_id_6a12ed8b    INDEX     Z   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    198            �	           1259    118911 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     z   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    200            �	           1259    118910 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     n   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    200            �	           1259    119457     auth_user_username_6821ab7c_like    INDEX     g   CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    196            �	           1259    119225 2   cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a    INDEX     |   CREATE INDEX cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a ON cms_aliaspluginmodel USING btree (alias_placeholder_id);
 F   DROP INDEX public.cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a;
       public         postgres    false    207            �	           1259    119022 '   cms_aliaspluginmodel_plugin_id_9867676e    INDEX     f   CREATE INDEX cms_aliaspluginmodel_plugin_id_9867676e ON cms_aliaspluginmodel USING btree (plugin_id);
 ;   DROP INDEX public.cms_aliaspluginmodel_plugin_id_9867676e;
       public         postgres    false    207            �	           1259    119004    cms_cmsplugin_language_bbea8a48    INDEX     V   CREATE INDEX cms_cmsplugin_language_bbea8a48 ON cms_cmsplugin USING btree (language);
 3   DROP INDEX public.cms_cmsplugin_language_bbea8a48;
       public         postgres    false    206            �	           1259    119005 $   cms_cmsplugin_language_bbea8a48_like    INDEX     o   CREATE INDEX cms_cmsplugin_language_bbea8a48_like ON cms_cmsplugin USING btree (language varchar_pattern_ops);
 8   DROP INDEX public.cms_cmsplugin_language_bbea8a48_like;
       public         postgres    false    206            �	           1259    119023     cms_cmsplugin_parent_id_fd3bd9dd    INDEX     X   CREATE INDEX cms_cmsplugin_parent_id_fd3bd9dd ON cms_cmsplugin USING btree (parent_id);
 4   DROP INDEX public.cms_cmsplugin_parent_id_fd3bd9dd;
       public         postgres    false    206            �	           1259    119435     cms_cmsplugin_path_4917bb44_like    INDEX     g   CREATE INDEX cms_cmsplugin_path_4917bb44_like ON cms_cmsplugin USING btree (path varchar_pattern_ops);
 4   DROP INDEX public.cms_cmsplugin_path_4917bb44_like;
       public         postgres    false    206            �	           1259    119219 %   cms_cmsplugin_placeholder_id_0bfa3b26    INDEX     b   CREATE INDEX cms_cmsplugin_placeholder_id_0bfa3b26 ON cms_cmsplugin USING btree (placeholder_id);
 9   DROP INDEX public.cms_cmsplugin_placeholder_id_0bfa3b26;
       public         postgres    false    206            �	           1259    119006 "   cms_cmsplugin_plugin_type_94e96ebf    INDEX     \   CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf ON cms_cmsplugin USING btree (plugin_type);
 6   DROP INDEX public.cms_cmsplugin_plugin_type_94e96ebf;
       public         postgres    false    206            �	           1259    119007 '   cms_cmsplugin_plugin_type_94e96ebf_like    INDEX     u   CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf_like ON cms_cmsplugin USING btree (plugin_type varchar_pattern_ops);
 ;   DROP INDEX public.cms_cmsplugin_plugin_type_94e96ebf_like;
       public         postgres    false    206            �	           1259    119039 *   cms_globalpagepermission_group_id_991b4733    INDEX     l   CREATE INDEX cms_globalpagepermission_group_id_991b4733 ON cms_globalpagepermission USING btree (group_id);
 >   DROP INDEX public.cms_globalpagepermission_group_id_991b4733;
       public         postgres    false    209            �	           1259    119053 ?   cms_globalpagepermission_sites_globalpagepermission_id_46bd2681    INDEX     �   CREATE INDEX cms_globalpagepermission_sites_globalpagepermission_id_46bd2681 ON cms_globalpagepermission_sites USING btree (globalpagepermission_id);
 S   DROP INDEX public.cms_globalpagepermission_sites_globalpagepermission_id_46bd2681;
       public         postgres    false    211            �	           1259    119054 /   cms_globalpagepermission_sites_site_id_00460b53    INDEX     v   CREATE INDEX cms_globalpagepermission_sites_site_id_00460b53 ON cms_globalpagepermission_sites USING btree (site_id);
 C   DROP INDEX public.cms_globalpagepermission_sites_site_id_00460b53;
       public         postgres    false    211            �	           1259    119040 )   cms_globalpagepermission_user_id_a227cee1    INDEX     j   CREATE INDEX cms_globalpagepermission_user_id_a227cee1 ON cms_globalpagepermission USING btree (user_id);
 =   DROP INDEX public.cms_globalpagepermission_user_id_a227cee1;
       public         postgres    false    209            �	           1259    119080 "   cms_page_application_urls_9ef47497    INDEX     \   CREATE INDEX cms_page_application_urls_9ef47497 ON cms_page USING btree (application_urls);
 6   DROP INDEX public.cms_page_application_urls_9ef47497;
       public         postgres    false    213            �	           1259    119081 '   cms_page_application_urls_9ef47497_like    INDEX     u   CREATE INDEX cms_page_application_urls_9ef47497_like ON cms_page USING btree (application_urls varchar_pattern_ops);
 ;   DROP INDEX public.cms_page_application_urls_9ef47497_like;
       public         postgres    false    213            �	           1259    119072    cms_page_in_navigation_01c24279    INDEX     V   CREATE INDEX cms_page_in_navigation_01c24279 ON cms_page USING btree (in_navigation);
 3   DROP INDEX public.cms_page_in_navigation_01c24279;
       public         postgres    false    213            �	           1259    119079    cms_page_is_home_edadca07    INDEX     J   CREATE INDEX cms_page_is_home_edadca07 ON cms_page USING btree (is_home);
 -   DROP INDEX public.cms_page_is_home_edadca07;
       public         postgres    false    213            �	           1259    119078 *   cms_page_limit_visibility_in_menu_30db6aa6    INDEX     l   CREATE INDEX cms_page_limit_visibility_in_menu_30db6aa6 ON cms_page USING btree (limit_visibility_in_menu);
 >   DROP INDEX public.cms_page_limit_visibility_in_menu_30db6aa6;
       public         postgres    false    213            �	           1259    119076 &   cms_page_navigation_extenders_c24af8dd    INDEX     d   CREATE INDEX cms_page_navigation_extenders_c24af8dd ON cms_page USING btree (navigation_extenders);
 :   DROP INDEX public.cms_page_navigation_extenders_c24af8dd;
       public         postgres    false    213            �	           1259    119077 +   cms_page_navigation_extenders_c24af8dd_like    INDEX     }   CREATE INDEX cms_page_navigation_extenders_c24af8dd_like ON cms_page USING btree (navigation_extenders varchar_pattern_ops);
 ?   DROP INDEX public.cms_page_navigation_extenders_c24af8dd_like;
       public         postgres    false    213            �	           1259    119586    cms_page_node_id_c87b85a9    INDEX     J   CREATE INDEX cms_page_node_id_c87b85a9 ON cms_page USING btree (node_id);
 -   DROP INDEX public.cms_page_node_id_c87b85a9;
       public         postgres    false    213            �	           1259    119217 &   cms_page_placeholders_page_id_f2ce8dec    INDEX     d   CREATE INDEX cms_page_placeholders_page_id_f2ce8dec ON cms_page_placeholders USING btree (page_id);
 :   DROP INDEX public.cms_page_placeholders_page_id_f2ce8dec;
       public         postgres    false    221            �	           1259    119218 -   cms_page_placeholders_placeholder_id_6b120886    INDEX     r   CREATE INDEX cms_page_placeholders_placeholder_id_6b120886 ON cms_page_placeholders USING btree (placeholder_id);
 A   DROP INDEX public.cms_page_placeholders_placeholder_id_6b120886;
       public         postgres    false    221            �	           1259    119070 "   cms_page_publication_date_684fabf7    INDEX     \   CREATE INDEX cms_page_publication_date_684fabf7 ON cms_page USING btree (publication_date);
 6   DROP INDEX public.cms_page_publication_date_684fabf7;
       public         postgres    false    213            �	           1259    119071 &   cms_page_publication_end_date_12a0c46a    INDEX     d   CREATE INDEX cms_page_publication_end_date_12a0c46a ON cms_page USING btree (publication_end_date);
 :   DROP INDEX public.cms_page_publication_end_date_12a0c46a;
       public         postgres    false    213            �	           1259    119086 $   cms_page_publisher_is_draft_141cba60    INDEX     `   CREATE INDEX cms_page_publisher_is_draft_141cba60 ON cms_page USING btree (publisher_is_draft);
 8   DROP INDEX public.cms_page_publisher_is_draft_141cba60;
       public         postgres    false    213            �	           1259    119074    cms_page_reverse_id_ffc9ede2    INDEX     P   CREATE INDEX cms_page_reverse_id_ffc9ede2 ON cms_page USING btree (reverse_id);
 0   DROP INDEX public.cms_page_reverse_id_ffc9ede2;
       public         postgres    false    213            �	           1259    119075 !   cms_page_reverse_id_ffc9ede2_like    INDEX     i   CREATE INDEX cms_page_reverse_id_ffc9ede2_like ON cms_page USING btree (reverse_id varchar_pattern_ops);
 5   DROP INDEX public.cms_page_reverse_id_ffc9ede2_like;
       public         postgres    false    213            �	           1259    119073    cms_page_soft_root_51efccbe    INDEX     N   CREATE INDEX cms_page_soft_root_51efccbe ON cms_page USING btree (soft_root);
 /   DROP INDEX public.cms_page_soft_root_51efccbe;
       public         postgres    false    213            �	           1259    119104 $   cms_pagepermission_group_id_af5af193    INDEX     `   CREATE INDEX cms_pagepermission_group_id_af5af193 ON cms_pagepermission USING btree (group_id);
 8   DROP INDEX public.cms_pagepermission_group_id_af5af193;
       public         postgres    false    215            �	           1259    119105 #   cms_pagepermission_page_id_0ae9a163    INDEX     ^   CREATE INDEX cms_pagepermission_page_id_0ae9a163 ON cms_pagepermission USING btree (page_id);
 7   DROP INDEX public.cms_pagepermission_page_id_0ae9a163;
       public         postgres    false    215            �	           1259    119106 #   cms_pagepermission_user_id_0c7d2b3c    INDEX     ^   CREATE INDEX cms_pagepermission_user_id_0c7d2b3c ON cms_pagepermission USING btree (user_id);
 7   DROP INDEX public.cms_pagepermission_user_id_0c7d2b3c;
       public         postgres    false    215            �	           1259    119191 #   cms_pageuser_created_by_id_8e9fbf83    INDEX     ^   CREATE INDEX cms_pageuser_created_by_id_8e9fbf83 ON cms_pageuser USING btree (created_by_id);
 7   DROP INDEX public.cms_pageuser_created_by_id_8e9fbf83;
       public         postgres    false    216            �	           1259    119202 (   cms_pageusergroup_created_by_id_7d57fa39    INDEX     h   CREATE INDEX cms_pageusergroup_created_by_id_7d57fa39 ON cms_pageusergroup USING btree (created_by_id);
 <   DROP INDEX public.cms_pageusergroup_created_by_id_7d57fa39;
       public         postgres    false    217            �	           1259    119292    cms_placeholder_slot_0bc04d21    INDEX     R   CREATE INDEX cms_placeholder_slot_0bc04d21 ON cms_placeholder USING btree (slot);
 1   DROP INDEX public.cms_placeholder_slot_0bc04d21;
       public         postgres    false    219            �	           1259    119291 "   cms_placeholder_slot_0bc04d21_like    INDEX     k   CREATE INDEX cms_placeholder_slot_0bc04d21_like ON cms_placeholder USING btree (slot varchar_pattern_ops);
 6   DROP INDEX public.cms_placeholder_slot_0bc04d21_like;
       public         postgres    false    219            �	           1259    119241 4   cms_placeholderreference_placeholder_ref_id_244759b1    INDEX     �   CREATE INDEX cms_placeholderreference_placeholder_ref_id_244759b1 ON cms_placeholderreference USING btree (placeholder_ref_id);
 H   DROP INDEX public.cms_placeholderreference_placeholder_ref_id_244759b1;
       public         postgres    false    222            �	           1259    119257 '   cms_staticplaceholder_draft_id_5aee407b    INDEX     f   CREATE INDEX cms_staticplaceholder_draft_id_5aee407b ON cms_staticplaceholder USING btree (draft_id);
 ;   DROP INDEX public.cms_staticplaceholder_draft_id_5aee407b;
       public         postgres    false    224            
           1259    119258 (   cms_staticplaceholder_public_id_876aaa66    INDEX     h   CREATE INDEX cms_staticplaceholder_public_id_876aaa66 ON cms_staticplaceholder USING btree (public_id);
 <   DROP INDEX public.cms_staticplaceholder_public_id_876aaa66;
       public         postgres    false    224            
           1259    119259 &   cms_staticplaceholder_site_id_dc6a85b6    INDEX     d   CREATE INDEX cms_staticplaceholder_site_id_dc6a85b6 ON cms_staticplaceholder USING btree (site_id);
 :   DROP INDEX public.cms_staticplaceholder_site_id_dc6a85b6;
       public         postgres    false    224            
           1259    119276 $   cms_title_has_url_overwrite_ecf27bb9    INDEX     `   CREATE INDEX cms_title_has_url_overwrite_ecf27bb9 ON cms_title USING btree (has_url_overwrite);
 8   DROP INDEX public.cms_title_has_url_overwrite_ecf27bb9;
       public         postgres    false    226            
           1259    119270    cms_title_language_50a0dfa1    INDEX     N   CREATE INDEX cms_title_language_50a0dfa1 ON cms_title USING btree (language);
 /   DROP INDEX public.cms_title_language_50a0dfa1;
       public         postgres    false    226            
           1259    119271     cms_title_language_50a0dfa1_like    INDEX     g   CREATE INDEX cms_title_language_50a0dfa1_like ON cms_title USING btree (language varchar_pattern_ops);
 4   DROP INDEX public.cms_title_language_50a0dfa1_like;
       public         postgres    false    226            	
           1259    119279    cms_title_page_id_5fade2a3    INDEX     L   CREATE INDEX cms_title_page_id_5fade2a3 ON cms_title USING btree (page_id);
 .   DROP INDEX public.cms_title_page_id_5fade2a3;
       public         postgres    false    226            

           1259    119274    cms_title_path_c484314c    INDEX     F   CREATE INDEX cms_title_path_c484314c ON cms_title USING btree (path);
 +   DROP INDEX public.cms_title_path_c484314c;
       public         postgres    false    226            
           1259    119275    cms_title_path_c484314c_like    INDEX     _   CREATE INDEX cms_title_path_c484314c_like ON cms_title USING btree (path varchar_pattern_ops);
 0   DROP INDEX public.cms_title_path_c484314c_like;
       public         postgres    false    226            
           1259    119277 %   cms_title_publisher_is_draft_95874c88    INDEX     b   CREATE INDEX cms_title_publisher_is_draft_95874c88 ON cms_title USING btree (publisher_is_draft);
 9   DROP INDEX public.cms_title_publisher_is_draft_95874c88;
       public         postgres    false    226            
           1259    119278 "   cms_title_publisher_state_9a952b0f    INDEX     \   CREATE INDEX cms_title_publisher_state_9a952b0f ON cms_title USING btree (publisher_state);
 6   DROP INDEX public.cms_title_publisher_state_9a952b0f;
       public         postgres    false    226            
           1259    119272    cms_title_slug_4947d146    INDEX     F   CREATE INDEX cms_title_slug_4947d146 ON cms_title USING btree (slug);
 +   DROP INDEX public.cms_title_slug_4947d146;
       public         postgres    false    226            
           1259    119273    cms_title_slug_4947d146_like    INDEX     _   CREATE INDEX cms_title_slug_4947d146_like ON cms_title USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.cms_title_slug_4947d146_like;
       public         postgres    false    226            
           1259    119584    cms_treenode_parent_id_59bb02c4    INDEX     V   CREATE INDEX cms_treenode_parent_id_59bb02c4 ON cms_treenode USING btree (parent_id);
 3   DROP INDEX public.cms_treenode_parent_id_59bb02c4;
       public         postgres    false    233            
           1259    119583    cms_treenode_path_6eb22885_like    INDEX     e   CREATE INDEX cms_treenode_path_6eb22885_like ON cms_treenode USING btree (path varchar_pattern_ops);
 3   DROP INDEX public.cms_treenode_path_6eb22885_like;
       public         postgres    false    233            #
           1259    119585    cms_treenode_site_id_d3f46985    INDEX     R   CREATE INDEX cms_treenode_site_id_d3f46985 ON cms_treenode USING btree (site_id);
 1   DROP INDEX public.cms_treenode_site_id_d3f46985;
       public         postgres    false    233            
           1259    119290 &   cms_usersettings_clipboard_id_3ae17c19    INDEX     d   CREATE INDEX cms_usersettings_clipboard_id_3ae17c19 ON cms_usersettings USING btree (clipboard_id);
 :   DROP INDEX public.cms_usersettings_clipboard_id_3ae17c19;
       public         postgres    false    228            �	           1259    118934 )   django_admin_log_content_type_id_c4bce8eb    INDEX     j   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    202            �	           1259    118935 !   django_admin_log_user_id_c564eba6    INDEX     Z   CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    202            �
           1259    120515 #   django_session_expire_date_a5c62663    INDEX     ^   CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    271            �
           1259    120514 (   django_session_session_key_c0390e0f_like    INDEX     w   CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    271            �	           1259    120518     django_site_domain_a2e37b91_like    INDEX     g   CREATE INDEX django_site_domain_a2e37b91_like ON django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public         postgres    false    204            G
           1259    119824 (   djangocms_file_file_file_src_id_74ac14a5    INDEX     h   CREATE INDEX djangocms_file_file_file_src_id_74ac14a5 ON djangocms_file_file USING btree (file_src_id);
 <   DROP INDEX public.djangocms_file_file_file_src_id_74ac14a5;
       public         postgres    false    249            J
           1259    119880 ,   djangocms_file_folder_folder_src_id_9558406a    INDEX     p   CREATE INDEX djangocms_file_folder_folder_src_id_9558406a ON djangocms_file_folder USING btree (folder_src_id);
 @   DROP INDEX public.djangocms_file_folder_folder_src_id_9558406a;
       public         postgres    false    250            O
           1259    119998 4   djangocms_googlemap_googlemapmarker_icon_id_3b103213    INDEX     �   CREATE INDEX djangocms_googlemap_googlemapmarker_icon_id_3b103213 ON djangocms_googlemap_googlemapmarker USING btree (icon_id);
 H   DROP INDEX public.djangocms_googlemap_googlemapmarker_icon_id_3b103213;
       public         postgres    false    252            T
           1259    120022 )   djangocms_link_link_page_link_id_adba1bc7    INDEX     n   CREATE INDEX djangocms_link_link_page_link_id_adba1bc7 ON djangocms_link_link USING btree (internal_link_id);
 =   DROP INDEX public.djangocms_link_link_page_link_id_adba1bc7;
       public         postgres    false    254            W
           1259    120099 /   djangocms_picture_picture_page_link_id_d5c782e0    INDEX     v   CREATE INDEX djangocms_picture_picture_page_link_id_d5c782e0 ON djangocms_picture_picture USING btree (link_page_id);
 C   DROP INDEX public.djangocms_picture_picture_page_link_id_d5c782e0;
       public         postgres    false    255            X
           1259    120105 -   djangocms_picture_picture_picture_id_f7d6711b    INDEX     r   CREATE INDEX djangocms_picture_picture_picture_id_f7d6711b ON djangocms_picture_picture USING btree (picture_id);
 A   DROP INDEX public.djangocms_picture_picture_picture_id_f7d6711b;
       public         postgres    false    255            [
           1259    120233 7   djangocms_picture_picture_thumbnail_options_id_59cf80d1    INDEX     �   CREATE INDEX djangocms_picture_picture_thumbnail_options_id_59cf80d1 ON djangocms_picture_picture USING btree (thumbnail_options_id);
 K   DROP INDEX public.djangocms_picture_picture_thumbnail_options_id_59cf80d1;
       public         postgres    false    255            \
           1259    120259 ,   djangocms_snippet_snippet_name_260f397b_like    INDEX        CREATE INDEX djangocms_snippet_snippet_name_260f397b_like ON djangocms_snippet_snippet USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.djangocms_snippet_snippet_name_260f397b_like;
       public         postgres    false    257            a
           1259    120293 ,   djangocms_snippet_snippet_slug_bd43cd96_like    INDEX        CREATE INDEX djangocms_snippet_snippet_slug_bd43cd96_like ON djangocms_snippet_snippet USING btree (slug varchar_pattern_ops);
 @   DROP INDEX public.djangocms_snippet_snippet_slug_bd43cd96_like;
       public         postgres    false    257            f
           1259    120270 0   djangocms_snippet_snippetptr_snippet_id_56b99614    INDEX     x   CREATE INDEX djangocms_snippet_snippetptr_snippet_id_56b99614 ON djangocms_snippet_snippetptr USING btree (snippet_id);
 D   DROP INDEX public.djangocms_snippet_snippetptr_snippet_id_56b99614;
       public         postgres    false    258            k
           1259    120365 .   djangocms_video_videoplayer_poster_id_07790e24    INDEX     t   CREATE INDEX djangocms_video_videoplayer_poster_id_07790e24 ON djangocms_video_videoplayer USING btree (poster_id);
 B   DROP INDEX public.djangocms_video_videoplayer_poster_id_07790e24;
       public         postgres    false    260            n
           1259    120415 3   djangocms_video_videosource_source_file_id_16f11167    INDEX     ~   CREATE INDEX djangocms_video_videosource_source_file_id_16f11167 ON djangocms_video_videosource USING btree (source_file_id);
 G   DROP INDEX public.djangocms_video_videosource_source_file_id_16f11167;
       public         postgres    false    261            q
           1259    120426 *   djangocms_video_videotrack_src_id_e5a015d8    INDEX     l   CREATE INDEX djangocms_video_videotrack_src_id_e5a015d8 ON djangocms_video_videotrack USING btree (src_id);
 >   DROP INDEX public.djangocms_video_videotrack_src_id_e5a015d8;
       public         postgres    false    262            r
           1259    120450 $   easy_thumbnails_source_name_5fe0edc6    INDEX     `   CREATE INDEX easy_thumbnails_source_name_5fe0edc6 ON easy_thumbnails_source USING btree (name);
 8   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6;
       public         postgres    false    264            s
           1259    120451 )   easy_thumbnails_source_name_5fe0edc6_like    INDEX     y   CREATE INDEX easy_thumbnails_source_name_5fe0edc6_like ON easy_thumbnails_source USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6_like;
       public         postgres    false    264            v
           1259    120448 ,   easy_thumbnails_source_storage_hash_946cbcc9    INDEX     p   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9 ON easy_thumbnails_source USING btree (storage_hash);
 @   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9;
       public         postgres    false    264            w
           1259    120449 1   easy_thumbnails_source_storage_hash_946cbcc9_like    INDEX     �   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9_like ON easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);
 E   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9_like;
       public         postgres    false    264            |
           1259    120459 '   easy_thumbnails_thumbnail_name_b5882c31    INDEX     f   CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31 ON easy_thumbnails_thumbnail USING btree (name);
 ;   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31;
       public         postgres    false    266            }
           1259    120460 ,   easy_thumbnails_thumbnail_name_b5882c31_like    INDEX        CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31_like ON easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31_like;
       public         postgres    false    266            �
           1259    120461 ,   easy_thumbnails_thumbnail_source_id_5b57bc77    INDEX     p   CREATE INDEX easy_thumbnails_thumbnail_source_id_5b57bc77 ON easy_thumbnails_thumbnail USING btree (source_id);
 @   DROP INDEX public.easy_thumbnails_thumbnail_source_id_5b57bc77;
       public         postgres    false    266            �
           1259    120457 /   easy_thumbnails_thumbnail_storage_hash_f1435f49    INDEX     v   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49 ON easy_thumbnails_thumbnail USING btree (storage_hash);
 C   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49;
       public         postgres    false    266            �
           1259    120458 4   easy_thumbnails_thumbnail_storage_hash_f1435f49_like    INDEX     �   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49_like ON easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);
 H   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49_like;
       public         postgres    false    266            *
           1259    119748     filer_clipboard_user_id_b52ff0bc    INDEX     X   CREATE INDEX filer_clipboard_user_id_b52ff0bc ON filer_clipboard USING btree (user_id);
 4   DROP INDEX public.filer_clipboard_user_id_b52ff0bc;
       public         postgres    false    237            +
           1259    119689 )   filer_clipboarditem_clipboard_id_7a76518b    INDEX     j   CREATE INDEX filer_clipboarditem_clipboard_id_7a76518b ON filer_clipboarditem USING btree (clipboard_id);
 =   DROP INDEX public.filer_clipboarditem_clipboard_id_7a76518b;
       public         postgres    false    239            ,
           1259    119742 $   filer_clipboarditem_file_id_06196f80    INDEX     `   CREATE INDEX filer_clipboarditem_file_id_06196f80 ON filer_clipboarditem USING btree (file_id);
 8   DROP INDEX public.filer_clipboarditem_file_id_06196f80;
       public         postgres    false    239            /
           1259    119724    filer_file_folder_id_af803bbb    INDEX     R   CREATE INDEX filer_file_folder_id_af803bbb ON filer_file USING btree (folder_id);
 1   DROP INDEX public.filer_file_folder_id_af803bbb;
       public         postgres    false    241            0
           1259    119730    filer_file_owner_id_b9e32671    INDEX     P   CREATE INDEX filer_file_owner_id_b9e32671 ON filer_file USING btree (owner_id);
 0   DROP INDEX public.filer_file_owner_id_b9e32671;
       public         postgres    false    241            3
           1259    119736 (   filer_file_polymorphic_ctype_id_f44903c1    INDEX     h   CREATE INDEX filer_file_polymorphic_ctype_id_f44903c1 ON filer_file USING btree (polymorphic_ctype_id);
 <   DROP INDEX public.filer_file_polymorphic_ctype_id_f44903c1;
       public         postgres    false    241            4
           1259    119703    filer_folder_level_b631d28a    INDEX     N   CREATE INDEX filer_folder_level_b631d28a ON filer_folder USING btree (level);
 /   DROP INDEX public.filer_folder_level_b631d28a;
       public         postgres    false    243            5
           1259    119700    filer_folder_lft_2c2b69f1    INDEX     J   CREATE INDEX filer_folder_lft_2c2b69f1 ON filer_folder USING btree (lft);
 -   DROP INDEX public.filer_folder_lft_2c2b69f1;
       public         postgres    false    243            6
           1259    119704    filer_folder_owner_id_be530fb4    INDEX     T   CREATE INDEX filer_folder_owner_id_be530fb4 ON filer_folder USING btree (owner_id);
 2   DROP INDEX public.filer_folder_owner_id_be530fb4;
       public         postgres    false    243            7
           1259    119705    filer_folder_parent_id_308aecda    INDEX     V   CREATE INDEX filer_folder_parent_id_308aecda ON filer_folder USING btree (parent_id);
 3   DROP INDEX public.filer_folder_parent_id_308aecda;
       public         postgres    false    243            <
           1259    119701    filer_folder_rght_34946267    INDEX     L   CREATE INDEX filer_folder_rght_34946267 ON filer_folder USING btree (rght);
 .   DROP INDEX public.filer_folder_rght_34946267;
       public         postgres    false    243            =
           1259    119702    filer_folder_tree_id_b016223c    INDEX     R   CREATE INDEX filer_folder_tree_id_b016223c ON filer_folder USING btree (tree_id);
 1   DROP INDEX public.filer_folder_tree_id_b016223c;
       public         postgres    false    243            >
           1259    119721 )   filer_folderpermission_folder_id_5d02f1da    INDEX     j   CREATE INDEX filer_folderpermission_folder_id_5d02f1da ON filer_folderpermission USING btree (folder_id);
 =   DROP INDEX public.filer_folderpermission_folder_id_5d02f1da;
       public         postgres    false    245            ?
           1259    119722 (   filer_folderpermission_group_id_8901bafa    INDEX     h   CREATE INDEX filer_folderpermission_group_id_8901bafa ON filer_folderpermission USING btree (group_id);
 <   DROP INDEX public.filer_folderpermission_group_id_8901bafa;
       public         postgres    false    245            B
           1259    119723 '   filer_folderpermission_user_id_7673d4b6    INDEX     f   CREATE INDEX filer_folderpermission_user_id_7673d4b6 ON filer_folderpermission USING btree (user_id);
 ;   DROP INDEX public.filer_folderpermission_user_id_7673d4b6;
       public         postgres    false    245            �
           1259    120772 0   portfolio_app_demourlitem_project_id_id_d316d9c0    INDEX     x   CREATE INDEX portfolio_app_demourlitem_project_id_id_d316d9c0 ON portfolio_app_demourlitem USING btree (project_id_id);
 D   DROP INDEX public.portfolio_app_demourlitem_project_id_id_d316d9c0;
       public         postgres    false    287            �
           1259    120766 /   portfolio_app_mediaasset_project_id_id_2bd68af0    INDEX     v   CREATE INDEX portfolio_app_mediaasset_project_id_id_2bd68af0 ON portfolio_app_mediaasset USING btree (project_id_id);
 C   DROP INDEX public.portfolio_app_mediaasset_project_id_id_2bd68af0;
       public         postgres    false    289            �
           1259    120745 #   portfolio_app_project_slug_c7455a3e    INDEX     ^   CREATE INDEX portfolio_app_project_slug_c7455a3e ON portfolio_app_project USING btree (slug);
 7   DROP INDEX public.portfolio_app_project_slug_c7455a3e;
       public         postgres    false    290            �
           1259    120746 (   portfolio_app_project_slug_c7455a3e_like    INDEX     w   CREATE INDEX portfolio_app_project_slug_c7455a3e_like ON portfolio_app_project USING btree (slug varchar_pattern_ops);
 <   DROP INDEX public.portfolio_app_project_slug_c7455a3e_like;
       public         postgres    false    290            �
           1259    120764 .   portfolio_app_project_tags_project_id_74c3a22f    INDEX     t   CREATE INDEX portfolio_app_project_tags_project_id_74c3a22f ON portfolio_app_project_tags USING btree (project_id);
 B   DROP INDEX public.portfolio_app_project_tags_project_id_74c3a22f;
       public         postgres    false    293            �
           1259    120765 *   portfolio_app_project_tags_tag_id_023e820f    INDEX     l   CREATE INDEX portfolio_app_project_tags_tag_id_023e820f ON portfolio_app_project_tags USING btree (tag_id);
 >   DROP INDEX public.portfolio_app_project_tags_tag_id_023e820f;
       public         postgres    false    293                       2606    120542 O   about_me_aboutme about_me_aboutme_cmsplugin_ptr_id_d3ccaa3a_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY about_me_aboutme
    ADD CONSTRAINT about_me_aboutme_cmsplugin_ptr_id_d3ccaa3a_fk_cms_cmsplugin_id FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.about_me_aboutme DROP CONSTRAINT about_me_aboutme_cmsplugin_ptr_id_d3ccaa3a_fk_cms_cmsplugin_id;
       public       postgres    false    206    273    2495            
           2606    120595 P   about_me_skillitem about_me_skillitem_skill_plugin_item_id_13d09185_fk_about_me_    FK CONSTRAINT     �   ALTER TABLE ONLY about_me_skillitem
    ADD CONSTRAINT about_me_skillitem_skill_plugin_item_id_13d09185_fk_about_me_ FOREIGN KEY (skill_plugin_item_id) REFERENCES about_me_skillplugin(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.about_me_skillitem DROP CONSTRAINT about_me_skillitem_skill_plugin_item_id_13d09185_fk_about_me_;
       public       postgres    false    2714    279    278                       2606    120584 P   about_me_skillplugin about_me_skillplugin_cmsplugin_ptr_id_847fd6c7_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY about_me_skillplugin
    ADD CONSTRAINT about_me_skillplugin_cmsplugin_ptr_id_847fd6c7_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.about_me_skillplugin DROP CONSTRAINT about_me_skillplugin_cmsplugin_ptr_id_847fd6c7_fk_cms_cmspl;
       public       postgres    false    279    206    2495                       2606    120566 V   about_me_statisticitem about_me_statisticit_statistic_plugin_id__d6a86d36_fk_about_me_    FK CONSTRAINT     �   ALTER TABLE ONLY about_me_statisticitem
    ADD CONSTRAINT about_me_statisticit_statistic_plugin_id__d6a86d36_fk_about_me_ FOREIGN KEY (statistic_plugin_id_id) REFERENCES about_me_statisticplugin(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.about_me_statisticitem DROP CONSTRAINT about_me_statisticit_statistic_plugin_id__d6a86d36_fk_about_me_;
       public       postgres    false    2709    276    275            	           2606    120560 T   about_me_statisticplugin about_me_statisticpl_cmsplugin_ptr_id_ff905e5d_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY about_me_statisticplugin
    ADD CONSTRAINT about_me_statisticpl_cmsplugin_ptr_id_ff905e5d_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.about_me_statisticplugin DROP CONSTRAINT about_me_statisticpl_cmsplugin_ptr_id_ff905e5d_fk_cms_cmspl;
       public       postgres    false    276    206    2495                       2606    120647 S   about_me_timelineheader about_me_timelinehea_cmsplugin_ptr_id_640041e2_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY about_me_timelineheader
    ADD CONSTRAINT about_me_timelinehea_cmsplugin_ptr_id_640041e2_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.about_me_timelineheader DROP CONSTRAINT about_me_timelinehea_cmsplugin_ptr_id_640041e2_fk_cms_cmspl;
       public       postgres    false    2495    282    206            �
           2606    119449 L   aldryn_style_style aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY aldryn_style_style
    ADD CONSTRAINT aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.aldryn_style_style DROP CONSTRAINT aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl;
       public       postgres    false    229    206    2495            �
           2606    118874 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    190    194    2450            �
           2606    118869 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    192    2455    194            �
           2606    118860 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    190    188    2445            �
           2606    118889 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    198    192    2455            �
           2606    118884 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    198    2463    196            �
           2606    118903 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    190    200    2450            �
           2606    118898 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    2463    200    196            �
           2606    119226 T   cms_aliaspluginmodel cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place FOREIGN KEY (alias_placeholder_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place;
       public       postgres    false    219    207    2545            �
           2606    119520 P   cms_aliaspluginmodel cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl;
       public       postgres    false    2495    207    206            �
           2606    120347 P   cms_aliaspluginmodel cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id FOREIGN KEY (plugin_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id;
       public       postgres    false    207    2495    206            �
           2606    120342 B   cms_cmsplugin cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id FOREIGN KEY (parent_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id;
       public       postgres    false    206    2495    206            �
           2606    119220 I   cms_cmsplugin cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id FOREIGN KEY (placeholder_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id;
       public       postgres    false    206    2545    219            �
           2606    119501 ^   cms_globalpagepermission_sites cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa    FK CONSTRAINT     �   ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa FOREIGN KEY (globalpagepermission_id) REFERENCES cms_globalpagepermission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa;
       public       postgres    false    2505    209    211            �
           2606    119496 Q   cms_globalpagepermission_sites cms_globalpagepermis_site_id_00460b53_fk_django_si    FK CONSTRAINT     �   ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_site_id_00460b53_fk_django_si FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermis_site_id_00460b53_fk_django_si;
       public       postgres    false    211    204    2487            �
           2606    119029 T   cms_globalpagepermission cms_globalpagepermission_group_id_991b4733_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_group_id_991b4733_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_group_id_991b4733_fk_auth_group_id;
       public       postgres    false    192    2455    209            �
           2606    119466 E   cms_globalpagepermission cms_globalpagepermission_user_id_a227cee1_fk    FK CONSTRAINT     �   ALTER TABLE ONLY cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_user_id_a227cee1_fk FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_user_id_a227cee1_fk;
       public       postgres    false    209    196    2463            �
           2606    119592 5   cms_page cms_page_node_id_c87b85a9_fk_cms_treenode_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_node_id_c87b85a9_fk_cms_treenode_id FOREIGN KEY (node_id) REFERENCES cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_node_id_c87b85a9_fk_cms_treenode_id;
       public       postgres    false    213    233    2594            �
           2606    119210 O   cms_page_placeholders cms_page_placeholder_placeholder_id_6b120886_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholder_placeholder_id_6b120886_fk_cms_place FOREIGN KEY (placeholder_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholder_placeholder_id_6b120886_fk_cms_place;
       public       postgres    false    2545    221    219            �
           2606    119205 K   cms_page_placeholders cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id;
       public       postgres    false    213    221    2524            �
           2606    119060 =   cms_page cms_page_publisher_public_id_d619fca0_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_d619fca0_fk_cms_page_id FOREIGN KEY (publisher_public_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_publisher_public_id_d619fca0_fk_cms_page_id;
       public       postgres    false    213    213    2524            �
           2606    119089 H   cms_pagepermission cms_pagepermission_group_id_af5af193_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_group_id_af5af193_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_group_id_af5af193_fk_auth_group_id;
       public       postgres    false    215    2455    192            �
           2606    119094 E   cms_pagepermission cms_pagepermission_page_id_0ae9a163_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_page_id_0ae9a163_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_page_id_0ae9a163_fk_cms_page_id;
       public       postgres    false    215    2524    213            �
           2606    119471 9   cms_pagepermission cms_pagepermission_user_id_0c7d2b3c_fk    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_user_id_0c7d2b3c_fk FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_user_id_0c7d2b3c_fk;
       public       postgres    false    215    2463    196            �
           2606    119491 3   cms_pageuser cms_pageuser_created_by_id_8e9fbf83_fk    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pageuser
    ADD CONSTRAINT cms_pageuser_created_by_id_8e9fbf83_fk FOREIGN KEY (created_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_created_by_id_8e9fbf83_fk;
       public       postgres    false    2463    216    196            �
           2606    119486 1   cms_pageuser cms_pageuser_user_ptr_id_b3d65592_fk    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pageuser
    ADD CONSTRAINT cms_pageuser_user_ptr_id_b3d65592_fk FOREIGN KEY (user_ptr_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_user_ptr_id_b3d65592_fk;
       public       postgres    false    2463    196    216            �
           2606    119476 =   cms_pageusergroup cms_pageusergroup_created_by_id_7d57fa39_fk    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_created_by_id_7d57fa39_fk FOREIGN KEY (created_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_created_by_id_7d57fa39_fk;
       public       postgres    false    196    217    2463            �
           2606    119192 J   cms_pageusergroup cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id FOREIGN KEY (group_ptr_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id;
       public       postgres    false    192    2455    217            �
           2606    119525 T   cms_placeholderreference cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl;
       public       postgres    false    206    222    2495            �
           2606    119236 V   cms_placeholderreference cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place FOREIGN KEY (placeholder_ref_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place;
       public       postgres    false    219    2545    222            �
           2606    119242 S   cms_staticplaceholder cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id FOREIGN KEY (draft_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id;
       public       postgres    false    224    219    2545            �
           2606    119247 T   cms_staticplaceholder cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id FOREIGN KEY (public_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id;
       public       postgres    false    224    219    2545            �
           2606    119252 N   cms_staticplaceholder cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id;
       public       postgres    false    224    204    2487            �
           2606    119260 3   cms_title cms_title_page_id_5fade2a3_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_page_id_5fade2a3_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_page_id_5fade2a3_fk_cms_page_id;
       public       postgres    false    226    213    2524            �
           2606    119265 @   cms_title cms_title_publisher_public_id_003a2702_fk_cms_title_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_003a2702_fk_cms_title_id FOREIGN KEY (publisher_public_id) REFERENCES cms_title(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_publisher_public_id_003a2702_fk_cms_title_id;
       public       postgres    false    2573    226    226            �
           2606    119573 ?   cms_treenode cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_treenode
    ADD CONSTRAINT cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id FOREIGN KEY (parent_id) REFERENCES cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id;
       public       postgres    false    233    233    2594            �
           2606    119578 <   cms_treenode cms_treenode_site_id_d3f46985_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_treenode
    ADD CONSTRAINT cms_treenode_site_id_d3f46985_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_site_id_d3f46985_fk_django_site_id;
       public       postgres    false    233    204    2487            �
           2606    119280 M   cms_usersettings cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_usersettings
    ADD CONSTRAINT cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id FOREIGN KEY (clipboard_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id;
       public       postgres    false    219    2545    228            �
           2606    119506 B   cms_usersettings cms_usersettings_user_id_09633b2d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_09633b2d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_user_id_09633b2d_fk_auth_user_id;
       public       postgres    false    196    228    2463                       2606    120689 P   contact_me_contactme contact_me_contactme_cmsplugin_ptr_id_30e8d4d5_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY contact_me_contactme
    ADD CONSTRAINT contact_me_contactme_cmsplugin_ptr_id_30e8d4d5_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.contact_me_contactme DROP CONSTRAINT contact_me_contactme_cmsplugin_ptr_id_30e8d4d5_fk_cms_cmspl;
       public       postgres    false    206    283    2495            �
           2606    118924 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    2445    188    202            �
           2606    119461 5   django_admin_log django_admin_log_user_id_c564eba6_fk    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk;
       public       postgres    false    196    202    2463            �
           2606    119617 S   djangocms_column_column djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_column_column
    ADD CONSTRAINT djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.djangocms_column_column DROP CONSTRAINT djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl;
       public       postgres    false    234    206    2495            �
           2606    119622 Y   djangocms_column_multicolumns djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_column_multicolumns
    ADD CONSTRAINT djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_column_multicolumns DROP CONSTRAINT djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl;
       public       postgres    false    235    206    2495            �
           2606    119819 N   djangocms_file_file djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl;
       public       postgres    false    2495    249    206            �
           2606    119857 M   djangocms_file_file djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id FOREIGN KEY (file_src_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id;
       public       postgres    false    2610    241    249            �
           2606    119870 Q   djangocms_file_folder djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl;
       public       postgres    false    206    250    2495            �
           2606    119875 U   djangocms_file_folder djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id FOREIGN KEY (folder_src_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id;
       public       postgres    false    243    250    2619            �
           2606    119987 _   djangocms_googlemap_googlemapmarker djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl;
       public       postgres    false    2495    252    206            �
           2606    119949 Y   djangocms_googlemap_googlemap djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemap DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl;
       public       postgres    false    251    206    2495            �
           2606    119992 ^   djangocms_googlemap_googlemaproute djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl;
       public       postgres    false    253    206    2495            �
           2606    119999 V   djangocms_googlemap_googlemapmarker djangocms_googlemap__icon_id_3b103213_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__icon_id_3b103213_fk_filer_ima FOREIGN KEY (icon_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap__icon_id_3b103213_fk_filer_ima;
       public       postgres    false    252    2628    246            �
           2606    120028 N   djangocms_link_link djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl;
       public       postgres    false    254    206    2495            �
           2606    120056 P   djangocms_link_link djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id FOREIGN KEY (internal_link_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id;
       public       postgres    false    254    213    2524            �
           2606    120228 U   djangocms_picture_picture djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl;
       public       postgres    false    2495    206    255            �
           2606    120223 O   djangocms_picture_picture djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima FOREIGN KEY (picture_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima;
       public       postgres    false    255    2628    246            �
           2606    120234 Y   djangocms_picture_picture djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu FOREIGN KEY (thumbnail_options_id) REFERENCES filer_thumbnailoption(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu;
       public       postgres    false    248    2630    255            �
           2606    120218 X   djangocms_picture_picture djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id FOREIGN KEY (link_page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id;
       public       postgres    false    2524    213    255            �
           2606    120286 X   djangocms_snippet_snippetptr djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl;
       public       postgres    false    206    258    2495            �
           2606    120294 P   djangocms_snippet_snippetptr djangocms_snippet_snippetptr_snippet_id_56b99614_fk    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_snippetptr_snippet_id_56b99614_fk FOREIGN KEY (snippet_id) REFERENCES djangocms_snippet_snippet(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_snippetptr_snippet_id_56b99614_fk;
       public       postgres    false    257    258    2656            �
           2606    120317 X   djangocms_text_ckeditor_text djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_text_ckeditor_text DROP CONSTRAINT djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl;
       public       postgres    false    206    2495    259            �
           2606    120352 W   djangocms_video_videoplayer djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl;
       public       postgres    false    206    260    2495                       2606    120405 W   djangocms_video_videosource djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl;
       public       postgres    false    206    2495    261                       2606    120416 V   djangocms_video_videotrack djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl;
       public       postgres    false    262    206    2495            �
           2606    120366 P   djangocms_video_videoplayer djangocms_video_vide_poster_id_07790e24_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_poster_id_07790e24_fk_filer_ima FOREIGN KEY (poster_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_vide_poster_id_07790e24_fk_filer_ima;
       public       postgres    false    2628    260    246                        2606    120410 U   djangocms_video_videosource djangocms_video_vide_source_file_id_16f11167_fk_filer_fil    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_source_file_id_16f11167_fk_filer_fil FOREIGN KEY (source_file_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_vide_source_file_id_16f11167_fk_filer_fil;
       public       postgres    false    2610    241    261                       2606    120421 V   djangocms_video_videotrack djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id FOREIGN KEY (src_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id;
       public       postgres    false    241    2610    262                       2606    120452 N   easy_thumbnails_thumbnail easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum    FK CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum FOREIGN KEY (source_id) REFERENCES easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum;
       public       postgres    false    266    2677    264                       2606    120474 [   easy_thumbnails_thumbnaildimensions easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum    FK CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum FOREIGN KEY (thumbnail_id) REFERENCES easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum;
       public       postgres    false    268    266    2687            �
           2606    119749 @   filer_clipboard filer_clipboard_user_id_b52ff0bc_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboard
    ADD CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id;
       public       postgres    false    196    237    2463            �
           2606    119684 S   filer_clipboarditem filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id FOREIGN KEY (clipboard_id) REFERENCES filer_clipboard(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id;
       public       postgres    false    239    2601    237            �
           2606    119743 I   filer_clipboarditem filer_clipboarditem_file_id_06196f80_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id FOREIGN KEY (file_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id;
       public       postgres    false    241    239    2610            �
           2606    119725 ;   filer_file filer_file_folder_id_af803bbb_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id;
       public       postgres    false    241    2619    243            �
           2606    119773 7   filer_file filer_file_owner_id_b9e32671_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id;
       public       postgres    false    2463    241    196            �
           2606    119759 @   filer_file filer_file_polymorphic_ctype_id_f44903c1_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co FOREIGN KEY (polymorphic_ctype_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co;
       public       postgres    false    188    2445    241            �
           2606    119778 ;   filer_folder filer_folder_owner_id_be530fb4_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id;
       public       postgres    false    243    196    2463            �
           2606    119695 ?   filer_folder filer_folder_parent_id_308aecda_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id FOREIGN KEY (parent_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id;
       public       postgres    false    243    2619    243            �
           2606    119706 S   filer_folderpermission filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id;
       public       postgres    false    2619    243    245            �
           2606    119711 P   filer_folderpermission filer_folderpermission_group_id_8901bafa_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id;
       public       postgres    false    245    192    2455            �
           2606    119783 N   filer_folderpermission filer_folderpermission_user_id_7673d4b6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id;
       public       postgres    false    196    2463    245            �
           2606    120489 =   filer_image filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_image
    ADD CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id FOREIGN KEY (file_ptr_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id;
       public       postgres    false    241    2610    246                       2606    120529 L   hero_area_heroarea hero_area_heroarea_cmsplugin_ptr_id_29df94d5_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY hero_area_heroarea
    ADD CONSTRAINT hero_area_heroarea_cmsplugin_ptr_id_29df94d5_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.hero_area_heroarea DROP CONSTRAINT hero_area_heroarea_cmsplugin_ptr_id_29df94d5_fk_cms_cmspl;
       public       postgres    false    2495    272    206                       2606    120773 R   portfolio_app_demourlitem portfolio_app_demour_project_id_id_d316d9c0_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_demourlitem
    ADD CONSTRAINT portfolio_app_demour_project_id_id_d316d9c0_fk_portfolio FOREIGN KEY (project_id_id) REFERENCES portfolio_app_project(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.portfolio_app_demourlitem DROP CONSTRAINT portfolio_app_demour_project_id_id_d316d9c0_fk_portfolio;
       public       postgres    false    2731    287    290                       2606    120767 Q   portfolio_app_mediaasset portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_mediaasset
    ADD CONSTRAINT portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio FOREIGN KEY (project_id_id) REFERENCES portfolio_app_project(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_mediaasset DROP CONSTRAINT portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio;
       public       postgres    false    2731    290    289                       2606    120740 Q   portfolio_app_project portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_project
    ADD CONSTRAINT portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_project DROP CONSTRAINT portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl;
       public       postgres    false    2495    206    290                       2606    120752 P   portfolio_app_project_tags portfolio_app_projec_project_id_74c3a22f_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_projec_project_id_74c3a22f_fk_portfolio FOREIGN KEY (project_id) REFERENCES portfolio_app_project(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_projec_project_id_74c3a22f_fk_portfolio;
       public       postgres    false    2731    293    290                       2606    120757 L   portfolio_app_project_tags portfolio_app_projec_tag_id_023e820f_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_projec_tag_id_023e820f_fk_portfolio FOREIGN KEY (tag_id) REFERENCES portfolio_app_tag(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_projec_tag_id_023e820f_fk_portfolio;
       public       postgres    false    2735    293    291                       2606    120747 Q   portfolio_app_tag portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_tag
    ADD CONSTRAINT portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_tag DROP CONSTRAINT portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id;
       public       postgres    false    2495    206    291            �   �  x�풱n1�g�)�5�s�[�<hv�]d��9�Ig����e7/�9��@��?���d�ס�O�����H�2K�D���iωN���?�"�H=mm`�LW������V}9�Ĵ�C��@>i���r(c-\��M	*�cۊvzɈ��(/��F#��k~���'��w`���oC(LU��$�6'M���{D)���<��bA�Ϻ6i��3���Ր+�O��n�eAG�����$�.�a7D�QR|���������n�c�S��+��r�i�W;� �qz��C!𬎛� ݌�~M�����F�}u��ȳ����I:@��������)ةM���u�Z"��EQ��.�4���a�8��-�����y�I�靟~��<��������L�ӿ���      �   �   x�3���s�4�4�2�H�M,���0r�9�R��3S8-@�&�~�)�z^Ŝf �)�WbYbqrQfA	D��o�Bp��BpjQYj�sN��`ǪҢT�2N���<w�5��c.S� ,Qc�Ԅ���!���bFX�6FwP�����b���� b�E�      �   F   x�}��	�@Dѳ�»l�d&����C<� ���Z20Gh$W�ytN���-��j�t�d�X���j���>�      �   l   x�3�N,�,N�LMQp��L�+)�46�4�2������L�<cN��܂���������d�:S�:SN��r������� tA#.cC��䐭񍱻(���� �12�      �   N   x�m��	�0�Q�]������
���ff�0�9$���R����ܬVϕ��K���/�70/(�a�v�����<�      �   Q  x����O�0���_ѻ��s�)�D/��ˀ߶&В�c�w%��A�xk���/C�:_��7΢;�G����Vxd��X���	GW�{[�z���g�W�-]�Eq���.0��+M9ɘd"���I������&J����@3<�}O���u��î�Hk<�EK6v	D���1l`��P������4K�JH*y��S��Tp��Zؑ{�1�a5��Ӥ)��C�n�Ӑh
ָz�׀omi,�B7 �)+��8C�7Z�a��m��� "{��ln���f��7���Rb�4Z1�Ҍ����8�iR)5e�㔇�g2��Y�>���)�|�#��?/������J�(z���	      �   �   x�u���@k�+��=�����_��0��¿# �L&S/��i��CC���#�@����Ҋ*��g)I�C�������ô�ՐL�lS,�nm)SC�n����^s�!.R���֯]8�v[_*:o�s�a�@�      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�u�O��(���S�8{Y��}^i�#��6R˝�io;qd;�l��
��}h)�_��1P���G��L�羾.�k5�}���-|ۨ��<x�7S>ǛQ���7�TԾ~�^˧Y�ӶM�C���ł��p�ڊl�٫�͞�P��.�~[��S5�c��8�>����=�� 1���[YU�w?}��c-���#��P��/�c7��ܿ�Fu�,r%��y_	�}
��]'<J|�l^�ً��Bw\@d�y��.և���VZ��}���?z�=r�du�r����Üv���YT�3�Z�j14 h\h�l޷�9�n�Cٯ�O�}���j�T
�f2�G�4F���4�W���������E�s=ǁ�+����X���֧���ѭ�yyg�����k�W8�a˾�\���j?l���n����~`����/�5��d`�/��d��j�+a柯�y�>���6�i/�}ܧ�}���|.�լ��]�T����������0��u��!p�?eoX������2���d������M����K6!� ���M`&�F
�[A�[!���ʹ�A�"��2Yi\"��Zg�`��n��,)�X�'!oOG2��|��<.�0ѥ�B]�����\%k��A�l"WΚ�+8_DJ�6�k��Ł�8���<X�p��ikɃ�g���vN�P��� ���8�{DF|�^�����N@X�]v�8;ň�h�#�)Fĳ�k�����N��I{,�SqщC�QIK�s��40�.��Ӕ_�[Uਾ�>�8J	������@i�h����oW���]t½��>	G��QA�'�'_������UU`���8K �-�K��l��^�C�]U���
�s{(#D�Z �;��RQ}�c�˨�p����^�ƾ�nKv�>��`��0�^xhD���MF�zB�W�봚˾�ߥ=n�e��nM���7�,�8=��櫁	f�|/&�0N�����:C�q¦�;T�`���Ŕ u #&-0�!0C����u��\.���ba��P\b&��h���br�i��l�[^��*k8��S1�-. ��!%��@���T��U��M���80|1��vl:�b��:���}��)$V�[��x^dx*O���'H���-�D����YE��OH�Ą� bIZ���@,nc�׼OHZ�`���,-��, %$1bc�bPO�K�����Ӑym-�V�Sf��4[�u�c�n�u�{�c��j]���0�ZGۜ�Ǘ��)�o[)��)���AB(��'L>��0<|���!D���w����*�ߟ���4�j��6x��p;F��P��_X�V����2n�a�U�/��a�U�5�,�,��~��S5`pPb,'s��\�e~RД�`�p����_��k)�]����TW���Xh*2�VGR��v�T+��RR� 4D�:)��AfLUR`��_��,����.�ˠȲ�S��a�iJ�}�7����v�e�&Ź����4��	:ѳ���K5}��K,Y�j��_�Zϥ�tۿ��7��u�ZXi �� a�
�p���~�u)�Ռ�Cu��R�Q�}2V��`��Ȳl��n���nT�i]�|w�|a��$n ��r�R��LR$�KW�kQ[��+�w"}�!</¢򤈈�	�h�$y[Iu�'�2Gr�*�������ќ��i�C��/#V�SR���a�iiU�^s����I�r%H7���
����f{�M��A���, �$1�d���İL�=��s�[��;µg̴A1���_ɃB�M�%Y�<.d�8�+|�k�m/�B�W��BH"���Cu!*GQ,S�<���2�i��)I�F���D�܌�ٿ3��.}7��.�x4>ZDX4��@���;
�,Ss5�ť�����]�-�/_�m2E�a�Yʑ!5{�i,�m�'خ�wa�|�%�:^	�[�V��K����ł��&x��0eF�5$�Hא �[�xS^��[�y��ZZ�wv 苷���.���"o4�      �   �   x�u��n�@���p.��?f qUKJ��j���4c@�R&X��W/]uӞs�CPwl���kE�kS l>�u��U�=]�p�~�U���2V�!�IwWY#t�y2؄U.^�%�+t�рT�j���	`� � 0�ܧ�gԑ�Q��AX��~X|o�2�z�ݴ��A��},���]4�����}��&�6oQM����~k��IK�y�j��צ6ÿ6��y��vp,�z ��L�      �      x������ � �      �      x������ � �      �      x������ � �      �   B  x���Oo�@���O�;�j����ުJ�KK���%TY�6
��g�x'n#$"�`�%�7;�v���zW���u���wm�����Ϧ�Ё�;>G:s1!&d���T�`=ڨ��W���s`�[���AH�6��=���*���D���ߌ���''Ɂe����Hj��G�9~5�m������"��|b�^EB<�EV7?68%,�Kᠡ-�_�͟�y8N�\��H�$�-OV�! _@dx �jV�c�쑧���3����\&
���r�<֫�=ڷ<�< �=�a��*�8��5� ,�hh���$I�y��>�!iTsR�	�Po���.��_>K?O!�g7V�O�T1�8�+��$����$�?
PI�ҵa8E�' q��)�{�x��OQ�%��
ia��;�S!H�@�|0�'�����/�q9|4,'	�!W2C��'���]>ָ%n�ٶ�$>�ْWę�@�-�O���h=�¬�;�ø^v��ǗI,��:K�N�0�ߝ���#��]�����b�y�_�q_t��G�j�WG����Y�#���5Us���a,W���Ƙ�yQɎ      �      x������ � �      �      x������ � �      �   �   x����j�@E�ݯP��c_���@ܘR�I!E[��?YY2Fq�]$00s�2����wm�ύ �
슠B��'#!H�.��qr`�Z��[/QFw�UY5c+���zx{�M���i�g�Qu�@aP�=x�Ex�H�R`����wxy£��ώ/�ONL��O�%��! 'x�o��k�����e�:�F=����~=Q�j��@�o�Z.az�OL��u�F;gkO�;����O�C      �   R   x����0�l1�����:">+4�PLf�xy=/����ᘗ�m�fQ��BrB����:�/���D�-T�o�=��U      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�]�m
�0����ad����`0�1�-����N����ސ"���".>`�^6�M3�%n�(���2[p�|t^)���N9)���Czs�{8��)Ħ*�-(�x�����q���u}=�?�X�6�Kԧ���b����R�      �      x������ � �      �      x������ � �      �   �   x���K
1D�էp/:�=1�	\���
jDr&?�֦UP<x���}�Θ�?���Ga�Ax�Ǭ!Kri�)�-�P��C��:�Xu)�sA���|�7�:�B6u)�������YRa�r�͵���hjGIg      �   "   x�3�4000�4�4����4�2��=... j(u      �   4   x�3�4O2LN63M�5HKK�51KN�M�H5�MJM51H22M667����� 
�      �      x�3�L��4�4����� U4      �   l   x�3���ж0�T04�0U065U�0��457�7�T�H�UK�SpJL��Q�2�2\2�Kt<��32|A"Ι%���@VNIif�Cznbf�^r~.��m͏���� s7�      �      x������ � �      �   !  x��U[k�@~��!��Üs������
R**�,�$m#���� ��w'��&�-�>���$�]N�-�P�=�)��B��5V��{S�s�,\0�Z�'���z��1����H�HS���G�`9��v
V��2�H^נ5�	D��K�"��Z4��e��+WE�7�q�ey�����S0S帕ڐ+�4�c��@\(r���`�>$���6�+�Uքۛ8��U�&ۢ�,�ի&>��6�:o�$�ۃ�wux\�U{�ķ��w�`���8��x |S
"'㰏_��\�|Oʴl`��㚌1]ڥe��A:N�8(ж�;6�duYd%h*!COY���V�}J�I]lJȁDH�
3µ1�T'�������D�$�y��2��x�gE%M�oۂ�˯y�m�"�����HɓG�T�e��̪qfÀH.�G��>7�C��E�7i]t]�7}o1|�Ax�� l�nM(d����?�G�W�oϯ��*��"�,F�f���a��q2�\5w���e�(��}�[T;��a�smE��_Z�Y.���W�gݹ����l�{1�      �   a  x�}Tێ� }��j�����T��M�r�����!i˴3���1�}�iXoF�x�f�|EԈ ����V����"c�S�vu�D�:�{���<L�{���NwLV;f�HQq�#K:ӹe�fWR�/�i��� �h�A�h�Ys�?+�d\eڈG5*hI�i��k]M�*J�Ft=�/\�*뾖�9"�l(�X��	s�nL�ת�hH�K�O]2�km9":*
�S��̢�H�_�3pɆ�FOq����ᠳ�l��F��^�x�
���~�����m�p��W*���h[ڤ��|���)m|�%�3Ti>=p�O�d�y� ���I��L �J�ޛ�:�n �w�N����tv_,ɯ���j!�a���e����<Ed�����t�ٶ��?�!G���G�G�V��@����7J\���Q����Z�O=�ge����쿧�˔���UOip�8�S�3)ZVhw�џTDU�ŀ�a�L�,���H���إ2y�ah�7\i�VV�Ms?Ѿ�kt�D#���=|�$2��:^Q--�ީ��Tq{,����TI��qKo�2=]Â��M�!�-�&���Ҥ+��U�N�pt��!_��F�� �z��      �   }  x���ے����3O1��e�(�Yv����i���dj���6�D$]}3ՙ���%Y���<T�a��T�N�>�C]6;) ��)~��+�ײ�B!���C�����Z�D��P��p�ϯ%6I�"��i����3tթ�Sz~�ÁgH�RF����𕽡���(����K�*�����rZ}�}��Z�eZf�Zi��A*�X��7�>k��V ?1Z]hD"kֳͣZ#U�B��{-��Zo�OAf�[� $0����3��g��>I�b�Ӫ5�	�l��56iM��p��c��sD��s���ؕC�}����׎ף���Z�O���J�m���9t�gz�gS��c�Z��i��A*W�R�[��O��!��|h�!~��7����y�V�U.Uw���n�# �ʿ���G�ˊ�`D-)K%��թ���ywj��5&�3���=�0&�J��f4e?�<W�֮�-SHA"��d��u7�w4|�F�`ؼ;C\Zɟ����v}̮�꺶�����Xq#��f��yjf"��2�E��@Z���ˋ� :�ɾ91�
׮!��w՟:���"5�T�KF�B���.��2=U�f-���"����$�i�JlEL���b����"�p!7E���"m4'C�Qqn����;�@JC}5<�9�)���
�msCWQ�6Uy�^X)�N�Q�������"���^v��^�ңY�\�ד�(v9��B�f��߽�Mսz�-�p�ƞ@�Es�T�)�r�QâVa���~�)MQn�c�����rѮ�X����mr�V�|�V*�K.ma1�=����[�]K���f�zms���2ڕ��j�2���ܒi�pT.a]�P9?L��r#���\cҾ�v���"���y���K��#w�=�̓�p����cñsC�ɹ�W�d�ƾ�,�H��r(/q��u��R�
���d8��w�#k��L;Q���_����>[�RٰF?b���b� j	�,�b�|-Ą�pǊ�.�C���c��[.��+�LŸ-��9�2 �	q���[�[0��Q>
���ޚ`*wC�o�����K!c�Ȅ���|�������k�a�gs2x�.%rF�r����F�x]��X6O�Vm���AI4����`~�x*�����ol���ƒl�u�n���W�I⸔Il���/)����s�M3�uG��E�(A�s*N!>��^q\��@q��e�g8fU����m���Tۜ`0��5	���b��^M��Ѥd�>�I���_����u6��aI�b ~�d("ȝ�+lH�K�ӏJ�/Ӌ/h�N&�i>_��LLS�c����e`s�;&�iΡu���6�j"��6]����.$^UO�9_;9��׭V,����(��S��G����0Td�����R	����!����!�+i:�hHL$œ��
eMN��y�]N���|�����>�u����r��>'���ؤ��^�����B��f
I��Petv�����c��yVJ���C����ʜ����u�i�<�|+Ft4ݘ����鈢8ǵJ
!�D�G�����t��UC��/U�zZ�:�������P��y�(�s���3��n�����.��g�P�sRa:��<{��);Զ+�<�5˴����S���M����8���>�bH��jʒSƬ[�?&��o��(:�������I�{�@��H�E r,����q��%�I)-Gr�,��fB)�_*(��>�;��ۦ�	�*5�̮*���Z���.���Q�u,'���CM��4�3~��[��孌 {t���z��;,\�~%�R�ܵ)ɩC�����f0�Z>M�Z0�q�5���������P�]_��y^�b.H:�����B����Y�0_���Z���w�����}z�Qut�I��f�S�=��<za���fW�j�C8m5��'���{i
���
�N�}���wc�1��O�v7u��ux���AZ�t��M�
�Z�!4�(�s�n�`�����+�W�nڄ7 {�p���z}��	7:�46T����w|�V���?�H�`@�8�H��Y_�q��\�k|y�B���\�掠cp
m>�R�/˷'1��+(&���G�O����v�{��ɗ��3�v�*P�q��-~�����׏      �   4  x��S�r�0<�_�{'IX��LqR<A���B��6|}E;I��S{���{ow��>;4�;r��L�{��vD+7E�$��@n��:�A���~l�I�S���z�)�:�Ć�#��֕�q}CT��#s�^�U�&�r]�W���-a�"g�d��<�o"������%���\ӳ<�]���� }�����T���o+����zS>?����%��;����~���:��1B|�!�����_�۽��V������I�y�4O�`Ϝ�,ѵ�V��LϓU+-�P��WKF��M��O�/��N0��}����pv�-�}���9�c츘L�w�
�����4������+���*��2��z��&�.ʵ��Ê&	}:������-*������'�^��Z����KV�(Mb����wR֨�����[1D;�,�����vo�`(�K�뿰����ӝ~�j�
��É��f�v<&g�f�?� ��d�1F�4�A}.�!�7��J*����V��'�9�6�f6!��'��t��������h4���      �      x�3�L�H�-�I�K��Efs��qqq �<	�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�Վ�� Eg�
66qr�8h�..M-/�,<�v�����I�I����Kq\vFr�T
�aL⦃NH�%�dRD3�Nw=�{��s��]'�
�UF�jmU��`��yxn���Iz���bPH*�>��c1��~W_Jv��Gaͅ�W�H��hv(      �   F   x�3��L��4�L�-�7�3�3��M�+���OI-�O͋7����"���Ĵ.CKʭ
J�r2��b���� `�L      �      x������ � �      �   �   x�}�M��0�}��K]I�d;g�@KJۘ��g�$��|O�C����A����u~L�yz�Η����'�'��xt�ާ#�~�hiѩ�S[`�&����?T���K��5T�/��辭��k�:/:Wt����yӥ������?�0"��IHR|}�2�КV�mWb ��x����������BL1��5U?��Ղrލ@J�.�R-@h-��Ļ!�������ݯ      �   �  x��X�n7}����k7kK�/1�s��8usC�]Jb�]nx��"�o����Т�����^83g�93��l��N��x��>	3yq�������ݛ���ܾ���F4Lv�7��Jf�c��`�n���p�0^�N�J�+&�t%{�m'�ZZ+X+�d�N�K�Xo��7�g�n���\�Y��oq_�g�U��s�~/�S��m��X.e%)�0�2�����l#T�>��jɑ������ʄcKd�@+���U��:��h����`�#��]k���������>SI*��`�h$~�H� ����ƫ�;�ӦE%�P%5l�+�,�^��\D
��e*�K���D'"��W�3'���
� ��M�~�2T$`������#�H�ǅf�� <o*m:a�wT��#��$p"(�@=�0�Z�16� xHJ���
8Z�0'�J־M	��m���/�(YD�S+�j�DJ�,'g��W�~�����g{��m{ۂ�/��D����P^�]�E��A=�l�z�-�Xf�%��	Q+�b"�}Y �0�)�m5�/YǑ%w��-z������Ϟ��џ�[����1	����]z�Q �#����j�~
����Y'2��V��ف��:�!s�b�nN�"���Y�g9���/����Dp�=NKvå�E9w�T˼���΀�.��YL�y�(�И�5b����aQ ���di�ZP����`7���C`�+��� �0��l �K�%��=S�Q�B���*�uJ蠘.^U����6�AJ,#�F,	$MM~�YXNO,��@uz����XEC�-*mc�hEm
���H�b$�PS�xEVo�Z�Yo¥�y�d(}�}�1���T&��AnY�B�=��0�wE�����%��30U 6E�{��N`1�i�A��%M=��[�Kvղ5��	~N�bu���x��.�d4sH�qp$�@�q�	�T�0�@��` $3bh,�#2�m˻��iҐ��s�MyL���i�K� ���o'��l��+d8h�4|EN �l��4�� dv:��G� *ϧ���]�b�N�R�ǳ��?�y�;0�6�8�������.(��l�V+��F��$��K�~hy��	�ϕ��CZ[j'K�u��K�W��)���4���h��x9�|"����vބݍ8>�k\�zB��.M�< �D=-v��x��҃��EM�#[ڰrbJ"�P��ڃ�ay5���I�y`����\l6�h<�+v}��J���U��`�8ra�	S8�5l]|�hQri�����{4z���=]7�ֲ>��� T�G�}J�N~��V2�aB�Jh��.V����FB�ȾX�H�kS�%�x��u�p8B�F���9�Ӧ�ǃ���-�u����v��ڈ�ݵs�=�ۻ��+U`PY�fo.�x�����=}9��������_�������;����R�좓��l����
��
_.�+4��`�L�ʝ\�y�#P�ukK����R+��d��s��(a�bO��kW���������lΦǧ���ټ�=><�f�x�{Dw秳�����dz��;���B*�x�<�z�����i��� U�yf,ɿ��-8I���d@a�-�aWrC��A{�@sq������ʣ�-L;>l�y����V�
�埮on���	�1!"$��ԁ��~{i������������<���'���'����l:�Nܖ;;; [�S      �   '   x�3�45�4��2Ѧ\Ɯ�F�&�\& ȏ���� c�       �   4   x�31���O��I�2��OM�2��t�K)��L�25��H�M,������� ��     