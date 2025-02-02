PGDMP     *    )                z            Simius #   12.9 (Ubuntu 12.9-0ubuntu0.20.04.1) #   12.9 (Ubuntu 12.9-0ubuntu0.20.04.1) 1    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24576    Simius    DATABASE     z   CREATE DATABASE "Simius" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE "Simius";
                fpw    false            �            1259    24669    bagnino    TABLE       CREATE TABLE public.bagnino (
    id integer NOT NULL,
    nome character varying(30) NOT NULL,
    cognome character varying(30) NOT NULL,
    cellulare character varying(10) NOT NULL,
    email character varying(50) NOT NULL,
    descrizione text NOT NULL
);
    DROP TABLE public.bagnino;
       public         heap    fpw    false            �            1259    24667    bagnino_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.bagnino_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.bagnino_id_seq1;
       public          fpw    false    209            �           0    0    bagnino_id_seq1    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.bagnino_id_seq1 OWNED BY public.bagnino.id;
          public          fpw    false    208            �            1259    32985    fattura    TABLE     �   CREATE TABLE public.fattura (
    id integer NOT NULL,
    data character varying(10) NOT NULL,
    prezzo real NOT NULL,
    posti integer NOT NULL,
    id_bagnino integer NOT NULL,
    descrizione text NOT NULL,
    id_prenotazione integer NOT NULL
);
    DROP TABLE public.fattura;
       public         heap    fpw    false            �            1259    32983    fatt_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fatt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.fatt_id_seq;
       public          fpw    false    212            �           0    0    fatt_id_seq    SEQUENCE OWNED BY     >   ALTER SEQUENCE public.fatt_id_seq OWNED BY public.fattura.id;
          public          fpw    false    211            �            1259    24647 	   messaggio    TABLE     �   CREATE TABLE public.messaggio (
    id integer NOT NULL,
    messaggio text NOT NULL,
    mittente character varying(30) NOT NULL,
    destinatario character varying(30) NOT NULL,
    oggetto character varying(30) NOT NULL,
    letto boolean NOT NULL
);
    DROP TABLE public.messaggio;
       public         heap    fpw    false            �            1259    24645    messaggio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messaggio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.messaggio_id_seq;
       public          fpw    false    207            �           0    0    messaggio_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.messaggio_id_seq OWNED BY public.messaggio.id;
          public          fpw    false    206            �            1259    24626    prenotazione    TABLE     �   CREATE TABLE public.prenotazione (
    id integer NOT NULL,
    giorno character varying(10) NOT NULL,
    posti integer NOT NULL,
    fascia integer NOT NULL,
    username character varying(30) NOT NULL,
    processata boolean NOT NULL
);
     DROP TABLE public.prenotazione;
       public         heap    fpw    false            �            1259    24624    prenotazione_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prenotazione_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.prenotazione_id_seq;
       public          fpw    false    205            �           0    0    prenotazione_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.prenotazione_id_seq OWNED BY public.prenotazione.id;
          public          fpw    false    204            �            1259    24619    slot    TABLE     �   CREATE TABLE public.slot (
    posti integer NOT NULL,
    fascia integer NOT NULL,
    giorno character(10) NOT NULL,
    id_bagnino integer NOT NULL
);
    DROP TABLE public.slot;
       public         heap    fpw    false            �            1259    24678    slot_id_bagnino_seq    SEQUENCE     �   CREATE SEQUENCE public.slot_id_bagnino_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.slot_id_bagnino_seq;
       public          fpw    false    203            �           0    0    slot_id_bagnino_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.slot_id_bagnino_seq OWNED BY public.slot.id_bagnino;
          public          fpw    false    210            �            1259    24577    utente    TABLE     �  CREATE TABLE public.utente (
    username character varying(20) NOT NULL,
    password character varying(20) NOT NULL,
    nome character varying(50) NOT NULL,
    cognome character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    numero character varying(10) NOT NULL,
    data_di_nascita character(10) NOT NULL,
    codice_fiscale character(16) NOT NULL,
    fattura boolean NOT NULL,
    sesso character varying(5) NOT NULL,
    foto character varying(100) NOT NULL,
    tipo "char"
);
    DROP TABLE public.utente;
       public         heap    fpw    false            0           2604    24672 
   bagnino id    DEFAULT     i   ALTER TABLE ONLY public.bagnino ALTER COLUMN id SET DEFAULT nextval('public.bagnino_id_seq1'::regclass);
 9   ALTER TABLE public.bagnino ALTER COLUMN id DROP DEFAULT;
       public          fpw    false    208    209    209            1           2604    32988 
   fattura id    DEFAULT     e   ALTER TABLE ONLY public.fattura ALTER COLUMN id SET DEFAULT nextval('public.fatt_id_seq'::regclass);
 9   ALTER TABLE public.fattura ALTER COLUMN id DROP DEFAULT;
       public          fpw    false    211    212    212            /           2604    24650    messaggio id    DEFAULT     l   ALTER TABLE ONLY public.messaggio ALTER COLUMN id SET DEFAULT nextval('public.messaggio_id_seq'::regclass);
 ;   ALTER TABLE public.messaggio ALTER COLUMN id DROP DEFAULT;
       public          fpw    false    206    207    207            .           2604    24629    prenotazione id    DEFAULT     r   ALTER TABLE ONLY public.prenotazione ALTER COLUMN id SET DEFAULT nextval('public.prenotazione_id_seq'::regclass);
 >   ALTER TABLE public.prenotazione ALTER COLUMN id DROP DEFAULT;
       public          fpw    false    205    204    205            -           2604    24680    slot id_bagnino    DEFAULT     r   ALTER TABLE ONLY public.slot ALTER COLUMN id_bagnino SET DEFAULT nextval('public.slot_id_bagnino_seq'::regclass);
 >   ALTER TABLE public.slot ALTER COLUMN id_bagnino DROP DEFAULT;
       public          fpw    false    210    203            �          0    24669    bagnino 
   TABLE DATA           S   COPY public.bagnino (id, nome, cognome, cellulare, email, descrizione) FROM stdin;
    public          fpw    false    209   9       �          0    32985    fattura 
   TABLE DATA           d   COPY public.fattura (id, data, prezzo, posti, id_bagnino, descrizione, id_prenotazione) FROM stdin;
    public          fpw    false    212   �9       �          0    24647 	   messaggio 
   TABLE DATA           Z   COPY public.messaggio (id, messaggio, mittente, destinatario, oggetto, letto) FROM stdin;
    public          fpw    false    207   �:       �          0    24626    prenotazione 
   TABLE DATA           W   COPY public.prenotazione (id, giorno, posti, fascia, username, processata) FROM stdin;
    public          fpw    false    205   �:       �          0    24619    slot 
   TABLE DATA           A   COPY public.slot (posti, fascia, giorno, id_bagnino) FROM stdin;
    public          fpw    false    203   ^;       �          0    24577    utente 
   TABLE DATA           �   COPY public.utente (username, password, nome, cognome, email, numero, data_di_nascita, codice_fiscale, fattura, sesso, foto, tipo) FROM stdin;
    public          fpw    false    202   �;       �           0    0    bagnino_id_seq1    SEQUENCE SET     =   SELECT pg_catalog.setval('public.bagnino_id_seq1', 8, true);
          public          fpw    false    208            �           0    0    fatt_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.fatt_id_seq', 6, true);
          public          fpw    false    211            �           0    0    messaggio_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.messaggio_id_seq', 89, true);
          public          fpw    false    206            �           0    0    prenotazione_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.prenotazione_id_seq', 67, true);
          public          fpw    false    204            �           0    0    slot_id_bagnino_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.slot_id_bagnino_seq', 7, true);
          public          fpw    false    210            ;           2606    24677    bagnino bagnino_pkey1 
   CONSTRAINT     S   ALTER TABLE ONLY public.bagnino
    ADD CONSTRAINT bagnino_pkey1 PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.bagnino DROP CONSTRAINT bagnino_pkey1;
       public            fpw    false    209            =           2606    24750    bagnino bagnino_unique 
   CONSTRAINT     e   ALTER TABLE ONLY public.bagnino
    ADD CONSTRAINT bagnino_unique UNIQUE (nome, cognome, cellulare);
 @   ALTER TABLE ONLY public.bagnino DROP CONSTRAINT bagnino_unique;
       public            fpw    false    209    209    209            ?           2606    32993    fattura fattura_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.fattura
    ADD CONSTRAINT fattura_pk PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.fattura DROP CONSTRAINT fattura_pk;
       public            fpw    false    212            9           2606    24655    messaggio messaggio_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.messaggio
    ADD CONSTRAINT messaggio_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.messaggio DROP CONSTRAINT messaggio_pkey;
       public            fpw    false    207            7           2606    24631    prenotazione prenotazione_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.prenotazione
    ADD CONSTRAINT prenotazione_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.prenotazione DROP CONSTRAINT prenotazione_pkey;
       public            fpw    false    205            5           2606    24623    slot slot_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.slot
    ADD CONSTRAINT slot_pkey PRIMARY KEY (fascia, giorno);
 8   ALTER TABLE ONLY public.slot DROP CONSTRAINT slot_pkey;
       public            fpw    false    203    203            3           2606    24581    utente utente_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_pkey PRIMARY KEY (username);
 <   ALTER TABLE ONLY public.utente DROP CONSTRAINT utente_pkey;
       public            fpw    false    202            @           2606    24734    slot bagnino_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.slot
    ADD CONSTRAINT bagnino_fk FOREIGN KEY (id_bagnino) REFERENCES public.bagnino(id) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 9   ALTER TABLE ONLY public.slot DROP CONSTRAINT bagnino_fk;
       public          fpw    false    209    2875    203            D           2606    32994    fattura bagnino_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.fattura
    ADD CONSTRAINT bagnino_fk FOREIGN KEY (id_bagnino) REFERENCES public.bagnino(id);
 <   ALTER TABLE ONLY public.fattura DROP CONSTRAINT bagnino_fk;
       public          fpw    false    2875    209    212            B           2606    24719    messaggio destinatario    FK CONSTRAINT     �   ALTER TABLE ONLY public.messaggio
    ADD CONSTRAINT destinatario FOREIGN KEY (destinatario) REFERENCES public.utente(username) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 @   ALTER TABLE ONLY public.messaggio DROP CONSTRAINT destinatario;
       public          fpw    false    207    2867    202            C           2606    24724    messaggio mittente    FK CONSTRAINT     �   ALTER TABLE ONLY public.messaggio
    ADD CONSTRAINT mittente FOREIGN KEY (mittente) REFERENCES public.utente(username) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 <   ALTER TABLE ONLY public.messaggio DROP CONSTRAINT mittente;
       public          fpw    false    207    2867    202            E           2606    32999    fattura prenotazione_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.fattura
    ADD CONSTRAINT prenotazione_fk FOREIGN KEY (id_prenotazione) REFERENCES public.prenotazione(id);
 A   ALTER TABLE ONLY public.fattura DROP CONSTRAINT prenotazione_fk;
       public          fpw    false    2871    212    205            A           2606    24729    prenotazione username_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.prenotazione
    ADD CONSTRAINT username_fk FOREIGN KEY (username) REFERENCES public.utente(username) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 B   ALTER TABLE ONLY public.prenotazione DROP CONSTRAINT username_fk;
       public          fpw    false    2867    202    205            �   �   x�E�1�0��+xA�88]p�H��Gda�I�I��q���ٝm�Qf�w�k�� ��Ov�����k�%a��,	&�&�"��Nha�ٳ˴Q��Å��0��d��;u���X�<�|�W�"ϯ�\
