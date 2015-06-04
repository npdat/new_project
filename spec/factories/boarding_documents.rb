FactoryGirl.define do
  factory :boarding_document do
    name "My Name"
    gender false
    position "My Position"
    birthday "2014-06-02 10:40:06"
    birthday_place "My birthday place"
    passport "My Passport"
    nationality "My Nationlity"
    flight_ticket "My Flight Ticket"
    is_flight true
    time_arrive "2015-06-02 10:40:06"
    status_id 1
    create_by 1
    remark "My Remark"
  end

end
