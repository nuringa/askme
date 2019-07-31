class UsersController < ApplicationController
  def index
    @users = [
        User.new(
            id: 1,
            name: 'Vadim',
            username: 'installero',
            avatar_url: 'https://secure.gravatar.com/avatar/' \
        '71269686e0f757ddb4f73614f43ae445?s=100'
        ),
        User.new(id: 2, name: 'Misha', username: 'aristofun')
    ]
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
                    name: 'Serg',
                    username: 'beherit',
                    avatar_url: 'https://www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png',
    )
    @questions = [
        Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
        Question.new(
            text: 'В чем смысл жизни?', created_at: Date.parse('27.03.2016')
        ),
        Question.new(
            text: 'Есть ли жизнь на Марсе?', created_at: Date.parse('31.07.2019')
        )
    ]
    @new_question = Question.new
  end
end
