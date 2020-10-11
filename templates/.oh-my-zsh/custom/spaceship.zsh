{{ ansible_managed | comment }}

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
{% if user.spaceship_prompt is defined %}}
{% for prompt in user.spaceship_prompt %}
  {{ prompt }}
{% endfor %}
{% endif %}
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
)

SPACESHIP_AWS_SHOW=true

# Kubectl context
SPACESHIP_KUBECONTEXT_COLOR_GROUPS=(
  # red if context is "prod"
  red    prod
  # else, green if context is "sandbox"
  green  sandbox
  # else, orange if context is "staging"
  orange staging2.staging.k8s.6cloud.fr
  # else, yellow if context is "dev"
  yellow dev
)
