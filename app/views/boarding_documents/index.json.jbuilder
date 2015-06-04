json.array!(@boarding_documents) do |boarding_document|
  json.extract! boarding_document, :id, :name, :gender, :position, :birthday, :birthday_place, :passport, :port_id, :flight_ticket, :is_flight, :time_arrive, :status_id, :user_id, :remark
  json.url boarding_document_url(boarding_document, format: :json)
end
