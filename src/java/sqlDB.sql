/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Henry
 * Created: 03/08/2016
 */

-- Sequence: public.puntos_seq

-- DROP SEQUENCE public.puntos_seq;

CREATE SEQUENCE public.puntos_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1141
  CACHE 1;
ALTER TABLE public.puntos_seq
  OWNER TO usergis;
-- Table: public.puntos

-- DROP TABLE public.puntos;

CREATE TABLE public.puntos
(
  puntos_id integer NOT NULL DEFAULT nextval('puntos_seq'::regclass),
  nombre character varying(30),
  punto_map geometry(Point,4326),
  descripcion character varying(30),
  imagen_bit bytea,
  imagen_name character varying(30),
  CONSTRAINT puntos_pkey PRIMARY KEY (puntos_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.puntos
  OWNER TO usergis;
