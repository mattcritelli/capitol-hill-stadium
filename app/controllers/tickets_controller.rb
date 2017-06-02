class TicketsController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      flash[:notice] = 'Ticket sucessfully purchased'
      redirect_to user_path(current_user)
    else
      @errors = @ticket.errors.full_messages
      render new_event_ticket_path
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:event_id, :price, :seat, :user_id)
  end


end
