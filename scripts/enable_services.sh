enable_services() {
  check_command systemctl
  check_command rg

  log_info "Iniciando setup dos Servicos"

  for service in "${SERVICES[@]}"; do
    if systemctl list-unit-files | rg -q "^$service"; then
      log_info "Ativando servico $service"
      sudo systemctl enable "$service"

      log_info "Iniciando Servico $service"
      sudo systemctl start "$service"
    else
      log_info "Servico $service nao encontrado, ignorando..."
    fi
  done

  log_info "Setup finalizado com sucesso!"
}
