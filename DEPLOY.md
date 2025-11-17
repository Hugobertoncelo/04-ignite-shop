# 🚀 Guia de Deploy - Ignite Shop

## ✅ Configurações Realizadas

### Arquivos Criados/Configurados:

- ✅ `.env.local` - Variáveis de ambiente configuradas
- ✅ `.env.example` - Template de variáveis de ambiente
- ✅ `.gitignore` - Arquivos a serem ignorados pelo Git
- ✅ `vercel.json` - Configuração para deploy na Vercel
- ✅ `Dockerfile` - Para deploy em containers
- ✅ `.dockerignore` - Arquivos ignorados no build Docker
- ✅ `.github/workflows/deploy.yml` - CI/CD com GitHub Actions
- ✅ `README.md` - Documentação completa
- ✅ `setup.sh` / `setup.ps1` - Scripts de configuração automática

### Scripts Adicionados no package.json:

- ✅ `lint:fix` - Corrige erros de linting automaticamente
- ✅ `type-check` - Verifica tipos TypeScript
- ✅ `preview` - Build e execução local de produção

## 🎯 Status do Projeto

### ✅ Funcionando:

- Build de produção
- Linting sem erros
- TypeScript sem erros
- Configuração do Stripe
- API de checkout
- Páginas estáticas geradas

### 🔧 Configurações de Deploy Prontas:

#### Vercel (Recomendado):

1. Conecte seu repositório no GitHub
2. Importe projeto na Vercel
3. Configure as variáveis de ambiente:
   - `STRIPE_PUBLIC_KEY`
   - `STRIPE_SECRET_KEY`
   - `NEXT_URL` (URL do seu domínio)

#### Docker:

```bash
docker build -t ignite-shop .
docker run -p 3000:3000 --env-file .env.local ignite-shop
```

#### Outras Plataformas:

- Railway
- Netlify
- Heroku
- AWS Amplify
- Google Cloud Platform

## 📋 Checklist Pré-Deploy:

- ✅ Dependências instaladas
- ✅ Build funcionando
- ✅ Linting passando
- ✅ Types checados
- ✅ Variáveis de ambiente configuradas
- ✅ Stripe configurado
- ✅ APIs funcionando
- ✅ CI/CD configurado

## 🚀 Comandos Para Deploy:

### Desenvolvimento:

```bash
npm run dev
```

### Produção Local:

```bash
npm run preview
```

### Setup Automático:

```bash
# Linux/Mac
./setup.sh

# Windows
./setup.ps1
```

## ⚠️ Importante:

- Configure suas chaves reais do Stripe para produção
- Use chaves de teste apenas em desenvolvimento
- Configure a URL correta em produção na variável NEXT_URL
- Nunca commite arquivos .env com chaves reais

## 📞 Próximos Passos:

1. Faça push do código para seu repositório
2. Configure deploy na plataforma escolhida
3. Configure as variáveis de ambiente de produção
4. Teste o checkout com produtos reais do Stripe
