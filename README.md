# Projeto Flutter Web utilizando SEO e Atomic Design System

## Features

- Utilização do seo_renderer para renderizar textos, links ou imagens no Flutter Web
- Consumo da API Json Placeholder para renderizar textos vindo de um backend
- Tentativa de uso de design system com atoms, molecules, organisms

# SEO

É muito impportante em um projeto web a otimização dos motores de busca para melhorar ainda mais a forma na qual
o nosso projeto será buscado pelas engines Google. Tomamos como exemplo um projeto React, no qual uma das formas
mais recomendadas de otimizar o SEO nos projetos é utilizando o NextJS.
Fiz um teste simples de uma aplicação Flutter Web utilizando o package seo_renderer para podermos avaliar o uso dessa
feature em um possível projeto futuro, caso necessário. Tirei as seguintes conclusões:

- Fiz um consumo básico de API para ver como o SEO se comportava com dados dinâmicos e tive bons resultados
- O seo_renderer pode ser utilizado tanto para texto quanto para links e imagens
- Pode ainda ter alguma outra forma melhor de se utilizar a indexação

Encontrei também algumas discussões no GitHub sobre o uso do SEO no Flutter Web e podemos tirar nossas conclusões,
é importante frisar que não necessariamente precisamos do seo_renderer, visto que:

- O Flutter Web consegue renderizar o DOM
- Temos o widget Semantics, que nos ajuda a criar tags específicas por todo o projeto (bom para o uso do tagueamento)
- Podemos gerar nosso próprio robots.txt pelas configurações do router no MaterialApp

# Atomic Design System

Não tenho ainda muita experiência com Design Systems, porém dando uma breve olhada no Voxel me pareceu muito se aproximar
do conceito de Atomic Design, uma das várias metodologias de Design System. Fiz um exemplo básico no Flutter após estudo do Atomic Design, podem ficar livres para me corrigirem. Assim ficou organizado nas telas:

![presentation](https://github.com/felipesses/flutter_web_poc/blob/main/presentation.jpeg?raw=true)
