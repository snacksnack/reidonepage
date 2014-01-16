class ClientsController < ApplicationController

  def new
  	@client = Client.new
  end

  def create
  	@client = Client.new(params[:client])

  	if @client.save
  		flash[:success] = "Thanks for getting in touch! I'll provide feedback soon!"
  		redirect_to root_path
  	else
  		render 'pages/hello'
  		flash[:notice] = 'notice message notice message'
  	end
  	
  end
  
end
