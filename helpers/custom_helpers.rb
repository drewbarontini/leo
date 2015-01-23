# ====================================
#   Custom Helpers
# ====================================

module CustomHelpers

  # Get the priority number of a page
  #
  # == Parameters
  #
  # @param page [String] the name of the page
  #
  # == Usage
  #
  #   get_page_priority(current_page.data)
  #
  def get_page_priority(page)
    unless page.nested?
      data.priority.index(page.title) || data.priority.length
    else
      data.priority.index("#{ page.parent } - #{ page.title }") || data.priority.length
    end
  end

  # Get all of the pages
  #
  # == Usage
  #
  #   get_pages.each do |page|
  #     # ...
  #
  def get_pages
    sitemap.resources.select { |resource| resource.data.type == 'page' }
      .sort_by { |r| get_page_priority(r.data) }
  end

  # Get a single page based on priority
  #
  # == Parameters
  #
  # @param priority [Integer] the priority for the page
  #
  def get_page(priority)
    sitemap.resources.select { |resource| resource.data.type == 'page' and get_page_priority(resource.data) == priority }
  end

  # Get nested pages
  #
  # == Parameters
  #
  # @param title [String] the title of the parent
  #
  # == Usage
  #
  #   get_nested_pages('Parent').each do |page|
  #     # ...
  #
  def get_nested_pages(title)
    sitemap.resources.select { |resource| resource.data.type == 'page' and resource.data.nested == true and resource.data.parent == title }
      .sort_by { |r| get_page_priority(r.data) }
  end

  # Check if the current page is active
  #
  # == Parameters
  #
  # @param page [String] the name of the page
  #
  # == Usage
  #
  #   = link_to 'Home', '/', class: ( 'is-active' if is_page_active('/') )
  #
  def is_page_active(page)
    current_page.url == page
  end

  # Check if the page's parent is active
  #
  # == Parameters
  #
  # @param page [String] the name of the page
  #
  # == Usage
  #
  #   = link_to 'Home', '/', class: ( 'is-active' if is_parent_page_active('/') )
  #
  def is_parent_page_active(page)
    current_page.url.match(page)
  end
end
