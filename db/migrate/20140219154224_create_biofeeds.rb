class CreateBiofeeds < ActiveRecord::Migration
  def change
    create_table :biofeeds do |t|
      t.string :description

      t.timestamps
    end
  end
end
