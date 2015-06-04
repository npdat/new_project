rails g scaffold batches
rails g scaffold single name:string position:string bdate:datetime bplace:string pport:string expiry:string sbook:string expiry_date:datetime nationality:string
rails d scaffold boarding_document
rails g scaffold boarding_document name:string gender:boolean position:string birthday:datetime birthday_place:datetime passport:string port:references flight_ticket:text is_flight:boolean time_arrive:datetime status_id:integer user:references remark:text

rails g scaffold boarding_document name:string gender:boolean position:string birthday:datetime
birthday_place:string passport:string nationality:string flight_ticket:text is_flight:boolean time_arrive:datetime
status_id:integer create_by:integer remark:text

rails g scaffold state status:string remark:text

#rails g scaffold user name:string email:string password:string user_type:integer

rails generate migration add_user_signature_to_users  user_signature:string

bin/rake db:drop db:create db:migrate db:seed RAILS_ENV=development
bin/rake db:drop db:create db:migrate db:seed RAILS_ENV=test

boarding_document
-name : string
-gender :bool
-position :string
-birthday :
-birthplace
-passport
-nationality
-flight_ticket
-is_flight
-time_arrive
-status_id
-create_by
-remark

state
-status
-remark

user
-name
-email
-password
-type