��e��0��0FR�QJ} e:6      �   �   x�e��
�0���S�T�l�yē7�^�)t�覨Oo�O�������yjxZ�P`(`����0���zZ���Gw9K#m ��9�6q�~GJ���̑xjd�-����@�bWQ�6�8'���j$v����[RHV�:�4D}�>��@��`f9��sv����6P�gz������3�g��s�V�      �      x������ � �      �   �   x�}��
� �s�.�Խ�.2��l��_
�F��?��=�#�\�(�8�oN�#�X$=Ӗ_9��V���t�	ީ��˲�8�-3�4��+r8qo�+�v��K}�����ms�؊���w�l�T��ro�s3[�,д�<��-���`��B�[�qC�թw�      �   >   x�U��	�@C�s��HG����]D�����()���7��Fh���qyJ�݆���B��	      �     x�e��n�0E�ÿ�l�����Y�,������Ԓ��.���@���ܱ����bM[���Ŕ!���|��6�E���Q�9�PD�$$t���#���<&"�_��J��\`j�Z�������)��So.w O�LT"�$!�!�A;�"Ii����'�ٙ/k� ��x�M�U��a�����+����I9�6�ٓ������z�W��?�fEY������@g
�Vͷ�li�<G�+ĵ6cT�<�r'm��i]��S�[%�γ�9ն�2M�A�e��p     