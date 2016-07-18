require 'twilio-ruby'
require 'dotenv'
Dotenv.load

class TextMessage

  def message(confirmation)
    send_message(confirmation)
  end

  private

  def send_message(confirmation)
    (account_sid = ENV['TWILIO_ACCOUNT_SID'])
    (auth_token = ENV['TWILIO_AUTH_TOKEN'])

    @client = Twilio::REST::Client.new(account_sid, auth_token)

    @client.account.messages.create(
    from: ENV['TWILIO_NUM'],
    to: ENV['MY_NUM'],
    body: confirmation
    )

  end

end
