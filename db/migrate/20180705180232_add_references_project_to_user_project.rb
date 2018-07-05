class AddReferencesProjectToUserProject < ActiveRecord::Migration[5.1]
  def change
    add_reference :user_projects, :project, foreign_key: true
  end
end
