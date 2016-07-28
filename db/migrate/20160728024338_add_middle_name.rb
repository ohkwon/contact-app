class AddMiddleName < ActiveRecord::Migration
  def change
    add_column :contacts, :middle_name, :string
    add_column :contacts, :bio, :string
  end
end
