PGDMP     *    %                v            minh_portfolio_db    9.6.9    9.6.9 n              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    19611    minh_portfolio_db    DATABASE     �   CREATE DATABASE minh_portfolio_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
 !   DROP DATABASE minh_portfolio_db;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    19612    about_me_aboutme    TABLE     �   CREATE TABLE public.about_me_aboutme (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(100) NOT NULL,
    description text NOT NULL,
    resume_file character varying(100)
);
 $   DROP TABLE public.about_me_aboutme;
       public         postgres    false    3            �            1259    19618    about_me_skillitem    TABLE     �   CREATE TABLE public.about_me_skillitem (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    percentage integer NOT NULL,
    skill_plugin_item_id integer NOT NULL
);
 &   DROP TABLE public.about_me_skillitem;
       public         postgres    false    3            �            1259    19621    about_me_skillitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_me_skillitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.about_me_skillitem_id_seq;
       public       postgres    false    3    186                       0    0    about_me_skillitem_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.about_me_skillitem_id_seq OWNED BY public.about_me_skillitem.id;
            public       postgres    false    187            �            1259    19623    about_me_skillplugin    TABLE     �   CREATE TABLE public.about_me_skillplugin (
    cmsplugin_ptr_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 (   DROP TABLE public.about_me_skillplugin;
       public         postgres    false    3            �            1259    19626    about_me_statisticitem    TABLE     �   CREATE TABLE public.about_me_statisticitem (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    statistic character varying(100) NOT NULL,
    statistic_plugin_id_id integer NOT NULL
);
 *   DROP TABLE public.about_me_statisticitem;
       public         postgres    false    3            �            1259    19629    about_me_statisticitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_me_statisticitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.about_me_statisticitem_id_seq;
       public       postgres    false    3    189                       0    0    about_me_statisticitem_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.about_me_statisticitem_id_seq OWNED BY public.about_me_statisticitem.id;
            public       postgres    false    190            �            1259    19631    about_me_statisticplugin    TABLE     �   CREATE TABLE public.about_me_statisticplugin (
    cmsplugin_ptr_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 ,   DROP TABLE public.about_me_statisticplugin;
       public         postgres    false    3            �            1259    19634    about_me_timelineblock    TABLE     �  CREATE TABLE public.about_me_timelineblock (
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
       public         postgres    false    3            �            1259    19640    about_me_timelineblock_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_me_timelineblock_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.about_me_timelineblock_id_seq;
       public       postgres    false    192    3                       0    0    about_me_timelineblock_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.about_me_timelineblock_id_seq OWNED BY public.about_me_timelineblock.id;
            public       postgres    false    193            �            1259    19642    about_me_timelineheader    TABLE       CREATE TABLE public.about_me_timelineheader (
    title character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    "order" integer NOT NULL
);
 +   DROP TABLE public.about_me_timelineheader;
       public         postgres    false    3            (           1259    22094    addons_plugin_calendlyplugin    TABLE     �   CREATE TABLE public.addons_plugin_calendlyplugin (
    cmsplugin_ptr_id integer NOT NULL,
    calendly_embedded_url character varying(500) NOT NULL,
    text_message character varying(250) NOT NULL,
    color character varying(15) NOT NULL
);
 0   DROP TABLE public.addons_plugin_calendlyplugin;
       public         postgres    false    3            '           1259    22081    addons_plugin_tawkplugin    TABLE     �   CREATE TABLE public.addons_plugin_tawkplugin (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(100) NOT NULL,
    tawk_embedded_url character varying(500) NOT NULL
);
 ,   DROP TABLE public.addons_plugin_tawkplugin;
       public         postgres    false    3            �            1259    19645    aldryn_style_style    TABLE       CREATE TABLE public.aldryn_style_style (
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
       public         postgres    false    3            �            1259    19651 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    19654    auth_group_id_seq    SEQUENCE     z   CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    3    196                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    197            �            1259    19656    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    19659    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    198    3                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    199            �            1259    19661    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    19664    auth_permission_id_seq    SEQUENCE        CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    3    200                        0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    201            �            1259    19666 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         postgres    false    3            �            1259    19672    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    19675    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    3    203            !           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    204            �            1259    19677    auth_user_id_seq    SEQUENCE     y   CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    3    202            "           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    205            �            1259    19679    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    19682 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    3    206            #           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    207            �            1259    19684    cms_aliaspluginmodel    TABLE     �   CREATE TABLE public.cms_aliaspluginmodel (
    cmsplugin_ptr_id integer NOT NULL,
    plugin_id integer,
    alias_placeholder_id integer
);
 (   DROP TABLE public.cms_aliaspluginmodel;
       public         postgres    false    3            �            1259    19687    cms_cmsplugin    TABLE     �  CREATE TABLE public.cms_cmsplugin (
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
       public         postgres    false    3            �            1259    19693    cms_cmsplugin_id_seq    SEQUENCE     }   CREATE SEQUENCE public.cms_cmsplugin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cms_cmsplugin_id_seq;
       public       postgres    false    209    3            $           0    0    cms_cmsplugin_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cms_cmsplugin_id_seq OWNED BY public.cms_cmsplugin.id;
            public       postgres    false    210            �            1259    19695    cms_globalpagepermission    TABLE     �  CREATE TABLE public.cms_globalpagepermission (
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
       public         postgres    false    3            �            1259    19698    cms_globalpagepermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_globalpagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.cms_globalpagepermission_id_seq;
       public       postgres    false    211    3            %           0    0    cms_globalpagepermission_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.cms_globalpagepermission_id_seq OWNED BY public.cms_globalpagepermission.id;
            public       postgres    false    212            �            1259    19700    cms_globalpagepermission_sites    TABLE     �   CREATE TABLE public.cms_globalpagepermission_sites (
    id integer NOT NULL,
    globalpagepermission_id integer NOT NULL,
    site_id integer NOT NULL
);
 2   DROP TABLE public.cms_globalpagepermission_sites;
       public         postgres    false    3            �            1259    19703 %   cms_globalpagepermission_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_globalpagepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.cms_globalpagepermission_sites_id_seq;
       public       postgres    false    213    3            &           0    0 %   cms_globalpagepermission_sites_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.cms_globalpagepermission_sites_id_seq OWNED BY public.cms_globalpagepermission_sites.id;
            public       postgres    false    214            �            1259    19705    cms_page    TABLE     �  CREATE TABLE public.cms_page (
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
       public         postgres    false    3            �            1259    19711    cms_page_id_seq    SEQUENCE     x   CREATE SEQUENCE public.cms_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.cms_page_id_seq;
       public       postgres    false    215    3            '           0    0    cms_page_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.cms_page_id_seq OWNED BY public.cms_page.id;
            public       postgres    false    216            �            1259    19713    cms_page_placeholders    TABLE     �   CREATE TABLE public.cms_page_placeholders (
    id integer NOT NULL,
    page_id integer NOT NULL,
    placeholder_id integer NOT NULL
);
 )   DROP TABLE public.cms_page_placeholders;
       public         postgres    false    3            �            1259    19716    cms_page_placeholders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_page_placeholders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.cms_page_placeholders_id_seq;
       public       postgres    false    3    217            (           0    0    cms_page_placeholders_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.cms_page_placeholders_id_seq OWNED BY public.cms_page_placeholders.id;
            public       postgres    false    218            �            1259    19718    cms_pagepermission    TABLE     �  CREATE TABLE public.cms_pagepermission (
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
       public         postgres    false    3            �            1259    19721    cms_pagepermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_pagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.cms_pagepermission_id_seq;
       public       postgres    false    3    219            )           0    0    cms_pagepermission_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.cms_pagepermission_id_seq OWNED BY public.cms_pagepermission.id;
            public       postgres    false    220            �            1259    19723    cms_pageuser    TABLE     k   CREATE TABLE public.cms_pageuser (
    user_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);
     DROP TABLE public.cms_pageuser;
       public         postgres    false    3            �            1259    19726    cms_pageusergroup    TABLE     q   CREATE TABLE public.cms_pageusergroup (
    group_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);
 %   DROP TABLE public.cms_pageusergroup;
       public         postgres    false    3            �            1259    19729    cms_placeholder    TABLE     �   CREATE TABLE public.cms_placeholder (
    id integer NOT NULL,
    slot character varying(255) NOT NULL,
    default_width smallint,
    CONSTRAINT cms_placeholder_default_width_check CHECK ((default_width >= 0))
);
 #   DROP TABLE public.cms_placeholder;
       public         postgres    false    3            �            1259    19733    cms_placeholder_id_seq    SEQUENCE        CREATE SEQUENCE public.cms_placeholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cms_placeholder_id_seq;
       public       postgres    false    3    223            *           0    0    cms_placeholder_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cms_placeholder_id_seq OWNED BY public.cms_placeholder.id;
            public       postgres    false    224            �            1259    19735    cms_placeholderreference    TABLE     �   CREATE TABLE public.cms_placeholderreference (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(255) NOT NULL,
    placeholder_ref_id integer
);
 ,   DROP TABLE public.cms_placeholderreference;
       public         postgres    false    3            �            1259    19738    cms_staticplaceholder    TABLE     -  CREATE TABLE public.cms_staticplaceholder (
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
       public         postgres    false    3            �            1259    19744    cms_staticplaceholder_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_staticplaceholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.cms_staticplaceholder_id_seq;
       public       postgres    false    226    3            +           0    0    cms_staticplaceholder_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.cms_staticplaceholder_id_seq OWNED BY public.cms_staticplaceholder.id;
            public       postgres    false    227            �            1259    19746 	   cms_title    TABLE     �  CREATE TABLE public.cms_title (
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
       public         postgres    false    3            �            1259    19752    cms_title_id_seq    SEQUENCE     y   CREATE SEQUENCE public.cms_title_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cms_title_id_seq;
       public       postgres    false    228    3            ,           0    0    cms_title_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cms_title_id_seq OWNED BY public.cms_title.id;
            public       postgres    false    229            �            1259    19754    cms_treenode    TABLE     Z  CREATE TABLE public.cms_treenode (
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
       public         postgres    false    3            �            1259    19759    cms_treenode_id_seq    SEQUENCE     |   CREATE SEQUENCE public.cms_treenode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cms_treenode_id_seq;
       public       postgres    false    3    230            -           0    0    cms_treenode_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cms_treenode_id_seq OWNED BY public.cms_treenode.id;
            public       postgres    false    231            �            1259    19761    cms_urlconfrevision    TABLE     s   CREATE TABLE public.cms_urlconfrevision (
    id integer NOT NULL,
    revision character varying(255) NOT NULL
);
 '   DROP TABLE public.cms_urlconfrevision;
       public         postgres    false    3            �            1259    19764    cms_urlconfrevision_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_urlconfrevision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.cms_urlconfrevision_id_seq;
       public       postgres    false    3    232            .           0    0    cms_urlconfrevision_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.cms_urlconfrevision_id_seq OWNED BY public.cms_urlconfrevision.id;
            public       postgres    false    233            �            1259    19766    cms_usersettings    TABLE     �   CREATE TABLE public.cms_usersettings (
    id integer NOT NULL,
    language character varying(10) NOT NULL,
    clipboard_id integer,
    user_id integer NOT NULL
);
 $   DROP TABLE public.cms_usersettings;
       public         postgres    false    3            �            1259    19769    cms_usersettings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_usersettings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.cms_usersettings_id_seq;
       public       postgres    false    234    3            /           0    0    cms_usersettings_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.cms_usersettings_id_seq OWNED BY public.cms_usersettings.id;
            public       postgres    false    235            �            1259    19771    contact_me_contactme    TABLE     �   CREATE TABLE public.contact_me_contactme (
    cmsplugin_ptr_id integer NOT NULL,
    phone character varying(100) NOT NULL,
    address character varying(250) NOT NULL,
    email character varying(150) NOT NULL
);
 (   DROP TABLE public.contact_me_contactme;
       public         postgres    false    3            �            1259    19777    contact_me_message    TABLE     E  CREATE TABLE public.contact_me_message (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    email character varying(250) NOT NULL,
    subject character varying(500) NOT NULL,
    message text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 &   DROP TABLE public.contact_me_message;
       public         postgres    false    3            �            1259    19783    contact_me_message_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_me_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.contact_me_message_id_seq;
       public       postgres    false    3    237            0           0    0    contact_me_message_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.contact_me_message_id_seq OWNED BY public.contact_me_message.id;
            public       postgres    false    238            �            1259    19785    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         postgres    false    3            �            1259    19792    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    3    239            1           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    240            �            1259    19794    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    19797    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    3    241            2           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    242            �            1259    19799    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    19805    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    243    3            3           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    244            �            1259    19807    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    19813    django_site    TABLE     �   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         postgres    false    3            �            1259    19816    django_site_id_seq    SEQUENCE     {   CREATE SEQUENCE public.django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public       postgres    false    3    246            4           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
            public       postgres    false    247            �            1259    19818    djangocms_column_column    TABLE     �   CREATE TABLE public.djangocms_column_column (
    cmsplugin_ptr_id integer NOT NULL,
    width character varying(50) NOT NULL
);
 +   DROP TABLE public.djangocms_column_column;
       public         postgres    false    3            �            1259    19821    djangocms_column_multicolumns    TABLE     ]   CREATE TABLE public.djangocms_column_multicolumns (
    cmsplugin_ptr_id integer NOT NULL
);
 1   DROP TABLE public.djangocms_column_multicolumns;
       public         postgres    false    3            �            1259    19824    djangocms_file_file    TABLE     m  CREATE TABLE public.djangocms_file_file (
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
       public         postgres    false    3            �            1259    19830    djangocms_file_folder    TABLE       CREATE TABLE public.djangocms_file_folder (
    template character varying(255) NOT NULL,
    link_target character varying(255) NOT NULL,
    show_file_size boolean NOT NULL,
    attributes text NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    folder_src_id integer
);
 )   DROP TABLE public.djangocms_file_folder;
       public         postgres    false    3            �            1259    19836    djangocms_googlemap_googlemap    TABLE     i  CREATE TABLE public.djangocms_googlemap_googlemap (
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
       public         postgres    false    3            �            1259    19843 #   djangocms_googlemap_googlemapmarker    TABLE     A  CREATE TABLE public.djangocms_googlemap_googlemapmarker (
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
       public         postgres    false    3            �            1259    19849 "   djangocms_googlemap_googlemaproute    TABLE       CREATE TABLE public.djangocms_googlemap_googlemaproute (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    origin character varying(255) NOT NULL,
    destination character varying(255) NOT NULL,
    travel_mode character varying(255) NOT NULL
);
 6   DROP TABLE public.djangocms_googlemap_googlemaproute;
       public         postgres    false    3            �            1259    19855    djangocms_link_link    TABLE     �  CREATE TABLE public.djangocms_link_link (
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
       public         postgres    false    3                        1259    19861    djangocms_picture_picture    TABLE     e  CREATE TABLE public.djangocms_picture_picture (
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
       public         postgres    false    3                       1259    19869    djangocms_snippet_snippet    TABLE     �   CREATE TABLE public.djangocms_snippet_snippet (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    html text NOT NULL,
    template character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 -   DROP TABLE public.djangocms_snippet_snippet;
       public         postgres    false    3                       1259    19875     djangocms_snippet_snippet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.djangocms_snippet_snippet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.djangocms_snippet_snippet_id_seq;
       public       postgres    false    3    257            5           0    0     djangocms_snippet_snippet_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.djangocms_snippet_snippet_id_seq OWNED BY public.djangocms_snippet_snippet.id;
            public       postgres    false    258                       1259    19877    djangocms_snippet_snippetptr    TABLE     }   CREATE TABLE public.djangocms_snippet_snippetptr (
    cmsplugin_ptr_id integer NOT NULL,
    snippet_id integer NOT NULL
);
 0   DROP TABLE public.djangocms_snippet_snippetptr;
       public         postgres    false    3                       1259    19880    djangocms_text_ckeditor_text    TABLE     t   CREATE TABLE public.djangocms_text_ckeditor_text (
    cmsplugin_ptr_id integer NOT NULL,
    body text NOT NULL
);
 0   DROP TABLE public.djangocms_text_ckeditor_text;
       public         postgres    false    3                       1259    19886    djangocms_video_videoplayer    TABLE       CREATE TABLE public.djangocms_video_videoplayer (
    cmsplugin_ptr_id integer NOT NULL,
    embed_link character varying(255) NOT NULL,
    poster_id integer,
    attributes text NOT NULL,
    label character varying(255) NOT NULL,
    template character varying(255) NOT NULL
);
 /   DROP TABLE public.djangocms_video_videoplayer;
       public         postgres    false    3                       1259    19892    djangocms_video_videosource    TABLE     �   CREATE TABLE public.djangocms_video_videosource (
    cmsplugin_ptr_id integer NOT NULL,
    text_title character varying(255) NOT NULL,
    text_description text NOT NULL,
    attributes text NOT NULL,
    source_file_id integer
);
 /   DROP TABLE public.djangocms_video_videosource;
       public         postgres    false    3                       1259    19898    djangocms_video_videotrack    TABLE       CREATE TABLE public.djangocms_video_videotrack (
    cmsplugin_ptr_id integer NOT NULL,
    kind character varying(255) NOT NULL,
    srclang character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    attributes text NOT NULL,
    src_id integer
);
 .   DROP TABLE public.djangocms_video_videotrack;
       public         postgres    false    3                       1259    19904    easy_thumbnails_source    TABLE     �   CREATE TABLE public.easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);
 *   DROP TABLE public.easy_thumbnails_source;
       public         postgres    false    3            	           1259    19907    easy_thumbnails_source_id_seq    SEQUENCE     �   CREATE SEQUENCE public.easy_thumbnails_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.easy_thumbnails_source_id_seq;
       public       postgres    false    3    264            6           0    0    easy_thumbnails_source_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.easy_thumbnails_source_id_seq OWNED BY public.easy_thumbnails_source.id;
            public       postgres    false    265            
           1259    19909    easy_thumbnails_thumbnail    TABLE     �   CREATE TABLE public.easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);
 -   DROP TABLE public.easy_thumbnails_thumbnail;
       public         postgres    false    3                       1259    19912     easy_thumbnails_thumbnail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.easy_thumbnails_thumbnail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.easy_thumbnails_thumbnail_id_seq;
       public       postgres    false    266    3            7           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.easy_thumbnails_thumbnail_id_seq OWNED BY public.easy_thumbnails_thumbnail.id;
            public       postgres    false    267                       1259    19914 #   easy_thumbnails_thumbnaildimensions    TABLE     K  CREATE TABLE public.easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);
 7   DROP TABLE public.easy_thumbnails_thumbnaildimensions;
       public         postgres    false    3                       1259    19919 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq;
       public       postgres    false    268    3            8           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq OWNED BY public.easy_thumbnails_thumbnaildimensions.id;
            public       postgres    false    269                       1259    19921    filer_clipboard    TABLE     _   CREATE TABLE public.filer_clipboard (
    id integer NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.filer_clipboard;
       public         postgres    false    3                       1259    19924    filer_clipboard_id_seq    SEQUENCE        CREATE SEQUENCE public.filer_clipboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.filer_clipboard_id_seq;
       public       postgres    false    270    3            9           0    0    filer_clipboard_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.filer_clipboard_id_seq OWNED BY public.filer_clipboard.id;
            public       postgres    false    271                       1259    19926    filer_clipboarditem    TABLE     �   CREATE TABLE public.filer_clipboarditem (
    id integer NOT NULL,
    clipboard_id integer NOT NULL,
    file_id integer NOT NULL
);
 '   DROP TABLE public.filer_clipboarditem;
       public         postgres    false    3                       1259    19929    filer_clipboarditem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filer_clipboarditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.filer_clipboarditem_id_seq;
       public       postgres    false    3    272            :           0    0    filer_clipboarditem_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.filer_clipboarditem_id_seq OWNED BY public.filer_clipboarditem.id;
            public       postgres    false    273                       1259    19931 
   filer_file    TABLE       CREATE TABLE public.filer_file (
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
       public         postgres    false    3                       1259    19937    filer_file_id_seq    SEQUENCE     z   CREATE SEQUENCE public.filer_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.filer_file_id_seq;
       public       postgres    false    274    3            ;           0    0    filer_file_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.filer_file_id_seq OWNED BY public.filer_file.id;
            public       postgres    false    275                       1259    19939    filer_folder    TABLE     �  CREATE TABLE public.filer_folder (
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
       public         postgres    false    3                       1259    19946    filer_folder_id_seq    SEQUENCE     |   CREATE SEQUENCE public.filer_folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.filer_folder_id_seq;
       public       postgres    false    3    276            <           0    0    filer_folder_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.filer_folder_id_seq OWNED BY public.filer_folder.id;
            public       postgres    false    277                       1259    19948    filer_folderpermission    TABLE       CREATE TABLE public.filer_folderpermission (
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
       public         postgres    false    3                       1259    19951    filer_folderpermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filer_folderpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.filer_folderpermission_id_seq;
       public       postgres    false    3    278            =           0    0    filer_folderpermission_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.filer_folderpermission_id_seq OWNED BY public.filer_folderpermission.id;
            public       postgres    false    279                       1259    19953    filer_image    TABLE     �  CREATE TABLE public.filer_image (
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
       public         postgres    false    3                       1259    19959    filer_thumbnailoption    TABLE     �   CREATE TABLE public.filer_thumbnailoption (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    crop boolean NOT NULL,
    upscale boolean NOT NULL
);
 )   DROP TABLE public.filer_thumbnailoption;
       public         postgres    false    3                       1259    19962    filer_thumbnailoption_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filer_thumbnailoption_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.filer_thumbnailoption_id_seq;
       public       postgres    false    3    281            >           0    0    filer_thumbnailoption_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.filer_thumbnailoption_id_seq OWNED BY public.filer_thumbnailoption.id;
            public       postgres    false    282                       1259    19964    hero_area_heroarea    TABLE     �  CREATE TABLE public.hero_area_heroarea (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(100) NOT NULL,
    name character varying(100) NOT NULL,
    working_position character varying(100) NOT NULL,
    background_image character varying(500) NOT NULL,
    linkedin_url character varying(255),
    github_url character varying(255),
    facebook_url character varying(255)
);
 &   DROP TABLE public.hero_area_heroarea;
       public         postgres    false    3                       1259    19970    hero_area_shortheroarea    TABLE     �   CREATE TABLE public.hero_area_shortheroarea (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(150) NOT NULL,
    favorite_quotes character varying(250) NOT NULL,
    author character varying(120)
);
 +   DROP TABLE public.hero_area_shortheroarea;
       public         postgres    false    3                       1259    19976    menus_cachekey    TABLE     �   CREATE TABLE public.menus_cachekey (
    id integer NOT NULL,
    language character varying(255) NOT NULL,
    site integer NOT NULL,
    key character varying(255) NOT NULL,
    CONSTRAINT menus_cachekey_site_check CHECK ((site >= 0))
);
 "   DROP TABLE public.menus_cachekey;
       public         postgres    false    3                       1259    19983    menus_cachekey_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.menus_cachekey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.menus_cachekey_id_seq;
       public       postgres    false    3    285            ?           0    0    menus_cachekey_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.menus_cachekey_id_seq OWNED BY public.menus_cachekey.id;
            public       postgres    false    286                       1259    19985    portfolio_app_demourlitem    TABLE     f  CREATE TABLE public.portfolio_app_demourlitem (
    id integer NOT NULL,
    demo_url character varying(500) NOT NULL,
    type smallint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    project_id_id integer NOT NULL,
    CONSTRAINT portfolio_app_demourlitem_type_check CHECK ((type >= 0))
);
 -   DROP TABLE public.portfolio_app_demourlitem;
       public         postgres    false    3                        1259    19992     portfolio_app_demourlitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.portfolio_app_demourlitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.portfolio_app_demourlitem_id_seq;
       public       postgres    false    3    287            @           0    0     portfolio_app_demourlitem_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.portfolio_app_demourlitem_id_seq OWNED BY public.portfolio_app_demourlitem.id;
            public       postgres    false    288            !           1259    19994    portfolio_app_mediaasset    TABLE     �  CREATE TABLE public.portfolio_app_mediaasset (
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
       public         postgres    false    3            "           1259    19998    portfolio_app_mediaasset_id_seq    SEQUENCE     �   CREATE SEQUENCE public.portfolio_app_mediaasset_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.portfolio_app_mediaasset_id_seq;
       public       postgres    false    3    289            A           0    0    portfolio_app_mediaasset_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.portfolio_app_mediaasset_id_seq OWNED BY public.portfolio_app_mediaasset.id;
            public       postgres    false    290            #           1259    20000    portfolio_app_project    TABLE     �  CREATE TABLE public.portfolio_app_project (
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
    updated_at timestamp with time zone NOT NULL,
    use_case_id integer,
    icon_image character varying(500) NOT NULL
);
 )   DROP TABLE public.portfolio_app_project;
       public         postgres    false    3            $           1259    20006    portfolio_app_project_tags    TABLE     �   CREATE TABLE public.portfolio_app_project_tags (
    id integer NOT NULL,
    project_id integer NOT NULL,
    tag_id integer NOT NULL
);
 .   DROP TABLE public.portfolio_app_project_tags;
       public         postgres    false    3            %           1259    20009 !   portfolio_app_project_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.portfolio_app_project_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.portfolio_app_project_tags_id_seq;
       public       postgres    false    292    3            B           0    0 !   portfolio_app_project_tags_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.portfolio_app_project_tags_id_seq OWNED BY public.portfolio_app_project_tags.id;
            public       postgres    false    293            &           1259    20011    portfolio_app_tag    TABLE     {   CREATE TABLE public.portfolio_app_tag (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(100) NOT NULL
);
 %   DROP TABLE public.portfolio_app_tag;
       public         postgres    false    3            \	           2604    20014    about_me_skillitem id    DEFAULT     ~   ALTER TABLE ONLY public.about_me_skillitem ALTER COLUMN id SET DEFAULT nextval('public.about_me_skillitem_id_seq'::regclass);
 D   ALTER TABLE public.about_me_skillitem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    187    186            ]	           2604    20015    about_me_statisticitem id    DEFAULT     �   ALTER TABLE ONLY public.about_me_statisticitem ALTER COLUMN id SET DEFAULT nextval('public.about_me_statisticitem_id_seq'::regclass);
 H   ALTER TABLE public.about_me_statisticitem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189            ^	           2604    20016    about_me_timelineblock id    DEFAULT     �   ALTER TABLE ONLY public.about_me_timelineblock ALTER COLUMN id SET DEFAULT nextval('public.about_me_timelineblock_id_seq'::regclass);
 H   ALTER TABLE public.about_me_timelineblock ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    193    192            _	           2604    20017    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196            `	           2604    20018    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198            a	           2604    20019    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200            b	           2604    20020    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    202            c	           2604    20021    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203            d	           2604    20022    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206            e	           2604    20023    cms_cmsplugin id    DEFAULT     t   ALTER TABLE ONLY public.cms_cmsplugin ALTER COLUMN id SET DEFAULT nextval('public.cms_cmsplugin_id_seq'::regclass);
 ?   ALTER TABLE public.cms_cmsplugin ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209            i	           2604    20024    cms_globalpagepermission id    DEFAULT     �   ALTER TABLE ONLY public.cms_globalpagepermission ALTER COLUMN id SET DEFAULT nextval('public.cms_globalpagepermission_id_seq'::regclass);
 J   ALTER TABLE public.cms_globalpagepermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    211            j	           2604    20025 !   cms_globalpagepermission_sites id    DEFAULT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites ALTER COLUMN id SET DEFAULT nextval('public.cms_globalpagepermission_sites_id_seq'::regclass);
 P   ALTER TABLE public.cms_globalpagepermission_sites ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    213            k	           2604    20026    cms_page id    DEFAULT     j   ALTER TABLE ONLY public.cms_page ALTER COLUMN id SET DEFAULT nextval('public.cms_page_id_seq'::regclass);
 :   ALTER TABLE public.cms_page ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    215            l	           2604    20027    cms_page_placeholders id    DEFAULT     �   ALTER TABLE ONLY public.cms_page_placeholders ALTER COLUMN id SET DEFAULT nextval('public.cms_page_placeholders_id_seq'::regclass);
 G   ALTER TABLE public.cms_page_placeholders ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    217            m	           2604    20028    cms_pagepermission id    DEFAULT     ~   ALTER TABLE ONLY public.cms_pagepermission ALTER COLUMN id SET DEFAULT nextval('public.cms_pagepermission_id_seq'::regclass);
 D   ALTER TABLE public.cms_pagepermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    219            n	           2604    20029    cms_placeholder id    DEFAULT     x   ALTER TABLE ONLY public.cms_placeholder ALTER COLUMN id SET DEFAULT nextval('public.cms_placeholder_id_seq'::regclass);
 A   ALTER TABLE public.cms_placeholder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    223            p	           2604    20030    cms_staticplaceholder id    DEFAULT     �   ALTER TABLE ONLY public.cms_staticplaceholder ALTER COLUMN id SET DEFAULT nextval('public.cms_staticplaceholder_id_seq'::regclass);
 G   ALTER TABLE public.cms_staticplaceholder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226            q	           2604    20031    cms_title id    DEFAULT     l   ALTER TABLE ONLY public.cms_title ALTER COLUMN id SET DEFAULT nextval('public.cms_title_id_seq'::regclass);
 ;   ALTER TABLE public.cms_title ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228            r	           2604    20032    cms_treenode id    DEFAULT     r   ALTER TABLE ONLY public.cms_treenode ALTER COLUMN id SET DEFAULT nextval('public.cms_treenode_id_seq'::regclass);
 >   ALTER TABLE public.cms_treenode ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230            u	           2604    20033    cms_urlconfrevision id    DEFAULT     �   ALTER TABLE ONLY public.cms_urlconfrevision ALTER COLUMN id SET DEFAULT nextval('public.cms_urlconfrevision_id_seq'::regclass);
 E   ALTER TABLE public.cms_urlconfrevision ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232            v	           2604    20034    cms_usersettings id    DEFAULT     z   ALTER TABLE ONLY public.cms_usersettings ALTER COLUMN id SET DEFAULT nextval('public.cms_usersettings_id_seq'::regclass);
 B   ALTER TABLE public.cms_usersettings ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    234            w	           2604    20035    contact_me_message id    DEFAULT     ~   ALTER TABLE ONLY public.contact_me_message ALTER COLUMN id SET DEFAULT nextval('public.contact_me_message_id_seq'::regclass);
 D   ALTER TABLE public.contact_me_message ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    238    237            x	           2604    20036    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    239            z	           2604    20037    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    241            {	           2604    20038    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    243            |	           2604    20039    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    247    246            �	           2604    20040    djangocms_snippet_snippet id    DEFAULT     �   ALTER TABLE ONLY public.djangocms_snippet_snippet ALTER COLUMN id SET DEFAULT nextval('public.djangocms_snippet_snippet_id_seq'::regclass);
 K   ALTER TABLE public.djangocms_snippet_snippet ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    258    257            �	           2604    20041    easy_thumbnails_source id    DEFAULT     �   ALTER TABLE ONLY public.easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_source_id_seq'::regclass);
 H   ALTER TABLE public.easy_thumbnails_source ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    265    264            �	           2604    20042    easy_thumbnails_thumbnail id    DEFAULT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnail_id_seq'::regclass);
 K   ALTER TABLE public.easy_thumbnails_thumbnail ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    267    266            �	           2604    20043 &   easy_thumbnails_thumbnaildimensions id    DEFAULT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnaildimensions_id_seq'::regclass);
 U   ALTER TABLE public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    269    268            �	           2604    20044    filer_clipboard id    DEFAULT     x   ALTER TABLE ONLY public.filer_clipboard ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboard_id_seq'::regclass);
 A   ALTER TABLE public.filer_clipboard ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    271    270            �	           2604    20045    filer_clipboarditem id    DEFAULT     �   ALTER TABLE ONLY public.filer_clipboarditem ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboarditem_id_seq'::regclass);
 E   ALTER TABLE public.filer_clipboarditem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    273    272            �	           2604    20046    filer_file id    DEFAULT     n   ALTER TABLE ONLY public.filer_file ALTER COLUMN id SET DEFAULT nextval('public.filer_file_id_seq'::regclass);
 <   ALTER TABLE public.filer_file ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    275    274            �	           2604    20047    filer_folder id    DEFAULT     r   ALTER TABLE ONLY public.filer_folder ALTER COLUMN id SET DEFAULT nextval('public.filer_folder_id_seq'::regclass);
 >   ALTER TABLE public.filer_folder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    277    276            �	           2604    20048    filer_folderpermission id    DEFAULT     �   ALTER TABLE ONLY public.filer_folderpermission ALTER COLUMN id SET DEFAULT nextval('public.filer_folderpermission_id_seq'::regclass);
 H   ALTER TABLE public.filer_folderpermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    279    278            �	           2604    20049    filer_thumbnailoption id    DEFAULT     �   ALTER TABLE ONLY public.filer_thumbnailoption ALTER COLUMN id SET DEFAULT nextval('public.filer_thumbnailoption_id_seq'::regclass);
 G   ALTER TABLE public.filer_thumbnailoption ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    282    281            �	           2604    20050    menus_cachekey id    DEFAULT     v   ALTER TABLE ONLY public.menus_cachekey ALTER COLUMN id SET DEFAULT nextval('public.menus_cachekey_id_seq'::regclass);
 @   ALTER TABLE public.menus_cachekey ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    286    285            �	           2604    20051    portfolio_app_demourlitem id    DEFAULT     �   ALTER TABLE ONLY public.portfolio_app_demourlitem ALTER COLUMN id SET DEFAULT nextval('public.portfolio_app_demourlitem_id_seq'::regclass);
 K   ALTER TABLE public.portfolio_app_demourlitem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    288    287            �	           2604    20052    portfolio_app_mediaasset id    DEFAULT     �   ALTER TABLE ONLY public.portfolio_app_mediaasset ALTER COLUMN id SET DEFAULT nextval('public.portfolio_app_mediaasset_id_seq'::regclass);
 J   ALTER TABLE public.portfolio_app_mediaasset ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    290    289            �	           2604    20053    portfolio_app_project_tags id    DEFAULT     �   ALTER TABLE ONLY public.portfolio_app_project_tags ALTER COLUMN id SET DEFAULT nextval('public.portfolio_app_project_tags_id_seq'::regclass);
 L   ALTER TABLE public.portfolio_app_project_tags ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    293    292            �          0    19612    about_me_aboutme 
   TABLE DATA               ]   COPY public.about_me_aboutme (cmsplugin_ptr_id, title, description, resume_file) FROM stdin;
    public       postgres    false    185   ��      �          0    19618    about_me_skillitem 
   TABLE DATA               Y   COPY public.about_me_skillitem (id, title, percentage, skill_plugin_item_id) FROM stdin;
    public       postgres    false    186   ͑      C           0    0    about_me_skillitem_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.about_me_skillitem_id_seq', 120, true);
            public       postgres    false    187            �          0    19623    about_me_skillplugin 
   TABLE DATA               X   COPY public.about_me_skillplugin (cmsplugin_ptr_id, created_at, updated_at) FROM stdin;
    public       postgres    false    188   ɒ      �          0    19626    about_me_statisticitem 
   TABLE DATA               ^   COPY public.about_me_statisticitem (id, title, statistic, statistic_plugin_id_id) FROM stdin;
    public       postgres    false    189   B�      D           0    0    about_me_statisticitem_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.about_me_statisticitem_id_seq', 62, true);
            public       postgres    false    190            �          0    19631    about_me_statisticplugin 
   TABLE DATA               \   COPY public.about_me_statisticplugin (cmsplugin_ptr_id, created_at, updated_at) FROM stdin;
    public       postgres    false    191   �      �          0    19634    about_me_timelineblock 
   TABLE DATA               �   COPY public.about_me_timelineblock (id, title, content, is_left, created_at, updated_at, timeline_header_id_id, period_time, url) FROM stdin;
    public       postgres    false    192   g�      E           0    0    about_me_timelineblock_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.about_me_timelineblock_id_seq', 31, true);
            public       postgres    false    193            �          0    19642    about_me_timelineheader 
   TABLE DATA               k   COPY public.about_me_timelineheader (title, created_at, updated_at, cmsplugin_ptr_id, "order") FROM stdin;
    public       postgres    false    194   6�                0    22094    addons_plugin_calendlyplugin 
   TABLE DATA               t   COPY public.addons_plugin_calendlyplugin (cmsplugin_ptr_id, calendly_embedded_url, text_message, color) FROM stdin;
    public       postgres    false    296   	�                0    22081    addons_plugin_tawkplugin 
   TABLE DATA               ]   COPY public.addons_plugin_tawkplugin (cmsplugin_ptr_id, name, tawk_embedded_url) FROM stdin;
    public       postgres    false    295   ��      �          0    19645    aldryn_style_style 
   TABLE DATA               �   COPY public.aldryn_style_style (label, cmsplugin_ptr_id, class_name, id_name, tag_type, padding_left, padding_right, padding_top, padding_bottom, margin_left, margin_right, margin_top, margin_bottom, additional_class_names) FROM stdin;
    public       postgres    false    195   �      �          0    19651 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    196   �      F           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    197            �          0    19656    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    198   *�      G           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    199            �          0    19661    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    200   G�      H           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 200, true);
            public       postgres    false    201            �          0    19666 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    202   ��      �          0    19672    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    203   ��      I           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    204            J           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
            public       postgres    false    205            �          0    19679    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    206   ��      K           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    207            �          0    19684    cms_aliaspluginmodel 
   TABLE DATA               a   COPY public.cms_aliaspluginmodel (cmsplugin_ptr_id, plugin_id, alias_placeholder_id) FROM stdin;
    public       postgres    false    208   ܡ      �          0    19687    cms_cmsplugin 
   TABLE DATA               �   COPY public.cms_cmsplugin (id, "position", language, plugin_type, creation_date, changed_date, parent_id, placeholder_id, depth, numchild, path) FROM stdin;
    public       postgres    false    209   ��      L           0    0    cms_cmsplugin_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cms_cmsplugin_id_seq', 122, true);
            public       postgres    false    210            �          0    19695    cms_globalpagepermission 
   TABLE DATA               �   COPY public.cms_globalpagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, can_recover_page, group_id, user_id) FROM stdin;
    public       postgres    false    211   �      M           0    0    cms_globalpagepermission_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.cms_globalpagepermission_id_seq', 1, false);
            public       postgres    false    212            �          0    19700    cms_globalpagepermission_sites 
   TABLE DATA               ^   COPY public.cms_globalpagepermission_sites (id, globalpagepermission_id, site_id) FROM stdin;
    public       postgres    false    213   1�      N           0    0 %   cms_globalpagepermission_sites_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.cms_globalpagepermission_sites_id_seq', 1, false);
            public       postgres    false    214            �          0    19705    cms_page 
   TABLE DATA               �  COPY public.cms_page (id, created_by, changed_by, creation_date, changed_date, publication_date, publication_end_date, in_navigation, soft_root, reverse_id, navigation_extenders, template, login_required, limit_visibility_in_menu, is_home, application_urls, application_namespace, publisher_is_draft, languages, xframe_options, publisher_public_id, is_page_type, node_id) FROM stdin;
    public       postgres    false    215   N�      O           0    0    cms_page_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cms_page_id_seq', 8, true);
            public       postgres    false    216            �          0    19713    cms_page_placeholders 
   TABLE DATA               L   COPY public.cms_page_placeholders (id, page_id, placeholder_id) FROM stdin;
    public       postgres    false    217   Χ      P           0    0    cms_page_placeholders_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.cms_page_placeholders_id_seq', 38, true);
            public       postgres    false    218            �          0    19718    cms_pagepermission 
   TABLE DATA               �   COPY public.cms_pagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, grant_on, group_id, page_id, user_id) FROM stdin;
    public       postgres    false    219   m�      Q           0    0    cms_pagepermission_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.cms_pagepermission_id_seq', 1, false);
            public       postgres    false    220            �          0    19723    cms_pageuser 
   TABLE DATA               B   COPY public.cms_pageuser (user_ptr_id, created_by_id) FROM stdin;
    public       postgres    false    221   ��      �          0    19726    cms_pageusergroup 
   TABLE DATA               H   COPY public.cms_pageusergroup (group_ptr_id, created_by_id) FROM stdin;
    public       postgres    false    222   ��      �          0    19729    cms_placeholder 
   TABLE DATA               B   COPY public.cms_placeholder (id, slot, default_width) FROM stdin;
    public       postgres    false    223   Ĩ      R           0    0    cms_placeholder_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cms_placeholder_id_seq', 47, true);
            public       postgres    false    224            �          0    19735    cms_placeholderreference 
   TABLE DATA               ^   COPY public.cms_placeholderreference (cmsplugin_ptr_id, name, placeholder_ref_id) FROM stdin;
    public       postgres    false    225   ѩ      �          0    19738    cms_staticplaceholder 
   TABLE DATA               u   COPY public.cms_staticplaceholder (id, name, code, dirty, creation_method, draft_id, public_id, site_id) FROM stdin;
    public       postgres    false    226   �      S           0    0    cms_staticplaceholder_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.cms_staticplaceholder_id_seq', 2, true);
            public       postgres    false    227            �          0    19746 	   cms_title 
   TABLE DATA               �   COPY public.cms_title (id, language, title, page_title, menu_title, meta_description, slug, path, has_url_overwrite, redirect, creation_date, published, publisher_is_draft, publisher_state, page_id, publisher_public_id) FROM stdin;
    public       postgres    false    228   :�      T           0    0    cms_title_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.cms_title_id_seq', 8, true);
            public       postgres    false    229            �          0    19754    cms_treenode 
   TABLE DATA               U   COPY public.cms_treenode (id, path, depth, numchild, parent_id, site_id) FROM stdin;
    public       postgres    false    230   �      U           0    0    cms_treenode_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.cms_treenode_id_seq', 4, true);
            public       postgres    false    231            �          0    19761    cms_urlconfrevision 
   TABLE DATA               ;   COPY public.cms_urlconfrevision (id, revision) FROM stdin;
    public       postgres    false    232   Y�      V           0    0    cms_urlconfrevision_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.cms_urlconfrevision_id_seq', 1, false);
            public       postgres    false    233            �          0    19766    cms_usersettings 
   TABLE DATA               O   COPY public.cms_usersettings (id, language, clipboard_id, user_id) FROM stdin;
    public       postgres    false    234   ��      W           0    0    cms_usersettings_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cms_usersettings_id_seq', 2, true);
            public       postgres    false    235            �          0    19771    contact_me_contactme 
   TABLE DATA               W   COPY public.contact_me_contactme (cmsplugin_ptr_id, phone, address, email) FROM stdin;
    public       postgres    false    236   ʫ      �          0    19777    contact_me_message 
   TABLE DATA               g   COPY public.contact_me_message (id, name, email, subject, message, created_at, updated_at) FROM stdin;
    public       postgres    false    237   N�      X           0    0    contact_me_message_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.contact_me_message_id_seq', 1, false);
            public       postgres    false    238            �          0    19785    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    239   k�      Y           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 43, true);
            public       postgres    false    240            �          0    19794    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    241   ;�      Z           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 67, true);
            public       postgres    false    242            �          0    19799    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    243   ͳ      [           0    0    django_migrations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_migrations_id_seq', 138, true);
            public       postgres    false    244            �          0    19807    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    245   q�      �          0    19813    django_site 
   TABLE DATA               7   COPY public.django_site (id, domain, name) FROM stdin;
    public       postgres    false    246   B�      \           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
            public       postgres    false    247            �          0    19818    djangocms_column_column 
   TABLE DATA               J   COPY public.djangocms_column_column (cmsplugin_ptr_id, width) FROM stdin;
    public       postgres    false    248   o�      �          0    19821    djangocms_column_multicolumns 
   TABLE DATA               I   COPY public.djangocms_column_multicolumns (cmsplugin_ptr_id) FROM stdin;
    public       postgres    false    249   ��      �          0    19824    djangocms_file_file 
   TABLE DATA               �   COPY public.djangocms_file_file (cmsplugin_ptr_id, file_name, link_target, link_title, file_src_id, attributes, template, show_file_size) FROM stdin;
    public       postgres    false    250   ��      �          0    19830    djangocms_file_folder 
   TABLE DATA               �   COPY public.djangocms_file_folder (template, link_target, show_file_size, attributes, cmsplugin_ptr_id, folder_src_id) FROM stdin;
    public       postgres    false    251   ��      �          0    19836    djangocms_googlemap_googlemap 
   TABLE DATA               4  COPY public.djangocms_googlemap_googlemap (cmsplugin_ptr_id, title, zoom, lat, lng, width, height, scrollwheel, double_click_zoom, draggable, keyboard_shortcuts, pan_control, zoom_control, street_view_control, style, fullscreen_control, map_type_control, rotate_control, scale_control, template) FROM stdin;
    public       postgres    false    252   ��      �          0    19843 #   djangocms_googlemap_googlemapmarker 
   TABLE DATA               �   COPY public.djangocms_googlemap_googlemapmarker (cmsplugin_ptr_id, title, address, lat, lng, show_content, info_content, icon_id) FROM stdin;
    public       postgres    false    253    �      �          0    19849 "   djangocms_googlemap_googlemaproute 
   TABLE DATA               w   COPY public.djangocms_googlemap_googlemaproute (cmsplugin_ptr_id, title, origin, destination, travel_mode) FROM stdin;
    public       postgres    false    254   �      �          0    19855    djangocms_link_link 
   TABLE DATA               �   COPY public.djangocms_link_link (cmsplugin_ptr_id, name, external_link, anchor, mailto, phone, target, internal_link_id, attributes, template) FROM stdin;
    public       postgres    false    255   :�      �          0    19861    djangocms_picture_picture 
   TABLE DATA               ,  COPY public.djangocms_picture_picture (cmsplugin_ptr_id, link_url, alignment, link_page_id, height, width, picture_id, attributes, caption_text, link_attributes, link_target, use_automatic_scaling, use_crop, use_no_cropping, use_upscale, thumbnail_options_id, external_picture, template) FROM stdin;
    public       postgres    false    256   W�      �          0    19869    djangocms_snippet_snippet 
   TABLE DATA               S   COPY public.djangocms_snippet_snippet (id, name, html, template, slug) FROM stdin;
    public       postgres    false    257   t�      ]           0    0     djangocms_snippet_snippet_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.djangocms_snippet_snippet_id_seq', 1, false);
            public       postgres    false    258            �          0    19877    djangocms_snippet_snippetptr 
   TABLE DATA               T   COPY public.djangocms_snippet_snippetptr (cmsplugin_ptr_id, snippet_id) FROM stdin;
    public       postgres    false    259   ��      �          0    19880    djangocms_text_ckeditor_text 
   TABLE DATA               N   COPY public.djangocms_text_ckeditor_text (cmsplugin_ptr_id, body) FROM stdin;
    public       postgres    false    260   ��      �          0    19886    djangocms_video_videoplayer 
   TABLE DATA               {   COPY public.djangocms_video_videoplayer (cmsplugin_ptr_id, embed_link, poster_id, attributes, label, template) FROM stdin;
    public       postgres    false    261   ��      �          0    19892    djangocms_video_videosource 
   TABLE DATA               �   COPY public.djangocms_video_videosource (cmsplugin_ptr_id, text_title, text_description, attributes, source_file_id) FROM stdin;
    public       postgres    false    262   ��      �          0    19898    djangocms_video_videotrack 
   TABLE DATA               p   COPY public.djangocms_video_videotrack (cmsplugin_ptr_id, kind, srclang, label, attributes, src_id) FROM stdin;
    public       postgres    false    263   �      �          0    19904    easy_thumbnails_source 
   TABLE DATA               R   COPY public.easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
    public       postgres    false    264   "�      ^           0    0    easy_thumbnails_source_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.easy_thumbnails_source_id_seq', 1, false);
            public       postgres    false    265            �          0    19909    easy_thumbnails_thumbnail 
   TABLE DATA               `   COPY public.easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
    public       postgres    false    266   ?�      _           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.easy_thumbnails_thumbnail_id_seq', 1, false);
            public       postgres    false    267            �          0    19914 #   easy_thumbnails_thumbnaildimensions 
   TABLE DATA               ^   COPY public.easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
    public       postgres    false    268   \�      `           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.easy_thumbnails_thumbnaildimensions_id_seq', 1, false);
            public       postgres    false    269            �          0    19921    filer_clipboard 
   TABLE DATA               6   COPY public.filer_clipboard (id, user_id) FROM stdin;
    public       postgres    false    270   y�      a           0    0    filer_clipboard_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.filer_clipboard_id_seq', 1, false);
            public       postgres    false    271            �          0    19926    filer_clipboarditem 
   TABLE DATA               H   COPY public.filer_clipboarditem (id, clipboard_id, file_id) FROM stdin;
    public       postgres    false    272   ��      b           0    0    filer_clipboarditem_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.filer_clipboarditem_id_seq', 1, false);
            public       postgres    false    273            �          0    19931 
   filer_file 
   TABLE DATA               �   COPY public.filer_file (id, file, _file_size, sha1, has_all_mandatory_data, original_filename, name, description, uploaded_at, modified_at, is_public, folder_id, owner_id, polymorphic_ctype_id) FROM stdin;
    public       postgres    false    274   ��      c           0    0    filer_file_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.filer_file_id_seq', 1, false);
            public       postgres    false    275            �          0    19939    filer_folder 
   TABLE DATA               �   COPY public.filer_folder (id, name, uploaded_at, created_at, modified_at, lft, rght, tree_id, level, owner_id, parent_id) FROM stdin;
    public       postgres    false    276   ��      d           0    0    filer_folder_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.filer_folder_id_seq', 1, false);
            public       postgres    false    277                       0    19948    filer_folderpermission 
   TABLE DATA               �   COPY public.filer_folderpermission (id, type, everybody, can_edit, can_read, can_add_children, folder_id, group_id, user_id) FROM stdin;
    public       postgres    false    278   ��      e           0    0    filer_folderpermission_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.filer_folderpermission_id_seq', 1, false);
            public       postgres    false    279                      0    19953    filer_image 
   TABLE DATA               �   COPY public.filer_image (file_ptr_id, _height, _width, date_taken, default_alt_text, default_caption, author, must_always_publish_author_credit, must_always_publish_copyright, subject_location) FROM stdin;
    public       postgres    false    280   
�                0    19959    filer_thumbnailoption 
   TABLE DATA               W   COPY public.filer_thumbnailoption (id, name, width, height, crop, upscale) FROM stdin;
    public       postgres    false    281   '�      f           0    0    filer_thumbnailoption_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.filer_thumbnailoption_id_seq', 1, false);
            public       postgres    false    282                      0    19964    hero_area_heroarea 
   TABLE DATA               �   COPY public.hero_area_heroarea (cmsplugin_ptr_id, title, name, working_position, background_image, linkedin_url, github_url, facebook_url) FROM stdin;
    public       postgres    false    283   D�                0    19970    hero_area_shortheroarea 
   TABLE DATA               c   COPY public.hero_area_shortheroarea (cmsplugin_ptr_id, title, favorite_quotes, author) FROM stdin;
    public       postgres    false    284   ��                0    19976    menus_cachekey 
   TABLE DATA               A   COPY public.menus_cachekey (id, language, site, key) FROM stdin;
    public       postgres    false    285   v�      g           0    0    menus_cachekey_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.menus_cachekey_id_seq', 46, true);
            public       postgres    false    286            	          0    19985    portfolio_app_demourlitem 
   TABLE DATA               n   COPY public.portfolio_app_demourlitem (id, demo_url, type, created_at, updated_at, project_id_id) FROM stdin;
    public       postgres    false    287   ��      h           0    0     portfolio_app_demourlitem_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.portfolio_app_demourlitem_id_seq', 3, true);
            public       postgres    false    288                      0    19994    portfolio_app_mediaasset 
   TABLE DATA               v   COPY public.portfolio_app_mediaasset (id, name, type, media_asset, created_at, updated_at, project_id_id) FROM stdin;
    public       postgres    false    289   ��      i           0    0    portfolio_app_mediaasset_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.portfolio_app_mediaasset_id_seq', 20, true);
            public       postgres    false    290                      0    20000    portfolio_app_project 
   TABLE DATA               �   COPY public.portfolio_app_project (cmsplugin_ptr_id, slug, title, sub_title, short_description, description, skills, roles, client, length, demo_url, youtube_embed_url, top_image, created_at, updated_at, use_case_id, icon_image) FROM stdin;
    public       postgres    false    291   [�                0    20006    portfolio_app_project_tags 
   TABLE DATA               L   COPY public.portfolio_app_project_tags (id, project_id, tag_id) FROM stdin;
    public       postgres    false    292   �      j           0    0 !   portfolio_app_project_tags_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.portfolio_app_project_tags_id_seq', 12, true);
            public       postgres    false    293                      0    20011    portfolio_app_tag 
   TABLE DATA               C   COPY public.portfolio_app_tag (cmsplugin_ptr_id, name) FROM stdin;
    public       postgres    false    294   F�      �	           2606    20055 &   about_me_aboutme about_me_aboutme_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.about_me_aboutme
    ADD CONSTRAINT about_me_aboutme_pkey PRIMARY KEY (cmsplugin_ptr_id);
 P   ALTER TABLE ONLY public.about_me_aboutme DROP CONSTRAINT about_me_aboutme_pkey;
       public         postgres    false    185    185            �	           2606    20057 *   about_me_skillitem about_me_skillitem_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.about_me_skillitem
    ADD CONSTRAINT about_me_skillitem_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.about_me_skillitem DROP CONSTRAINT about_me_skillitem_pkey;
       public         postgres    false    186    186            �	           2606    20059 .   about_me_skillplugin about_me_skillplugin_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.about_me_skillplugin
    ADD CONSTRAINT about_me_skillplugin_pkey PRIMARY KEY (cmsplugin_ptr_id);
 X   ALTER TABLE ONLY public.about_me_skillplugin DROP CONSTRAINT about_me_skillplugin_pkey;
       public         postgres    false    188    188            �	           2606    20061 2   about_me_statisticitem about_me_statisticitem_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.about_me_statisticitem
    ADD CONSTRAINT about_me_statisticitem_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.about_me_statisticitem DROP CONSTRAINT about_me_statisticitem_pkey;
       public         postgres    false    189    189            �	           2606    20063 6   about_me_statisticplugin about_me_statisticplugin_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.about_me_statisticplugin
    ADD CONSTRAINT about_me_statisticplugin_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.about_me_statisticplugin DROP CONSTRAINT about_me_statisticplugin_pkey;
       public         postgres    false    191    191            �	           2606    20065 2   about_me_timelineblock about_me_timelineblock_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.about_me_timelineblock
    ADD CONSTRAINT about_me_timelineblock_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.about_me_timelineblock DROP CONSTRAINT about_me_timelineblock_pkey;
       public         postgres    false    192    192            �	           2606    20067 4   about_me_timelineheader about_me_timelineheader_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.about_me_timelineheader
    ADD CONSTRAINT about_me_timelineheader_pkey PRIMARY KEY (cmsplugin_ptr_id);
 ^   ALTER TABLE ONLY public.about_me_timelineheader DROP CONSTRAINT about_me_timelineheader_pkey;
       public         postgres    false    194    194            �
           2606    22101 >   addons_plugin_calendlyplugin addons_plugin_calendlyplugin_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.addons_plugin_calendlyplugin
    ADD CONSTRAINT addons_plugin_calendlyplugin_pkey PRIMARY KEY (cmsplugin_ptr_id);
 h   ALTER TABLE ONLY public.addons_plugin_calendlyplugin DROP CONSTRAINT addons_plugin_calendlyplugin_pkey;
       public         postgres    false    296    296            �
           2606    22088 6   addons_plugin_tawkplugin addons_plugin_tawkplugin_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.addons_plugin_tawkplugin
    ADD CONSTRAINT addons_plugin_tawkplugin_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.addons_plugin_tawkplugin DROP CONSTRAINT addons_plugin_tawkplugin_pkey;
       public         postgres    false    295    295            �	           2606    20069 *   aldryn_style_style aldryn_style_style_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.aldryn_style_style
    ADD CONSTRAINT aldryn_style_style_pkey PRIMARY KEY (cmsplugin_ptr_id);
 T   ALTER TABLE ONLY public.aldryn_style_style DROP CONSTRAINT aldryn_style_style_pkey;
       public         postgres    false    195    195            �	           2606    20071    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    196    196            �	           2606    20073 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    198    198    198            �	           2606    20075 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    198    198            �	           2606    20077    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    196    196            �	           2606    20079 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    200    200    200            �	           2606    20081 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    200    200            �	           2606    20083 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    203    203            �	           2606    20085 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    203    203    203            �	           2606    20087    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    202    202            �	           2606    20089 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    206    206            �	           2606    20091 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    206    206    206            �	           2606    20093     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    202    202            �	           2606    20095 .   cms_aliaspluginmodel cms_aliaspluginmodel_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_pkey PRIMARY KEY (cmsplugin_ptr_id);
 X   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_pkey;
       public         postgres    false    208    208            �	           2606    20097 .   cms_cmsplugin cms_cmsplugin_path_4917bb44_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_path_4917bb44_uniq UNIQUE (path);
 X   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_path_4917bb44_uniq;
       public         postgres    false    209    209            �	           2606    20099     cms_cmsplugin cms_cmsplugin_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_pkey;
       public         postgres    false    209    209            �	           2606    20101 ^   cms_globalpagepermission_sites cms_globalpagepermission_globalpagepermission_id__db684f41_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_globalpagepermission_id__db684f41_uniq UNIQUE (globalpagepermission_id, site_id);
 �   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermission_globalpagepermission_id__db684f41_uniq;
       public         postgres    false    213    213    213            �	           2606    20103 6   cms_globalpagepermission cms_globalpagepermission_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_pkey;
       public         postgres    false    211    211            �	           2606    20105 B   cms_globalpagepermission_sites cms_globalpagepermission_sites_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_sites_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermission_sites_pkey;
       public         postgres    false    213    213            �	           2606    20107 :   cms_page cms_page_node_id_publisher_is_draft_c1293d6a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_node_id_publisher_is_draft_c1293d6a_uniq UNIQUE (node_id, publisher_is_draft);
 d   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_node_id_publisher_is_draft_c1293d6a_uniq;
       public         postgres    false    215    215    215            �	           2606    20109    cms_page cms_page_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_pkey;
       public         postgres    false    215    215            �	           2606    20111 P   cms_page_placeholders cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq UNIQUE (page_id, placeholder_id);
 z   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq;
       public         postgres    false    217    217    217            �	           2606    20113 0   cms_page_placeholders cms_page_placeholders_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_pkey;
       public         postgres    false    217    217            �	           2606    20115 )   cms_page cms_page_publisher_public_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_key UNIQUE (publisher_public_id);
 S   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_publisher_public_id_key;
       public         postgres    false    215    215            
           2606    20117 *   cms_pagepermission cms_pagepermission_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_pkey;
       public         postgres    false    219    219            
           2606    20119    cms_pageuser cms_pageuser_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_pkey PRIMARY KEY (user_ptr_id);
 H   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_pkey;
       public         postgres    false    221    221            
           2606    20121 (   cms_pageusergroup cms_pageusergroup_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_pkey PRIMARY KEY (group_ptr_id);
 R   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_pkey;
       public         postgres    false    222    222            

           2606    20123 $   cms_placeholder cms_placeholder_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.cms_placeholder
    ADD CONSTRAINT cms_placeholder_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.cms_placeholder DROP CONSTRAINT cms_placeholder_pkey;
       public         postgres    false    223    223            
           2606    20125 6   cms_placeholderreference cms_placeholderreference_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderreference_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderreference_pkey;
       public         postgres    false    225    225            
           2606    20127 F   cms_staticplaceholder cms_staticplaceholder_code_site_id_21ba079c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_code_site_id_21ba079c_uniq UNIQUE (code, site_id);
 p   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_code_site_id_21ba079c_uniq;
       public         postgres    false    226    226    226            
           2606    20129 0   cms_staticplaceholder cms_staticplaceholder_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_pkey;
       public         postgres    false    226    226            
           2606    20131 2   cms_title cms_title_language_page_id_61aaf084_uniq 
   CONSTRAINT     z   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_language_page_id_61aaf084_uniq UNIQUE (language, page_id);
 \   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_language_page_id_61aaf084_uniq;
       public         postgres    false    228    228    228             
           2606    20133    cms_title cms_title_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_pkey;
       public         postgres    false    228    228            #
           2606    20135 +   cms_title cms_title_publisher_public_id_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_key UNIQUE (publisher_public_id);
 U   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_publisher_public_id_key;
       public         postgres    false    228    228            *
           2606    20137 "   cms_treenode cms_treenode_path_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_path_key UNIQUE (path);
 L   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_path_key;
       public         postgres    false    230    230            ,
           2606    20139    cms_treenode cms_treenode_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_pkey;
       public         postgres    false    230    230            /
           2606    20141 ,   cms_urlconfrevision cms_urlconfrevision_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.cms_urlconfrevision
    ADD CONSTRAINT cms_urlconfrevision_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.cms_urlconfrevision DROP CONSTRAINT cms_urlconfrevision_pkey;
       public         postgres    false    232    232            2
           2606    20143 &   cms_usersettings cms_usersettings_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_pkey;
       public         postgres    false    234    234            4
           2606    20145 -   cms_usersettings cms_usersettings_user_id_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_key UNIQUE (user_id);
 W   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_user_id_key;
       public         postgres    false    234    234            6
           2606    20147 .   contact_me_contactme contact_me_contactme_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.contact_me_contactme
    ADD CONSTRAINT contact_me_contactme_pkey PRIMARY KEY (cmsplugin_ptr_id);
 X   ALTER TABLE ONLY public.contact_me_contactme DROP CONSTRAINT contact_me_contactme_pkey;
       public         postgres    false    236    236            8
           2606    20149 *   contact_me_message contact_me_message_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.contact_me_message
    ADD CONSTRAINT contact_me_message_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.contact_me_message DROP CONSTRAINT contact_me_message_pkey;
       public         postgres    false    237    237            ;
           2606    20151 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    239    239            >
           2606    20153 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    241    241    241            @
           2606    20155 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    241    241            B
           2606    20157 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    243    243            E
           2606    20159 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    245    245            I
           2606    20161 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public         postgres    false    246    246            K
           2606    20163    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public         postgres    false    246    246            M
           2606    20165 4   djangocms_column_column djangocms_column_column_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_column_column
    ADD CONSTRAINT djangocms_column_column_pkey PRIMARY KEY (cmsplugin_ptr_id);
 ^   ALTER TABLE ONLY public.djangocms_column_column DROP CONSTRAINT djangocms_column_column_pkey;
       public         postgres    false    248    248            O
           2606    20167 @   djangocms_column_multicolumns djangocms_column_multicolumns_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_column_multicolumns
    ADD CONSTRAINT djangocms_column_multicolumns_pkey PRIMARY KEY (cmsplugin_ptr_id);
 j   ALTER TABLE ONLY public.djangocms_column_multicolumns DROP CONSTRAINT djangocms_column_multicolumns_pkey;
       public         postgres    false    249    249            R
           2606    20169 ,   djangocms_file_file djangocms_file_file_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_pkey PRIMARY KEY (cmsplugin_ptr_id);
 V   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_pkey;
       public         postgres    false    250    250            U
           2606    20171 0   djangocms_file_folder djangocms_file_folder_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_pkey PRIMARY KEY (cmsplugin_ptr_id);
 Z   ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folder_pkey;
       public         postgres    false    251    251            W
           2606    20173 @   djangocms_googlemap_googlemap djangocms_googlemap_googlemap_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap_googlemap_pkey PRIMARY KEY (cmsplugin_ptr_id);
 j   ALTER TABLE ONLY public.djangocms_googlemap_googlemap DROP CONSTRAINT djangocms_googlemap_googlemap_pkey;
       public         postgres    false    252    252            Z
           2606    20175 L   djangocms_googlemap_googlemapmarker djangocms_googlemap_googlemapmarker_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap_googlemapmarker_pkey PRIMARY KEY (cmsplugin_ptr_id);
 v   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap_googlemapmarker_pkey;
       public         postgres    false    253    253            \
           2606    20177 J   djangocms_googlemap_googlemaproute djangocms_googlemap_googlemaproute_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap_googlemaproute_pkey PRIMARY KEY (cmsplugin_ptr_id);
 t   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute DROP CONSTRAINT djangocms_googlemap_googlemaproute_pkey;
       public         postgres    false    254    254            _
           2606    20179 ,   djangocms_link_link djangocms_link_link_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_pkey PRIMARY KEY (cmsplugin_ptr_id);
 V   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_pkey;
       public         postgres    false    255    255            c
           2606    20181 8   djangocms_picture_picture djangocms_picture_picture_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_pkey PRIMARY KEY (cmsplugin_ptr_id);
 b   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_picture_pkey;
       public         postgres    false    256    256            g
           2606    20183 <   djangocms_snippet_snippet djangocms_snippet_snippet_name_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_name_key UNIQUE (name);
 f   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_name_key;
       public         postgres    false    257    257            i
           2606    20185 8   djangocms_snippet_snippet djangocms_snippet_snippet_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_pkey;
       public         postgres    false    257    257            l
           2606    20187 F   djangocms_snippet_snippet djangocms_snippet_snippet_slug_bd43cd96_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_slug_bd43cd96_uniq UNIQUE (slug);
 p   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_slug_bd43cd96_uniq;
       public         postgres    false    257    257            n
           2606    20189 >   djangocms_snippet_snippetptr djangocms_snippet_snippetptr_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_snippetptr_pkey PRIMARY KEY (cmsplugin_ptr_id);
 h   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_snippetptr_pkey;
       public         postgres    false    259    259            q
           2606    20191 >   djangocms_text_ckeditor_text djangocms_text_ckeditor_text_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckeditor_text_pkey PRIMARY KEY (cmsplugin_ptr_id);
 h   ALTER TABLE ONLY public.djangocms_text_ckeditor_text DROP CONSTRAINT djangocms_text_ckeditor_text_pkey;
       public         postgres    false    260    260            s
           2606    20193 6   djangocms_video_videoplayer djangocms_video_video_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_video_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_video_pkey;
       public         postgres    false    261    261            v
           2606    20195 <   djangocms_video_videosource djangocms_video_videosource_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_videosource_pkey PRIMARY KEY (cmsplugin_ptr_id);
 f   ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_videosource_pkey;
       public         postgres    false    262    262            y
           2606    20197 :   djangocms_video_videotrack djangocms_video_videotrack_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_pkey PRIMARY KEY (cmsplugin_ptr_id);
 d   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_videotrack_pkey;
       public         postgres    false    263    263            ~
           2606    20199 2   easy_thumbnails_source easy_thumbnails_source_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_pkey;
       public         postgres    false    264    264            �
           2606    20201 M   easy_thumbnails_source easy_thumbnails_source_storage_hash_name_481ce32d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq UNIQUE (storage_hash, name);
 w   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq;
       public         postgres    false    264    264    264            �
           2606    20203 Y   easy_thumbnails_thumbnail easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq UNIQUE (storage_hash, name, source_id);
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq;
       public         postgres    false    266    266    266    266            �
           2606    20205 8   easy_thumbnails_thumbnail easy_thumbnails_thumbnail_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnail_pkey;
       public         postgres    false    266    266            �
           2606    20207 L   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey;
       public         postgres    false    268    268            �
           2606    20209 X   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_thumbnail_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key;
       public         postgres    false    268    268            �
           2606    20211 $   filer_clipboard filer_clipboard_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_pkey;
       public         postgres    false    270    270            �
           2606    20213 ,   filer_clipboarditem filer_clipboarditem_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_pkey;
       public         postgres    false    272    272            �
           2606    20215    filer_file filer_file_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_pkey;
       public         postgres    false    274    274            �
           2606    20217 6   filer_folder filer_folder_parent_id_name_bc773258_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_name_bc773258_uniq UNIQUE (parent_id, name);
 `   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_name_bc773258_uniq;
       public         postgres    false    276    276    276            �
           2606    20219    filer_folder filer_folder_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_pkey;
       public         postgres    false    276    276            �
           2606    20221 2   filer_folderpermission filer_folderpermission_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_pkey;
       public         postgres    false    278    278            �
           2606    20223    filer_image filer_image_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_pkey PRIMARY KEY (file_ptr_id);
 F   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_pkey;
       public         postgres    false    280    280            �
           2606    20225 0   filer_thumbnailoption filer_thumbnailoption_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.filer_thumbnailoption
    ADD CONSTRAINT filer_thumbnailoption_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.filer_thumbnailoption DROP CONSTRAINT filer_thumbnailoption_pkey;
       public         postgres    false    281    281            �
           2606    20227 *   hero_area_heroarea hero_area_heroarea_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.hero_area_heroarea
    ADD CONSTRAINT hero_area_heroarea_pkey PRIMARY KEY (cmsplugin_ptr_id);
 T   ALTER TABLE ONLY public.hero_area_heroarea DROP CONSTRAINT hero_area_heroarea_pkey;
       public         postgres    false    283    283            �
           2606    20229 4   hero_area_shortheroarea hero_area_shortheroarea_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.hero_area_shortheroarea
    ADD CONSTRAINT hero_area_shortheroarea_pkey PRIMARY KEY (cmsplugin_ptr_id);
 ^   ALTER TABLE ONLY public.hero_area_shortheroarea DROP CONSTRAINT hero_area_shortheroarea_pkey;
       public         postgres    false    284    284            �
           2606    20231 "   menus_cachekey menus_cachekey_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.menus_cachekey
    ADD CONSTRAINT menus_cachekey_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.menus_cachekey DROP CONSTRAINT menus_cachekey_pkey;
       public         postgres    false    285    285            �
           2606    20233 8   portfolio_app_demourlitem portfolio_app_demourlitem_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.portfolio_app_demourlitem
    ADD CONSTRAINT portfolio_app_demourlitem_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.portfolio_app_demourlitem DROP CONSTRAINT portfolio_app_demourlitem_pkey;
       public         postgres    false    287    287            �
           2606    20235 6   portfolio_app_mediaasset portfolio_app_mediaasset_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.portfolio_app_mediaasset
    ADD CONSTRAINT portfolio_app_mediaasset_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.portfolio_app_mediaasset DROP CONSTRAINT portfolio_app_mediaasset_pkey;
       public         postgres    false    289    289            �
           2606    20237 0   portfolio_app_project portfolio_app_project_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.portfolio_app_project
    ADD CONSTRAINT portfolio_app_project_pkey PRIMARY KEY (cmsplugin_ptr_id);
 Z   ALTER TABLE ONLY public.portfolio_app_project DROP CONSTRAINT portfolio_app_project_pkey;
       public         postgres    false    291    291            �
           2606    20239 :   portfolio_app_project_tags portfolio_app_project_tags_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_project_tags_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_project_tags_pkey;
       public         postgres    false    292    292            �
           2606    20241 U   portfolio_app_project_tags portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq UNIQUE (project_id, tag_id);
    ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq;
       public         postgres    false    292    292    292            �
           2606    20243 (   portfolio_app_tag portfolio_app_tag_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.portfolio_app_tag
    ADD CONSTRAINT portfolio_app_tag_pkey PRIMARY KEY (cmsplugin_ptr_id);
 R   ALTER TABLE ONLY public.portfolio_app_tag DROP CONSTRAINT portfolio_app_tag_pkey;
       public         postgres    false    294    294            �	           1259    20244 4   about_me_skillitem_statistic_plugin_item_id_dd93ca1b    INDEX     �   CREATE INDEX about_me_skillitem_statistic_plugin_item_id_dd93ca1b ON public.about_me_skillitem USING btree (skill_plugin_item_id);
 H   DROP INDEX public.about_me_skillitem_statistic_plugin_item_id_dd93ca1b;
       public         postgres    false    186            �	           1259    20245 6   about_me_statisticitem_statistic_plugin_id_id_d6a86d36    INDEX     �   CREATE INDEX about_me_statisticitem_statistic_plugin_id_id_d6a86d36 ON public.about_me_statisticitem USING btree (statistic_plugin_id_id);
 J   DROP INDEX public.about_me_statisticitem_statistic_plugin_id_id_d6a86d36;
       public         postgres    false    189            �	           1259    20246 5   about_me_timelineblock_timeline_header_id_id_e80418fe    INDEX     �   CREATE INDEX about_me_timelineblock_timeline_header_id_id_e80418fe ON public.about_me_timelineblock USING btree (timeline_header_id_id);
 I   DROP INDEX public.about_me_timelineblock_timeline_header_id_id_e80418fe;
       public         postgres    false    192            �	           1259    20247    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    196            �	           1259    20248 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    198            �	           1259    20249 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    198            �	           1259    20250 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    200            �	           1259    20251 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    203            �	           1259    20252 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    203            �	           1259    20253 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    206            �	           1259    20254 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    206            �	           1259    20255     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    202            �	           1259    20256 2   cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a    INDEX     �   CREATE INDEX cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a ON public.cms_aliaspluginmodel USING btree (alias_placeholder_id);
 F   DROP INDEX public.cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a;
       public         postgres    false    208            �	           1259    20257 '   cms_aliaspluginmodel_plugin_id_9867676e    INDEX     m   CREATE INDEX cms_aliaspluginmodel_plugin_id_9867676e ON public.cms_aliaspluginmodel USING btree (plugin_id);
 ;   DROP INDEX public.cms_aliaspluginmodel_plugin_id_9867676e;
       public         postgres    false    208            �	           1259    20258    cms_cmsplugin_language_bbea8a48    INDEX     ]   CREATE INDEX cms_cmsplugin_language_bbea8a48 ON public.cms_cmsplugin USING btree (language);
 3   DROP INDEX public.cms_cmsplugin_language_bbea8a48;
       public         postgres    false    209            �	           1259    20259 $   cms_cmsplugin_language_bbea8a48_like    INDEX     v   CREATE INDEX cms_cmsplugin_language_bbea8a48_like ON public.cms_cmsplugin USING btree (language varchar_pattern_ops);
 8   DROP INDEX public.cms_cmsplugin_language_bbea8a48_like;
       public         postgres    false    209            �	           1259    20260     cms_cmsplugin_parent_id_fd3bd9dd    INDEX     _   CREATE INDEX cms_cmsplugin_parent_id_fd3bd9dd ON public.cms_cmsplugin USING btree (parent_id);
 4   DROP INDEX public.cms_cmsplugin_parent_id_fd3bd9dd;
       public         postgres    false    209            �	           1259    20261     cms_cmsplugin_path_4917bb44_like    INDEX     n   CREATE INDEX cms_cmsplugin_path_4917bb44_like ON public.cms_cmsplugin USING btree (path varchar_pattern_ops);
 4   DROP INDEX public.cms_cmsplugin_path_4917bb44_like;
       public         postgres    false    209            �	           1259    20262 %   cms_cmsplugin_placeholder_id_0bfa3b26    INDEX     i   CREATE INDEX cms_cmsplugin_placeholder_id_0bfa3b26 ON public.cms_cmsplugin USING btree (placeholder_id);
 9   DROP INDEX public.cms_cmsplugin_placeholder_id_0bfa3b26;
       public         postgres    false    209            �	           1259    20263 "   cms_cmsplugin_plugin_type_94e96ebf    INDEX     c   CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf ON public.cms_cmsplugin USING btree (plugin_type);
 6   DROP INDEX public.cms_cmsplugin_plugin_type_94e96ebf;
       public         postgres    false    209            �	           1259    20264 '   cms_cmsplugin_plugin_type_94e96ebf_like    INDEX     |   CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf_like ON public.cms_cmsplugin USING btree (plugin_type varchar_pattern_ops);
 ;   DROP INDEX public.cms_cmsplugin_plugin_type_94e96ebf_like;
       public         postgres    false    209            �	           1259    20265 *   cms_globalpagepermission_group_id_991b4733    INDEX     s   CREATE INDEX cms_globalpagepermission_group_id_991b4733 ON public.cms_globalpagepermission USING btree (group_id);
 >   DROP INDEX public.cms_globalpagepermission_group_id_991b4733;
       public         postgres    false    211            �	           1259    20266 ?   cms_globalpagepermission_sites_globalpagepermission_id_46bd2681    INDEX     �   CREATE INDEX cms_globalpagepermission_sites_globalpagepermission_id_46bd2681 ON public.cms_globalpagepermission_sites USING btree (globalpagepermission_id);
 S   DROP INDEX public.cms_globalpagepermission_sites_globalpagepermission_id_46bd2681;
       public         postgres    false    213            �	           1259    20267 /   cms_globalpagepermission_sites_site_id_00460b53    INDEX     }   CREATE INDEX cms_globalpagepermission_sites_site_id_00460b53 ON public.cms_globalpagepermission_sites USING btree (site_id);
 C   DROP INDEX public.cms_globalpagepermission_sites_site_id_00460b53;
       public         postgres    false    213            �	           1259    20268 )   cms_globalpagepermission_user_id_a227cee1    INDEX     q   CREATE INDEX cms_globalpagepermission_user_id_a227cee1 ON public.cms_globalpagepermission USING btree (user_id);
 =   DROP INDEX public.cms_globalpagepermission_user_id_a227cee1;
       public         postgres    false    211            �	           1259    20269 "   cms_page_application_urls_9ef47497    INDEX     c   CREATE INDEX cms_page_application_urls_9ef47497 ON public.cms_page USING btree (application_urls);
 6   DROP INDEX public.cms_page_application_urls_9ef47497;
       public         postgres    false    215            �	           1259    20270 '   cms_page_application_urls_9ef47497_like    INDEX     |   CREATE INDEX cms_page_application_urls_9ef47497_like ON public.cms_page USING btree (application_urls varchar_pattern_ops);
 ;   DROP INDEX public.cms_page_application_urls_9ef47497_like;
       public         postgres    false    215            �	           1259    20271    cms_page_in_navigation_01c24279    INDEX     ]   CREATE INDEX cms_page_in_navigation_01c24279 ON public.cms_page USING btree (in_navigation);
 3   DROP INDEX public.cms_page_in_navigation_01c24279;
       public         postgres    false    215            �	           1259    20272    cms_page_is_home_edadca07    INDEX     Q   CREATE INDEX cms_page_is_home_edadca07 ON public.cms_page USING btree (is_home);
 -   DROP INDEX public.cms_page_is_home_edadca07;
       public         postgres    false    215            �	           1259    20273 *   cms_page_limit_visibility_in_menu_30db6aa6    INDEX     s   CREATE INDEX cms_page_limit_visibility_in_menu_30db6aa6 ON public.cms_page USING btree (limit_visibility_in_menu);
 >   DROP INDEX public.cms_page_limit_visibility_in_menu_30db6aa6;
       public         postgres    false    215            �	           1259    20274 &   cms_page_navigation_extenders_c24af8dd    INDEX     k   CREATE INDEX cms_page_navigation_extenders_c24af8dd ON public.cms_page USING btree (navigation_extenders);
 :   DROP INDEX public.cms_page_navigation_extenders_c24af8dd;
       public         postgres    false    215            �	           1259    20275 +   cms_page_navigation_extenders_c24af8dd_like    INDEX     �   CREATE INDEX cms_page_navigation_extenders_c24af8dd_like ON public.cms_page USING btree (navigation_extenders varchar_pattern_ops);
 ?   DROP INDEX public.cms_page_navigation_extenders_c24af8dd_like;
       public         postgres    false    215            �	           1259    20276    cms_page_node_id_c87b85a9    INDEX     Q   CREATE INDEX cms_page_node_id_c87b85a9 ON public.cms_page USING btree (node_id);
 -   DROP INDEX public.cms_page_node_id_c87b85a9;
       public         postgres    false    215            �	           1259    20277 &   cms_page_placeholders_page_id_f2ce8dec    INDEX     k   CREATE INDEX cms_page_placeholders_page_id_f2ce8dec ON public.cms_page_placeholders USING btree (page_id);
 :   DROP INDEX public.cms_page_placeholders_page_id_f2ce8dec;
       public         postgres    false    217            �	           1259    20278 -   cms_page_placeholders_placeholder_id_6b120886    INDEX     y   CREATE INDEX cms_page_placeholders_placeholder_id_6b120886 ON public.cms_page_placeholders USING btree (placeholder_id);
 A   DROP INDEX public.cms_page_placeholders_placeholder_id_6b120886;
       public         postgres    false    217            �	           1259    20279 "   cms_page_publication_date_684fabf7    INDEX     c   CREATE INDEX cms_page_publication_date_684fabf7 ON public.cms_page USING btree (publication_date);
 6   DROP INDEX public.cms_page_publication_date_684fabf7;
       public         postgres    false    215            �	           1259    20280 &   cms_page_publication_end_date_12a0c46a    INDEX     k   CREATE INDEX cms_page_publication_end_date_12a0c46a ON public.cms_page USING btree (publication_end_date);
 :   DROP INDEX public.cms_page_publication_end_date_12a0c46a;
       public         postgres    false    215            �	           1259    20281 $   cms_page_publisher_is_draft_141cba60    INDEX     g   CREATE INDEX cms_page_publisher_is_draft_141cba60 ON public.cms_page USING btree (publisher_is_draft);
 8   DROP INDEX public.cms_page_publisher_is_draft_141cba60;
       public         postgres    false    215            �	           1259    20282    cms_page_reverse_id_ffc9ede2    INDEX     W   CREATE INDEX cms_page_reverse_id_ffc9ede2 ON public.cms_page USING btree (reverse_id);
 0   DROP INDEX public.cms_page_reverse_id_ffc9ede2;
       public         postgres    false    215            �	           1259    20283 !   cms_page_reverse_id_ffc9ede2_like    INDEX     p   CREATE INDEX cms_page_reverse_id_ffc9ede2_like ON public.cms_page USING btree (reverse_id varchar_pattern_ops);
 5   DROP INDEX public.cms_page_reverse_id_ffc9ede2_like;
       public         postgres    false    215            �	           1259    20284    cms_page_soft_root_51efccbe    INDEX     U   CREATE INDEX cms_page_soft_root_51efccbe ON public.cms_page USING btree (soft_root);
 /   DROP INDEX public.cms_page_soft_root_51efccbe;
       public         postgres    false    215            �	           1259    20285 $   cms_pagepermission_group_id_af5af193    INDEX     g   CREATE INDEX cms_pagepermission_group_id_af5af193 ON public.cms_pagepermission USING btree (group_id);
 8   DROP INDEX public.cms_pagepermission_group_id_af5af193;
       public         postgres    false    219            �	           1259    20286 #   cms_pagepermission_page_id_0ae9a163    INDEX     e   CREATE INDEX cms_pagepermission_page_id_0ae9a163 ON public.cms_pagepermission USING btree (page_id);
 7   DROP INDEX public.cms_pagepermission_page_id_0ae9a163;
       public         postgres    false    219            
           1259    20287 #   cms_pagepermission_user_id_0c7d2b3c    INDEX     e   CREATE INDEX cms_pagepermission_user_id_0c7d2b3c ON public.cms_pagepermission USING btree (user_id);
 7   DROP INDEX public.cms_pagepermission_user_id_0c7d2b3c;
       public         postgres    false    219            
           1259    20288 #   cms_pageuser_created_by_id_8e9fbf83    INDEX     e   CREATE INDEX cms_pageuser_created_by_id_8e9fbf83 ON public.cms_pageuser USING btree (created_by_id);
 7   DROP INDEX public.cms_pageuser_created_by_id_8e9fbf83;
       public         postgres    false    221            
           1259    20289 (   cms_pageusergroup_created_by_id_7d57fa39    INDEX     o   CREATE INDEX cms_pageusergroup_created_by_id_7d57fa39 ON public.cms_pageusergroup USING btree (created_by_id);
 <   DROP INDEX public.cms_pageusergroup_created_by_id_7d57fa39;
       public         postgres    false    222            
           1259    20290    cms_placeholder_slot_0bc04d21    INDEX     Y   CREATE INDEX cms_placeholder_slot_0bc04d21 ON public.cms_placeholder USING btree (slot);
 1   DROP INDEX public.cms_placeholder_slot_0bc04d21;
       public         postgres    false    223            
           1259    20291 "   cms_placeholder_slot_0bc04d21_like    INDEX     r   CREATE INDEX cms_placeholder_slot_0bc04d21_like ON public.cms_placeholder USING btree (slot varchar_pattern_ops);
 6   DROP INDEX public.cms_placeholder_slot_0bc04d21_like;
       public         postgres    false    223            
           1259    20292 4   cms_placeholderreference_placeholder_ref_id_244759b1    INDEX     �   CREATE INDEX cms_placeholderreference_placeholder_ref_id_244759b1 ON public.cms_placeholderreference USING btree (placeholder_ref_id);
 H   DROP INDEX public.cms_placeholderreference_placeholder_ref_id_244759b1;
       public         postgres    false    225            
           1259    20293 '   cms_staticplaceholder_draft_id_5aee407b    INDEX     m   CREATE INDEX cms_staticplaceholder_draft_id_5aee407b ON public.cms_staticplaceholder USING btree (draft_id);
 ;   DROP INDEX public.cms_staticplaceholder_draft_id_5aee407b;
       public         postgres    false    226            
           1259    20294 (   cms_staticplaceholder_public_id_876aaa66    INDEX     o   CREATE INDEX cms_staticplaceholder_public_id_876aaa66 ON public.cms_staticplaceholder USING btree (public_id);
 <   DROP INDEX public.cms_staticplaceholder_public_id_876aaa66;
       public         postgres    false    226            
           1259    20295 &   cms_staticplaceholder_site_id_dc6a85b6    INDEX     k   CREATE INDEX cms_staticplaceholder_site_id_dc6a85b6 ON public.cms_staticplaceholder USING btree (site_id);
 :   DROP INDEX public.cms_staticplaceholder_site_id_dc6a85b6;
       public         postgres    false    226            
           1259    20296 $   cms_title_has_url_overwrite_ecf27bb9    INDEX     g   CREATE INDEX cms_title_has_url_overwrite_ecf27bb9 ON public.cms_title USING btree (has_url_overwrite);
 8   DROP INDEX public.cms_title_has_url_overwrite_ecf27bb9;
       public         postgres    false    228            
           1259    20297    cms_title_language_50a0dfa1    INDEX     U   CREATE INDEX cms_title_language_50a0dfa1 ON public.cms_title USING btree (language);
 /   DROP INDEX public.cms_title_language_50a0dfa1;
       public         postgres    false    228            
           1259    20298     cms_title_language_50a0dfa1_like    INDEX     n   CREATE INDEX cms_title_language_50a0dfa1_like ON public.cms_title USING btree (language varchar_pattern_ops);
 4   DROP INDEX public.cms_title_language_50a0dfa1_like;
       public         postgres    false    228            
           1259    20299    cms_title_page_id_5fade2a3    INDEX     S   CREATE INDEX cms_title_page_id_5fade2a3 ON public.cms_title USING btree (page_id);
 .   DROP INDEX public.cms_title_page_id_5fade2a3;
       public         postgres    false    228            
           1259    20300    cms_title_path_c484314c    INDEX     M   CREATE INDEX cms_title_path_c484314c ON public.cms_title USING btree (path);
 +   DROP INDEX public.cms_title_path_c484314c;
       public         postgres    false    228            
           1259    20301    cms_title_path_c484314c_like    INDEX     f   CREATE INDEX cms_title_path_c484314c_like ON public.cms_title USING btree (path varchar_pattern_ops);
 0   DROP INDEX public.cms_title_path_c484314c_like;
       public         postgres    false    228            !
           1259    20302 %   cms_title_publisher_is_draft_95874c88    INDEX     i   CREATE INDEX cms_title_publisher_is_draft_95874c88 ON public.cms_title USING btree (publisher_is_draft);
 9   DROP INDEX public.cms_title_publisher_is_draft_95874c88;
       public         postgres    false    228            $
           1259    20303 "   cms_title_publisher_state_9a952b0f    INDEX     c   CREATE INDEX cms_title_publisher_state_9a952b0f ON public.cms_title USING btree (publisher_state);
 6   DROP INDEX public.cms_title_publisher_state_9a952b0f;
       public         postgres    false    228            %
           1259    20304    cms_title_slug_4947d146    INDEX     M   CREATE INDEX cms_title_slug_4947d146 ON public.cms_title USING btree (slug);
 +   DROP INDEX public.cms_title_slug_4947d146;
       public         postgres    false    228            &
           1259    20305    cms_title_slug_4947d146_like    INDEX     f   CREATE INDEX cms_title_slug_4947d146_like ON public.cms_title USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.cms_title_slug_4947d146_like;
       public         postgres    false    228            '
           1259    20306    cms_treenode_parent_id_59bb02c4    INDEX     ]   CREATE INDEX cms_treenode_parent_id_59bb02c4 ON public.cms_treenode USING btree (parent_id);
 3   DROP INDEX public.cms_treenode_parent_id_59bb02c4;
       public         postgres    false    230            (
           1259    20307    cms_treenode_path_6eb22885_like    INDEX     l   CREATE INDEX cms_treenode_path_6eb22885_like ON public.cms_treenode USING btree (path varchar_pattern_ops);
 3   DROP INDEX public.cms_treenode_path_6eb22885_like;
       public         postgres    false    230            -
           1259    20308    cms_treenode_site_id_d3f46985    INDEX     Y   CREATE INDEX cms_treenode_site_id_d3f46985 ON public.cms_treenode USING btree (site_id);
 1   DROP INDEX public.cms_treenode_site_id_d3f46985;
       public         postgres    false    230            0
           1259    20309 &   cms_usersettings_clipboard_id_3ae17c19    INDEX     k   CREATE INDEX cms_usersettings_clipboard_id_3ae17c19 ON public.cms_usersettings USING btree (clipboard_id);
 :   DROP INDEX public.cms_usersettings_clipboard_id_3ae17c19;
       public         postgres    false    234            9
           1259    20310 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    239            <
           1259    20311 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    239            C
           1259    20312 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    245            F
           1259    20313 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    245            G
           1259    20314     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public         postgres    false    246            P
           1259    20315 (   djangocms_file_file_file_src_id_74ac14a5    INDEX     o   CREATE INDEX djangocms_file_file_file_src_id_74ac14a5 ON public.djangocms_file_file USING btree (file_src_id);
 <   DROP INDEX public.djangocms_file_file_file_src_id_74ac14a5;
       public         postgres    false    250            S
           1259    20316 ,   djangocms_file_folder_folder_src_id_9558406a    INDEX     w   CREATE INDEX djangocms_file_folder_folder_src_id_9558406a ON public.djangocms_file_folder USING btree (folder_src_id);
 @   DROP INDEX public.djangocms_file_folder_folder_src_id_9558406a;
       public         postgres    false    251            X
           1259    20317 4   djangocms_googlemap_googlemapmarker_icon_id_3b103213    INDEX     �   CREATE INDEX djangocms_googlemap_googlemapmarker_icon_id_3b103213 ON public.djangocms_googlemap_googlemapmarker USING btree (icon_id);
 H   DROP INDEX public.djangocms_googlemap_googlemapmarker_icon_id_3b103213;
       public         postgres    false    253            ]
           1259    20318 )   djangocms_link_link_page_link_id_adba1bc7    INDEX     u   CREATE INDEX djangocms_link_link_page_link_id_adba1bc7 ON public.djangocms_link_link USING btree (internal_link_id);
 =   DROP INDEX public.djangocms_link_link_page_link_id_adba1bc7;
       public         postgres    false    255            `
           1259    20319 /   djangocms_picture_picture_page_link_id_d5c782e0    INDEX     }   CREATE INDEX djangocms_picture_picture_page_link_id_d5c782e0 ON public.djangocms_picture_picture USING btree (link_page_id);
 C   DROP INDEX public.djangocms_picture_picture_page_link_id_d5c782e0;
       public         postgres    false    256            a
           1259    20320 -   djangocms_picture_picture_picture_id_f7d6711b    INDEX     y   CREATE INDEX djangocms_picture_picture_picture_id_f7d6711b ON public.djangocms_picture_picture USING btree (picture_id);
 A   DROP INDEX public.djangocms_picture_picture_picture_id_f7d6711b;
       public         postgres    false    256            d
           1259    20321 7   djangocms_picture_picture_thumbnail_options_id_59cf80d1    INDEX     �   CREATE INDEX djangocms_picture_picture_thumbnail_options_id_59cf80d1 ON public.djangocms_picture_picture USING btree (thumbnail_options_id);
 K   DROP INDEX public.djangocms_picture_picture_thumbnail_options_id_59cf80d1;
       public         postgres    false    256            e
           1259    20322 ,   djangocms_snippet_snippet_name_260f397b_like    INDEX     �   CREATE INDEX djangocms_snippet_snippet_name_260f397b_like ON public.djangocms_snippet_snippet USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.djangocms_snippet_snippet_name_260f397b_like;
       public         postgres    false    257            j
           1259    20323 ,   djangocms_snippet_snippet_slug_bd43cd96_like    INDEX     �   CREATE INDEX djangocms_snippet_snippet_slug_bd43cd96_like ON public.djangocms_snippet_snippet USING btree (slug varchar_pattern_ops);
 @   DROP INDEX public.djangocms_snippet_snippet_slug_bd43cd96_like;
       public         postgres    false    257            o
           1259    20324 0   djangocms_snippet_snippetptr_snippet_id_56b99614    INDEX        CREATE INDEX djangocms_snippet_snippetptr_snippet_id_56b99614 ON public.djangocms_snippet_snippetptr USING btree (snippet_id);
 D   DROP INDEX public.djangocms_snippet_snippetptr_snippet_id_56b99614;
       public         postgres    false    259            t
           1259    20325 .   djangocms_video_videoplayer_poster_id_07790e24    INDEX     {   CREATE INDEX djangocms_video_videoplayer_poster_id_07790e24 ON public.djangocms_video_videoplayer USING btree (poster_id);
 B   DROP INDEX public.djangocms_video_videoplayer_poster_id_07790e24;
       public         postgres    false    261            w
           1259    20326 3   djangocms_video_videosource_source_file_id_16f11167    INDEX     �   CREATE INDEX djangocms_video_videosource_source_file_id_16f11167 ON public.djangocms_video_videosource USING btree (source_file_id);
 G   DROP INDEX public.djangocms_video_videosource_source_file_id_16f11167;
       public         postgres    false    262            z
           1259    20327 *   djangocms_video_videotrack_src_id_e5a015d8    INDEX     s   CREATE INDEX djangocms_video_videotrack_src_id_e5a015d8 ON public.djangocms_video_videotrack USING btree (src_id);
 >   DROP INDEX public.djangocms_video_videotrack_src_id_e5a015d8;
       public         postgres    false    263            {
           1259    20328 $   easy_thumbnails_source_name_5fe0edc6    INDEX     g   CREATE INDEX easy_thumbnails_source_name_5fe0edc6 ON public.easy_thumbnails_source USING btree (name);
 8   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6;
       public         postgres    false    264            |
           1259    20329 )   easy_thumbnails_source_name_5fe0edc6_like    INDEX     �   CREATE INDEX easy_thumbnails_source_name_5fe0edc6_like ON public.easy_thumbnails_source USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6_like;
       public         postgres    false    264            
           1259    20330 ,   easy_thumbnails_source_storage_hash_946cbcc9    INDEX     w   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9 ON public.easy_thumbnails_source USING btree (storage_hash);
 @   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9;
       public         postgres    false    264            �
           1259    20331 1   easy_thumbnails_source_storage_hash_946cbcc9_like    INDEX     �   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9_like ON public.easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);
 E   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9_like;
       public         postgres    false    264            �
           1259    20332 '   easy_thumbnails_thumbnail_name_b5882c31    INDEX     m   CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31 ON public.easy_thumbnails_thumbnail USING btree (name);
 ;   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31;
       public         postgres    false    266            �
           1259    20333 ,   easy_thumbnails_thumbnail_name_b5882c31_like    INDEX     �   CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31_like ON public.easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31_like;
       public         postgres    false    266            �
           1259    20334 ,   easy_thumbnails_thumbnail_source_id_5b57bc77    INDEX     w   CREATE INDEX easy_thumbnails_thumbnail_source_id_5b57bc77 ON public.easy_thumbnails_thumbnail USING btree (source_id);
 @   DROP INDEX public.easy_thumbnails_thumbnail_source_id_5b57bc77;
       public         postgres    false    266            �
           1259    20335 /   easy_thumbnails_thumbnail_storage_hash_f1435f49    INDEX     }   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49 ON public.easy_thumbnails_thumbnail USING btree (storage_hash);
 C   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49;
       public         postgres    false    266            �
           1259    20336 4   easy_thumbnails_thumbnail_storage_hash_f1435f49_like    INDEX     �   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49_like ON public.easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);
 H   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49_like;
       public         postgres    false    266            �
           1259    20337     filer_clipboard_user_id_b52ff0bc    INDEX     _   CREATE INDEX filer_clipboard_user_id_b52ff0bc ON public.filer_clipboard USING btree (user_id);
 4   DROP INDEX public.filer_clipboard_user_id_b52ff0bc;
       public         postgres    false    270            �
           1259    20338 )   filer_clipboarditem_clipboard_id_7a76518b    INDEX     q   CREATE INDEX filer_clipboarditem_clipboard_id_7a76518b ON public.filer_clipboarditem USING btree (clipboard_id);
 =   DROP INDEX public.filer_clipboarditem_clipboard_id_7a76518b;
       public         postgres    false    272            �
           1259    20339 $   filer_clipboarditem_file_id_06196f80    INDEX     g   CREATE INDEX filer_clipboarditem_file_id_06196f80 ON public.filer_clipboarditem USING btree (file_id);
 8   DROP INDEX public.filer_clipboarditem_file_id_06196f80;
       public         postgres    false    272            �
           1259    20340    filer_file_folder_id_af803bbb    INDEX     Y   CREATE INDEX filer_file_folder_id_af803bbb ON public.filer_file USING btree (folder_id);
 1   DROP INDEX public.filer_file_folder_id_af803bbb;
       public         postgres    false    274            �
           1259    20341    filer_file_owner_id_b9e32671    INDEX     W   CREATE INDEX filer_file_owner_id_b9e32671 ON public.filer_file USING btree (owner_id);
 0   DROP INDEX public.filer_file_owner_id_b9e32671;
       public         postgres    false    274            �
           1259    20342 (   filer_file_polymorphic_ctype_id_f44903c1    INDEX     o   CREATE INDEX filer_file_polymorphic_ctype_id_f44903c1 ON public.filer_file USING btree (polymorphic_ctype_id);
 <   DROP INDEX public.filer_file_polymorphic_ctype_id_f44903c1;
       public         postgres    false    274            �
           1259    20343    filer_folder_level_b631d28a    INDEX     U   CREATE INDEX filer_folder_level_b631d28a ON public.filer_folder USING btree (level);
 /   DROP INDEX public.filer_folder_level_b631d28a;
       public         postgres    false    276            �
           1259    20344    filer_folder_lft_2c2b69f1    INDEX     Q   CREATE INDEX filer_folder_lft_2c2b69f1 ON public.filer_folder USING btree (lft);
 -   DROP INDEX public.filer_folder_lft_2c2b69f1;
       public         postgres    false    276            �
           1259    20345    filer_folder_owner_id_be530fb4    INDEX     [   CREATE INDEX filer_folder_owner_id_be530fb4 ON public.filer_folder USING btree (owner_id);
 2   DROP INDEX public.filer_folder_owner_id_be530fb4;
       public         postgres    false    276            �
           1259    20346    filer_folder_parent_id_308aecda    INDEX     ]   CREATE INDEX filer_folder_parent_id_308aecda ON public.filer_folder USING btree (parent_id);
 3   DROP INDEX public.filer_folder_parent_id_308aecda;
       public         postgres    false    276            �
           1259    20347    filer_folder_rght_34946267    INDEX     S   CREATE INDEX filer_folder_rght_34946267 ON public.filer_folder USING btree (rght);
 .   DROP INDEX public.filer_folder_rght_34946267;
       public         postgres    false    276            �
           1259    20348    filer_folder_tree_id_b016223c    INDEX     Y   CREATE INDEX filer_folder_tree_id_b016223c ON public.filer_folder USING btree (tree_id);
 1   DROP INDEX public.filer_folder_tree_id_b016223c;
       public         postgres    false    276            �
           1259    20349 )   filer_folderpermission_folder_id_5d02f1da    INDEX     q   CREATE INDEX filer_folderpermission_folder_id_5d02f1da ON public.filer_folderpermission USING btree (folder_id);
 =   DROP INDEX public.filer_folderpermission_folder_id_5d02f1da;
       public         postgres    false    278            �
           1259    20350 (   filer_folderpermission_group_id_8901bafa    INDEX     o   CREATE INDEX filer_folderpermission_group_id_8901bafa ON public.filer_folderpermission USING btree (group_id);
 <   DROP INDEX public.filer_folderpermission_group_id_8901bafa;
       public         postgres    false    278            �
           1259    20351 '   filer_folderpermission_user_id_7673d4b6    INDEX     m   CREATE INDEX filer_folderpermission_user_id_7673d4b6 ON public.filer_folderpermission USING btree (user_id);
 ;   DROP INDEX public.filer_folderpermission_user_id_7673d4b6;
       public         postgres    false    278            �
           1259    20352 0   portfolio_app_demourlitem_project_id_id_d316d9c0    INDEX        CREATE INDEX portfolio_app_demourlitem_project_id_id_d316d9c0 ON public.portfolio_app_demourlitem USING btree (project_id_id);
 D   DROP INDEX public.portfolio_app_demourlitem_project_id_id_d316d9c0;
       public         postgres    false    287            �
           1259    20353 /   portfolio_app_mediaasset_project_id_id_2bd68af0    INDEX     }   CREATE INDEX portfolio_app_mediaasset_project_id_id_2bd68af0 ON public.portfolio_app_mediaasset USING btree (project_id_id);
 C   DROP INDEX public.portfolio_app_mediaasset_project_id_id_2bd68af0;
       public         postgres    false    289            �
           1259    20354 )   portfolio_app_project_heading_id_e6c3bfc9    INDEX     r   CREATE INDEX portfolio_app_project_heading_id_e6c3bfc9 ON public.portfolio_app_project USING btree (use_case_id);
 =   DROP INDEX public.portfolio_app_project_heading_id_e6c3bfc9;
       public         postgres    false    291            �
           1259    20355 #   portfolio_app_project_slug_c7455a3e    INDEX     e   CREATE INDEX portfolio_app_project_slug_c7455a3e ON public.portfolio_app_project USING btree (slug);
 7   DROP INDEX public.portfolio_app_project_slug_c7455a3e;
       public         postgres    false    291            �
           1259    20356 (   portfolio_app_project_slug_c7455a3e_like    INDEX     ~   CREATE INDEX portfolio_app_project_slug_c7455a3e_like ON public.portfolio_app_project USING btree (slug varchar_pattern_ops);
 <   DROP INDEX public.portfolio_app_project_slug_c7455a3e_like;
       public         postgres    false    291            �
           1259    20357 .   portfolio_app_project_tags_project_id_74c3a22f    INDEX     {   CREATE INDEX portfolio_app_project_tags_project_id_74c3a22f ON public.portfolio_app_project_tags USING btree (project_id);
 B   DROP INDEX public.portfolio_app_project_tags_project_id_74c3a22f;
       public         postgres    false    292            �
           1259    20358 *   portfolio_app_project_tags_tag_id_023e820f    INDEX     s   CREATE INDEX portfolio_app_project_tags_tag_id_023e820f ON public.portfolio_app_project_tags USING btree (tag_id);
 >   DROP INDEX public.portfolio_app_project_tags_tag_id_023e820f;
       public         postgres    false    292            �
           2606    20359 O   about_me_aboutme about_me_aboutme_cmsplugin_ptr_id_d3ccaa3a_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_me_aboutme
    ADD CONSTRAINT about_me_aboutme_cmsplugin_ptr_id_d3ccaa3a_fk_cms_cmsplugin_id FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.about_me_aboutme DROP CONSTRAINT about_me_aboutme_cmsplugin_ptr_id_d3ccaa3a_fk_cms_cmsplugin_id;
       public       postgres    false    2518    185    209            �
           2606    20364 P   about_me_skillitem about_me_skillitem_skill_plugin_item_id_13d09185_fk_about_me_    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_me_skillitem
    ADD CONSTRAINT about_me_skillitem_skill_plugin_item_id_13d09185_fk_about_me_ FOREIGN KEY (skill_plugin_item_id) REFERENCES public.about_me_skillplugin(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.about_me_skillitem DROP CONSTRAINT about_me_skillitem_skill_plugin_item_id_13d09185_fk_about_me_;
       public       postgres    false    186    2461    188            �
           2606    20369 P   about_me_skillplugin about_me_skillplugin_cmsplugin_ptr_id_847fd6c7_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_me_skillplugin
    ADD CONSTRAINT about_me_skillplugin_cmsplugin_ptr_id_847fd6c7_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.about_me_skillplugin DROP CONSTRAINT about_me_skillplugin_cmsplugin_ptr_id_847fd6c7_fk_cms_cmspl;
       public       postgres    false    209    188    2518            �
           2606    20374 V   about_me_statisticitem about_me_statisticit_statistic_plugin_id__d6a86d36_fk_about_me_    FK CONSTRAINT       ALTER TABLE ONLY public.about_me_statisticitem
    ADD CONSTRAINT about_me_statisticit_statistic_plugin_id__d6a86d36_fk_about_me_ FOREIGN KEY (statistic_plugin_id_id) REFERENCES public.about_me_statisticplugin(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.about_me_statisticitem DROP CONSTRAINT about_me_statisticit_statistic_plugin_id__d6a86d36_fk_about_me_;
       public       postgres    false    189    2466    191            �
           2606    20379 T   about_me_statisticplugin about_me_statisticpl_cmsplugin_ptr_id_ff905e5d_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_me_statisticplugin
    ADD CONSTRAINT about_me_statisticpl_cmsplugin_ptr_id_ff905e5d_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.about_me_statisticplugin DROP CONSTRAINT about_me_statisticpl_cmsplugin_ptr_id_ff905e5d_fk_cms_cmspl;
       public       postgres    false    191    209    2518            �
           2606    20384 S   about_me_timelineheader about_me_timelinehea_cmsplugin_ptr_id_640041e2_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_me_timelineheader
    ADD CONSTRAINT about_me_timelinehea_cmsplugin_ptr_id_640041e2_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.about_me_timelineheader DROP CONSTRAINT about_me_timelinehea_cmsplugin_ptr_id_640041e2_fk_cms_cmspl;
       public       postgres    false    209    194    2518            -           2606    22102 X   addons_plugin_calendlyplugin addons_plugin_calend_cmsplugin_ptr_id_8d374e28_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.addons_plugin_calendlyplugin
    ADD CONSTRAINT addons_plugin_calend_cmsplugin_ptr_id_8d374e28_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.addons_plugin_calendlyplugin DROP CONSTRAINT addons_plugin_calend_cmsplugin_ptr_id_8d374e28_fk_cms_cmspl;
       public       postgres    false    2518    209    296            ,           2606    22089 T   addons_plugin_tawkplugin addons_plugin_tawkpl_cmsplugin_ptr_id_9e425f7b_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.addons_plugin_tawkplugin
    ADD CONSTRAINT addons_plugin_tawkpl_cmsplugin_ptr_id_9e425f7b_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.addons_plugin_tawkplugin DROP CONSTRAINT addons_plugin_tawkpl_cmsplugin_ptr_id_9e425f7b_fk_cms_cmspl;
       public       postgres    false    209    2518    295            �
           2606    20389 L   aldryn_style_style aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.aldryn_style_style
    ADD CONSTRAINT aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.aldryn_style_style DROP CONSTRAINT aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl;
       public       postgres    false    2518    209    195            �
           2606    20394 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    2489    198    200            �
           2606    20399 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    198    196    2478            �
           2606    20404 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    2624    200    241            �
           2606    20409 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    203    2478    196            �
           2606    20414 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    2491    202    203            �
           2606    20419 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    206    2489    200            �
           2606    20424 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    2491    202    206            �
           2606    20429 T   cms_aliaspluginmodel cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place FOREIGN KEY (alias_placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place;
       public       postgres    false    2570    223    208            �
           2606    20434 P   cms_aliaspluginmodel cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl;
       public       postgres    false    2518    209    208            �
           2606    20439 P   cms_aliaspluginmodel cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id FOREIGN KEY (plugin_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id;
       public       postgres    false    2518    209    208            �
           2606    20444 B   cms_cmsplugin cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id FOREIGN KEY (parent_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id;
       public       postgres    false    209    2518    209            �
           2606    20449 I   cms_cmsplugin cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id FOREIGN KEY (placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id;
       public       postgres    false    2570    209    223            �
           2606    20454 ^   cms_globalpagepermission_sites cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa FOREIGN KEY (globalpagepermission_id) REFERENCES public.cms_globalpagepermission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa;
       public       postgres    false    213    2524    211            �
           2606    20459 Q   cms_globalpagepermission_sites cms_globalpagepermis_site_id_00460b53_fk_django_si    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_site_id_00460b53_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermis_site_id_00460b53_fk_django_si;
       public       postgres    false    213    246    2635            �
           2606    20464 T   cms_globalpagepermission cms_globalpagepermission_group_id_991b4733_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_group_id_991b4733_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_group_id_991b4733_fk_auth_group_id;
       public       postgres    false    196    211    2478            �
           2606    20469 E   cms_globalpagepermission cms_globalpagepermission_user_id_a227cee1_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_user_id_a227cee1_fk FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_user_id_a227cee1_fk;
       public       postgres    false    202    211    2491            �
           2606    20474 5   cms_page cms_page_node_id_c87b85a9_fk_cms_treenode_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_node_id_c87b85a9_fk_cms_treenode_id FOREIGN KEY (node_id) REFERENCES public.cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_node_id_c87b85a9_fk_cms_treenode_id;
       public       postgres    false    230    215    2604            �
           2606    20479 O   cms_page_placeholders cms_page_placeholder_placeholder_id_6b120886_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholder_placeholder_id_6b120886_fk_cms_place FOREIGN KEY (placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholder_placeholder_id_6b120886_fk_cms_place;
       public       postgres    false    2570    223    217            �
           2606    20484 K   cms_page_placeholders cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id;
       public       postgres    false    215    217    2543            �
           2606    20489 =   cms_page cms_page_publisher_public_id_d619fca0_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_d619fca0_fk_cms_page_id FOREIGN KEY (publisher_public_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_publisher_public_id_d619fca0_fk_cms_page_id;
       public       postgres    false    2543    215    215            �
           2606    20494 H   cms_pagepermission cms_pagepermission_group_id_af5af193_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_group_id_af5af193_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_group_id_af5af193_fk_auth_group_id;
       public       postgres    false    2478    219    196            �
           2606    20499 E   cms_pagepermission cms_pagepermission_page_id_0ae9a163_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_page_id_0ae9a163_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_page_id_0ae9a163_fk_cms_page_id;
       public       postgres    false    215    219    2543            �
           2606    20504 9   cms_pagepermission cms_pagepermission_user_id_0c7d2b3c_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_user_id_0c7d2b3c_fk FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_user_id_0c7d2b3c_fk;
       public       postgres    false    202    219    2491            �
           2606    20509 3   cms_pageuser cms_pageuser_created_by_id_8e9fbf83_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_created_by_id_8e9fbf83_fk FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_created_by_id_8e9fbf83_fk;
       public       postgres    false    2491    221    202            �
           2606    20514 1   cms_pageuser cms_pageuser_user_ptr_id_b3d65592_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_user_ptr_id_b3d65592_fk FOREIGN KEY (user_ptr_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_user_ptr_id_b3d65592_fk;
       public       postgres    false    202    2491    221            �
           2606    20519 =   cms_pageusergroup cms_pageusergroup_created_by_id_7d57fa39_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_created_by_id_7d57fa39_fk FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_created_by_id_7d57fa39_fk;
       public       postgres    false    202    2491    222            �
           2606    20524 J   cms_pageusergroup cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id FOREIGN KEY (group_ptr_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id;
       public       postgres    false    222    196    2478            �
           2606    20529 T   cms_placeholderreference cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl;
       public       postgres    false    225    209    2518            �
           2606    20534 V   cms_placeholderreference cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place FOREIGN KEY (placeholder_ref_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place;
       public       postgres    false    225    223    2570            �
           2606    20539 S   cms_staticplaceholder cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id FOREIGN KEY (draft_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id;
       public       postgres    false    226    223    2570            �
           2606    20544 T   cms_staticplaceholder cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id FOREIGN KEY (public_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id;
       public       postgres    false    226    223    2570            �
           2606    20549 N   cms_staticplaceholder cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id;
       public       postgres    false    226    246    2635            �
           2606    20554 3   cms_title cms_title_page_id_5fade2a3_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_page_id_5fade2a3_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_page_id_5fade2a3_fk_cms_page_id;
       public       postgres    false    228    215    2543            �
           2606    20559 @   cms_title cms_title_publisher_public_id_003a2702_fk_cms_title_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_003a2702_fk_cms_title_id FOREIGN KEY (publisher_public_id) REFERENCES public.cms_title(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_publisher_public_id_003a2702_fk_cms_title_id;
       public       postgres    false    228    228    2592            �
           2606    20564 ?   cms_treenode cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id FOREIGN KEY (parent_id) REFERENCES public.cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id;
       public       postgres    false    230    230    2604            �
           2606    20569 <   cms_treenode cms_treenode_site_id_d3f46985_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_site_id_d3f46985_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_site_id_d3f46985_fk_django_site_id;
       public       postgres    false    230    2635    246            �
           2606    20574 M   cms_usersettings cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id FOREIGN KEY (clipboard_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id;
       public       postgres    false    234    2570    223            �
           2606    20579 B   cms_usersettings cms_usersettings_user_id_09633b2d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_09633b2d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_user_id_09633b2d_fk_auth_user_id;
       public       postgres    false    234    202    2491            �
           2606    20584 P   contact_me_contactme contact_me_contactme_cmsplugin_ptr_id_30e8d4d5_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_me_contactme
    ADD CONSTRAINT contact_me_contactme_cmsplugin_ptr_id_30e8d4d5_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.contact_me_contactme DROP CONSTRAINT contact_me_contactme_cmsplugin_ptr_id_30e8d4d5_fk_cms_cmspl;
       public       postgres    false    236    209    2518            �
           2606    20589 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    239    241    2624            �
           2606    20594 5   django_admin_log django_admin_log_user_id_c564eba6_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk;
       public       postgres    false    239    202    2491            �
           2606    20599 S   djangocms_column_column djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_column_column
    ADD CONSTRAINT djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.djangocms_column_column DROP CONSTRAINT djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl;
       public       postgres    false    248    209    2518            �
           2606    20604 Y   djangocms_column_multicolumns djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_column_multicolumns
    ADD CONSTRAINT djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_column_multicolumns DROP CONSTRAINT djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl;
       public       postgres    false    249    209    2518            �
           2606    20609 N   djangocms_file_file djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl;
       public       postgres    false    250    209    2518            �
           2606    20614 M   djangocms_file_file djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id FOREIGN KEY (file_src_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id;
       public       postgres    false    250    274    2714                        2606    20619 Q   djangocms_file_folder djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl;
       public       postgres    false    251    209    2518                       2606    20624 U   djangocms_file_folder djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id FOREIGN KEY (folder_src_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id;
       public       postgres    false    251    276    2723                       2606    20629 _   djangocms_googlemap_googlemapmarker djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl;
       public       postgres    false    253    209    2518                       2606    20634 Y   djangocms_googlemap_googlemap djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemap DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl;
       public       postgres    false    2518    252    209                       2606    20639 ^   djangocms_googlemap_googlemaproute djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl;
       public       postgres    false    254    209    2518                       2606    20644 V   djangocms_googlemap_googlemapmarker djangocms_googlemap__icon_id_3b103213_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__icon_id_3b103213_fk_filer_ima FOREIGN KEY (icon_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap__icon_id_3b103213_fk_filer_ima;
       public       postgres    false    253    2732    280                       2606    20649 N   djangocms_link_link djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl;
       public       postgres    false    209    2518    255                       2606    20654 P   djangocms_link_link djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id FOREIGN KEY (internal_link_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id;
       public       postgres    false    2543    215    255                       2606    20659 U   djangocms_picture_picture djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl;
       public       postgres    false    256    2518    209            	           2606    20664 O   djangocms_picture_picture djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima FOREIGN KEY (picture_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima;
       public       postgres    false    2732    256    280            
           2606    20669 Y   djangocms_picture_picture djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu FOREIGN KEY (thumbnail_options_id) REFERENCES public.filer_thumbnailoption(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu;
       public       postgres    false    2734    281    256                       2606    20674 X   djangocms_picture_picture djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id FOREIGN KEY (link_page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id;
       public       postgres    false    256    2543    215                       2606    20679 X   djangocms_snippet_snippetptr djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl;
       public       postgres    false    2518    209    259                       2606    20684 P   djangocms_snippet_snippetptr djangocms_snippet_snippetptr_snippet_id_56b99614_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_snippetptr_snippet_id_56b99614_fk FOREIGN KEY (snippet_id) REFERENCES public.djangocms_snippet_snippet(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_snippetptr_snippet_id_56b99614_fk;
       public       postgres    false    257    2665    259                       2606    20689 X   djangocms_text_ckeditor_text djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_text_ckeditor_text DROP CONSTRAINT djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl;
       public       postgres    false    260    2518    209                       2606    20694 W   djangocms_video_videoplayer djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl;
       public       postgres    false    2518    209    261                       2606    20699 W   djangocms_video_videosource djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl;
       public       postgres    false    2518    262    209                       2606    20704 V   djangocms_video_videotrack djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl;
       public       postgres    false    263    2518    209                       2606    20709 P   djangocms_video_videoplayer djangocms_video_vide_poster_id_07790e24_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_poster_id_07790e24_fk_filer_ima FOREIGN KEY (poster_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_vide_poster_id_07790e24_fk_filer_ima;
       public       postgres    false    2732    261    280                       2606    20714 U   djangocms_video_videosource djangocms_video_vide_source_file_id_16f11167_fk_filer_fil    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_source_file_id_16f11167_fk_filer_fil FOREIGN KEY (source_file_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_vide_source_file_id_16f11167_fk_filer_fil;
       public       postgres    false    262    274    2714                       2606    20719 V   djangocms_video_videotrack djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id FOREIGN KEY (src_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id;
       public       postgres    false    274    263    2714                       2606    20724 N   easy_thumbnails_thumbnail easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum    FK CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum FOREIGN KEY (source_id) REFERENCES public.easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum;
       public       postgres    false    266    264    2686                       2606    20729 [   easy_thumbnails_thumbnaildimensions easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum    FK CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum FOREIGN KEY (thumbnail_id) REFERENCES public.easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum;
       public       postgres    false    268    266    2696                       2606    20734 @   filer_clipboard filer_clipboard_user_id_b52ff0bc_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id;
       public       postgres    false    202    2491    270                       2606    20739 S   filer_clipboarditem filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id FOREIGN KEY (clipboard_id) REFERENCES public.filer_clipboard(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id;
       public       postgres    false    270    272    2705                       2606    20744 I   filer_clipboarditem filer_clipboarditem_file_id_06196f80_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id FOREIGN KEY (file_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id;
       public       postgres    false    272    274    2714                       2606    20749 ;   filer_file filer_file_folder_id_af803bbb_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id;
       public       postgres    false    2723    274    276                       2606    20754 7   filer_file filer_file_owner_id_b9e32671_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id;
       public       postgres    false    202    274    2491                       2606    20759 @   filer_file filer_file_polymorphic_ctype_id_f44903c1_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co FOREIGN KEY (polymorphic_ctype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co;
       public       postgres    false    241    274    2624                       2606    20764 ;   filer_folder filer_folder_owner_id_be530fb4_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id;
       public       postgres    false    2491    202    276                       2606    20769 ?   filer_folder filer_folder_parent_id_308aecda_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id FOREIGN KEY (parent_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id;
       public       postgres    false    276    276    2723                       2606    20774 S   filer_folderpermission filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id;
       public       postgres    false    2723    278    276                        2606    20779 P   filer_folderpermission filer_folderpermission_group_id_8901bafa_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id;
       public       postgres    false    278    196    2478            !           2606    20784 N   filer_folderpermission filer_folderpermission_user_id_7673d4b6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id;
       public       postgres    false    2491    278    202            "           2606    20789 =   filer_image filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id FOREIGN KEY (file_ptr_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id;
       public       postgres    false    2714    274    280            #           2606    20794 L   hero_area_heroarea hero_area_heroarea_cmsplugin_ptr_id_29df94d5_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.hero_area_heroarea
    ADD CONSTRAINT hero_area_heroarea_cmsplugin_ptr_id_29df94d5_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.hero_area_heroarea DROP CONSTRAINT hero_area_heroarea_cmsplugin_ptr_id_29df94d5_fk_cms_cmspl;
       public       postgres    false    209    283    2518            $           2606    20799 S   hero_area_shortheroarea hero_area_shortheroa_cmsplugin_ptr_id_f4eccf3c_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.hero_area_shortheroarea
    ADD CONSTRAINT hero_area_shortheroa_cmsplugin_ptr_id_f4eccf3c_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.hero_area_shortheroarea DROP CONSTRAINT hero_area_shortheroa_cmsplugin_ptr_id_f4eccf3c_fk_cms_cmspl;
       public       postgres    false    284    2518    209            %           2606    20804 R   portfolio_app_demourlitem portfolio_app_demour_project_id_id_d316d9c0_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_demourlitem
    ADD CONSTRAINT portfolio_app_demour_project_id_id_d316d9c0_fk_portfolio FOREIGN KEY (project_id_id) REFERENCES public.portfolio_app_project(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.portfolio_app_demourlitem DROP CONSTRAINT portfolio_app_demour_project_id_id_d316d9c0_fk_portfolio;
       public       postgres    false    291    287    2749            &           2606    20809 Q   portfolio_app_mediaasset portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_mediaasset
    ADD CONSTRAINT portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio FOREIGN KEY (project_id_id) REFERENCES public.portfolio_app_project(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_mediaasset DROP CONSTRAINT portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio;
       public       postgres    false    291    289    2749            '           2606    20814 Q   portfolio_app_project portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project
    ADD CONSTRAINT portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_project DROP CONSTRAINT portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl;
       public       postgres    false    2518    209    291            )           2606    20819 P   portfolio_app_project_tags portfolio_app_projec_project_id_74c3a22f_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_projec_project_id_74c3a22f_fk_portfolio FOREIGN KEY (project_id) REFERENCES public.portfolio_app_project(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_projec_project_id_74c3a22f_fk_portfolio;
       public       postgres    false    292    2749    291            *           2606    20824 L   portfolio_app_project_tags portfolio_app_projec_tag_id_023e820f_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_projec_tag_id_023e820f_fk_portfolio FOREIGN KEY (tag_id) REFERENCES public.portfolio_app_tag(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_projec_tag_id_023e820f_fk_portfolio;
       public       postgres    false    2759    294    292            (           2606    20829 L   portfolio_app_project portfolio_app_projec_use_case_id_1f4e58c6_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project
    ADD CONSTRAINT portfolio_app_projec_use_case_id_1f4e58c6_fk_cms_place FOREIGN KEY (use_case_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.portfolio_app_project DROP CONSTRAINT portfolio_app_projec_use_case_id_1f4e58c6_fk_cms_place;
       public       postgres    false    2570    223    291            +           2606    20834 Q   portfolio_app_tag portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_tag
    ADD CONSTRAINT portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_tag DROP CONSTRAINT portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id;
       public       postgres    false    2518    294    209            �   �  x��R�N�@=�_17@J�h�!)�"��Tp�ec���N0_߷I{�=�bYog�y�n�G�X؛��R�趽[�92X�z*yύ���`c��5OZѺ�,��}�� +��*�gZ��
����ʫ��b�샍}jLTޙhUh�E-��'#%9E{���'�����ß���8�H�YG9%�?;�7	�c��<N�@)Į���u�{>�^C����I�w!i1�`����kL�R%�8�uz/ ��.��4�+Qik�7���j	7��©�T��pt�^�O������z��.�%���c��&��*�6�)�ɕh��@����Ǜ-6c*M�Mo�������85pZp�'���w#ϡs<�`�t�����������!3Cf�-3W��V�H�<�e��_�R�<��M�T�E󶬲��zHΐ��HΏ<˲_e7�      �   �   x�m��
�0Eד��H1}$鲈�RQn�͢k���_o�QI�n&̙a8�p��dSHX��R����6���͵�A�4����aq�m
E��ng�twZ�*�r�Jm���	�����a4�)�t�],'��=��1|=�`2qM���� ��254B�yN��:�B����b�:Z��� r�Ğ�d��8����-�9���ƹ�}/1B���R#��Ft$9��}h4�NN!c��ɑ�      �   i   x�}�I�0��+|/lP�-�-��;� R���pH{8:��6��,��fb����Y�i�i��ȹr���q+�,������o���{��ZGx@�������AD/��0R      �   �   x�u�A
�0E�3��	�iӮ��[7RG�Ʀ؀�w� �l����+��/wO��OSZ@נ����C�d8ip�5J�v~���g����>���H��~�j�u敬
f隍[�ݗw�.�K�r���˅�+e�O_Ai�Zn���qg�      �   o   x�u�A
�0��+|/6�Rd�zK���:H�����a��`TlU��#��tSߞ��flA5�Ee�)x��ԕ/��=����ޓ�4z`~�7*�u�(�<�v���?��MD^v�08      �   �  x����n�0E��Wp_��pH�ҮM���M�]7�CKb2�(���n��j%�a@	w�{0GrӔ�]]��K�W��ߝ�镋;�˻�m��V��_�f��?����!T;��`f\�R��P,	h>p=H�Q\+�R�~��tF�9$u��m1�o�[ֹ��}�6~�!a?l��vc£m��mX�A�*@J3#�"�a��)
��v��\ۥ]��晤�ھ�-�z�!ɭ�.44�o���Ͼr��@��m]U�4OV#ͨ���&��we�K ���U]ӗ~Z�݋��7�@^Υ�qAy^ \���GB�O2	�m�O�C�
�1?�=H���]�Q+=vH�96��M�(�0呕S���S�i>�/P�wk��/�|�N!��9�~�,��%u���Ez�qJ�K��)�i��{>_������C
0��"L6���p�������Y�e ݗ�+      �   �   x�}�;�0D���Q��]o�v�[� �@�W@��I$�8H����x��}��.�	�Q�XZ�̚�}�@lE��*9�[H1�D�n8]���i�}�5#f�c��$��
7�b�v�-�,4v��c/�UK4�ڬ9���QR�U�hfi�a^`�_S-��
�
W>X�D�Q���O���OU������-�f
L�Z{�����(         m   x���=�0�99E�����]�@�D,Ŧj�Vܞ^����٫�cLS�.e��&Q׶C�͕57bj�6���q'����2�V��˖������L���������A�         Z   x�340�����P�)-UI,���())(���O�MJM�+
���&�%�$'����'�������$�X觤�%��pRǠ=... ^�/�      �      x������ � �      �      x������ � �      �      x������ � �      �   K  x�uYM��]ۿ"�y�Q��x=ҬG�ݓZ��7�i'�l����~���:�^��s� � �E�G�8�������.�k��:dEf�o���/��6��m�ʌJo��W���^�a���:Ώ��L�-�Z�@i+`��ӰEX�il�{�-��ծc�;?�>���#�Y�$��o��ʒ5�y�3/��y���	P������_��6<������u�!ɋJ���O�׺�� �x%�@�}r"���0ܷ��t��]z��w7ͷ�Q�|egס)�b^t�G�>=�<�N5���"s܆��1��y	�9������@�� uX��zxN�����W��R /XJ@�Jp�`Y� >y�4��u�z���h���p�<k=�D֕r;-o��2nu�j�������~���l��]�����B������m�Z��m�춡܏�����E؃\+� �%��_Rms%����>���s�!���u���o��L~>��:,��۪7�zSUyuƹ����0�d���m��d����C��6�����o��?YQ{i�>kزR	"0l��d�F�(��d�1Q7���)b^�Ȋy�8慽�6�=�����XQ�ᰣ.B�9��8,Ïas�hcE�.o�o�!?U��(���M��Ua��(+�t50r���3��H�p��'�ђ�Õg���NNW���x Ka\{<�{d^|�Y�m����qh���&���J��H3�)0�]�L����,���IIg,�%��pi�c���νG�11\�.��c8|_YI�����p����
�)�����ҷ��[V�Y��y�-��IX�	�Z�A8D���4>��~�f%Y��'�d ���2�������u��%�`~jvexF��H��O�E)����l������O`�R�}�VܑC����I�P�n�Afp�Q`�%=1��O���m^��ᶥm��=��+߸2?�塶�1_vJ�:�ϰH�<���R�Rah�l��KUE��
���Xc`�<�;$L�m�x���8���^�tH�8��Vr�%6&���e�Du�ͯ��]_��wx�y�k�³̣��bT�NHVU8ywڝ��w��a[l<޼�v��:އ��&֬�QH�2����� =�-��-Ģ��(�^w��켮d Q~@0>5��(- 0�`X8��iid�ٺ �γ��"l	��D�3Zm���8v��V�EqL̶B�-�"��-�2�,�A�-�*�'C�-�`�����*rJ��T�=J��>6(IzD�F���j2<.�J.��o� �� ��~?��sز�Lo�����)�����)���Vi�����ٌ[��o�K�f��2ꚰ*9Ϸ�|��3���(b�9I�J�B�1?	h�J(t����-���k�BἨ���/��ž:E�Ezj�'ռl7�A5��E��F�g�:�X#�c�B6�s��}�}�q���L0��2d�����s������q[`�&�k=��\M��z<���lK���s��"Y�j<X�|�j�x-E��H���{͙][0�`���3� �'P�ӏa��2�YC�j�lP� �>L��u��lK�n���}�N����&��X5L��	Ϊ�����(E��t�{5UH�ب{;��輈b�I`鄈b�;�8Iޔ�����H�h�B�<�k�X�gs^?�i��e,�Sb�hXq�M�(#=4�MPC�I�j%��S��*v��}��a)���&q�dK�8*�b���e�eo�p͉3m��a`~%%���K����W�
ߧ��cs�.h��>O��	��U�Y�8a�L�����J���i"�S�@�?4��@�g
:��}XW�@oɣ�h `�
%�V@y�Pej��}�iC��[rh41��1m��YR��
�AJ���:��~]��-y.L�E��� ���opV �gF�K���?�� �MT40e��g��+�<C<P���[��#���E��z��m� �f'�|����c^6ut�l�6��4创F4tԔ&��5�_��ym�s��S�kq* �D�O83��3���N/�4<�ӗ'�83Na� ;�!�49��#����́����<���Ѥ      �   �   x�u��n�@��5\�v�����ZRJ4T#��I�aJ�`!�^�4.�i�پ�[ݾ)���s̸C8 8l��6K�vs8;�8�<��I����8d$�y�]�2a���r�僅I�x��BR��g��9k���ƚ6L����0CL�(��Sl�?ia�I����r�Nl4}�vA�ബ��(��ڷe\�u�z�j�=5���!ń¾'9ܿ�zmj3�k��c �/l�m�7�|Q�      �      x������ � �      �      x������ � �      �      x������ � �      �     x���Ko7�����b^�{s�&�î['i����
Q��UP��w�KR��Dt04��8���G0��Gw.�W�����d|����b>�/og_���G����Aj��M� D߁�(-j�2Kg�p3bu |�2n?IΉ;_D-I#,�T��-bH�s&I:��t�x;]�&���r�qy=�r+�x��ԾK�Ć%�N��sI��ЈHq��������Jϻ�m��`dZ�M`$�Fz�*	�*�ė���<V��ЊX���4��Y��2�4�|�9�9���r��r��@H�zl"�[1[)��b�r|��ۛ3�$&�2�
�[��L��.���t6�1���0�MF6
��n��� ��%�LM�b�n�Zo��K0�ک����ϓ�t~����M�I�F����.����>��V�!j�W[���k���ևcC�5U	L�w�b8��f�)	�b���z�yʬ(�JgH�[�:0sR�\�B�p~r1��{����Uy��%8]f1#o��\�Zp��x=C�i��DE�����bK�De����w�Ǥ�����) �Y�-E��Z�KA 9�c�����A�4�*��CR�
h]+�sǹ���y�GY�nJ�H䧫h�ꭟSaUپv�OK"�%	v�4"ц�jU��aE���y�ܚ����M;�,b�7�&�	j�j()��:���m�O&%d��c�m���ր�����;I#����	;��9U�Xy��y�6�bsb%���c���_]�_-��oY�]��O�F@uq<s
�É�[C
@��S��?�xf$|��A���%>z���"2������b>��҉��P���&#[U��S�rZ[@Y>.ǳ��~��nNw>j��{e[,�5nb������zڠCAM[)u%:�,�.
�"�C��w/�?b,\ca�za��'��Cv����)w]�s����.����7 �4�QG���5`�9����^9�>����lz��X�|��K垠7�o�ܞ��W��е1N5�=y��}h�s���a      �      x������ � �      �      x������ � �      �   p  x���MK1�ϻ��wi��L��̓`/E�c/�����]��ُb�[�B����2���Ll��)�Eux0���ɎP�uQ�� ���*.šz����VgӬ�V���dz�8yj�U�P�U�r�)o���dTg�lYd�q
(�h-������l@H��m��چ�e�ݦ���F�mDo���G��M%�v��(�j��̺�m���9))�\.�G���Ur��`��-{=��7װ�lL�[vO�����im�m�\~\pͧ���a�`]�3��DN����u�γА�w��t���F����c!���	�D�{ܫu���.w���uy�W���`���K�h���f���s�����:�����<�?�K'!      �   �   x��ˑD1C�57����s���i�c���QTT4��b)7[y8����0��S�G~6�ԋ,r�ޤ����%oh�����}��jJ��U�Rm�Z�	�ڲ��ؤnh�><V��.���N{貗�街}��룏M�ڢ�6�?�Ͳ%�      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�m�]n�0���a*���DO��B���b��/��#��Y��=�`~}���?+#-�> s00�H���؀}Л��;���-��������CH�^
oB��B�T&Uؿ\��;�)�M�������ꖓ�a��O
�+`��;����b��1jk�o�[��N~�JӦȷ�9��'�HH�G$;c}�@�+P���
#j���۬�d�(B�ە����Q��љ�Ai`������Zx�Y��2�TU� ��6      �      x������ � �      �   <   x�3��L��/I-�L�,I�-�I,I�41�41���2��LLI��+F�5�41���qqq ]�$      �   �   x����N1E��_�=�ȉ�p�e�
�ݠjFT*���E]:B�$��>:N�x�c?ϯ��s�ǥN�?#�ׁ��aǵ�4)N4�T�`�^FB��l�GF�b��K����`���?`�7V��*�լ@)�`�2O�t�7�w���8����ܢ��EX?F��l�4KA$�be�?E!o���>���{�������I��U�#P��\<�}L��      �   -   x�3�4000�4�4����4�2�M|#��7��=... l>
I      �   4   x�3�4I�452OL�M�07�5�01�M4LNҵ�4N�4��0025������ �c	�      �      x�3�L��4�4�21�L9��b���� 6��      �   t   x�3���ж0�T04�0U065U�0��457�7�T�H�UK�SpJL��Q�2�2\2�Kt<��32|A"Ι%���@VNIif�Cznbf�^r~.����7�����4�=... �1n�      �      x������ � �      �   �  x��W�n�F}��B��fgg�sP���Fb8H�AZiv�V������r$_VҮ8A�zЅ���Cr�N��S1�2QIN�5ڈ�X�[U��x�#>�(#�j��T��	A�`��TZ�e�y�n��
�a2q�$#�){Qi	��B
˼4���]UyV!���Y��.�E�ϟ?t�T����A�5�5c��*�J�B�hr����l��<m���,�l�,�۬*��u�̞��we\�f'��wU��U��ه;����"
�s����B8'�-��:8��Y���L	����`��uva���� �O� 	�L�n��2��,=��*r�۳[������<�BT`�$�QZS��
<?{������g���̧	of�K�8��Ƶ>a��/����&KB�fO��'���8�D��u�Y9�,� �fa��ʣ�F�^��I�c}O��İ�u�h���k��_����4�|}|����w��o�ĝƨ|�}�����=�ǲ��G4�V�����n7�flR`�'�P��W�ܱb�V�j%�Gݗ�s��Ϊ���0��1���/��/./���N� �(�F�Go.NNN_������#�7nM���k"���S��\R��5����i���x:�w�q�J,b�`��i��J�< �Ƭ�ǨI)?P+�X}k�V�=Č!�O|ʹ�ݰT���+Xyג��Z<�E�1!��4��IU�q��=��#�#"�	ÔB�Qe�"+��v��?��8�IRϭǳ1^x�ƶ��Ё���#g8�҈��tp����pA���2�w�w��H^���!���j�Ϭ�6��ͻ�t�o�wgh�.��U�� ���{��E�ƀ1�DsaԴs)K���c��.O+I���]e��)SWT!naֺbH�pޞ��yxݶ�&Z,nnnH�%u�T�ֳf����Y4mU��f�TI�j�T��\���5-j#~�����5���]��q%k��k�ߑ\�	���.�;�TM�1Q���q����_;��!G��R�msd�w�F���C�3ӥ�&���z�n,�@��U��y�(��M�ܕi���\o?����� ���"�b���_c�\����ko�M1I,��bYp���mx��݇�K��ߑ�Z�x���RȕNҕXa8���Y�no󶳨�E>����5�������\�=������ ^L_�      �   �  x�}T�r�0}�>f'���_v�q@7��m���W�����t��Hǒ����=NV��1"TL�qb��!Hk�o����ޜ9Щ���D41.C�@����n���AKÔ)�/paAF:��P�R
�95��@Q$@()vH�[���W�֌�L��QG����.�/�VW�E���MO���QD���DDE]���2`�Ҍʭ��+���L�[m�#*
ʧ�I��b�Lr�~�.Pr6�3Z��"��]�AF���AY�7�г^Iw��P6G�t�P�;��P�����/~�bu��S���Y_��ʺ��J�",�'���Iƪza&T�gr��Fj&��L�ުY�mP5���]Y��l���oT�xӢ�d������)������;�"#���ad����t��2~�vT��c8�=@��y�{5<M����Z�Vj�e�I�=�_&?OG/z��B�;��t!.�hZ�>�	��G��Հ�`�Ju7CSd���؅4y�a��o���5Ϙ�T�~�>�[t�D=�Y�=�}�Z�n'kK��W�,U\_��'���&UҜr\�[�NOS0g}�F�$�sl@M�n�5��4�BzU��]�;�D��M�	&��7T�0�Hu[��y�h���fP���� ��@6y      �   �	  x����n�8��ݧ���gx��,@���h+[�,���P"u�G��(r��iHΑ
�^�S_����\]vB����١ �C�(���K�WX!������ڿ?VX�\T�]y8֧�&I�,�дodh������=����3P;��лK�?�6�hm>J����P ��30Q`� G��7J��xp��xL�����GP*�j���ɨ�Y�VZ�ΉѪB9�ǂ�Z}���V�LZ�Zs��rZ�u:S�,��� Z���Od�I��wjC,U�ZqZ@�Zm�Vg�Ǫ{�6>��م@�c�֕}��*\����_;^�D���P Sx:ax-b�#�+�C�q��}4�#?&�!��wR\`�-h��(�
�M��7�T���`s��)ϐ%M_u�\u��r��� ��oh��}�e�L0��%���ձ���yur¨%&�7�Ӟ���:�JM�d4奏y���]�t! 9	�	bh{_�n��a�Cܴ�ɫ1�&K��M}(�������k;r�˥|���N���α���6�g/Ɯa�d%���.��5�oN� õkhS^��O}�WR��T�sF5B�I�\F�T0=U�z)���"����(�i�BlDL�R�b7=9�E��L����('�Bs27(N�W�~�Hi�R���,`�)2�B�m��*rӦ*O�3+uN��(���_yzk	@��\��]x��T�ܱr\쯧�"��N�B+�����׺��GO7��ɡ'Pb֬]�J;� ^��#*��2������)�-���5=�g�ҍe���N��;�L�Y�td������)�˱��,7�r�\�r����A���Arje�b�b5v�cLnɔe82���j�����J��>un�1i���G[����:��x�
��K��=wyz��q�^�}G�c��h���Sl���R��{
՗Cy�+|�����[�ʇ��a��$�Rٰ�sz\�d��������gfH�7V�{5u�/<��0��s�k &|�+��\�ҷ��������(8l�0em� ��R� !���S��L.`��%%��&��ݐ�[0��e\h����ᥫ���Kčq���`Ms l�LN��%EΨ�8�81�7����vX�2y�6r��tJ��4����ǲ�E-\��W�X��������{�8�2�#��|I�f_��M���e8r9-RG	��S���=�����$W�]a`�L�G/�R��=F��f�1_�In��v���_�I��4)����p��U(���^��.��V2�H2�t��+l�&j��O�c(�?L/���;!��|QP6�(.Mm�qs�U� 0��-��4�ώ�C5��{�t�s=^H<UO�9_;Y�뗭V,�������(s�G�gZ_h*2cEr��R	�<a-
M',�J䐇�g�t$ѐ�H�'M�etN�N�(;9�o�#��<e:s���˩>��������Yl�^���p���B��͔�<$��Cٗ�m����t��J)z�|��p=տ�LLD\L��O;�����`Dǭ�<z9�a�VIC!0O�x�].����hnx��n9� ��F��^?^~U��oͻD��//?��W+U|��w	^}������Ka��gP��Cm��n�#0^��/��O}���{*մ^˩���F:,�,9f̺��c���6�{���p��?)��q��@I?Q"Ǹ�Tu8�yb]8NJ��0�"X����%9�{������@(��M�'(#�һ��|��J�^v�|x��v�pr��?�T�.�m�����C��V���=:�[G������~!GwmJr�ĜN1���f0��|���̵`Իi'�i��^��>�Ƈ�.�eܞǺ���7��]ȡ=��� ӵ L/Ϩ5K��}�;Hu~ߧv�UGM���w��`�x��;
����^�p�j0�w{�{ԅ3��
�J�˳���B��6ÅJ�ӣ�
!o�tB�^�=�BIL�Xߤ-���B�^��M��W } kW �K��Pv\����*R���������Ɔ�gӾ��o���0����j���D�����6����t�����o��v�AE�(�39�Q/˗O|Jţ �����|z�w��_ۦ&O>oݝ� �S�p�$�ͽùk����ʞ�A�R��\M�h
�)T7E�����`���L--[��{��hs��`�,��Y�_�C�3
���^�Y�BS�M�/Ž5�Y��IS�/�ɥV�of�f��p/=-	��X⚱\�&�������F;�9J�f�{��eP2���_Ѝ�#�������Z�����'���*���)�KƑ��I�h9s�䬇?ޢLJ������0����#F?�&m��cx)��th>V�Qf(�)����G�=bu6�
����LO�d��þ�[|����ʸ      �   �  x��ˎ�6��3O1�"/�.���Ǌ���Y�nt�-Q���O_�A&M���i�v /d�<�|��#y�nW���A�i���&�+k�^�
ܱ(�����:�k�N}!�~�ET\�ɳ�#��~:zD\n����27)��H'�,���:��R�hK�Z�)k�֫y��"!M 7��U���'���:�$8�4��W��(l��I�ѱ�լ��a��ō=X��OQUhu��B���L(l�^6�����eqK���{���YϓgSc��yru��s������j�L�Z�U���f_��l)�p[~�����_�}�E*�"-^◳�����;@�A��!�Cl<����p�j_N�]6��}V�}��oi7�[�1yU&����"{� "�ɪXo'�lv=�6+��/<Y9�s�t���f��P�$�t�h�hnQ�*��frF��2���i�
�������`�B)Fsģ�|�Կ>����e�M]��I�� �dN���>@gh��Ȁ`�x֕���	�`��r1�[���r�6�kvw̬�F����I�$�t4',��P43�25M �sg����&B��Ŏ�.��Q��8�[P���#�e �kte���o�����΍W�Yn�Ž��I_�4z��~ ��	��	9��TR�t`�Ec�׳?f���_11�8K�U��e�Z۬ۤ��"{_c�`̀H�>��������a���^`��j"��t}�����c���kxV׵�)���&"k�� �y7E-�,+ܖYW�f����V�"��o#��G��#�Ů�ޘ,J7�,-����Rjո�n���+i[ ��m��2��Zf���S�:o��޼G4y� �B��]�m��8c�L���@@<|���q�>��V��4@��7-^�es��DTJ=v�f�"�iT��lD�꘺z��ѣ%|�1�rv�{����z6��������ڻ�A���Ss>�#����۳�挑]q0�5����&EF���r�(���Q��@.yG�LҞE�w_�ȑw0��Z�m��u�ǦG[œN�pGq�����We�������o��P �лo}�֓&S�@�#�d4��5�����ƅ�S�35��Of���4��uv۳4�Y�"�Ϊ96��L�Ҽ��h�YD��昪��D����Wz���g|�t�� ��F�o������ M�>�      �      x�3�L�H�-�I�K��Efs��qqq �<	�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �             x������ � �            x������ � �            x������ � �         �   x�Վ�� Eg�
6�77��&��������£Ah?���?�����BZ��"�3��Z�S7MF/�%�ڙv�끬��!�����&�Q��0b�֭�|��R��F�i�d@��"�.E������9���w�o��\���?)m$��i�vY         q   x�3��t��+IL.Q�M���/���KW�,V��-�/.�L�I�Q(�HU(�/JQ�,)N�IS(N�,VP�T�U��Q�t,M)J�T�H-H*-��27���Ɯ�I��T6����qqq �x�         F   x�31�L��4�L�-�7�3�3��M�+���OI-�O͋7����"��Ҥ��d.3"է%��p��qqq G��      	   �   x����
� E��ݗ�hj�@�t�Z�b5��+��]f3\���0��RK�,�&���精�9є}�4�䍱���S=]Ǯ��Eu8�l�qā�
D|�x[�Bj%� ����-2�y��\B��Q$���V���(	�I �6ʵVj�J����������c� �\y         �   x���O�0��
��۞�kV!�.I�Cа�(_}�����|�= <[�x���su+�����Ͳ��-��}��!a!� x�1�*b ����*�8:t�P�J�2�"��ߎ��u9S9:��It��v�J���%��|���as��zC��:$�%�r��;���;\wy������=S�c���7|�         �  x�]QM��0=;�bN����ko>n!]��@]��؞�Օ4B�&���w�	,���yzo>��,�0P���;�����ݗ��[�s@n��r��4����B�0j*���	�j��,����08�6��;�Y����_ع1��>����Yw��$~3�JC"������P��@ �!A����%>kc$,R&O�(�-��a�N�;��nzL�tLz �3h�,���v���������gJ�ף���J��y��hfA��H�%Z�#�t�)hO�':�aO!��&p'Msi�ٔ��۲<�υՃ��S*�%��%�1q�җo�+7�7JM��f��܉'6�KmU����V�X�4���*_����j�Ϋ&�W�l��j[o����f��Zݢm^հ�����X��f�~�6�����g��wj�X,��ϛ         !   x�34�43�4��243,���s�=... O��         4   x�31���O��I�2��OM�2��t�K)��L�25��H�M,������� ��     