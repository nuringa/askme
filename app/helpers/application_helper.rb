module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.png'
    end
  end

  def fa_icon(icon_class)
    content_tag 'span', '', class: "fa fa-#{icon_class}"
  end

  def declension(number, krokodil, krokodila, krokodilov)
    if (11..14).include?(number)
      return krokodilov
    end

    if (11..14).include?(number % 100)
      return krokodilov
    end

    remainder = number % 10
    if (remainder == 1)
      return krokodil
    end

    if (remainder >= 2 && remainder <= 4)
      return krokodila
    end

    if (remainder >= 5 && remainder <= 9 || remainder == 0)
      return krokodilov
    end
  end
end
