# *************************************
#
#   Read Time
#   -> Add an estimated reading time to page
#
# *************************************
#
# @param $element       { jQuery object }
# @param text           { string }
# @param wordsPerMinute { integer }
#
# *************************************

@Leo.readTime = ( options ) ->
  time = Math.ceil( options.text.split(' ').length / options.wordsPerMinute )
  options.$element.append( "<b>#{ time } minute read</b>" )
