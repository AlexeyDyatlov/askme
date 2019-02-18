module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def declension(number, vopros, voprosa, voprosov)
    quantity = number % 100

    return voprosov if quantity.between?(11, 14)

    quantity = number % 10
    case quantity
    when 1 then return vopros
    when 2..4 then return voprosa
    when 5..9, 0 then return voprosov
    end
  end
end
