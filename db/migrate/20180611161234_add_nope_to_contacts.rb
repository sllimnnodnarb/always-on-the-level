class AddNopeToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :nope, :string
  end
end