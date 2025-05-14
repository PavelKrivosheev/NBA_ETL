--DDL stage-------------------------------------------------
CREATE TABLE stage.common_player_info (
    person_id VARCHAR(50),
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    birthdate TIMESTAMP,
    school VARCHAR(100),
  	country VARCHAR(100),
  	last_affiliation VARCHAR(100),
	height VARCHAR(100),
  	weight VARCHAR(100),
  	season_exp INT,
  	jersey VARCHAR(100),
  	position VARCHAR(100),
  	rosterstatus VARCHAR(100),
  	games_played_current_season_flag VARCHAR(100),
  	team_id INT,
  	team_name VARCHAR(100),
  	team_abbreviation VARCHAR(100),
  	team_code VARCHAR(100),
  	team_city VARCHAR(100),
  	from_year INT,
  	to_year INT,
  	dleague_flag VARCHAR(100),
  	nba_flag VARCHAR(100),
  	games_played_flag VARCHAR(100),
  	draft_year VARCHAR(100),
  	draft_round VARCHAR(100),
  	draft_number VARCHAR(100),
    load_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE stage.draft_history (
    person_id VARCHAR(100),
    player_name VARCHAR(100),
    season VARCHAR(100),
    round_number INT,
    round_pick INT,
    overall_pick INT,
    draft_type VARCHAR(100),
    team_id VARCHAR(100),
    team_city VARCHAR(100),
    team_name VARCHAR(100),
    team_abbreviation VARCHAR(100),
    organization VARCHAR(100),
    organization_type VARCHAR(100),
    player_profile_flag VARCHAR(100),
    load_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE stage.draft_combine_stats (
season VARCHAR(100),
player_id VARCHAR(100),
first_name VARCHAR(100),
last_name VARCHAR(100),
position VARCHAR(100),
height_wo_shoes_ft_in VARCHAR(100),
weight VARCHAR(100),
wingspan_ft_in VARCHAR(100),
on_move_college VARCHAR(100),
load_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE stage.game (
    season_id VARCHAR(100),
    team_id_home VARCHAR(100),
    team_abbreviation_home VARCHAR(100),
    team_name_home VARCHAR(100),
    game_id VARCHAR(100),
    game_date TIMESTAMP,
    matchup_home VARCHAR(100),
    wl_home VARCHAR(100),
    min INT,
    fgm_home INT,
    fga_home INT,
    fg_pct_home NUMERIC(5,3),
    fg3m_home INT,
    fg3a_home INT,
    fg3_pct_home NUMERIC(5,3),
    ftm_home INT,
    fta_home INT,
    ft_pct_home NUMERIC(5,3),
    oreb_home INT,
    dreb_home INT,
    reb_home INT,
    ast_home INT,
    stl_home INT,
    blk_home INT,
    tov_home INT,
    pf_home INT,
    pts_home INT,
    plus_minus_home INT,
    video_available_home INT,
    team_id_away VARCHAR(100),
    team_abbreviation_away VARCHAR(100),
    team_name_away VARCHAR(100),
    matchup_away VARCHAR(100),
    wl_away VARCHAR(100),
    fgm_away INT,
    fga_away INT,
    fg_pct_away NUMERIC(5,3),
    fg3m_away INT,
    fg3a_away INT,
    fg3_pct_away NUMERIC(5,3),
    ftm_away INT,
    fta_away INT,
    ft_pct_away NUMERIC(5,3),
    oreb_away INT,
    dreb_away INT,
    reb_away INT,
    ast_away INT,
    stl_away INT,
    blk_away INT,
    tov_away INT,
    pf_away INT,
    pts_away INT,
    plus_minus_away INT,
    video_available_away INT,
    season_type VARCHAR(100),
    load_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE stage.line_score_game (
game_date_est TIMESTAMP,
game_id VARCHAR(100),
team_id_home VARCHAR(100),
team_abbreviation_home VARCHAR(100),
team_city_name_home VARCHAR(100),
team_nickname_home VARCHAR(100),
pts_qtr1_home VARCHAR(100),
pts_qtr2_home VARCHAR(100),
pts_qtr3_home VARCHAR(100),
pts_qtr4_home VARCHAR(100),
pts_ot1_home INT,
pts_ot2_home INT,
pts_ot3_home INT,
pts_ot4_home INT,
pts_home INT,
team_id_away VARCHAR(100),
team_abbreviation_away VARCHAR(100),
team_city_name_away VARCHAR(100),
team_nickname_away VARCHAR(100),
pts_qtr1_away INT,
pts_qtr2_away VARCHAR(100),
pts_qtr3_away VARCHAR(100),
pts_qtr4_away INT,
pts_ot1_away INT,
pts_ot2_away INT,
pts_ot3_away INT,
pts_ot4_away INT,
pts_away INT,
load_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE stage.other_stats (
game_id VARCHAR(100),
team_id_home VARCHAR(100),
team_abbreviation_home VARCHAR(100),
team_city_home VARCHAR(100),
pts_paint_home INT,
pts_2nd_chance_home INT,
pts_fb_home INT,
largest_lead_home INT,
lead_changes INT,
times_tied INT,
team_turnovers_home INT,
total_turnovers_home INT,
team_rebounds_home INT,
pts_off_to_home INT,
team_id_away VARCHAR(100),
team_abbreviation_away VARCHAR(100),
team_city_away VARCHAR(100),
pts_paint_away INT,
pts_2nd_chance_away INT,
pts_fb_away INT,
largest_lead_away INT,
team_turnovers_away INT,
total_turnovers_away INT,
team_rebounds_away INT,
pts_off_to_away INT,
load_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE stage.player (
id INT,
full_name VARCHAR(100),
first_name VARCHAR(100),
last_name VARCHAR(100),
load_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE stage.team (
id INT,
full_name VARCHAR(100),
abbreviation VARCHAR(100),
nickname VARCHAR(100),
city VARCHAR(100),
state VARCHAR(100),
year_founded INT,
load_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE stage.team_details (
team_id INT,
abbreviation VARCHAR(100),
nickname VARCHAR(100),
yearfounded INT,
city VARCHAR(100),
arena VARCHAR(100),
arenacapacity INT,
owner VARCHAR(100),
generalmanager VARCHAR(100),
headcoach VARCHAR(100),
instagram VARCHAR(100),
load_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE stage.shot_data (
    season_1 VARCHAR(10),
    season_2 VARCHAR(10),
    team_id VARCHAR(100),
    team_name VARCHAR(100),
    player_id VARCHAR(50),
    player_name VARCHAR(100),
    position_group VARCHAR(50),
    position VARCHAR(50),
    game_date DATE,
    game_id VARCHAR(50),
    home_team VARCHAR(100),
    away_team VARCHAR(100),
    event_type VARCHAR(100),
    shot_made BOOLEAN,
    action_type VARCHAR(100),
    shot_type VARCHAR(100),
    basic_zone VARCHAR(100),
    zone_name VARCHAR(100),
    zone_abb VARCHAR(50),
    zone_range VARCHAR(50),
    loc_x FLOAT,
    loc_y FLOAT,
    shot_distance INT,
    quarter INT,
    mins_left INT,
    secs_left INT,
    load_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


--DDL DDS---------------------------------------------------------------------

CREATE TABLE dds.dim_game (
	game_id int8 NOT NULL,
	game_date date NOT NULL,
	season_id varchar(100) NOT NULL,
	season_year int4 NOT NULL,
	home_team_id int8 NOT NULL,
	away_team_id int8 NOT NULL,
	matchup varchar(100) NULL,
	load_timestamp timestamp DEFAULT '1970-01-01 00:00:00'::timestamp without time zone NOT NULL,
	CONSTRAINT dim_game_pkey PRIMARY KEY (game_id),
	CONSTRAINT dim_game_unique_key UNIQUE (game_id)
);

CREATE TABLE dds.dim_player (
	player_id int8 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL,
	business_key varchar(50) NOT NULL,
	full_name varchar(100) NULL,
	first_name varchar(100) NULL,
	last_name varchar(100) NULL,
	"position" varchar(100) NULL,
	team_id int8 NULL,
	valid_from timestamp NOT NULL,
	valid_to timestamp NULL,
	is_active bool NOT NULL,
	load_timestamp timestamp DEFAULT '1970-01-01 00:00:00'::timestamp without time zone NOT NULL,
	CONSTRAINT dim_player_pkey PRIMARY KEY (player_id)
);
CREATE INDEX idx_dim_player_player_id ON dds.dim_player USING btree (player_id);

CREATE TABLE dds.dim_team (
	team_id int8 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL,
	business_key varchar(100) NOT NULL,
	full_name varchar(100) NULL,
	abbreviation varchar(100) NULL,
	city varchar(100) NULL,
	arena varchar(100) NULL,
	conference varchar(50) NULL,
	valid_from timestamp NOT NULL,
	valid_to timestamp NULL,
	is_active bool NOT NULL,
	load_timestamp timestamp DEFAULT '1970-01-01 00:00:00'::timestamp without time zone NOT NULL,
	CONSTRAINT dim_team_pkey PRIMARY KEY (team_id)
);
CREATE INDEX idx_dim_team_business_key ON dds.dim_team USING btree (business_key);

CREATE TABLE dds.dim_time (
	time_id int8 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL,
	season_year int4 NOT NULL,
	season_name varchar(10) NOT NULL,
	load_timestamp timestamp DEFAULT '1970-01-01 00:00:00'::timestamp without time zone NOT NULL,
	CONSTRAINT dim_time_pkey PRIMARY KEY (time_id),
	CONSTRAINT dim_time_season_year_key UNIQUE (season_year),
	CONSTRAINT dim_time_unique_key UNIQUE (season_year)
);
CREATE INDEX idx_dim_time_time_id ON dds.dim_time USING btree (time_id);

CREATE TABLE dds.dim_zone (
	zone_id int8 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL,
	basic_zone varchar(100) NOT NULL,
	zone_name varchar(100) NULL,
	zone_range varchar(50) NULL,
	zone_abb varchar(50) NULL,
	load_timestamp timestamp DEFAULT '1970-01-01 00:00:00'::timestamp without time zone NOT NULL,
	CONSTRAINT dim_zone_basic_zone_zone_name_zone_range_key UNIQUE (basic_zone, zone_name, zone_range),
	CONSTRAINT dim_zone_pkey PRIMARY KEY (zone_id),
	CONSTRAINT dim_zone_unique_key UNIQUE (basic_zone, zone_name, zone_range)
);
CREATE INDEX idx_dim_zone_keys ON dds.dim_zone USING btree (basic_zone, zone_name, zone_range);
CREATE INDEX idx_dim_zone_zone_id ON dds.dim_zone USING btree (zone_id);

CREATE TABLE dds.fact_games (
	game_id int8 NOT NULL,
	team_id int8 NOT NULL,
	time_id int8 NOT NULL,
	is_home bool NOT NULL,
	pts int4 NULL,
	fgm int4 NULL,
	fga int4 NULL,
	fg3m int4 NULL,
	fg3a int4 NULL,
	pts_paint int4 NULL,
	load_timestamp timestamp DEFAULT '1970-01-01 00:00:00'::timestamp without time zone NOT NULL,
	CONSTRAINT fact_games_pkey PRIMARY KEY (game_id, team_id),
	CONSTRAINT fact_games_unique_key UNIQUE (game_id, team_id)
);

CREATE TABLE dds.fact_shots (
	shot_id int8 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL,
	player_id int8 NOT NULL,
	team_id int8 NOT NULL,
	game_id int8 NOT NULL,
	zone_id int8 NOT NULL,
	time_id int8 NOT NULL,
	shot_made bool NOT NULL,
	shot_type varchar(50) NOT NULL,
	loc_x float8 NULL,
	loc_y float8 NULL,
	shot_distance int4 NULL,
	quarter int4 NULL,
	mins_left int4 NULL,
	secs_left int4 NULL,
	load_timestamp timestamp DEFAULT '1970-01-01 00:00:00'::timestamp without time zone NOT NULL,
	CONSTRAINT fact_shots_pkey PRIMARY KEY (shot_id),
	CONSTRAINT fact_shots_unique_key UNIQUE (game_id, player_id, quarter, mins_left, secs_left)
);
CREATE INDEX idx_fact_shots_keys ON dds.fact_shots USING btree (player_id, zone_id, time_id, team_id);
CREATE INDEX idx_fact_shots_keys_timestamp ON dds.fact_shots USING btree (game_id, player_id, quarter, mins_left, secs_left, load_timestamp);


--DDL tech----------------------------------------------------------

CREATE TABLE tech.load_logs (
	log_id serial4 NOT NULL,
	process_name varchar(100) NOT NULL,
	object_name varchar(100) NOT NULL,
	layer varchar(10) NOT NULL,
	operation_type varchar(50) NULL,
	start_time timestamp NOT NULL,
	end_time timestamp NULL,
	status varchar(20) NOT NULL,
	records_processed int4 NULL,
	"comment" text NULL,
	source_type varchar(10) NOT NULL,
	CONSTRAINT load_logs_layer_check CHECK (((layer)::text = ANY ((ARRAY['STAGE'::character varying, 'DDS'::character varying, 'DATA_MART'::character varying])::text[]))),
	CONSTRAINT load_logs_pkey PRIMARY KEY (log_id),
	CONSTRAINT load_logs_source_type_check CHECK (((source_type)::text = ANY (ARRAY[('RAW'::character varying)::text, ('STAGE'::character varying)::text, ('DDS'::character varying)::text, ('SQLITE'::character varying)::text, ('CSV'::character varying)::text]))),
	CONSTRAINT load_logs_status_check CHECK (((status)::text = ANY ((ARRAY['SUCCESS'::character varying, 'FAILED'::character varying])::text[])))
);

CREATE TABLE tech.load_progress (
	table_name varchar(100) NOT NULL,
	last_loaded_year int4 NULL,
	is_completed bool NULL,
	load_timestamp timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT load_progress_pkey PRIMARY KEY (table_name)
);

INSERT INTO tech.load_progress (table_name, last_loaded_year, is_completed)
VALUES ('game', 2003, FALSE),
	   ('line_score_game', 2003, FALSE),
	   ('shot_data', 2003, FALSE)
ON CONFLICT (table_name) DO NOTHING;


