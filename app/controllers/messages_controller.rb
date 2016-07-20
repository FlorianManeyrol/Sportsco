class MessagesController < ApplicationController
	before_action :find_seance, only: [:new, :create]

	def new
		@message = Message.new
		authorize @message
	end

	def create
		@message = @seance.messages.build(message_params)
		@message.user = current_user
		authorize @message
		if @message.save
			MessageMailer.message_now(@message).deliver_now
			redirect_to @seance, notice: 'Votre message à bien été envoyé'
		else
			render :new
		end
	end

	private

  def message_params
    params.require(:message).permit(:content, :user_id)
  end

  def find_seance
    @seance = Seance.find(params[:seance_id])
  end
end
