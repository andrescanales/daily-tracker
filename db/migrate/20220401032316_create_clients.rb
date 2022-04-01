class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.text :description
      t.boolean :status

      t.timestamps
    end
  end
end
