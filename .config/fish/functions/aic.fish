function aic --wraps aichat --description 'Shortcut for aichat'
  set -l openrouter_token (op read 'op://Shared/OpenRouter API Illarion/credential' | tr -d "[:blank:]")

  env OPENROUTER_API_KEY=$openrouter_token command aichat $argv
end
