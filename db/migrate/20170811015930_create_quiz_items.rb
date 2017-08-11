class CreateQuizItems < ActiveRecord::Migration[5.0]
  def change
    create_table :quiz_items do |t|
      t.text :question
      t.string :answer

      t.timestamps
    end
  end
end
