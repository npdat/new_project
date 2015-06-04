class CreatePorts < ActiveRecord::Migration
  def change
    create_table :ports do |t|
      t.string :port_code
      t.string :name
      t.string :geo
      t.references :country, index: true

      t.timestamps
    end
  end
end
