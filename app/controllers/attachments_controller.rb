class AttachmentsController < ApplicationController

  def new
    @attachments = Attachment.all
    @attachment = Attachment.new
  end

  def create
    @attachment = Attachment.new(attachment_params)
    if @attachment.save
      flash[:success] = "The file was updated!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def attachment_params
    params.require(:attachment).permit(:title, :file)
  end

end
