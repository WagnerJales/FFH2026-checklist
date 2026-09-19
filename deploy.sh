#!/bin/bash

# Script para fazer deploy do app.html na Vercel

cd "$(dirname "$0")"

echo "🚀 Preparando deploy para Vercel..."

# Cria pasta public
mkdir -p public
cp app.html public/index.html

# Faz deploy
echo "📤 Enviando para Vercel (produção)..."
vercel --prod --yes

echo "✅ Deploy concluído!"
echo ""
echo "Seu app está em: https://seu-projeto.vercel.app"
