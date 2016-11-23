###
# Page options, layouts, aliases and proxies
###

activate :blog do |blog|
  # set options on blog
  blog.prefix = "blog"
  blog.permalink = "{URL}"
  blog.layout = "posts-layout"
  blog.paginate = true
  blog.per_page = 3
  blog.page_link = "{num}"
  blog.new_article_template = File.expand_path('source/blog-templates/article-template.erb', File.dirname(__FILE__))

  blog.custom_collections = {
    category: {
      link: '{category}.html',
      template: 'category.html'
    }
  }

end

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration
activate :directory_indexes
set :trailing_slash, false

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

helpers do
  def is_page_selected(page)
    current_page.data.name == 'home' ? "active" : ''
  end
end

helpers do
  def is_page_selected2(page)
    current_page.data.name == 'services' ? "active" : ''
  end
end

helpers do
  def is_page_selected3(page)
    current_page.data.name == 'blog' ? "active" : ''
  end
end

helpers do
  def is_page_selected4(page)
    current_page.data.name == 'about' ? "active" : ''
  end
end

helpers do
  def is_page_selected5(page)
    current_page.data.name == 'contact' ? "active" : ''
  end
end

helpers do
  def is_page_selected6(page)
    current_page.url == page ? "active" : ''
  end
end

helpers do
  def pagination_meta(page)
    page_number >= '1' ? "noindex,follow" : ''
  end
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
 # Minify CSS on build
  activate :minify_css

 #Minify Javascript on build
  activate :minify_javascript
end
