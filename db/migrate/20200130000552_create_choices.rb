class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.string :content
      t.integer :user_id
      t.integer :adventure_id
    end
  end
end
