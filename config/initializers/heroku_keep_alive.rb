require 'rufus/scheduler'
scheduler = Rufus::Scheduler.new

if Rails.env.production?
  scheduler.every '1m' do
     require "net/http"
     require "uri"
     pust "#{HOSTNAME}"
     Net::HTTP.get_response(URI.parse(ENV["HOSTNAME"]))
  end
end