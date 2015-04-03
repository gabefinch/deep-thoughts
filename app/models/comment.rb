class Comment < ActiveRecord::Base
  belongs_to :entry
  belongs_to :user
  validates :body, :presence => true
  after_save :send_sms

private
  begin
    def send_sms
      RestClient::Request.new(
      :method => :post,
      :url => 'https://api.twilio.com/2010-04-01/Accounts/' + ENV['TWILIO_ACCOUNT_SID'] + '/Messages.json',
      :user => ENV['TWILIO_ACCOUNT_SID'],
      :password => ENV['TWILIO_AUTH_TOKEN'],
      :payload => {
        :Body => 'Your post was commented on.',
        :From => ENV['TWILIO_PHONE_NUM'],
        :To => self.entry.user.phone
        }
      ).execute
    rescue RestClient::BadRequest => error
      message = JSON.parse(error.response)['message']
      errors.add(:base, message)
      false
    end
  end
end
