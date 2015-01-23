activate :automatic_image_sizes
activate :directory_indexes
activate :livereload
activate :minify_html
activate :syntax

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true
set :relative_links, true

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
end
