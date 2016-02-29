class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.text :content, null: false
      t.belongs_to :user, index: true, foreign_key: true, null: false
    end
  end
end
