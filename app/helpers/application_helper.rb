module ApplicationHelper

  def body_classes
    classes = []
    if is_mobile_request?
      classes << "mobile"
    else
      classes << "desktop"
    end

    classes.join(' ')
  end

end
