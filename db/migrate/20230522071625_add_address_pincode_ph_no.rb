class AddAddressPincodePhNo < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :address, :text
    add_column :users, :pincode, :string
    add_column :users, :phonenumber, :string
  end
end
