class AddAuthorToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :author
  end
end
