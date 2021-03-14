class AddTypeToQuotes < ActiveRecord::Migration[6.0]
  def change
    add_column :quotes, :type, :string
  end
end
