require "mailtrap"

mail = Mailtrap::Sending::Mail.new(
  from:
    {
      email: "mailtrap@mixty.com",
      name: "Mailtrap Test",
    },
  to: [
    {
      email: "pkoers75@gmail.com",
    }
  ],
  subject: "You are awesome!",
  text: "Congrats for sending test email with Mailtrap!",
  category: "Integration Test"
)

client = Mailtrap::Sending::Client.new(
  api_key: "b25b08bf1f52c73d3c356083db42de7d",
  api_host: "https://send.api.mailtrap.io/",
)

response = client.send(mail)
puts response
