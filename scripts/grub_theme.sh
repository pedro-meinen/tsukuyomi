grub_theme() {
  cd "$HOME/grub_themes" || panic "Nao foi possivel encontrar o repositorio do grub"

  sudo cp -r src/* /usr/share/grub/themes
  sudo sed -i 's/#(?: )?GRUB_THEME=".*"/GRUB_THEME="\/usr\/share\/grub\/themes\/catppuccin-mocha-grub-theme\/theme.txt"/gm' /etc/default/grub
  sudo grub-mkconfig -o /boot/grub/grub.cfg

  cd - || panic "Nao foi possivel retornar ao repositorio anterior"
}

