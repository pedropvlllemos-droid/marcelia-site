# Site Marcélia Somar

## Antes de publicar

1. O domínio `https://www.marceliasomar.com.br` já está preenchido no `index.html`
   (canonical, Open Graph, Twitter e JSON-LD). Nada a fazer aqui.
2. Se for usar Google Analytics ou Meta Pixel, procure por `ANALYTICS` no `index.html`,
   troque os identificadores e remova os marcadores de comentário `<!--` e `-->`.

## Estrutura

```
index.html          página
favicon.svg         ícone da aba
img/marcelia.webp   foto (formato moderno, mais leve)
img/marcelia.jpg    foto (reserva, para navegadores antigos)
img/og.jpg          imagem da prévia ao compartilhar o link
img/apple-touch-icon.png  ícone ao salvar na tela de início do iPhone
Dockerfile          build
nginx.conf          servidor, com gzip e cache
```

## Deploy no EasyPanel

1. Suba esta pasta para um repositório no GitHub.
2. No EasyPanel: **Projeto → + Service → App**.
3. **Source**: GitHub, apontando para o repositório e a branch.
4. **Build**: método `Dockerfile`.
5. **Deploy**: porta `80`.
6. **Domains**: adicione o domínio e ative o Let's Encrypt.
   Antes disso, crie um registro `A` no seu registrador apontando para o IP da VPS.

Cada push na branch dispara um novo deploy.

## Rastreamento de cliques

Já existe um script no fim da página que dispara um evento sempre que alguém
clica em qualquer botão de WhatsApp — `contato_whatsapp` no GA4 e `Contact` no
Meta Pixel. Ele só age se o GA4 ou o Pixel estiverem ativos; sem eles, fica inerte.

## Observação sobre a foto

A foto original tem 320x320 pixels, resolução baixa para o tamanho em que aparece
na tela. Em celulares modernos ela fica um pouco suave. Se a Marcélia tiver o
arquivo original em alta, vale substituir: exporte em 800x800 e gere de novo o
`.webp` e o `.jpg`.
