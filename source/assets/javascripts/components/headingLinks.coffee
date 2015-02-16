# *************************************
#
#   Heading Links
#   -> Named anchor links on headings
#
# *************************************
#
# @param $element    { jQuery object }
# @param anchorClass { string }
#
# *************************************

@Leo.HeadingLinks = do ->

  # -------------------------------------
  #   Private Variables
  # -------------------------------------

  _settings = {}

  # -------------------------------------
  #   Initialize
  # -------------------------------------

  init = ( options ) ->
    _settings = $.extend
      $element    : $( 'h1, h2, h3, h4, h5' )
      anchorClass : 'anchor'
    , options

    _addAnchors()

  # -------------------------------------
  #   Slugify
  # -------------------------------------
  #
  # @param string { string }
  #
  # -------------------------------------

  _slugify = ( string ) ->
    string
      .toLowerCase()
      .replace( /[^\w ]+/g, '' )
      .replace( /\s+/g, '-' )

  # -------------------------------------
  #   Add Anchors
  # -------------------------------------

  _addAnchors = ->
    _settings.$element.each ->
      $element = $(@)
      slug     = _slugify( $element.text() )

      $element.attr( 'id', slug )
      $element.prepend( "<a class='#{ _settings.anchorClass }' href='##{ slug }'>#</a>" )

  # -------------------------------------
  #   Public Methods
  # -------------------------------------

  init : init

# -------------------------------------
#   Usage
# -------------------------------------
#
# Leo.HeadingLinks.init()
#
