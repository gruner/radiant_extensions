module StandardTags
  include Radiant::Taggable

  class TagError < StandardError; end

  desc %{
    Renders a trail of breadcrumbs to the current page. The separator attribute
    specifies the HTML fragment that is inserted between each of the breadcrumbs.
    Changes the defaults. Adds 'strong' tags to current page.
    
    *Usage:* 
    <pre><code><r:breadcrumbs [separator="separator_string"] /></code></pre>
  }
  tag 'breadcrumbs' do |tag|
    page = tag.locals.page
    breadcrumbs = ["</strong>#{page.breadcrumb}</strong>"]
    page.ancestors.each do |ancestor|
      breadcrumbs.unshift %{<a href="#{ancestor.url}">#{ancestor.breadcrumb}</a>}
    end
    separator = tag.attr['separator'] || ' &#8250; '
    breadcrumbs.join(separator)
  end

end    