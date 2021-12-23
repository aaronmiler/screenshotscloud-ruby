require './lib/screenshotscloud.rb'
require 'test/unit'

class TestScreenshotscloud < Test::Unit::TestCase
  def test_match_expected_output
    url = api_client.screenshot_url({
      "url" => "bbc.com/news"
    })

    assert(url == "https://api.screenshots.cloud/v1/screenshot/my-key-generated-at-screenshots-dot-cloud/3fc4e5cd418052343e3dc61b2eaf17bec53adaeb?url=bbc.com%2Fnews", "Expected output does not match")
  end

  def api_client
    ScreenshotsCloud.new("my-key-generated-at-screenshots-dot-cloud", "mysecretstringgeneratedatscreenshotsdotcloud");
  end
end
