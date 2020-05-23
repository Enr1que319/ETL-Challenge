CREATE TABLE public.cat_genres (
	id SERIAL NOT NULL,
	name varchar NULL,
	CONSTRAINT cat_genres_pk PRIMARY KEY (id)
);

CREATE TABLE public.cat_original_language (
	id SERIAL NOT NULL,
	name varchar NULL,
	CONSTRAINT cat_original_language_pk PRIMARY KEY (id)
);

CREATE TABLE public.cat_production_companies (
	id SERIAL NOT NULL,
	name varchar NULL,
	CONSTRAINT cat_production_companies_pk PRIMARY KEY (id)
);


CREATE TABLE public.movies_details (
	imdb_id varchar NOT NULL,
	original_title varchar NULL,
	genres int4 NULL,
	original_language int4 NULL,
	popularity float4 NULL,
	production_companies int4 NULL,
	runtime float4 NULL,
	vote_average float4 NULL,
	vote_count float4 NULL,
	release_date date NULL,
	revenue float8 NULL,
	CONSTRAINT movies_details_pk PRIMARY KEY (imdb_id)
);


-- public.movies_details foreign keys

ALTER TABLE public.movies_details ADD CONSTRAINT movies_details_fk FOREIGN KEY (genres) REFERENCES cat_genres(id);
ALTER TABLE public.movies_details ADD CONSTRAINT movies_details_fk_1 FOREIGN KEY (original_language) REFERENCES cat_original_language(id);
ALTER TABLE public.movies_details ADD CONSTRAINT movies_details_fk_2 FOREIGN KEY (production_companies) REFERENCES cat_production_companies(id);