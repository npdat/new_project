class CreateBoardingDocuments < ActiveRecord::Migration
  def change
    create_table :boarding_documents do |t|
      t.string :name
      t.boolean :gender
      t.string :position
      t.datetime :birthday
      t.datetime :birthday_place
      t.string :passport
      t.references :port, index: true
      t.text :flight_ticket
      t.boolean :is_flight
      t.datetime :time_arrive
      t.integer :status_id
      t.references :user, index: true
      t.text :remark

      t.timestamps
    end
  end
end
