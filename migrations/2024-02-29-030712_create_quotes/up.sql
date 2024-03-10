-- Your SQL goes here

CREATE TABLE IF NOT EXISTS public.quotes(
  id SERIAL PRIMARY KEY, 
  ticker_id SERIAL,
  date DATE NOT NULL,  
  adjust_close DECIMAL(25,8) NOT NULL,
  close DECIMAL(25,8) NOT NULL,
  open DECIMAL(25,8),
  high DECIMAL(25,8),
  low DECIMAL(25,8),
  average DECIMAL(25,8),
  ask DECIMAL(25,8),
  bid DECIMAL(25,8),
  adjust DECIMAL(25,8),
  volume DECIMAL(25,8),
  trades DECIMAL(25,8),
  change_24hrs DECIMAL(25,8) NOT NULL,
  change_5days DECIMAL(25,8) NOT NULL,
  change_7days DECIMAL(25,8) NOT NULL,
  change_month DECIMAL(25,8) NOT NULL,
  change_1month DECIMAL(25,8) NOT NULL,
  change_year DECIMAL(25,8) NOT NULL,
  change_12month DECIMAL(25,8) NOT NULL,
  change_1year DECIMAL(25,8) NOT NULL,
  change_2year DECIMAL(25,8) NOT NULL,
  change_3year DECIMAL(25,8) NOT NULL,
  change_4year DECIMAL(25,8) NOT NULL,
  change_5year DECIMAL(25,8) NOT NULL,
  change_begin DECIMAL(25,8) NOT NULL,
  daily_factor DECIMAL(25,8) NOT NULL,
  accumulated_factor DECIMAL(25,8) NOT NULL,
  uuid UUID NOT NULL DEFAULT uuid_generate_v4(),
  created_at timestamp with time zone NOT NULL DEFAULT NOW(),
  updated_at timestamp with time zone NOT NULL DEFAULT NOW(),
  CONSTRAINT fk_quotes_tickers FOREIGN KEY(ticker_id) REFERENCES tickers(id) 
)
