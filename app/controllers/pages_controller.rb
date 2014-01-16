class PagesController < ApplicationController
	
  def hello
  	@client = Client.new
  end
end