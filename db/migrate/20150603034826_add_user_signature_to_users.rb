class AddUserSignatureToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_signature, :string
  end
end
