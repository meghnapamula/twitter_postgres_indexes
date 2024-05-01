CREATE INDEX idx_nm_1 ON tweet_tags(tag, id_tweets);
CREATE INDEX idx_nm ON tweet_tags(id_tweets, tag);
CREATE INDEX idx_nm_4 ON tweets(lang);
CREATE INDEX idx_nm_5 ON tweet_tags(tag text_pattern_ops, id_tweets);
CREATE INDEX idx_nm_3 ON tweets USING GIN(to_tsvector('english', text)) WHERE lang = 'en';
CREATE INDEX idx_nm_2 ON tweets(id_tweets, lang);
