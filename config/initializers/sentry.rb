Sentry.init do |config|
  config.dsn = 'https://8f1b61774bf4ce9499dfd0bbb6f94a2c@o4509092339843072.ingest.de.sentry.io/4509327561326672'
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]
  
  # Set your environment
  config.environment = Rails.env
  
  # Enable performance monitoring
  config.traces_sample_rate = 0.5
  
  # Debugging
  config.debug = true
  config.send_default_pii = true
  
  # For testing in development
  config.enabled_environments = %w[production development test]
end