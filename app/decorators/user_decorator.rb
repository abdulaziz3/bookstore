class UserDecorator < Draper::Decorator
  delegate_all

  def full_name
    "#{object.name} #{object.l_name}"
  end
end
