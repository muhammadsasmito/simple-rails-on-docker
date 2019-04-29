class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.string :email
      t.string :nip
      t.string :nama

      t.timestamps
    end
  end
end
