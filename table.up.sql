-- Create table

CREATE TABLE ranges (
  id bigint NOT NULL,
	initial integer,
  final integer,

  int_range int4range
);

CREATE SEQUENCE public.ranges_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

ALTER SEQUENCE public.ranges_id_seq OWNED BY public.ranges.id;

-- Index

CREATE INDEX index_ranges_int4range ON public.ranges USING GIST (int_range);

CREATE INDEX index_ranges_ranges ON public.ranges USING btree (initial, final);
