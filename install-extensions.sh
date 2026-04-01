  #!/bin/bash

  GREEN='\033[0;32m'
  BLUE='\033[0;34m'
  YELLOW='\033[1;33m'
  NC='\033[0m' # No Color
  
  extensions=(
    "anysphere.cursorpyright"
    "bradlc.vscode-tailwindcss"
    "charliermarsh.ruff"
    "dbaeumer.vscode-eslint"
    "dheovani.svg-viewer"
    "dracula-theme.theme-dracula"
    "eamodio.gitlens"
    "esbenp.prettier-vscode"
    "ganesanchandran.fetch-client"
    "github.vscode-github-actions"
    "juanblanco.solidity"
    "mechatroner.rainbow-csv"
    "ms-azuretools.vscode-containers"
    "ms-azuretools.vscode-docker"
    "ms-python.debugpy"
    "ms-python.python"
    "ms-vscode.live-server"
    "streetsidesoftware.code-spell-checker"
    "vscode-icons-team.vscode-icons"
    "vscodevim.vim"
    "wakatime.vscode-wakatime"
    
    )
    
    echo "${BLUE}🚀 Starting extension installation...${NC}\n"
    
    for ext in "${extensions[@]}"; do
      echo "${YELLOW}📦 Installing: $ext${NC}"
      
      code --install-extension "$ext" &>/dev/null &&
        echo  "${GREEN} ✔ VS Code installed${NC}" ||
        echo "${YELLOW} ⚠ VS Code failed/skipped${NC}"
      
      cursor --install-extension "$ext" &>/dev/null &&
        echo "${GREEN} ✔ Cursor installed${NC}" ||
        echo "${YELLOW} ⚠ Cursor failed/skipped${NC}"

      echo ""
    done

    echo "${BLUE}🎉 Done installing all extensions!${NC}"
