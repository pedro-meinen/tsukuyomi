panic() {
  echo "$1" >&2
  exit 1
}

check_command() {
  local cmd=$1
  
  if ! command -v "$cmd" >/dev/null 2>&1; then
    panic "comando $cmd nao foi encontrado. Instale o programa e tente novamente"
  fi
}
