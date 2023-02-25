class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :external_id
      t.string :avatar_url
      t.string :locale

      t.timestamps
    end
  end
end
