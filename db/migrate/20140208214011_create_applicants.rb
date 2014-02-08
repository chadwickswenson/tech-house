class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :email
      t.string :employer
      t.string :website
      t.string :about

      t.timestamps
    end
  end
end
