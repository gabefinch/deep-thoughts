class Comment < ActiveRecord::Base
  belongs_to :entry
  belongs_to :user
  validates :body, :presence => true
  before_create :send_sms

private
  begin
    def send_sms
      RestClient::Request.new(
      :method => :post,
      :url => 'https://api.twilio.com/2010-04-01/Accounts/' + ENV['TWILIO_ACCOUNT_SID'] + '/Messages.json',
      :user => ENV['TWILIO_ACCOUNT_SID'],
      :password => ENV['TWILIO_AUTH_TOKEN'],
      :payload => {
        :Body => 'Your post' +  self.entry + 'was commented on by' + self.user.email + '.',
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
