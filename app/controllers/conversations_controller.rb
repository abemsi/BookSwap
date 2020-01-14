class ConversationsController < ApplicationController
  before_action :authorize_user

  def index
    @conversations = Conversation.where(sender_id: current_user.id)
    @conversations += Conversation.joins(:book).where(books: { user_id: current_user.id })

  end

  def create
    if Conversation.between(params[:sender_id], params[:book_id]).present?
      @conversation = Conversation.between(params[:sender_id], params[:book_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end
    redirect_to conversation_messages_path(@conversation)
  end

  def show_by_book
    @conversation = Conversation.find_or_create_by({ book_id: params[:book_id], sender_id: current_user.id })
    @messages = @conversation.messages
    @message = Message.new(conversation_id: @conversation.id)
    render 'messages/index'
  end

  private
  
    def conversation_params
      params.permit(:sender_id, :book_id)
    end

end