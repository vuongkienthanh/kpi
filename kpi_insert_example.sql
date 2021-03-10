INSERT INTO kpi_definitions (
  name, short_desc, formula, format, sources,
  target_value, trigger_values, charting, privacy,
  access_level, recommended_analysis, status
)  
VALUES (
  'công suất giường tiện ích',
  'công suất giường tiện ích so với toàn bộ giường tiện ích trong BV',
  'tích phân giường tiện ích dngày /tổng',
  '%',
  'báo cáo hàng ngày của khoa LS có giường',
  60, '{"low":30}', 'line plot', 'public',
  0, 'mô tả tỉ lệ theo thời gian', 'in use'
) RETURNING *;