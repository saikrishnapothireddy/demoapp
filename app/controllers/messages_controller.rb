class MessagesController < ApplicationController
  def create
    @chat = current_user.messages.build(message_params)
    # @message.receiver_id = current_user.id
    if @chat.save
      flash[:success] = "Message Sent!"
      redirect_to message_user_user_path(@chat.receiver_id)
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def message_params
      params.require(:message).permit(:content, :receiver_id)
    end
end
