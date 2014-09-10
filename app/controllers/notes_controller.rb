class NotesController < ApplicationController

  def show
    @note = Note.where({ uuid: params[:note_uuid] }).first
    if @note
      @note.destroy!
    else
      render '404'
    end
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    @note.uuid = SecureRandom.urlsafe_base64(nil, false)
    if @note.save
      render "link"
    else
      render action: "new"
    end
  end

  private

  def note_params
    params.require(:note).permit(:message)
  end

end
