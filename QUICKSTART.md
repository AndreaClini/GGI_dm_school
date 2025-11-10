# Quick Start Guide

This is a quick reference for getting started with this LaTeX project.

## First Time Setup

### 1. Install TeX Live (Ubuntu/Debian/WSL)
```bash
sudo apt update
sudo apt install texlive-full biber latexmk
```

### 2. Clone and Open
```bash
git clone https://github.com/AndreaClini/GGI_dm_school.git
cd GGI_dm_school
code .
```

### 3. Install VSCode Extensions
When prompted, install the recommended extensions, especially:
- **LaTeX Workshop** (essential for LaTeX editing)

## Daily Workflow

### Editing
1. Open `main.tex` in VSCode
2. Edit your content
3. Save file (Ctrl+S) - PDF builds automatically
4. View PDF in VSCode (click PDF icon in top-right)

### Compiling (if auto-build doesn't work)
```bash
# Option 1: Using Make
make build

# Option 2: Using latexmk directly
latexmk -pdf main.tex

# Option 3: Manual compilation
pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex
```

### Adding Content

**New Section:**
```latex
\section{My New Topic}
Your content here...
```

**Math Equation:**
```latex
\begin{equation}
    E = mc^2
\end{equation}
```

**Figure:**
```latex
\begin{figure}[ht]
    \centering
    \includegraphics[width=0.8\textwidth]{figures/myplot.pdf}
    \caption{My figure caption}
    \label{fig:myplot}
\end{figure}
```

**Citation:**
```latex
As shown in \cite{author2024}...
```

### Syncing with GitHub

**Push your changes:**
```bash
git add .
git commit -m "Describe your changes"
git push
```

**Pull latest changes:**
```bash
git pull
```

## Using with Overleaf

### Initial Setup
1. Go to [Overleaf.com](https://www.overleaf.com)
2. Click **New Project** → **Import from GitHub**
3. Select `GGI_dm_school` repository

### Sync from Overleaf to GitHub
1. In Overleaf: **Menu** → **GitHub** → **Push to GitHub**
2. Locally: `git pull`

### Sync from GitHub to Overleaf
1. Locally: `git push` (after committing)
2. In Overleaf: **Menu** → **GitHub** → **Pull from GitHub**

## Common Tasks

### Clean Build Files
```bash
make clean        # Remove auxiliary files
make cleanall     # Remove all including PDF
```

### Watch Mode (auto-rebuild on changes)
```bash
make watch
```

### View PDF
```bash
make view
```

## Troubleshooting

**PDF not building?**
- Check the LaTeX Workshop output panel in VSCode (View → Output)
- Try manual build: `latexmk -pdf main.tex`

**Bibliography not showing?**
- Ensure `biber` is installed: `which biber`
- Run full build: `pdflatex → biber → pdflatex → pdflatex`

**VSCode extension not working?**
- Reload window: Ctrl+Shift+P → "Reload Window"
- Check extension is installed and enabled

## Tips

✅ Save often - auto-build happens on save
✅ Use `\label{}` and `\ref{}` for cross-references
✅ Keep figures in `figures/` directory
✅ Add bibliography entries to `references.bib`
✅ Commit to git regularly

## Need Help?

- Check the [main README.md](README.md) for detailed documentation
- LaTeX Workshop Wiki: https://github.com/James-Yu/LaTeX-Workshop/wiki
- Overleaf Learn: https://www.overleaf.com/learn
