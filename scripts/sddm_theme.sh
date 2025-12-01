sddm_theme() {
  cd "$HOME/sddm" || panic "Nao foi possivel ir encontrar o diretorio do SDDM"

  unzip catppuccin-mocha-mauve-sddm.zip
  sudo mv -v catppuccin-mocha-mauve /usr/share/sddm/themes

  printf "[Theme]\nCurrent=catppuccin-mocha-mauve" | sudo tee /etc/sddm.conf

  cd - || panic "Naq foi possivel retornar ao diretorio anterior"
}
