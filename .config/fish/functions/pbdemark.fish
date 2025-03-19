function pbdemark --description 'Demarkdownify clipboard contents'
  command pbpaste | pandoc -f markdown -t plain --wrap=none | pbcopy
end
