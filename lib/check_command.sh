check_command() {
  if ! command -v "$1" >/dev/null 2>&1; then
    panic "comando $1 nao foi encontrado. Instale o programa e tente novamente"
  fi
}
