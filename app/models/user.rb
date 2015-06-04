class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #npdat: Upload file to server
  def self.upload_file(upload)
    if upload.is_a?(ActionDispatch::Http::UploadedFile)
      # test
      upload_folder = AppConfig::PUBLIC_UPLOADS_FOLDER
      file_name = upload.original_filename
      idx = file_name.rindex('.')
      ext = file_name[idx+1..-1]

      file_path = upload_folder.join(file_name).to_s

      # validate file
      ext_config = 'jpg,jpeg,gif,png'
      ext_config = ext_config.split(',')
      unless ext.in? (ext_config)
        return nil
      else
        File.open(file_path, 'wb') do |file|
          file.write(upload.read)
        end
      end

      return file_name
    end

    return nil
  end
  #end npdat

end
