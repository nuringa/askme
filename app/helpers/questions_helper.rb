module QuestionsHelper
  def question_tags(string)
    string.downcase.split(' ').select { |word| word.start_with?('#') }
  end
end
