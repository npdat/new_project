class AppConfig < ActiveRecord::Base


  PUBLIC_FOLDER = Rails.root.join('public')
  PUBLIC_UPLOADS_FOLDER = PUBLIC_FOLDER.join('uploads')

end
