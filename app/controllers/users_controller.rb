class UsersController < ApplicationController
  def index
    @users = [
      User.new(
      id: 1,
      name: 'Alexey',
      username: 'lucky',
      avatar_url: 'https://pp.userapi.com/c849224/v849224224/7ee25/RHxvp-sdN38.jpg?ava=1'
    ),
    User.new(
      id: 2,
      name: 'Sasha',
      username: 'kozlik')
    ]
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
      name: "Vasya",
      username: 'vasya',
      avatar_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTZ-J4K3bUmRbnVyopYQETMcSnIO2G1vmeTCGbgKs6hyO8xhLFVw')

    @questions = [
      Question.new(text: 'Как дела?', created_at: Date.parse('15.02.2019')),
      Question.new(
        text: 'В чем смысл жизни?', created_at: Date.parse('15.02.2019')
      )
    ]

    @new_question = Question.new
  end
end
