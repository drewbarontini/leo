module CustomHelpers
  def get_page_priority(page)
    unless page.nested?
      data.priority.index(page.title) || data.priority.length
    else
      data.priority.index("#{ page.parent } - #{ page.title }") || data.priority.length
    end
  end

  def get_pages
    sitemap.resources.select { |resource| resource.data.type == 'page' }
      .sort_by { |r| get_page_priority(r.data) }
  end

  def get_page(priority)
    sitemap.resources.select { |resource| resource.data.type == 'page' and get_page_priority(resource.data) == priority }
  end

  def get_nested_pages(title)
    sitemap.resources.select { |resource| resource.data.type == 'page' and resource.data.nested == true and resource.data.parent == title }
      .sort_by { |r| get_page_priority(r.data) }
  end

  def is_page_active(page)
    current_page.url == page
  end

  def is_parent_page_active(page)
    current_page.url.match(page)
  end
end
