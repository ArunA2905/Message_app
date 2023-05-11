class MessagesController < ApplicationController

   def show
      @messages = Message.find(params[:id])
   end

   def index 
      @messages = Message.all
   end

   def new 
      @messages = Message.new
   end

   def create 
      @messages = Message.new(message_params)
        if @messages.save
            flash[:notice] = "Message was created successfully."
            redirect_to messages_path
        else
            render 'new'
        end   
   end

   private

   def message_params
      params.require(:message).permit(:message)
    end 
end
