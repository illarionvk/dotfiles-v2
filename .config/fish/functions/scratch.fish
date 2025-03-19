function scratch --wraps vim --description 'Edit scratch, then copy it to clipboard'
  command nvim ~/study/scratch.md $argv
  command cat ~/study/scratch.md | pbcopy
end
