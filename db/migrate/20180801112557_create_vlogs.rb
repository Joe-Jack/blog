class CreateVlogs < ActiveRecord::Migration
  def change
    create_table :vlogs do |t|
      t.string :name
      t.text   :text
      
    end
  end
end
