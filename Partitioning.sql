CREATE TABLE IF NOT EXISTS public.twitter_users_partitioned (
    user_id character varying(255) COLLATE pg_catalog."default" NOT NULL,
    name text COLLATE pg_catalog."default",
    screen_name text COLLATE pg_catalog."default",
    "date" timestamp with time zone NOT NULL,
    twitter_join_date date,
    location text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    verified boolean,
    followers_count integer,
    friends_count integer,
    listed_count integer,
    favourites_count integer,
    language text COLLATE pg_catalog."default"
) PARTITION BY RANGE(my_extract("date"));

-- create child tables for each partition
CREATE TABLE public.twitter_users_partitioned_1 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (1) TO (6);
CREATE TABLE public.twitter_users_partitioned_2 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (7) TO (12);
CREATE TABLE public.twitter_users_partitioned_3 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (13) TO (18);
CREATE TABLE public.twitter_users_partitioned_4 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (19) TO (24);