CREATE TYPE collection_approaches AS ENUM ('retrospective', 'concurrent', 'prospective');
CREATE TYPE statuses AS ENUM ('in use', 'inactive', 'in review');
CREATE TABLE kpi_bank (
  name TEXT NOT NULL,
  internal_id SERIAL NOT NULL PRIMARY KEY,
  external_id TEXT,
  short_desc TEXT NOT NULL,
  long_desc TEXT,
  formula TEXT NOT NULL,
  numerator_desc TEXT,
  denominator_desc TEXT,
  format TEXT NOT NULL,
  sources TEXT,
  collection_approach collection_approaches,
  statistical_adjustment TEXT,
  benchmark_values JSONB,
  target_value NUMERIC,
  trigger_value JSONB,
  adjustments TEXT,
  adjustment_formula TEXT,
  recommended_analysis TEXT,
  department_service_affected TEXT[],
  process_affected TEXT[],
  kpi_affected TEXT[],
  charting TEXT,
  reference JSONB,
  privacy TEXT,
  access_level SMALLINT,
  author TEXT,
  acronyms TEXT,
  owner_ TEXT,
  creation_date DATE,
  frequency_of_validation JSONB,
  revision_history JSONB,
  status statuses  
);
