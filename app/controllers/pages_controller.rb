class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    # command to send emails via mailtrap
    # TestMailer.test_email.deliver_now
  end

  private

  def slack
    # function to send a notification to Slack
    url = 'https://hooks.slack.com/workflows/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'
    payload = { Notification: 'A lot of noise from AMP' }

    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true if uri.scheme == 'https'

    request = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/json')
    request.body = payload.to_json

    response = http.request(request)

    puts response.body
  end
end
