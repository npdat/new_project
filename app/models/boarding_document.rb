class BoardingDocument < ActiveRecord::Base
  belongs_to :port
  belongs_to :user

  def self.list_boarding_documents
    @boarding_documents = BoardingDocument.select('name, gender, position, birthday, birthday_place, passport')
    result = Array.new
    @boarding_documents.each do |doc|
      single = Hash.new
      single[0] = {name: doc.name,
                   gender: doc.gender ? 'M' : 'F',
                   position: doc.position,
                   birthday: doc.birthday,
                   birthday_place: doc.birthday_place,
                   passport: doc.passport}
      result.push(single)
    end
    result
  end

end
