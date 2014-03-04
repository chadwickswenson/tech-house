class ChangeAboutToTextForApplicants < ActiveRecord::Migration
  def change
    change_column :applicants, :about, :text
  end
end
