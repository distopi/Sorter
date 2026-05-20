# Downloads Sorter (.bat)

Um script de automação desenvolvido em Batch Script (`.bat`) para manter a pasta de Downloads do Windows sempre limpa e organizada. 

Ele varre a pasta principal, identifica a extensão de cada arquivo e o move automaticamente para subpastas categorizadas (Imagens, Documentos, Instaladores, Vídeos, Áudios e Arquivos Compactados).

---

## 🚀 Funcionalidades

- **Portabilidade:** Utiliza a variável de ambiente `%USERPROFILE%` para funcionar instantaneamente em qualquer computador com Windows, sem necessidade de editar o código.
- **Criação Inteligente de Diretórios:** Antes de mover os arquivos, o script verifica se as pastas de destino existem. Caso não existam, ele as cria automaticamente usando o comando `mkdir`.
- **Organização Silenciosa:** O uso de `>nul` no comando de mover garante uma execução limpa e sem poluição visual no terminal.
- **Fácil Extensão:** O código é estruturado em blocos condicionais, permitindo adicionar novas categorias e extensões em questão de segundos.

---

## 📂 Como as Pastas são Organizadas

O script classifica os arquivos nas seguintes subpastas dentro de `Downloads`:

- **📁 imagens:** `.jpg`, `.jpeg`, `.png`, `.gif`, `.bmp`, `.webp`
- **📁 documentos:** `.pdf`, `.docx`, `.doc`, `.xlsx`, `.txt`, `.pptx`
- **📁 instaladores:** `.exe`, `.msi`, `.bat`
- **📁 videos:** `.mp4`, `.mkv`, `.avi`, `.mov`
- **📁 audios:** `.mp3`, `.wav`, `.wma`
- **📁 compactos:** `.zip`, `.rar`, `.7z`

---

## 🛠️ Como Executar

1. Baixe ou clone este repositório no seu computador.
2. Dê um duplo clique no arquivo `organizador.bat`.
3. O script lerá sua pasta de Downloads e moverá os arquivos soltos para as pastas correspondentes.
4. Pressione qualquer tecla para encerrar quando a mensagem "Arquivos organizados com sucesso!" aparecer.

> **Dica:** Você pode agendar a execução deste script no "Agendador de Tarefas" do Windows para que sua pasta seja organizada automaticamente todos os dias!
