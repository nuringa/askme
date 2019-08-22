module QuestionsHelper
  def list_tags(question)
    question.tags.map { |tag| '#' + tag.name }
  end
end
