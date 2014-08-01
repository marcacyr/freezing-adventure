module ApplicationHelper

  def bootstrap_class_for flash_type
    case flash_type
      when :success
        "alert alert-success"
      when :error
        "alert alert-error"
      when :alert
        "alert alert-block"
      when :notice
        "alert alert-info"
      else
        flash_type.to_s
    end
  end

end
