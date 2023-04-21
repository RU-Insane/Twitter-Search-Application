CREATE TABLE IF NOT EXISTS public.twitter_users_partitioned (
    user_id character varying(255) COLLATE pg_catalog."default" NOT NULL,
    name text COLLATE pg_catalog."default",
    screen_name text COLLATE pg_catalog."default",
    date timestamp with time zone NOT NULL,
    twitter_join_date date,
    location text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    verified boolean,
    followers_count integer,
    friends_count integer,
    listed_count integer,
    favourites_count integer,
    language text COLLATE pg_catalog."default"
) PARTITION BY RANGE(EXTRACT(DAY FROM date));

-- create child tables for each partition
CREATE TABLE public.twitter_users_partitioned_1 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM ('2020-01-01') TO ('2020-01-10');
CREATE TABLE public.twitter_users_partitioned_2 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM ('2020-01-11') TO ('2020-01-20');
CREATE TABLE public.twitter_users_partitioned_3 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM ('2020-01-21') TO ('2020-01-31');
CREATE TABLE public.twitter_users_partitioned_4 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM ('2020-02-01') TO ('2020-02-10');
CREATE TABLE public.twitter_users_partitioned_5 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM ('2020-02-11') TO ('2020-02-20');
CREATE TABLE public.twitter_users_partitioned_6 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM ('2020-02-21') TO ('2020-02-28');
CREATE TABLE public.twitter_users_partitioned_7 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM ('2020-03-01') TO ('2020-03-10');
CREATE TABLE public.twitter_users_partitioned_8 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM ('2020-03-11') TO ('2020-03-20');
CREATE TABLE public.twitter_users_partitioned_9 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM ('2020-03-21') TO ('2020-03-31');
CREATE TABLE public.twitter_users_partitioned_10 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM ('2020-04-01') TO ('2020-04-10');
CREATE TABLE public.twitter_users_partitioned_11 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM ('2020-04-11') TO ('2020-04-20');
CREATE TABLE public.twitter_users_partitioned_12 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM ('2020-04-21') TO ('2020-04-25');
