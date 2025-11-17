Write-Host "🚀 Configurando projeto para deploy..." -ForegroundColor Green

Write-Host "📦 Instalando dependências..." -ForegroundColor Yellow
npm ci

Write-Host "🔍 Verificando variáveis de ambiente..." -ForegroundColor Yellow
if (!(Test-Path ".env.local")) {
    Write-Host "❌ Arquivo .env.local não encontrado!" -ForegroundColor Red
    Write-Host "📋 Copie o arquivo .env.example para .env.local e configure suas variáveis:" -ForegroundColor Cyan
    Write-Host "   - STRIPE_PUBLIC_KEY" -ForegroundColor Cyan
    Write-Host "   - STRIPE_SECRET_KEY" -ForegroundColor Cyan
    Write-Host "   - NEXT_URL" -ForegroundColor Cyan
    exit 1
}

$envContent = Get-Content ".env.local" -Raw
if ($envContent -notmatch "pk_test|pk_live") {
    Write-Host "⚠️  Configure sua STRIPE_PUBLIC_KEY no arquivo .env.local" -ForegroundColor Yellow
}

if ($envContent -notmatch "sk_test|sk_live") {
    Write-Host "⚠️  Configure sua STRIPE_SECRET_KEY no arquivo .env.local" -ForegroundColor Yellow
}

Write-Host "🔍 Executando linting..." -ForegroundColor Yellow
npm run lint:fix

Write-Host "📝 Verificando tipos TypeScript..." -ForegroundColor Yellow
npm run type-check

Write-Host "🏗️  Fazendo build do projeto..." -ForegroundColor Yellow
npm run build

Write-Host "✅ Projeto configurado com sucesso!" -ForegroundColor Green
Write-Host ""
Write-Host "📋 Próximos passos:" -ForegroundColor Cyan
Write-Host "   • Para desenvolvimento: npm run dev" -ForegroundColor White
Write-Host "   • Para produção local: npm run preview" -ForegroundColor White
Write-Host "   • Para deploy na Vercel: conecte seu repositório" -ForegroundColor White
Write-Host "   • Para deploy com Docker: docker build -t ignite-shop ." -ForegroundColor White
