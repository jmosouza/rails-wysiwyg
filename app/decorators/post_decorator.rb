module PostDecorator

  def card_title
    title
  end

  def card_content
    strip_tags(content).truncate 140, separator: ' '
  end

  def card_actions
    [
      button_link_to('Edit', edit_post_path(self), :primary),
      button_link_to('Destroy', post_path(self), :danger, method: :delete)
    ]
  end

end
