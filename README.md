<div align=center>
  <img src="./assets/logo.jpg" alt="Logo Tsukuyomi" height="200"/>
  <h1>Tsukuyomi 🌙</h1>
</div>

O **Tsukuyomi** eh um conjunto de scripts que automatiza a instalacao e configuracao de um ambiente Arch Linux personalizado.  
Ele foi criado para simplificar o meu processo de setup inicial, garantindo que os meus pacotes, daemons e configuracoes essenciais sejam aplicados de forma consistente.

## ⚡ Funcionalidades

- Instalacao de um AUR Helper (yay)
- Instalacao automatica de pacotes via yay
- Instalacao e configuracao do meu Display Manager (ly), Window Manager/Wayland Compositor (niri) e Desktop Shell (noctalia-shell)
- Instalacao e configuracao das minhas principais linguagens de programacao (pytho, rust e bunjs)
- Instalacao e configuracao do Docker
- Gerenciamento de [dotfiles](https://github.com/pedro-meinen/dotfiles) via stow
- Gerenciamento de daemons com o Systemd

## 🧰 Requisitos

- Distribuicao: Arch Linux (ou derivadas)
- Acesso root (`sudo`)
- `git`
- Conexao com a internet

## 🚀 Instalacao

Clone o repositorio e execute o script principal:

```bash
git clone https://github.com/pedro-meinen/tsukuyomi.git
cd tsukuyomi
chmod +x install.sh
./install.sh
```

## ⚙️ Estrutura do projeto

```bash
tsukuyomi/
├── install.sh        # Script principal de instalação
├── lib/              # Funcoes utilitárias
├── config/           # Configurações
├── scripts/          # Scripts auxiliares
├── assets/           # Assets para esse arquivo
├── .helix/           # Configuracoes do editor
└── README.md         # Este arquivo
```

## 🌑 Inspiracao

O nome **Tsukuyomi** foi escolhido em homenagem ao deus japones da lua 🌙, simbolizando clareza e serenidade no processo de configuração do sistema.

## 📜 Licenca

Este projeto está sob a licença MIT. Sinta-se livre para usar, modificar e compartilhar.
