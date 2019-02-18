class UsersController < ApplicationController
  def index
    @users = [
      User.new(
      id: 1,
      name: 'Ivan',
      username: 'Petrov',
      avatar_url: 'https://i.ytimg.com/vi/N5LssJweHg8/hqdefault.jpg')]
  end

  def new
  end
  
  def edit
  end

  def show
    @user = User.new(
      name: 'Ivan',
      username: 'Petrov',
      avatar_url: 'https://i.ytimg.com/vi/N5LssJweHg8/hqdefault.jpg')

    @questions = [
      Question.new(text: 'Как дела?', created_at: Date.parse('15.02.2019')),
      Question.new(text: 'В чем смысл жизни?', created_at: Date.parse('15.02.2019')),
      Question.new(text: 'Как дела?', created_at: Date.parse('15.02.2019'))]

    @new_question = Question.new
  end
end
