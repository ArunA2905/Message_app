class DateTime < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :date_at, :date
    add_column :messages, :time_at, :time
  end
end
