class Document < ApplicationRecord
  mount_uploader :file, FileUploader

  def file_name
    file.file.original_filename
  end
end
