require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  def test_sentry
    begin
      1 / 0
    rescue => e
    Sentry.capture_exception(e)
    render plain: "Error captured and sent to Sentry!"
  end
end
