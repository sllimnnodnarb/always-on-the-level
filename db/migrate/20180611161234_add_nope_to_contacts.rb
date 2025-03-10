class AddNopeToContacts < ActiveRecord::Migration[6.1]
  def change
    unless column_exists?(:contacts, :nope)
      add_column :contacts, :nope, :string
    end
  end
end
