PGDMP                         x            proyecto    12.2    12.2 ~    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16862    proyecto    DATABASE     �   CREATE DATABASE proyecto WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Mexico.1252' LC_CTYPE = 'Spanish_Mexico.1252';
    DROP DATABASE proyecto;
                postgres    false            �            1259    16864    almacen    TABLE     w   CREATE TABLE public.almacen (
    id_almacen integer NOT NULL,
    stock integer NOT NULL,
    id_proveedor integer
);
    DROP TABLE public.almacen;
       public         heap    postgres    false            �            1259    16867    almacen_id_almacen_seq    SEQUENCE     �   CREATE SEQUENCE public.almacen_id_almacen_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.almacen_id_almacen_seq;
       public          postgres    false    202            �           0    0    almacen_id_almacen_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.almacen_id_almacen_seq OWNED BY public.almacen.id_almacen;
          public          postgres    false    203            �            1259    16869 	   categoria    TABLE     �   CREATE TABLE public.categoria (
    id_categoria integer NOT NULL,
    nombre character varying(45) NOT NULL,
    id_inventario integer NOT NULL
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            �            1259    16872    categoria_id_categoria_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categoria_id_categoria_seq;
       public          postgres    false    204            �           0    0    categoria_id_categoria_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.categoria_id_categoria_seq OWNED BY public.categoria.id_categoria;
          public          postgres    false    205            �            1259    16874    cliente    TABLE     �  CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre character varying(45) NOT NULL,
    rfc character varying(45) NOT NULL,
    estado character varying(45) NOT NULL,
    municipio character varying(45) NOT NULL,
    calle character varying(45) NOT NULL,
    numero integer NOT NULL,
    cp character varying(45) NOT NULL,
    status integer NOT NULL,
    email character varying(45) NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    16877    cliente_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_id_cliente_seq;
       public          postgres    false    206            �           0    0    cliente_id_cliente_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;
          public          postgres    false    207            �            1259    16879    compras    TABLE     �  CREATE TABLE public.compras (
    id_compras integer NOT NULL,
    id_empleado integer NOT NULL,
    id_proveedor integer NOT NULL,
    id_producto integer NOT NULL,
    cantidad integer NOT NULL,
    precio_compra numeric NOT NULL,
    precio_venta numeric NOT NULL,
    status_compra character varying(45) NOT NULL,
    fecha date NOT NULL,
    id_factura integer NOT NULL,
    id_pago integer NOT NULL,
    iva numeric NOT NULL,
    subtotal numeric NOT NULL,
    total numeric NOT NULL
);
    DROP TABLE public.compras;
       public         heap    postgres    false            �            1259    16885    compras_id_compras_seq    SEQUENCE     �   CREATE SEQUENCE public.compras_id_compras_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.compras_id_compras_seq;
       public          postgres    false    208            �           0    0    compras_id_compras_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.compras_id_compras_seq OWNED BY public.compras.id_compras;
          public          postgres    false    209            �            1259    16887    contabilidad    TABLE     �   CREATE TABLE public.contabilidad (
    id_contabilidad integer NOT NULL,
    id_venta integer NOT NULL,
    monto_total numeric NOT NULL,
    fecha_pago date NOT NULL
);
     DROP TABLE public.contabilidad;
       public         heap    postgres    false            �            1259    16893     contabilidad_id_contabilidad_seq    SEQUENCE     �   CREATE SEQUENCE public.contabilidad_id_contabilidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.contabilidad_id_contabilidad_seq;
       public          postgres    false    210            �           0    0     contabilidad_id_contabilidad_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.contabilidad_id_contabilidad_seq OWNED BY public.contabilidad.id_contabilidad;
          public          postgres    false    211            �            1259    16895    cuenta_bancaria    TABLE     �   CREATE TABLE public.cuenta_bancaria (
    id_cuenta integer NOT NULL,
    nombre_banco character varying(45) NOT NULL,
    numero_tarjeta integer NOT NULL,
    cvc integer NOT NULL,
    fecha_expiracion date NOT NULL
);
 #   DROP TABLE public.cuenta_bancaria;
       public         heap    postgres    false            �            1259    16898    cuenta_bancaria_id_cuenta_seq    SEQUENCE     �   CREATE SEQUENCE public.cuenta_bancaria_id_cuenta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.cuenta_bancaria_id_cuenta_seq;
       public          postgres    false    212            �           0    0    cuenta_bancaria_id_cuenta_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.cuenta_bancaria_id_cuenta_seq OWNED BY public.cuenta_bancaria.id_cuenta;
          public          postgres    false    213            �            1259    16900    empleado    TABLE     �  CREATE TABLE public.empleado (
    id_empleado integer NOT NULL,
    nombre character varying(45) NOT NULL,
    apellido_p character varying(45) NOT NULL,
    apellido_m character varying(45) NOT NULL,
    fecha_nacimiento date NOT NULL,
    domicilio character varying(45) NOT NULL,
    telefono integer NOT NULL,
    correo character varying(45) NOT NULL,
    curp character varying(45) NOT NULL,
    rfc character varying(45) NOT NULL,
    edad integer NOT NULL,
    id_usuario integer NOT NULL
);
    DROP TABLE public.empleado;
       public         heap    postgres    false            �            1259    16903    empleado_id_empleado_seq    SEQUENCE     �   CREATE SEQUENCE public.empleado_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.empleado_id_empleado_seq;
       public          postgres    false    214            �           0    0    empleado_id_empleado_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.empleado_id_empleado_seq OWNED BY public.empleado.id_empleado;
          public          postgres    false    215            �            1259    16905    facturacion    TABLE     �   CREATE TABLE public.facturacion (
    id_facturacion integer NOT NULL,
    nombre character varying(45),
    descripcion character varying(45),
    fecha date,
    rfc character varying(45)
);
    DROP TABLE public.facturacion;
       public         heap    postgres    false            �            1259    16908    facturacion_id_facturacion_seq    SEQUENCE     �   CREATE SEQUENCE public.facturacion_id_facturacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.facturacion_id_facturacion_seq;
       public          postgres    false    216            �           0    0    facturacion_id_facturacion_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.facturacion_id_facturacion_seq OWNED BY public.facturacion.id_facturacion;
          public          postgres    false    217            �            1259    16910 
   inventario    TABLE       CREATE TABLE public.inventario (
    id_inventario integer NOT NULL,
    id_producto integer NOT NULL,
    status integer NOT NULL,
    cantidad integer NOT NULL,
    id_proveedor integer NOT NULL,
    costo_pagado_productos numeric NOT NULL,
    id_almacen integer NOT NULL
);
    DROP TABLE public.inventario;
       public         heap    postgres    false            �            1259    16916    inventario_id_inventario_seq    SEQUENCE     �   CREATE SEQUENCE public.inventario_id_inventario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.inventario_id_inventario_seq;
       public          postgres    false    218            �           0    0    inventario_id_inventario_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.inventario_id_inventario_seq OWNED BY public.inventario.id_inventario;
          public          postgres    false    219            �            1259    16918    pago    TABLE     �   CREATE TABLE public.pago (
    id_pago integer NOT NULL,
    id_cuenta integer NOT NULL,
    tipo character varying(45) NOT NULL,
    descripcion character varying(45) NOT NULL
);
    DROP TABLE public.pago;
       public         heap    postgres    false            �            1259    16921    pago_id_pago_seq    SEQUENCE     �   CREATE SEQUENCE public.pago_id_pago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pago_id_pago_seq;
       public          postgres    false    220            �           0    0    pago_id_pago_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pago_id_pago_seq OWNED BY public.pago.id_pago;
          public          postgres    false    221            �            1259    16923    producto    TABLE     �   CREATE TABLE public.producto (
    id_producto integer NOT NULL,
    nombre_producto character varying(45) NOT NULL,
    descripcion character varying(45) NOT NULL,
    precio_unitario numeric NOT NULL,
    status integer NOT NULL
);
    DROP TABLE public.producto;
       public         heap    postgres    false            �            1259    16929    producto_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.producto_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.producto_id_producto_seq;
       public          postgres    false    222            �           0    0    producto_id_producto_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.producto_id_producto_seq OWNED BY public.producto.id_producto;
          public          postgres    false    223            �            1259    16931 	   proveedor    TABLE     _  CREATE TABLE public.proveedor (
    id_proveedor integer NOT NULL,
    area character varying(45) NOT NULL,
    telefono integer NOT NULL,
    nombre character varying(45) NOT NULL,
    rfc character varying(45) NOT NULL,
    email character varying(45) NOT NULL,
    direccion character varying(45) NOT NULL,
    status_proveedor integer NOT NULL
);
    DROP TABLE public.proveedor;
       public         heap    postgres    false            �            1259    16934    proveedor_id_proveedor_seq    SEQUENCE     �   CREATE SEQUENCE public.proveedor_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.proveedor_id_proveedor_seq;
       public          postgres    false    224            �           0    0    proveedor_id_proveedor_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.proveedor_id_proveedor_seq OWNED BY public.proveedor.id_proveedor;
          public          postgres    false    225            �            1259    16936    rol    TABLE     d   CREATE TABLE public.rol (
    id_rol integer NOT NULL,
    nombre character varying(45) NOT NULL
);
    DROP TABLE public.rol;
       public         heap    postgres    false            �            1259    16939    rol_id_rol_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_id_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.rol_id_rol_seq;
       public          postgres    false    226            �           0    0    rol_id_rol_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.rol_id_rol_seq OWNED BY public.rol.id_rol;
          public          postgres    false    227            �            1259    16941    usuario    TABLE     �   CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    usuario character varying(45) NOT NULL,
    "contraseña" character varying(45) NOT NULL,
    activo integer NOT NULL,
    id_rol integer NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    16944    usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public          postgres    false    228            �           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;
          public          postgres    false    229            �            1259    16946    ventas    TABLE     �  CREATE TABLE public.ventas (
    id_ventas integer NOT NULL,
    fecha date NOT NULL,
    id_cliente integer NOT NULL,
    subtotal numeric NOT NULL,
    iva numeric NOT NULL,
    total numeric NOT NULL,
    id_pago integer NOT NULL,
    status_venta character varying(45) NOT NULL,
    id_factura integer NOT NULL,
    precio integer NOT NULL,
    cantidad integer NOT NULL,
    id_producto integer NOT NULL
);
    DROP TABLE public.ventas;
       public         heap    postgres    false            �            1259    16952    ventas_id_ventas_seq    SEQUENCE     �   CREATE SEQUENCE public.ventas_id_ventas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ventas_id_ventas_seq;
       public          postgres    false    230            �           0    0    ventas_id_ventas_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ventas_id_ventas_seq OWNED BY public.ventas.id_ventas;
          public          postgres    false    231            �
           2604    16954    almacen id_almacen    DEFAULT     x   ALTER TABLE ONLY public.almacen ALTER COLUMN id_almacen SET DEFAULT nextval('public.almacen_id_almacen_seq'::regclass);
 A   ALTER TABLE public.almacen ALTER COLUMN id_almacen DROP DEFAULT;
       public          postgres    false    203    202            �
           2604    16955    categoria id_categoria    DEFAULT     �   ALTER TABLE ONLY public.categoria ALTER COLUMN id_categoria SET DEFAULT nextval('public.categoria_id_categoria_seq'::regclass);
 E   ALTER TABLE public.categoria ALTER COLUMN id_categoria DROP DEFAULT;
       public          postgres    false    205    204            �
           2604    16956    cliente id_cliente    DEFAULT     x   ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);
 A   ALTER TABLE public.cliente ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    207    206            �
           2604    16957    compras id_compras    DEFAULT     x   ALTER TABLE ONLY public.compras ALTER COLUMN id_compras SET DEFAULT nextval('public.compras_id_compras_seq'::regclass);
 A   ALTER TABLE public.compras ALTER COLUMN id_compras DROP DEFAULT;
       public          postgres    false    209    208            �
           2604    16958    contabilidad id_contabilidad    DEFAULT     �   ALTER TABLE ONLY public.contabilidad ALTER COLUMN id_contabilidad SET DEFAULT nextval('public.contabilidad_id_contabilidad_seq'::regclass);
 K   ALTER TABLE public.contabilidad ALTER COLUMN id_contabilidad DROP DEFAULT;
       public          postgres    false    211    210            �
           2604    16959    cuenta_bancaria id_cuenta    DEFAULT     �   ALTER TABLE ONLY public.cuenta_bancaria ALTER COLUMN id_cuenta SET DEFAULT nextval('public.cuenta_bancaria_id_cuenta_seq'::regclass);
 H   ALTER TABLE public.cuenta_bancaria ALTER COLUMN id_cuenta DROP DEFAULT;
       public          postgres    false    213    212            �
           2604    16960    empleado id_empleado    DEFAULT     |   ALTER TABLE ONLY public.empleado ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleado_id_empleado_seq'::regclass);
 C   ALTER TABLE public.empleado ALTER COLUMN id_empleado DROP DEFAULT;
       public          postgres    false    215    214            �
           2604    16961    facturacion id_facturacion    DEFAULT     �   ALTER TABLE ONLY public.facturacion ALTER COLUMN id_facturacion SET DEFAULT nextval('public.facturacion_id_facturacion_seq'::regclass);
 I   ALTER TABLE public.facturacion ALTER COLUMN id_facturacion DROP DEFAULT;
       public          postgres    false    217    216            �
           2604    16962    inventario id_inventario    DEFAULT     �   ALTER TABLE ONLY public.inventario ALTER COLUMN id_inventario SET DEFAULT nextval('public.inventario_id_inventario_seq'::regclass);
 G   ALTER TABLE public.inventario ALTER COLUMN id_inventario DROP DEFAULT;
       public          postgres    false    219    218            �
           2604    16963    pago id_pago    DEFAULT     l   ALTER TABLE ONLY public.pago ALTER COLUMN id_pago SET DEFAULT nextval('public.pago_id_pago_seq'::regclass);
 ;   ALTER TABLE public.pago ALTER COLUMN id_pago DROP DEFAULT;
       public          postgres    false    221    220            �
           2604    16964    producto id_producto    DEFAULT     |   ALTER TABLE ONLY public.producto ALTER COLUMN id_producto SET DEFAULT nextval('public.producto_id_producto_seq'::regclass);
 C   ALTER TABLE public.producto ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    223    222            �
           2604    16965    proveedor id_proveedor    DEFAULT     �   ALTER TABLE ONLY public.proveedor ALTER COLUMN id_proveedor SET DEFAULT nextval('public.proveedor_id_proveedor_seq'::regclass);
 E   ALTER TABLE public.proveedor ALTER COLUMN id_proveedor DROP DEFAULT;
       public          postgres    false    225    224            �
           2604    16966 
   rol id_rol    DEFAULT     h   ALTER TABLE ONLY public.rol ALTER COLUMN id_rol SET DEFAULT nextval('public.rol_id_rol_seq'::regclass);
 9   ALTER TABLE public.rol ALTER COLUMN id_rol DROP DEFAULT;
       public          postgres    false    227    226            �
           2604    16967    usuario id_usuario    DEFAULT     x   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    229    228            �
           2604    16968    ventas id_ventas    DEFAULT     t   ALTER TABLE ONLY public.ventas ALTER COLUMN id_ventas SET DEFAULT nextval('public.ventas_id_ventas_seq'::regclass);
 ?   ALTER TABLE public.ventas ALTER COLUMN id_ventas DROP DEFAULT;
       public          postgres    false    231    230            �          0    16864    almacen 
   TABLE DATA           B   COPY public.almacen (id_almacen, stock, id_proveedor) FROM stdin;
    public          postgres    false    202   ��       �          0    16869 	   categoria 
   TABLE DATA           H   COPY public.categoria (id_categoria, nombre, id_inventario) FROM stdin;
    public          postgres    false    204   ��       �          0    16874    cliente 
   TABLE DATA           o   COPY public.cliente (id_cliente, nombre, rfc, estado, municipio, calle, numero, cp, status, email) FROM stdin;
    public          postgres    false    206   �       �          0    16879    compras 
   TABLE DATA           �   COPY public.compras (id_compras, id_empleado, id_proveedor, id_producto, cantidad, precio_compra, precio_venta, status_compra, fecha, id_factura, id_pago, iva, subtotal, total) FROM stdin;
    public          postgres    false    208   �       �          0    16887    contabilidad 
   TABLE DATA           Z   COPY public.contabilidad (id_contabilidad, id_venta, monto_total, fecha_pago) FROM stdin;
    public          postgres    false    210   (�       �          0    16895    cuenta_bancaria 
   TABLE DATA           i   COPY public.cuenta_bancaria (id_cuenta, nombre_banco, numero_tarjeta, cvc, fecha_expiracion) FROM stdin;
    public          postgres    false    212   E�       �          0    16900    empleado 
   TABLE DATA           �   COPY public.empleado (id_empleado, nombre, apellido_p, apellido_m, fecha_nacimiento, domicilio, telefono, correo, curp, rfc, edad, id_usuario) FROM stdin;
    public          postgres    false    214   b�       �          0    16905    facturacion 
   TABLE DATA           V   COPY public.facturacion (id_facturacion, nombre, descripcion, fecha, rfc) FROM stdin;
    public          postgres    false    216   �       �          0    16910 
   inventario 
   TABLE DATA           �   COPY public.inventario (id_inventario, id_producto, status, cantidad, id_proveedor, costo_pagado_productos, id_almacen) FROM stdin;
    public          postgres    false    218   ��       �          0    16918    pago 
   TABLE DATA           E   COPY public.pago (id_pago, id_cuenta, tipo, descripcion) FROM stdin;
    public          postgres    false    220   ƚ       �          0    16923    producto 
   TABLE DATA           f   COPY public.producto (id_producto, nombre_producto, descripcion, precio_unitario, status) FROM stdin;
    public          postgres    false    222   �       �          0    16931 	   proveedor 
   TABLE DATA           r   COPY public.proveedor (id_proveedor, area, telefono, nombre, rfc, email, direccion, status_proveedor) FROM stdin;
    public          postgres    false    224   �       �          0    16936    rol 
   TABLE DATA           -   COPY public.rol (id_rol, nombre) FROM stdin;
    public          postgres    false    226   s�       �          0    16941    usuario 
   TABLE DATA           U   COPY public.usuario (id_usuario, usuario, "contraseña", activo, id_rol) FROM stdin;
    public          postgres    false    228   ��       �          0    16946    ventas 
   TABLE DATA           �   COPY public.ventas (id_ventas, fecha, id_cliente, subtotal, iva, total, id_pago, status_venta, id_factura, precio, cantidad, id_producto) FROM stdin;
    public          postgres    false    230   �       �           0    0    almacen_id_almacen_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.almacen_id_almacen_seq', 1, true);
          public          postgres    false    203            �           0    0    categoria_id_categoria_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.categoria_id_categoria_seq', 1, true);
          public          postgres    false    205            �           0    0    cliente_id_cliente_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 1, false);
          public          postgres    false    207            �           0    0    compras_id_compras_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.compras_id_compras_seq', 1, false);
          public          postgres    false    209            �           0    0     contabilidad_id_contabilidad_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.contabilidad_id_contabilidad_seq', 1, false);
          public          postgres    false    211            �           0    0    cuenta_bancaria_id_cuenta_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.cuenta_bancaria_id_cuenta_seq', 1, false);
          public          postgres    false    213            �           0    0    empleado_id_empleado_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.empleado_id_empleado_seq', 1, false);
          public          postgres    false    215            �           0    0    facturacion_id_facturacion_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.facturacion_id_facturacion_seq', 1, false);
          public          postgres    false    217            �           0    0    inventario_id_inventario_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.inventario_id_inventario_seq', 1, true);
          public          postgres    false    219            �           0    0    pago_id_pago_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pago_id_pago_seq', 1, false);
          public          postgres    false    221            �           0    0    producto_id_producto_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.producto_id_producto_seq', 1, true);
          public          postgres    false    223            �           0    0    proveedor_id_proveedor_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.proveedor_id_proveedor_seq', 1, true);
          public          postgres    false    225            �           0    0    rol_id_rol_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.rol_id_rol_seq', 18, true);
          public          postgres    false    227            �           0    0    usuario_id_usuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 2, true);
          public          postgres    false    229            �           0    0    ventas_id_ventas_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.ventas_id_ventas_seq', 1, false);
          public          postgres    false    231            �
           2606    16970    almacen almacen_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.almacen
    ADD CONSTRAINT almacen_pkey PRIMARY KEY (id_almacen);
 >   ALTER TABLE ONLY public.almacen DROP CONSTRAINT almacen_pkey;
       public            postgres    false    202            �
           2606    16972    categoria categoria_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    204            �
           2606    16974    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    206            �
           2606    16976    compras compras_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_pkey PRIMARY KEY (id_compras);
 >   ALTER TABLE ONLY public.compras DROP CONSTRAINT compras_pkey;
       public            postgres    false    208            �
           2606    16978    contabilidad contabilidad_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.contabilidad
    ADD CONSTRAINT contabilidad_pkey PRIMARY KEY (id_contabilidad);
 H   ALTER TABLE ONLY public.contabilidad DROP CONSTRAINT contabilidad_pkey;
       public            postgres    false    210            �
           2606    16980 $   cuenta_bancaria cuenta_bancaria_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.cuenta_bancaria
    ADD CONSTRAINT cuenta_bancaria_pkey PRIMARY KEY (id_cuenta);
 N   ALTER TABLE ONLY public.cuenta_bancaria DROP CONSTRAINT cuenta_bancaria_pkey;
       public            postgres    false    212            �
           2606    16982    empleado empleado_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);
 @   ALTER TABLE ONLY public.empleado DROP CONSTRAINT empleado_pkey;
       public            postgres    false    214            �
           2606    16984    facturacion facturacion_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.facturacion
    ADD CONSTRAINT facturacion_pkey PRIMARY KEY (id_facturacion);
 F   ALTER TABLE ONLY public.facturacion DROP CONSTRAINT facturacion_pkey;
       public            postgres    false    216            �
           2606    16986    inventario inventario_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (id_inventario);
 D   ALTER TABLE ONLY public.inventario DROP CONSTRAINT inventario_pkey;
       public            postgres    false    218            �
           2606    16988    pago pago_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_pkey PRIMARY KEY (id_pago);
 8   ALTER TABLE ONLY public.pago DROP CONSTRAINT pago_pkey;
       public            postgres    false    220            �
           2606    16990    producto producto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id_producto);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    222            �
           2606    16992    proveedor proveedor_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (id_proveedor);
 B   ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_pkey;
       public            postgres    false    224                        2606    16994    rol rol_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id_rol);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            postgres    false    226                       2606    16996    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    228                       2606    16998    ventas ventas_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (id_ventas);
 <   ALTER TABLE ONLY public.ventas DROP CONSTRAINT ventas_pkey;
       public            postgres    false    230                       2606    16999    inventario id_alm_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT id_alm_fk FOREIGN KEY (id_almacen) REFERENCES public.almacen(id_almacen);
 >   ALTER TABLE ONLY public.inventario DROP CONSTRAINT id_alm_fk;
       public          postgres    false    218    202    2792                       2606    17009    ventas id_cli_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT id_cli_fk FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 :   ALTER TABLE ONLY public.ventas DROP CONSTRAINT id_cli_fk;
       public          postgres    false    206    230    2796                       2606    17014    compras id_emp_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT id_emp_fk FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado);
 ;   ALTER TABLE ONLY public.compras DROP CONSTRAINT id_emp_fk;
       public          postgres    false    214    208    2804                       2606    17019    ventas id_fac_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT id_fac_fk FOREIGN KEY (id_factura) REFERENCES public.facturacion(id_facturacion);
 :   ALTER TABLE ONLY public.ventas DROP CONSTRAINT id_fac_fk;
       public          postgres    false    216    230    2806                       2606    17024    compras id_fac_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT id_fac_fk FOREIGN KEY (id_factura) REFERENCES public.facturacion(id_facturacion);
 ;   ALTER TABLE ONLY public.compras DROP CONSTRAINT id_fac_fk;
       public          postgres    false    208    216    2806                       2606    17029    inventario id_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT id_inv_fk FOREIGN KEY (id_proveedor) REFERENCES public.proveedor(id_proveedor);
 >   ALTER TABLE ONLY public.inventario DROP CONSTRAINT id_inv_fk;
       public          postgres    false    2814    218    224                       2606    17034    categoria id_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT id_inv_fk FOREIGN KEY (id_inventario) REFERENCES public.inventario(id_inventario);
 =   ALTER TABLE ONLY public.categoria DROP CONSTRAINT id_inv_fk;
       public          postgres    false    204    218    2808            	           2606    17039    compras id_pag_fk    FK CONSTRAINT     t   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT id_pag_fk FOREIGN KEY (id_pago) REFERENCES public.pago(id_pago);
 ;   ALTER TABLE ONLY public.compras DROP CONSTRAINT id_pag_fk;
       public          postgres    false    208    220    2810                       2606    17044    ventas id_pago_fk    FK CONSTRAINT     t   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT id_pago_fk FOREIGN KEY (id_pago) REFERENCES public.pago(id_pago);
 ;   ALTER TABLE ONLY public.ventas DROP CONSTRAINT id_pago_fk;
       public          postgres    false    220    230    2810                       2606    17049    ventas id_pro_fk    FK CONSTRAINT        ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT id_pro_fk FOREIGN KEY (id_producto) REFERENCES public.producto(id_producto);
 :   ALTER TABLE ONLY public.ventas DROP CONSTRAINT id_pro_fk;
       public          postgres    false    222    230    2812            
           2606    17054    compras id_pro_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT id_pro_fk FOREIGN KEY (id_proveedor) REFERENCES public.proveedor(id_proveedor);
 ;   ALTER TABLE ONLY public.compras DROP CONSTRAINT id_pro_fk;
       public          postgres    false    2814    208    224                       2606    17059    almacen id_pro_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.almacen
    ADD CONSTRAINT id_pro_fk FOREIGN KEY (id_proveedor) REFERENCES public.proveedor(id_proveedor);
 ;   ALTER TABLE ONLY public.almacen DROP CONSTRAINT id_pro_fk;
       public          postgres    false    224    2814    202                       2606    17064    inventario id_prod_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT id_prod_fk FOREIGN KEY (id_producto) REFERENCES public.producto(id_producto);
 ?   ALTER TABLE ONLY public.inventario DROP CONSTRAINT id_prod_fk;
       public          postgres    false    218    2812    222                       2606    17069    compras id_prod_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT id_prod_fk FOREIGN KEY (id_producto) REFERENCES public.producto(id_producto);
 <   ALTER TABLE ONLY public.compras DROP CONSTRAINT id_prod_fk;
       public          postgres    false    222    2812    208                       2606    17074    usuario id_rol_fk    FK CONSTRAINT     q   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT id_rol_fk FOREIGN KEY (id_rol) REFERENCES public.rol(id_rol);
 ;   ALTER TABLE ONLY public.usuario DROP CONSTRAINT id_rol_fk;
       public          postgres    false    226    228    2816                       2606    17079    empleado id_usuario_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT id_usuario_fk FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 @   ALTER TABLE ONLY public.empleado DROP CONSTRAINT id_usuario_fk;
       public          postgres    false    2818    214    228                       2606    17084    contabilidad id_ven_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.contabilidad
    ADD CONSTRAINT id_ven_fk FOREIGN KEY (id_venta) REFERENCES public.ventas(id_ventas);
 @   ALTER TABLE ONLY public.contabilidad DROP CONSTRAINT id_ven_fk;
       public          postgres    false    230    2820    210            �      x�3�440�4����� <�      �      x�3�LN,IM�/�L,���4����� Q�(      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x�3�4BS if ��b���� )H9      �      x������ � �      �      x�3�LN,�K�����\1z\\\ Z\�      �   U   x�3�t���M�+�/�4426153��4�(�/KMM�/*����su��, �:�&f��%��r�d�&'g��r��qqq ���      �   2   x�3�LL����2�L��L�+I�2�L�-�IML��24�,��1����� 	�      �   $   x�3�,-N-2��@�e1�E��b���� ��	�      �      x������ � �     