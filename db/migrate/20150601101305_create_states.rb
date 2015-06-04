class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :status
      t.text :remark

      t.timestamps
    end
  end
end
