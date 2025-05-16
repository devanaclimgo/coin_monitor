class ApplicationController < ActionController::Base
   begin
    1/0
  rescue => e
    Sentry.capture_exception(e)
  end

  # Test message capture
  Sentry.capture_message("Sentry test message from Rails")
  
  render plain: "Sentry test completed - check your Sentry dashboard"
  
  allow_browser versions: :modern
end
