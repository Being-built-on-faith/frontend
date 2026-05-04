#!/bin/bash
echo "===== STEP 1: Install NVM (Node Version Manager) ====="
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

echo "===== STEP 2: Load NVM into current shell ====="
export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"

echo "===== STEP 3: Install Node.js LTS ====="
nvm install --lts
nvm use --lts

echo "===== STEP 4: Verify Node and npm ====="
node -v
npm -v

echo "===== STEP 5: Install Angular CLI globally ====="
npm install -g @angular/cli@latest

echo "===== STEP 6: Verify Angular CLI ====="
ng version

echo "===== STEP 7: Create Angular Project ====="
ng new frontend-lab --defaults --skip-git

echo "===== STEP 8: Enter Project Directory ====="
cd frontend-lab

echo "===== STEP 9: Install Dependencies ====="
npm install

echo "===== STEP 10: Run Angular Dev Server ====="
ng serve --host 0.0.0.0 --port 4200

# STEP 1: curl | bash
# - curl downloads install script from GitHub
# - pipe (|) sends script directly to bash for execution
# - installs nvm into ~/.nvm directory
# - modifies ~/.bashrc to auto-load nvm

# STEP 2: source ~/.bashrc (or manual export + source)
# - loads environment variables into current shell
# - makes 'nvm' command available immediately
# - without this, nvm command would not exist in this session

# STEP 3: nvm install --lts
# - downloads Node.js LTS binary
# - installs into ~/.nvm/versions/node/<version>/
# - isolates Node from system-wide installation

# STEP 3 (cont): nvm use --lts
# - updates PATH variable
# - ensures shell uses this Node version

# STEP 4: node -v / npm -v
# - verifies binaries are correctly installed and accessible
# - confirms runtime + package manager availability

# STEP 5: npm install -g @angular/cli
# - downloads Angular CLI package from npm registry
# - installs globally in:
#   ~/.nvm/versions/node/<version>/lib/node_modules
# - creates executable 'ng' in PATH

# STEP 6: ng version
# - checks Angular CLI installation
# - prints versions of Angular, Node, npm, TypeScript

# STEP 7: ng new frontend-lab
# - scaffolds Angular project
# - creates:
#   package.json (dependency graph root)
#   angular.json (build config)
#   tsconfig.json (TypeScript config)
#   src/ directory (application code)
# - installs project dependencies automatically

# STEP 8: cd frontend-lab
# - changes working directory to project root

# STEP 9: npm install
# - resolves dependency graph from package.json
# - downloads packages into node_modules/
# - creates package-lock.json for deterministic installs

# STEP 10: ng serve --host 0.0.0.0 --port 4200
# - compiles TypeScript → JavaScript
# - bundles app using Angular build system
# - starts dev server process
# - binds to 0.0.0.0 (all network interfaces)
# - listens on port 4200
# - enables hot-reload on file changes