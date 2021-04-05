class AddNopeToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :nope, :string
  end
end
