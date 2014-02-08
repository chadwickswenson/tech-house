class AddNameToApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :name, :string
  end
end
