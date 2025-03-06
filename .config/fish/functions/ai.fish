function ai --wraps aider --description 'Shortcut for aider'
  #set -f openai_token (op read 'op://Shared/OpenAI API Illarion/credential' | tr -d "[:blank:]")
  #set -f anthropic_token (op read 'op://Shared/Anthropic API Illarion/credential' | tr -d "[:blank:]")
  set -x OPENROUTER_API_KEY (op read 'op://Shared/OpenRouter API Illarion/credential' | tr -d "[:blank:]")

  command aider --no-auto-commits --multiline \
    --alias 'deepseek:openrouter/deepseek/deepseek-r1' \
    --alias 'haiku:openrouter/anthropic/claude-3-5-haiku' \
    --alias 'o1:openrouter/openai/o1' \
    --alias 'sonnet:openrouter/anthropic/claude-3.7-sonnet' \
    --architect \
    --model deepseek --editor-model sonnet --weak-model haiku \
    $argv
end
