class MessagesController < ApplicationController
  def show
    @message = Message.find(params[:id])	
  end
  def new
  end
  def create
    @message = Message.new(params.require(:message).permit(:text))
    @message.save 
  end
end
