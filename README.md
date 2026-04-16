# **Word Graph**

---

## [O que é]
**Word Graph** é um analisador de texto com: contagem de palavras e frequencia de palavras a partir de um arquivo - feito em haskell como desafio de aprendizado.

---

## [Como funciona]
Passando o **nome do arquivo como argumento**, o software abre o arquivo lendo todo seu conteudo.
O conteudo lido é armazenado e transformado em uma lista com cada palavra existente dentro do arquivo - separadas uma das outras.
O software cria um HashMap, colocando dentro de si todas palavras da lista que ainda não estão no mapa, quando uma palavra já está no map é adicionado um ao contador daquela palavra.
O HashMap é ordenado na ordem decrescente, as palavras mais frequentes são colocadas no topo da lista - enquanto as menos frequentes são colocadas abaixo.

---

## [Como instalar]
### Instalando GHC
Caso não tenha o ghc instalado, instale com o comando `curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh`

### Instalando Word Graph
- Clone o repositório com o comando `git clone https://github.com/ThiagoHG1/Word-Graph.git`
- Abra a pasta do programa com `cd Word-Graph`
- para apenas rodar, use `runghc main.hs <arquivo>`

### Gerando executavel
Caso queira um executavel otimizado - use o comando: `ghc -O2 main.hs -o wordgraph` ou o nome que desejar. e depois use `./wordgraph <arquivo>`

---

## [Exemplo]

```bash
runghc main.hs teste.txt
```

```text
haskell: 105067
codigo: 90365
thread: 17450
bug: 17261
mapa: 17220
runtime: 17148
otimizacao: 17072
memoria: 17036
teste: 17019
funcional: 16968
lista: 16965
compilador: 16886
```
