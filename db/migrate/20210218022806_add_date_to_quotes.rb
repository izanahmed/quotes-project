class AddDateToQuotes < ActiveRecord::Migration[6.0]
  def change
    add_column :quotes, :date, :string
  end
end
