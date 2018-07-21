class TicketNotesController < ApplicationController
  def create
    @ticket_note = TicketNote.new(ticket_note_params)

    respond_to do |format|
      if @ticket_note.save
        format.html { redirect_to edit_ticket_path(@ticket_note.ticket), notice: 'Ticket was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_note }
      else
        format.html { render :new }
        format.json { render json: @ticket_note.errors, status: :unprocessable_entity }
      end
    end
  end

  def ticket_note_params
    params.require(:ticket_note).permit(:note, :ticket_id)
  end
end
