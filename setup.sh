echo "🚀 Configurando projeto para deploy..."

echo "📦 Instalando dependências..."
npm ci

echo "🔍 Verificando variáveis de ambiente..."
if [ ! -f ".env.local" ]; then
    echo "❌ Arquivo .env.local não encontrado!"
    echo "📋 Copie o arquivo .env.example para .env.local e configure suas variáveis:"
    echo "   - STRIPE_PUBLIC_KEY"
    echo "   - STRIPE_SECRET_KEY" 
    echo "   - NEXT_URL"
    exit 1
fi

if ! grep -q "pk_test\|pk_live" .env.local; then
    echo "⚠️  Configure sua STRIPE_PUBLIC_KEY no arquivo .env.local"
fi

if ! grep -q "sk_test\|sk_live" .env.local; then
    echo "⚠️  Configure sua STRIPE_SECRET_KEY no arquivo .env.local"
fi

echo "🔍 Executando linting..."
npm run lint:fix

echo "📝 Verificando tipos TypeScript..."
npm run type-check

echo "🏗️  Fazendo build do projeto..."
npm run build

echo "✅ Projeto configurado com sucesso!"
echo ""
echo "📋 Próximos passos:"
echo "   • Para desenvolvimento: npm run dev"
echo "   • Para produção local: npm run preview"
echo "   • Para deploy na Vercel: conecte seu repositório"
echo "   • Para deploy com Docker: docker build -t ignite-shop ."
