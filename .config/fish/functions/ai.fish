function ai --wraps aider --description 'Shortcut for aider'
  #set -f openai_token (op read 'op://Shared/OpenAI API Illarion/credential' | tr -d "[:blank:]")
  #set -f anthropic_token (op read 'op://Shared/Anthropic API Illarion/credential' | tr -d "[:blank:]")
  set -x OPENROUTER_API_KEY (op read 'op://Shared/OpenRouter API Illarion/credential' | tr -d "[:blank:]")
  set -x AIDER_MODEL 'openrouter/deepseek/deepseek-r1'
  set -x AIDER_EDITOR_MODEL 'openrouter/anthropic/claude-3.5-sonnet'
  set -x AIDER_WEAK_MODEL 'openrouter/anthropic/claude-3-5-haiku'

  command aider --no-auto-commits --architect --multiline $argv
end
