class SentryTestController < ApplicationController
   skip_before_action :verify_authenticity_token
  
  def test
    # Test exception capture
    begin
      1/0
    rescue => e
      Sentry.capture_exception(e)
    end

    # Test message capture
    Sentry.capture_message("Sentry test message from Rails #{Time.now}")
    
    render plain: "Sentry test completed at #{Time.now} - check your dashboard"
  end
end
