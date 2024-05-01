create index ndex_dnm on tweets_jsonb using gin((data->'entities'->'hashtags'));
create index idx_dnm_2 on tweets_jsonb((data->>'lang'));
create index idx_dnm_3 on tweets_jsonb using gin((data->'extended_tweet'->'entities'->'hashtags'));
create index idx_dnm_gin on tweets_jsonb using gin(to_tsvector('english', coalesce(data->'extended_tweet'->>'full_text', data->>'text'))) where (data->>'lang'='en');
