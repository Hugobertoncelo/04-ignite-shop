<p align="center">
  <img alt="Rocketseat Education" src="https://avatars.githubusercontent.com/u/69590972?s=200&v=4" width="100px" />
</p>

<p align="center">
  <img src="https://img.shields.io/static/v1?label=Rocketseat&message=Education&color=8257e5&labelColor=202024" alt="Rocketseat Project" />
  <a href="LICENSE"><img  src="https://img.shields.io/static/v1?label=License&message=MIT&color=8257e5&labelColor=202024" alt="License"></a>
</p>

## 💻 Projeto

Ignite Shop - Uma loja virtual desenvolvida com Next.js e integração com Stripe para processamento de pagamentos.

## 🚀 Tecnologias

- Next.js
- React
- TypeScript
- Stitches (CSS-in-JS)
- Stripe
- Keen Slider

## 📋 Pré-requisitos

- Node.js 18+
- NPM ou Yarn
- Conta no Stripe (para chaves de API)

## 🔧 Instalação

1. Clone o repositório:

```bash
git clone <url-do-repositorio>
cd 04-ignite-shop
```

2. Instale as dependências:

```bash
npm install
```

3. Configure as variáveis de ambiente:

- Copie o arquivo `.env.example` para `.env.local`
- Preencha as variáveis com suas chaves do Stripe:

```env
STRIPE_PUBLIC_KEY=pk_test_seu_public_key_aqui
STRIPE_SECRET_KEY=sk_test_seu_secret_key_aqui
NEXT_URL=http://localhost:3000
```

## 🏃‍♂️ Executando o projeto

### Desenvolvimento

```bash
npm run dev
```

### Produção

```bash
npm run build
npm start
```

## 🚀 Deploy

### Vercel (Recomendado)

1. Conecte seu repositório GitHub à Vercel
2. Configure as variáveis de ambiente no painel da Vercel
3. O deploy será automático a cada push

### Docker

```bash
# Build da imagem
docker build -t ignite-shop .

# Executar container
docker run -p 3000:3000 --env-file .env.local ignite-shop
```

### Outras plataformas

- Railway
- Netlify
- Heroku
- AWS
- Google Cloud Platform

## 🔑 Configuração do Stripe

1. Crie uma conta no [Stripe](https://stripe.com)
2. Acesse o Dashboard e vá em "Developers" → "API Keys"
3. Copie as chaves "Publishable key" e "Secret key"
4. Configure seus produtos no dashboard do Stripe

## 📝 Licença

Esse projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

<p align="center">
  Feito com 💜 by Rocketseat
</p>

<!--START_SECTION:footer-->

<br />
<br />

<p align="center">
  <a href="https://discord.gg/rocketseat" target="_blank">
    <img align="center" src="https://storage.googleapis.com/golden-wind/comunidade/rodape.svg" alt="banner"/>
  </a>
</p>

<!--END_SECTION:footer-->
