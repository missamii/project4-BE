class MessagesController < ApplicationController

def index
  message = Message.all
  render json: messages
end

def create
  new_message = Message.new(name: params[:name], email: params[:email], message: params[:message])
      if new_message.save
      render json: new_message
    else # otherwise render an error because we messed up.
      render json: {'error': new_message.errors}
    end
  end
end
