Leo = {}

# -------------------------------------
#   Heading Links
# -------------------------------------

Leo.headingLinks = (options) ->
  options.els.each ->
    el = $(@)
    text = Leo.slugify( el.text() )
    el.attr('id', text)
    el.prepend("<a class='anchor' href='##{text}'>#</a>")

# -------------------------------------
#   Slugify
# -------------------------------------

Leo.slugify = (text) ->
  text.toLowerCase().replace(/\s+/g, '-').replace(/[^\w\-]+/g, '').replace(/\-\-+/g, '-').replace(/^-+/, '').replace(/-+$/, '')

#-------------------------------------
#  Document Ready
#-------------------------------------

jQuery ($) ->

  Leo.headingLinks({
    els: $('h2, h3, h4')
  })
