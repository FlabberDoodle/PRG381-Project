PGDMP                      |            project    16.4    16.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16401    project    DATABASE     �   CREATE DATABASE project WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_South Africa.1252';
    DROP DATABASE project;
                postgres    false            �            1259    16403    users    TABLE     >  CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(255) NOT NULL,
    name character varying(100) NOT NULL,
    surname character varying(100) NOT NULL,
    phone character varying(15),
    email character varying(100) NOT NULL,
    role character varying(50) NOT NULL,
    registration_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT users_role_check CHECK (((role)::text = ANY ((ARRAY['Librarian'::character varying, 'Student'::character varying])::text[])))
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16402    users_user_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN user_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �          0    16403    users 
   TABLE DATA           r   COPY public.users (user_id, username, password, name, surname, phone, email, role, registration_date) FROM stdin;
    public          postgres    false    216   �       �           0    0    users_user_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.users_user_id_seq', 100, true);
          public          postgres    false    215            T           2606    16415    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    216            V           2606    16411    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            X           2606    16413    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            postgres    false    216            �   U  x��Wے7}��"?�J}�����
��Re�S^vb��Mm%_��N��ɰ�/v�s�խ�6��Y�����B����G�~�6;��HjT��p�w�,��a躍���Oݰ6﷟ �zS�VϿ�)�ql\Ug219Ԭ�5]S��bx��v� ��|fg�%��j�ڮ�J��^��A=���[��C��K�Q�Q}��9�Ǉ�1U�3'6[���RB�������z]?�zN�e�K!R���CK���(�l�H��@-�~}��9�G=��լj��T�YĜ�=9H}x`�-�|���6�"�V����WǗr��j�^]_=U6�g����r�l2�줂|t�5�א�V�pj:��2�8X"~����)�^`�����`&� �LQJ���zY#O-l%O�1�`�T�S/�^��ױ�Q��e��bIf:i�x�[�������dG�3�d�cp�k<b��9��T9f�8�2[�(�FPO��z;�����?��k�|���M����P�mH�� �b/dc�y#�e��|�b;1�'E�`���$���=��#��;!NS�
3e�'t@Z��E㡅��c� e<@��I-.�o�����}��:�Z������;NqA���u�&��z��mM��MH��$�2_k��y��7_�|_��L���Vp�����3�٢a`!���m+�M�&r^�l&��l-ѫ[|�zZ���`�$�!Ƒ/Яc+`F4	"K��Hrww�Mt�	*M<� {L��̍3��#N�5˗�M�.��]I�&���Z&�=�1ZK���Ml�w3ǲd�4A�AV@k������	L�w��n��.;�R���Rމt���9	%�=����D�_�     