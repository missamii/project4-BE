class MessagesController < ApplicationController

def index
  messages = Message.all
  render json: messages
end

def show
  messages = Message.where(name: params[:name])
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


  def update
    puts params
    found_message = Message.where(name: params[:name])
    updated = found_message.update(name: params[:newName], email: params[:email], message: params[:message])
      if updated
    render json: updated
  else
    render json: {'error': updated.errors}
  end

end

def destroy
  puts "params", params
  Message.delete_all(id: params[:id])
  render json: {'Message controller': 'MESSAGES DESTROYED'}
  end

end
