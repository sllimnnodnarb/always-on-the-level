class AddNopeToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :nope, :varchar
  end
end
