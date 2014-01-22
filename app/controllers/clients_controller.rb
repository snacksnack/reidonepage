class ClientsController < ApplicationController

  before_filter :authenticate_user!, only: [:index, :edit, :update, :destroy]

  def index
    @clients = Client.paginate(page: params[:page])
  end
  

  def new
  	@client = Client.new
  end

  def create
  	@client = Client.new(params[:client])

    respond_to do |format|
    	if @client.save
        format.html { redirect_to root_path, flash[:notice] = "Thanks, I'll be in touch shortly!" }
        format.js
        ClientMailer.client_notice(@client).deliver
    	else
        format.html { redirect_to root_path, flash[:notice] = "Oops. Something's gone wrong!" }
        format.js { }
    	end
    end
  end

  private

  def admin?(user)
    admin
  end

end
