clone_dotfiles() {
  check_command git
  check_command stow

  log_info "Clonando repositorio de configuracoes"

  if [ ! -d "$HOME/dotfiles" ]; then
    git clone https://github.com/pedro-meinen/dotfiles ~/dotfiles
    log_info "Repositorio Clonado com sucesso!"
  else
    log_info "Repositorio ja existe, pulando clonagem"
  fi

  log_info "Inciando link das configuracoes"
  cd ~/dotfiles || panic "Nao foi possivel achar o diretorio de dotfiles"

  for dir in */; do
    log_info "Linkando configuracoes de $dir"
    stow "$dir"
  done

  log_info "Configuracoes linkadas com sucesso!"

  cd - > /dev/null || panic "Nao foi possivel retornar ao diretorio anterior"
}
