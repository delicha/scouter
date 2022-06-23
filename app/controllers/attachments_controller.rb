class AttachmentsController < ApplicationController
  def purge
    attachement = ActiveStorage::Attachment.find(params[:id])
    attachement.purge
    redirect_back fallback_location: root_path, notice: "画像を削除しました。" 
  end
end
