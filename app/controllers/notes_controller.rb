class NotesController < ApplicationController

  def show
    @note = Note.where({ uuid: params[:note_uuid] }).first
    @note.destroy!
    unless @note
      render text: "Note can not be found", status: :not_found
    end
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    @note.uuid = SecureRandom.urlsafe_base64(nil, false)
    if @note.save
      # redirect_to "/#{@note.uuid}", notice: 'Note was successfully created.'
      render text: "http://secret.dev/#{@note.uuid}"
    else
      render action: "new"
    end
  end

  private

  def note_params
    params.require(:note).permit(:message)
  end

end
