def scrolling_text(text)
  text = text.upcase
  text.chars().each_index.map { |i|
    text.slice(i..text.length - 1) + text.slice(0,i)
  }
end
