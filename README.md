# 📱 NutriScan

Este documento descreve a **arquitetura**, a **estrutura de pastas** e os **padrões de desenvolvimento** adotados no projeto.

---

## 🏛️ Arquitetura

O projeto utiliza a arquitetura **MVVM (Model-View-ViewModel)**.  
Essa escolha visa **separar responsabilidades**, **aumentar a testabilidade** e **gerenciar a lógica de navegação** de forma limpa e desacoplada.

- **Model**: Representa os dados e a lógica de negócios da aplicação (ex: `User`, `Product`).  
  > Obs: A pasta `Models` não está visível na imagem, mas deve ser criada para conter as estruturas de dados.
- **View**: Camada de interface do usuário (`UIViewControllers`, `Storyboards`, `XIBs`). Responsável por exibir os dados e capturar interações do usuário.
- **ViewModel**: Intermediário entre a View e o Model. Contém a lógica de apresentação, formata dados e gerencia o estado da View.

---

## 📁 Estrutura de Pastas

### `nutriscan/`
Pasta raiz que contém todos os arquivos de código-fonte e recursos do projeto.

### 📂 `Application`
- `AppDelegate.swift`: Ponto de entrada principal e gerenciamento de eventos do sistema.  
- `SceneDelegate.swift`: Gerenciamento do ciclo de vida das cenas (UI).  

### 📂 `Extensions`
Extensões de classes e structs (`UIKit`, `Foundation`, etc.).

- `UIColor+Extensions.swift`  
- `UIView+Animations.swift`

### 📂 `Services`
Camada de comunicação com APIs e banco de dados.  

- `NetworkService.swift`: Gerencia chamadas REST.  
- `DatabaseService.swift`: Opera com banco local (`CoreData`, `Realm`, etc.).

### 📂 `ViewModels`
Contém a lógica de apresentação e estado de cada View.

- `HomeViewModel.swift`  
- `ProductDetailViewModel.swift`

### 📂 `Views`
Camada de interface do usuário.  

- `ViewControllers/`: Telas do app.  
- `Cells/`: Células reutilizáveis (`UITableView`, `UICollectionView`).  
- `CustomViews/`: Componentes de UI personalizados.

---

## 🛠️ Recursos e Configuração

- **🖼️ Assets**: Catálogo de imagens, ícones e cores (`.xcassets`).  
- **ℹ️ Info.plist**: Metadados essenciais do aplicativo.  
- **🚀 LaunchScreen**: Tela exibida na inicialização (`Storyboard` ou `XIB`).  

---

## 📜 Padrão de Commits

Adotamos o padrão **Conventional Commits** para manter histórico claro e consistente.  
> ⚠️ Todos os commits devem ser escritos **em português**.

### Estrutura

### Tipos permitidos
| Tipo     | Descrição                                                                 |
|----------|---------------------------------------------------------------------------|
| `feat`   | Adição de nova funcionalidade.                                            |
| `fix`    | Correção de bug.                                                          |
| `docs`   | Alterações na documentação (`README`, comentários, etc.).                 |
| `style`  | Mudanças de formatação sem alterar a lógica (espaços, ponto e vírgula).   |
| `refactor` | Refatoração sem alteração de comportamento.                            |
| `test`   | Adição ou modificação de testes.                                          |
| `chore`  | Atualizações de build, pacotes ou tarefas auxiliares.                     |

---

## 📌 Exemplos de Commits

```bash
feat: adiciona tela de login com e-mail e senha
```
