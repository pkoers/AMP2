class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    TestMailer.test_email.deliver_now
  end
end
