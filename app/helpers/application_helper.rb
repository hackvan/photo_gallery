module ApplicationHelper
  def page_title
    if content_for?(:title)
      "IdeaGallery - #{content_for(:title)}"
    else
      "IdeaGallery"
    end
  end

  def nav_link_to(text, url)
    classes = ['nav-link']
    classes << 'active' if current_page?(url)
    link_to(text, url, class: classes.join(' '))
  end
end
