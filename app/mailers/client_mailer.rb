class ClientMailer < ActionMailer::Base

  default to: 'hihelloreid@gmail.com'

  def client_notice(client)
    @client = client
  	mail(subject: "#{client.fname} #{client.lname}", from: client.email)
  end
end
