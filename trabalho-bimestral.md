# Trabalho Bimestral — Programação para Dispositivos Móveis (2,0 pontos)

**Turmas:** 4 ESW / 4 ADS / 5 ADS
**Professor:** Gustavo Machado
**Entrega:** até 13/04/2026 (segunda-feira) — último dia da semana de provas
**Formato:** duplas
**Entrega via:** Moodle — enviar a URL do repositório GitHub da dupla

---

## Objetivo

Desenvolver um aplicativo Flutter que implemente pelo menos **1 CRUD completo** (Create, Read, Update, Delete), utilizando a **arquitetura vista em aula** (Service-Provider-UI) e consumindo uma **API REST gratuita** como backend.

---

## Requisitos Obrigatórios

### Arquitetura (seguir o padrão do repositório da disciplina)

O projeto deve seguir a estrutura de pastas e padrões do exemplo `beeceptor_app` disponível em:
📂 [`25-03/beeceptor_app`](https://github.com/gustavo96ma/4ESWADS_5ADS_20261/tree/main/25-03/beeceptor_app)

```
lib/
├── main.dart                # Entry point, rotas (GoRouter), injeção de dependências
├── models/
│   └── <entidade>.dart      # Classe com fromJson() e toJson()
├── services/
│   └── <entidade>_service.dart  # Chamadas HTTP via Dio (GET, POST, PUT, DELETE)
├── providers/
│   └── <entidade>_provider.dart # ChangeNotifier com estado, loading e error
└── ui/
    ├── screens/             # Telas completas (listagem, formulário, detalhes)
    └── widgets/             # Componentes reutilizáveis
```

### Funcionalidades

| Operação | Requisito |
|----------|-----------|
| **Create** | Tela com formulário para criar um novo registro via POST |
| **Read** | Tela de listagem que busca os dados via GET |
| **Update** | Possibilidade de editar um registro existente via PUT/PATCH |
| **Delete** | Possibilidade de excluir um registro via DELETE |

### Tecnologias (obrigatórias)

- **Flutter** (versão 3.x)
- **Provider** — gerenciamento de estado via `ChangeNotifier`
- **Dio** — cliente HTTP
- **GoRouter** — navegação e rotas

### API Backend

Utilizar uma **API REST gratuita** que permita operações CRUD reais. Sugestões:

| API | URL | Observação |
|-----|-----|------------|
| **MockAPI.io** | https://mockapi.io | Cria endpoints custom com CRUD real. Gratuito até 4 projetos. **Recomendada.** |
| **Restful-api.dev** | https://restful-api.dev | CRUD real de objetos. Sem autenticação. |
| **Beeceptor** | https://beeceptor.com | Usado em aula. Suporta CRUD com mock rules. |
| **ReqRes** | https://reqres.in | Simula respostas de CRUD (não persiste dados). |

> **Importante:** A API deve suportar pelo menos POST, GET, PUT/PATCH e DELETE. Se a API escolhida apenas simular as respostas (como ReqRes), o app deve tratar as respostas como se fossem reais.

---

## Critérios de Avaliação

| Critério | Peso | Descrição |
|----------|:----:|-----------|
| **Arquitetura** | 0,5 | Estrutura de pastas e separação de responsabilidades conforme padrão da disciplina |
| **CRUD completo** | 0,8 | As 4 operações funcionando (Create, Read, Update, Delete) |
| **Qualidade do código** | 0,4 | Código limpo, organizado, sem lógica na UI, tratamento de loading/error |
| **Funcionalidade** | 0,3 | App roda sem erros, navegação funcional, UX mínima |
| **Total** | **2,0** | |

---

## Formato de Entrega

1. Criar um **repositório público no GitHub** com o projeto Flutter
2. O repositório deve conter um **README.md** com:
   - Nomes dos integrantes da dupla e turma
   - Nome do app e descrição breve
   - API utilizada (nome e URL)
   - Instruções para rodar o projeto (`flutter pub get` → `flutter run`)
3. Enviar a **URL do repositório** no Moodle até **13/04/2026**

---

## Observações

- Trabalho em **dupla** (excepcionalmente individual, mediante justificativa prévia)
- Cada dupla deve escolher uma **entidade/tema diferente** (ex: tarefas, contatos, produtos, filmes, receitas, etc.)
- O app **não precisa** ter design elaborado — funcionalidade e arquitetura são os critérios principais
- Plágio entre duplas resultará em **nota zero para ambas**
- Dúvidas podem ser tiradas em aula ou pelo Discord da turma
