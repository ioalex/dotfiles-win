#!/bin/bash

echo "Upgrading npm, installing pnpm and yarn..."
echo ""
npm install -g npm pnpm yarn

echo ""
echo "Installing global packages with pnpm..."
echo ""
cat ~/.dotfiles/Scripts/pnpm/packages.txt | xargs pnpm install -g
