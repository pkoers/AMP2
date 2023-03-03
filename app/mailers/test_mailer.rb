class TestMailer < ApplicationMailer
  def test_email
    mail(to: 'pkoers75@gmail.com', from: 'mailtrap@mixty.com', subject: 'Test Email') do |format|
      format.text { render plain: 'This is a test email.' }
    end
  end
end
