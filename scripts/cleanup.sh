cleanup() {
  log_info "Removendo artefatos do yay"
  sudo rm -rf "$HOME/yay"

  log_info "Removendo artefatos do sddm"
  sudo rm -rf "$HOME/sddm"

  log_info "Removendo artefatos do grub"
  sudo rm -rf "$HOME/grup_themes"

  log_info "Removendo pacotes orfaos"
  sudo pacman -Rsu "$(pacman -Qdtq)"
}
