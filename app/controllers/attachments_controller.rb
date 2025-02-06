class AttachmentsController < InheritedResources::Base
  skip_before_action :verify_authenticity_token

  private

    def attachment_params
      params.permit(:image, :upload, :CKEditor, :CKEditorFuncNum, :langCode)
    end

end
