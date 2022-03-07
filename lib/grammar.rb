def grammar(text)
  return text if text.empty?

  text[0] = text[0].upcase
  
  if text.end_with?("?", ".", "!")
    return text
  else
    return text + "."
  end
end