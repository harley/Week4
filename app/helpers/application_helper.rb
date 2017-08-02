module ApplicationHelper
  def flasherize(key)
    case key
    when :error
      "alert-danger"
    when :success
      "alert-success"
    else
      "alert-warning"
    end
  end
end
