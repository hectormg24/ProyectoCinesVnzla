PGDMP             	            x            ProyectoLab    12.3    12.3 L    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24576    ProyectoLab    DATABASE     �   CREATE DATABASE "ProyectoLab" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Venezuela.1252' LC_CTYPE = 'Spanish_Venezuela.1252';
    DROP DATABASE "ProyectoLab";
                postgres    false            �            1259    24593    Cargo    TABLE     �   CREATE TABLE public."Cargo" (
    "codCargo" character varying(255)[] NOT NULL,
    "tipoCargo" character varying(255)[] NOT NULL,
    sueldo double precision NOT NULL,
    estatus "char" NOT NULL
);
    DROP TABLE public."Cargo";
       public         heap    postgres    false            �            1259    24714    Cine    TABLE       CREATE TABLE public."Cine" (
    "codCine" character varying(255)[] NOT NULL,
    "rifEmpresa" character varying(255)[] NOT NULL,
    "direcCine" character varying(255)[] NOT NULL,
    "tlfCine" character varying(255)[] NOT NULL,
    estatus "char" NOT NULL
);
    DROP TABLE public."Cine";
       public         heap    postgres    false            �            1259    24682    Ciudad    TABLE     �   CREATE TABLE public."Ciudad" (
    "codCiudad" character varying(255)[] NOT NULL,
    "nomCiudad" character varying(255)[] NOT NULL,
    estatus "char" NOT NULL
);
    DROP TABLE public."Ciudad";
       public         heap    postgres    false            �            1259    24706    Ciudad_Cine    TABLE     �   CREATE TABLE public."Ciudad_Cine" (
    "codCine" character varying(255)[] NOT NULL,
    "codCiudad" character varying(255)[] NOT NULL,
    "cantCines" integer NOT NULL
);
 !   DROP TABLE public."Ciudad_Cine";
       public         heap    postgres    false            �            1259    24844    Cliente    TABLE     i  CREATE TABLE public."Cliente" (
    "cedCliente" character varying(255)[] NOT NULL,
    "nombreCliente" character varying(255)[] NOT NULL,
    "apellidoCliente" character varying(255)[] NOT NULL,
    "cantVisitas" integer,
    "tlfCliente" character varying(255)[] NOT NULL,
    "correoCliente" character varying(255)[] NOT NULL,
    estatus "char" NOT NULL
);
    DROP TABLE public."Cliente";
       public         heap    postgres    false            �            1259    24738    Empleado    TABLE       CREATE TABLE public."Empleado" (
    "cedEmpleado" character varying(255)[] NOT NULL,
    "codCargo" character varying(255)[] NOT NULL,
    "codCine" character varying(255)[] NOT NULL,
    "nombreEmpleado" character varying(255)[] NOT NULL,
    "apellidoEmpleado" character varying(255)[] NOT NULL,
    "correoEmpleado" character varying(255)[] NOT NULL,
    "direcEmpleado" character varying(255)[] NOT NULL,
    "tlfEmpleado" character varying(255)[] NOT NULL,
    "fechaNacEmpleado" date NOT NULL,
    "contVentaDulces" integer
);
    DROP TABLE public."Empleado";
       public         heap    postgres    false            �            1259    24585    Empresa    TABLE       CREATE TABLE public."Empresa" (
    "rifEmpresa" character varying(20)[] NOT NULL,
    "nombreEmpresa" character varying(20)[] NOT NULL,
    "direccionEmpresa" character varying(255)[] NOT NULL,
    "correoEmpresa" character varying(100)[] NOT NULL,
    "tlfEmpresa" integer NOT NULL
);
    DROP TABLE public."Empresa";
       public         heap    postgres    false            �            1259    24831    Entrada    TABLE       CREATE TABLE public."Entrada" (
    "codEntrada" character varying(255)[] NOT NULL,
    "codFuncion" character varying(255)[] NOT NULL,
    "precioEntrada" double precision NOT NULL,
    estatus "char" NOT NULL,
    "tipoEntrada" character varying(255)[] NOT NULL
);
    DROP TABLE public."Entrada";
       public         heap    postgres    false            �            1259    24891    FacturaEntrada    TABLE     �  CREATE TABLE public."FacturaEntrada" (
    "codFacturaEntrada" character varying(255)[] NOT NULL,
    "cedEmpleado" character varying(255)[] NOT NULL,
    "cedCliente" character varying(255)[] NOT NULL,
    "codEntrada" character varying(255)[] NOT NULL,
    "cantEntrada" integer NOT NULL,
    "fechaFacturaEntrada" date NOT NULL,
    "precioTotalEntrada" double precision NOT NULL,
    estatus "char" NOT NULL
);
 $   DROP TABLE public."FacturaEntrada";
       public         heap    postgres    false            �            1259    24868    FacturaGolosina    TABLE     �  CREATE TABLE public."FacturaGolosina" (
    "codFactura" character varying(255)[] NOT NULL,
    "cedEmpleado" character varying(255)[] NOT NULL,
    "cedCliente" character varying(255)[] NOT NULL,
    "codGolosina" character varying(255)[] NOT NULL,
    "cantGolosinas" integer NOT NULL,
    "fechaFacturaGolosinas" date NOT NULL,
    "precioTotal" double precision NOT NULL,
    estatus "char" NOT NULL
);
 %   DROP TABLE public."FacturaGolosina";
       public         heap    postgres    false            �            1259    24803    Funcion    TABLE     W  CREATE TABLE public."Funcion" (
    "codFuncion" character varying(255)[] NOT NULL,
    "codSala" character varying(255)[] NOT NULL,
    "codHorario" character varying(255)[] NOT NULL,
    "codPelicula" character varying(255)[] NOT NULL,
    "codCine" character varying(255)[] NOT NULL,
    fecha date NOT NULL,
    estatus "char" NOT NULL
);
    DROP TABLE public."Funcion";
       public         heap    postgres    false            �            1259    24852    Golosina    TABLE     �   CREATE TABLE public."Golosina" (
    "codGolosina" character varying(255)[] NOT NULL,
    "nomGolosina" character varying(255)[] NOT NULL,
    "precioGolosina" double precision NOT NULL,
    estatus "char" NOT NULL
);
    DROP TABLE public."Golosina";
       public         heap    postgres    false            �            1259    24764    Horario    TABLE     �   CREATE TABLE public."Horario" (
    "codHorario" character varying(255)[] NOT NULL,
    "horarioInicio" time with time zone NOT NULL,
    "horarioFin" time with time zone NOT NULL,
    estatus "char" NOT NULL
);
    DROP TABLE public."Horario";
       public         heap    postgres    false            �            1259    24772    Pelicula    TABLE     �  CREATE TABLE public."Pelicula" (
    "codPelicula" character varying(255)[] NOT NULL,
    titulo character varying(255)[] NOT NULL,
    "tipoPelicula" character varying(255)[] NOT NULL,
    clasificacion "char" NOT NULL,
    idioma character varying(255)[] NOT NULL,
    duracion double precision NOT NULL,
    director character varying(255)[] NOT NULL,
    estatus "char" NOT NULL
);
    DROP TABLE public."Pelicula";
       public         heap    postgres    false            �            1259    24860 	   Promocion    TABLE     �   CREATE TABLE public."Promocion" (
    "codPromocion" character varying(255)[] NOT NULL,
    "nomPromocion" character varying(255)[] NOT NULL,
    "porcDescuento" double precision NOT NULL,
    estatus "char" NOT NULL
);
    DROP TABLE public."Promocion";
       public         heap    postgres    false            �            1259    24915    Rol_Usuario    TABLE     �   CREATE TABLE public."Rol_Usuario" (
    "codRol" character varying(255)[] NOT NULL,
    descripcion text NOT NULL,
    estatus "char" NOT NULL
);
 !   DROP TABLE public."Rol_Usuario";
       public         heap    postgres    false            �            1259    24756    Sala    TABLE     �   CREATE TABLE public."Sala" (
    "codSala" character varying(255)[] NOT NULL,
    "nombreSala" character varying(255)[] NOT NULL,
    "nroAsientos" integer NOT NULL,
    estatus "char" NOT NULL
);
    DROP TABLE public."Sala";
       public         heap    postgres    false            �            1259    24923    Usuario    TABLE       CREATE TABLE public."Usuario" (
    usuario character varying(255)[] NOT NULL,
    "cedEmpleado" character varying(255)[] NOT NULL,
    "codRol" character varying(255)[] NOT NULL,
    contrasenna character varying(255)[] NOT NULL,
    estatus "char" NOT NULL
);
    DROP TABLE public."Usuario";
       public         heap    postgres    false            �          0    24593    Cargo 
   TABLE DATA           K   COPY public."Cargo" ("codCargo", "tipoCargo", sueldo, estatus) FROM stdin;
    public          postgres    false    203   �h       �          0    24714    Cine 
   TABLE DATA           Z   COPY public."Cine" ("codCine", "rifEmpresa", "direcCine", "tlfCine", estatus) FROM stdin;
    public          postgres    false    206   i       �          0    24682    Ciudad 
   TABLE DATA           E   COPY public."Ciudad" ("codCiudad", "nomCiudad", estatus) FROM stdin;
    public          postgres    false    204   6i       �          0    24706    Ciudad_Cine 
   TABLE DATA           L   COPY public."Ciudad_Cine" ("codCine", "codCiudad", "cantCines") FROM stdin;
    public          postgres    false    205   Si       �          0    24844    Cliente 
   TABLE DATA           �   COPY public."Cliente" ("cedCliente", "nombreCliente", "apellidoCliente", "cantVisitas", "tlfCliente", "correoCliente", estatus) FROM stdin;
    public          postgres    false    213   pi       �          0    24738    Empleado 
   TABLE DATA           �   COPY public."Empleado" ("cedEmpleado", "codCargo", "codCine", "nombreEmpleado", "apellidoEmpleado", "correoEmpleado", "direcEmpleado", "tlfEmpleado", "fechaNacEmpleado", "contVentaDulces") FROM stdin;
    public          postgres    false    207   �i       �          0    24585    Empresa 
   TABLE DATA           u   COPY public."Empresa" ("rifEmpresa", "nombreEmpresa", "direccionEmpresa", "correoEmpresa", "tlfEmpresa") FROM stdin;
    public          postgres    false    202   �i       �          0    24831    Entrada 
   TABLE DATA           h   COPY public."Entrada" ("codEntrada", "codFuncion", "precioEntrada", estatus, "tipoEntrada") FROM stdin;
    public          postgres    false    212   �i       �          0    24891    FacturaEntrada 
   TABLE DATA           �   COPY public."FacturaEntrada" ("codFacturaEntrada", "cedEmpleado", "cedCliente", "codEntrada", "cantEntrada", "fechaFacturaEntrada", "precioTotalEntrada", estatus) FROM stdin;
    public          postgres    false    217   �i       �          0    24868    FacturaGolosina 
   TABLE DATA           �   COPY public."FacturaGolosina" ("codFactura", "cedEmpleado", "cedCliente", "codGolosina", "cantGolosinas", "fechaFacturaGolosinas", "precioTotal", estatus) FROM stdin;
    public          postgres    false    216   j       �          0    24803    Funcion 
   TABLE DATA           t   COPY public."Funcion" ("codFuncion", "codSala", "codHorario", "codPelicula", "codCine", fecha, estatus) FROM stdin;
    public          postgres    false    211   j       �          0    24852    Golosina 
   TABLE DATA           ]   COPY public."Golosina" ("codGolosina", "nomGolosina", "precioGolosina", estatus) FROM stdin;
    public          postgres    false    214   ;j       �          0    24764    Horario 
   TABLE DATA           Y   COPY public."Horario" ("codHorario", "horarioInicio", "horarioFin", estatus) FROM stdin;
    public          postgres    false    209   Xj       �          0    24772    Pelicula 
   TABLE DATA              COPY public."Pelicula" ("codPelicula", titulo, "tipoPelicula", clasificacion, idioma, duracion, director, estatus) FROM stdin;
    public          postgres    false    210   uj       �          0    24860 	   Promocion 
   TABLE DATA           _   COPY public."Promocion" ("codPromocion", "nomPromocion", "porcDescuento", estatus) FROM stdin;
    public          postgres    false    215   �j       �          0    24915    Rol_Usuario 
   TABLE DATA           G   COPY public."Rol_Usuario" ("codRol", descripcion, estatus) FROM stdin;
    public          postgres    false    218   �j       �          0    24756    Sala 
   TABLE DATA           Q   COPY public."Sala" ("codSala", "nombreSala", "nroAsientos", estatus) FROM stdin;
    public          postgres    false    208   �j       �          0    24923    Usuario 
   TABLE DATA           [   COPY public."Usuario" (usuario, "cedEmpleado", "codRol", contrasenna, estatus) FROM stdin;
    public          postgres    false    219   �j       �
           2606    24662    Cargo Cargo_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Cargo"
    ADD CONSTRAINT "Cargo_pkey" PRIMARY KEY ("codCargo");
 >   ALTER TABLE ONLY public."Cargo" DROP CONSTRAINT "Cargo_pkey";
       public            postgres    false    203            �
           2606    24721    Cine Cine_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Cine"
    ADD CONSTRAINT "Cine_pkey" PRIMARY KEY ("codCine");
 <   ALTER TABLE ONLY public."Cine" DROP CONSTRAINT "Cine_pkey";
       public            postgres    false    206            �
           2606    24713    Ciudad_Cine Ciudad_Cine_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Ciudad_Cine"
    ADD CONSTRAINT "Ciudad_Cine_pkey" PRIMARY KEY ("codCine", "codCiudad");
 J   ALTER TABLE ONLY public."Ciudad_Cine" DROP CONSTRAINT "Ciudad_Cine_pkey";
       public            postgres    false    205    205            �
           2606    24689    Ciudad Ciudad_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Ciudad"
    ADD CONSTRAINT "Ciudad_pkey" PRIMARY KEY ("codCiudad");
 @   ALTER TABLE ONLY public."Ciudad" DROP CONSTRAINT "Ciudad_pkey";
       public            postgres    false    204            �
           2606    24851    Cliente Cliente_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Cliente"
    ADD CONSTRAINT "Cliente_pkey" PRIMARY KEY ("cedCliente");
 B   ALTER TABLE ONLY public."Cliente" DROP CONSTRAINT "Cliente_pkey";
       public            postgres    false    213            �
           2606    24745    Empleado Empleado_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Empleado"
    ADD CONSTRAINT "Empleado_pkey" PRIMARY KEY ("cedEmpleado");
 D   ALTER TABLE ONLY public."Empleado" DROP CONSTRAINT "Empleado_pkey";
       public            postgres    false    207            �
           2606    24607    Empresa Empresa_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Empresa"
    ADD CONSTRAINT "Empresa_pkey" PRIMARY KEY ("rifEmpresa");
 B   ALTER TABLE ONLY public."Empresa" DROP CONSTRAINT "Empresa_pkey";
       public            postgres    false    202            �
           2606    24838    Entrada Entrada_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Entrada"
    ADD CONSTRAINT "Entrada_pkey" PRIMARY KEY ("codEntrada");
 B   ALTER TABLE ONLY public."Entrada" DROP CONSTRAINT "Entrada_pkey";
       public            postgres    false    212            �
           2606    24898 "   FacturaEntrada FacturaEntrada_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public."FacturaEntrada"
    ADD CONSTRAINT "FacturaEntrada_pkey" PRIMARY KEY ("codFacturaEntrada");
 P   ALTER TABLE ONLY public."FacturaEntrada" DROP CONSTRAINT "FacturaEntrada_pkey";
       public            postgres    false    217            �
           2606    24875 $   FacturaGolosina FacturaGolosina_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."FacturaGolosina"
    ADD CONSTRAINT "FacturaGolosina_pkey" PRIMARY KEY ("codFactura");
 R   ALTER TABLE ONLY public."FacturaGolosina" DROP CONSTRAINT "FacturaGolosina_pkey";
       public            postgres    false    216            �
           2606    24810    Funcion Funcion_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Funcion"
    ADD CONSTRAINT "Funcion_pkey" PRIMARY KEY ("codFuncion");
 B   ALTER TABLE ONLY public."Funcion" DROP CONSTRAINT "Funcion_pkey";
       public            postgres    false    211            �
           2606    24859    Golosina Golosina_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Golosina"
    ADD CONSTRAINT "Golosina_pkey" PRIMARY KEY ("codGolosina");
 D   ALTER TABLE ONLY public."Golosina" DROP CONSTRAINT "Golosina_pkey";
       public            postgres    false    214            �
           2606    24771    Horario Horario_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Horario"
    ADD CONSTRAINT "Horario_pkey" PRIMARY KEY ("codHorario");
 B   ALTER TABLE ONLY public."Horario" DROP CONSTRAINT "Horario_pkey";
       public            postgres    false    209            �
           2606    24779    Pelicula Pelicula_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Pelicula"
    ADD CONSTRAINT "Pelicula_pkey" PRIMARY KEY ("codPelicula");
 D   ALTER TABLE ONLY public."Pelicula" DROP CONSTRAINT "Pelicula_pkey";
       public            postgres    false    210            �
           2606    24867    Promocion Promocion_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Promocion"
    ADD CONSTRAINT "Promocion_pkey" PRIMARY KEY ("codPromocion");
 F   ALTER TABLE ONLY public."Promocion" DROP CONSTRAINT "Promocion_pkey";
       public            postgres    false    215            �
           2606    24922    Rol_Usuario Rol_Usuario_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Rol_Usuario"
    ADD CONSTRAINT "Rol_Usuario_pkey" PRIMARY KEY ("codRol");
 J   ALTER TABLE ONLY public."Rol_Usuario" DROP CONSTRAINT "Rol_Usuario_pkey";
       public            postgres    false    218            �
           2606    24763    Sala Sala_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Sala"
    ADD CONSTRAINT "Sala_pkey" PRIMARY KEY ("codSala");
 <   ALTER TABLE ONLY public."Sala" DROP CONSTRAINT "Sala_pkey";
       public            postgres    false    208            �
           2606    24930    Usuario Usuario_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT "Usuario_pkey" PRIMARY KEY (usuario);
 B   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT "Usuario_pkey";
       public            postgres    false    219            �
           2606    24722    Cine Cine_rifEmpresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Cine"
    ADD CONSTRAINT "Cine_rifEmpresa_fkey" FOREIGN KEY ("rifEmpresa") REFERENCES public."Empresa"("rifEmpresa");
 G   ALTER TABLE ONLY public."Cine" DROP CONSTRAINT "Cine_rifEmpresa_fkey";
       public          postgres    false    2772    202    206            �
           2606    24728 $   Ciudad_Cine Ciudad_Cine_codCine_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Ciudad_Cine"
    ADD CONSTRAINT "Ciudad_Cine_codCine_fkey" FOREIGN KEY ("codCine") REFERENCES public."Cine"("codCine") NOT VALID;
 R   ALTER TABLE ONLY public."Ciudad_Cine" DROP CONSTRAINT "Ciudad_Cine_codCine_fkey";
       public          postgres    false    2780    205    206            �
           2606    24733 &   Ciudad_Cine Ciudad_Cine_codCiudad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Ciudad_Cine"
    ADD CONSTRAINT "Ciudad_Cine_codCiudad_fkey" FOREIGN KEY ("codCiudad") REFERENCES public."Ciudad"("codCiudad") NOT VALID;
 T   ALTER TABLE ONLY public."Ciudad_Cine" DROP CONSTRAINT "Ciudad_Cine_codCiudad_fkey";
       public          postgres    false    2776    204    205            �
           2606    24746    Empleado Empleado_codCargo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Empleado"
    ADD CONSTRAINT "Empleado_codCargo_fkey" FOREIGN KEY ("codCargo") REFERENCES public."Cargo"("codCargo");
 M   ALTER TABLE ONLY public."Empleado" DROP CONSTRAINT "Empleado_codCargo_fkey";
       public          postgres    false    203    2774    207            �
           2606    24751    Empleado Empleado_codCine_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Empleado"
    ADD CONSTRAINT "Empleado_codCine_fkey" FOREIGN KEY ("codCine") REFERENCES public."Cine"("codCine");
 L   ALTER TABLE ONLY public."Empleado" DROP CONSTRAINT "Empleado_codCine_fkey";
       public          postgres    false    207    206    2780                        2606    24839    Entrada Entrada_codFuncion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Entrada"
    ADD CONSTRAINT "Entrada_codFuncion_fkey" FOREIGN KEY ("codFuncion") REFERENCES public."Funcion"("codFuncion");
 M   ALTER TABLE ONLY public."Entrada" DROP CONSTRAINT "Entrada_codFuncion_fkey";
       public          postgres    false    212    2790    211                       2606    24904 -   FacturaEntrada FacturaEntrada_cedCliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."FacturaEntrada"
    ADD CONSTRAINT "FacturaEntrada_cedCliente_fkey" FOREIGN KEY ("cedCliente") REFERENCES public."Cliente"("cedCliente");
 [   ALTER TABLE ONLY public."FacturaEntrada" DROP CONSTRAINT "FacturaEntrada_cedCliente_fkey";
       public          postgres    false    213    2794    217                       2606    24899 .   FacturaEntrada FacturaEntrada_cedEmpleado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."FacturaEntrada"
    ADD CONSTRAINT "FacturaEntrada_cedEmpleado_fkey" FOREIGN KEY ("cedEmpleado") REFERENCES public."Empleado"("cedEmpleado");
 \   ALTER TABLE ONLY public."FacturaEntrada" DROP CONSTRAINT "FacturaEntrada_cedEmpleado_fkey";
       public          postgres    false    217    2782    207                       2606    24909 -   FacturaEntrada FacturaEntrada_codEntrada_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."FacturaEntrada"
    ADD CONSTRAINT "FacturaEntrada_codEntrada_fkey" FOREIGN KEY ("codEntrada") REFERENCES public."Entrada"("codEntrada");
 [   ALTER TABLE ONLY public."FacturaEntrada" DROP CONSTRAINT "FacturaEntrada_codEntrada_fkey";
       public          postgres    false    212    2792    217                       2606    24881 /   FacturaGolosina FacturaGolosina_cedCliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."FacturaGolosina"
    ADD CONSTRAINT "FacturaGolosina_cedCliente_fkey" FOREIGN KEY ("cedCliente") REFERENCES public."Cliente"("cedCliente");
 ]   ALTER TABLE ONLY public."FacturaGolosina" DROP CONSTRAINT "FacturaGolosina_cedCliente_fkey";
       public          postgres    false    216    213    2794                       2606    24876 0   FacturaGolosina FacturaGolosina_cedEmpleado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."FacturaGolosina"
    ADD CONSTRAINT "FacturaGolosina_cedEmpleado_fkey" FOREIGN KEY ("cedEmpleado") REFERENCES public."Empleado"("cedEmpleado");
 ^   ALTER TABLE ONLY public."FacturaGolosina" DROP CONSTRAINT "FacturaGolosina_cedEmpleado_fkey";
       public          postgres    false    2782    216    207                       2606    24886 0   FacturaGolosina FacturaGolosina_codGolosina_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."FacturaGolosina"
    ADD CONSTRAINT "FacturaGolosina_codGolosina_fkey" FOREIGN KEY ("codGolosina") REFERENCES public."Golosina"("codGolosina");
 ^   ALTER TABLE ONLY public."FacturaGolosina" DROP CONSTRAINT "FacturaGolosina_codGolosina_fkey";
       public          postgres    false    2796    216    214            �
           2606    24826    Funcion Funcion_codCine_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Funcion"
    ADD CONSTRAINT "Funcion_codCine_fkey" FOREIGN KEY ("codCine") REFERENCES public."Cine"("codCine");
 J   ALTER TABLE ONLY public."Funcion" DROP CONSTRAINT "Funcion_codCine_fkey";
       public          postgres    false    2780    206    211            �
           2606    24816    Funcion Funcion_codHorario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Funcion"
    ADD CONSTRAINT "Funcion_codHorario_fkey" FOREIGN KEY ("codHorario") REFERENCES public."Horario"("codHorario");
 M   ALTER TABLE ONLY public."Funcion" DROP CONSTRAINT "Funcion_codHorario_fkey";
       public          postgres    false    209    211    2786            �
           2606    24821     Funcion Funcion_codPelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Funcion"
    ADD CONSTRAINT "Funcion_codPelicula_fkey" FOREIGN KEY ("codPelicula") REFERENCES public."Pelicula"("codPelicula");
 N   ALTER TABLE ONLY public."Funcion" DROP CONSTRAINT "Funcion_codPelicula_fkey";
       public          postgres    false    211    2788    210            �
           2606    24811    Funcion Funcion_codSala_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Funcion"
    ADD CONSTRAINT "Funcion_codSala_fkey" FOREIGN KEY ("codSala") REFERENCES public."Sala"("codSala");
 J   ALTER TABLE ONLY public."Funcion" DROP CONSTRAINT "Funcion_codSala_fkey";
       public          postgres    false    2784    208    211                       2606    24931     Usuario Usuario_cedEmpleado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT "Usuario_cedEmpleado_fkey" FOREIGN KEY ("cedEmpleado") REFERENCES public."Empleado"("cedEmpleado");
 N   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT "Usuario_cedEmpleado_fkey";
       public          postgres    false    219    2782    207                       2606    24936    Usuario Usuario_codRol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT "Usuario_codRol_fkey" FOREIGN KEY ("codRol") REFERENCES public."Rol_Usuario"("codRol");
 I   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT "Usuario_codRol_fkey";
       public          postgres    false    218    2804    219            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     