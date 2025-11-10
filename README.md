# GGI Dark Matter School Notes

LaTeX notes and materials from the GGI Dark Matter School. This repository is set up to work seamlessly with VSCode (on WSL), GitHub, and Overleaf.

## 📋 Requirements

### For Local Development (VSCode on WSL)

1. **WSL2** with a Linux distribution (Ubuntu recommended)
2. **TeX Live** or **MiKTeX** LaTeX distribution
3. **VSCode** with the following extensions:
   - [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
   - [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker) (optional)
   - [LTeX](https://marketplace.visualstudio.com/items?itemName=valentjn.vscode-ltex) (optional, for grammar checking)

### For Overleaf

- An [Overleaf](https://www.overleaf.com) account (free or premium)
- GitHub integration enabled in Overleaf

## 🚀 Setup Instructions

### Local Setup (WSL)

1. **Install TeX Live in WSL:**
   ```bash
   sudo apt update
   sudo apt install texlive-full biber latexmk
   ```

2. **Clone this repository:**
   ```bash
   git clone https://github.com/AndreaClini/GGI_dm_school.git
   cd GGI_dm_school
   ```

3. **Open in VSCode:**
   ```bash
   code .
   ```

4. **Install recommended extensions** when prompted by VSCode

### Overleaf Setup

#### Option 1: Import from GitHub (Recommended)

1. Go to [Overleaf](https://www.overleaf.com)
2. Click **New Project** → **Import from GitHub**
3. Authorize Overleaf to access your GitHub account
4. Select the `GGI_dm_school` repository
5. Overleaf will sync automatically with your GitHub repository

#### Option 2: Enable GitHub Sync on Existing Project

1. Open your project in Overleaf
2. Click on **Menu** (top-left)
3. Under **Sync**, select **GitHub**
4. Follow the prompts to link your repository

## 📝 Usage

### Compiling Locally

#### Using VSCode LaTeX Workshop

- The document will automatically compile on save (configured in `.vscode/settings.json`)
- View the PDF by clicking the "View LaTeX PDF" button in the top-right
- Use `Ctrl+Alt+B` to manually build
- Use `Ctrl+Alt+C` to clean auxiliary files

#### Using Command Line

```bash
# Using latexmk (recommended)
latexmk -pdf main.tex

# Manual compilation
pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex

# Clean auxiliary files
latexmk -c
```

### Working with Overleaf

1. **Edit on Overleaf:**
   - Make changes directly in the Overleaf editor
   - Changes are synced automatically

2. **Sync to GitHub:**
   - In Overleaf: Menu → GitHub → Push to GitHub
   - Pull changes locally: `git pull origin main`

3. **Push local changes to Overleaf:**
   - Commit and push changes: `git add . && git commit -m "message" && git push`
   - In Overleaf: Menu → GitHub → Pull from GitHub

## 📁 Project Structure

```
GGI_dm_school/
├── main.tex              # Main LaTeX document
├── references.bib        # Bibliography file
├── .latexmkrc           # LaTeX compilation configuration
├── .gitignore           # Git ignore patterns for LaTeX
├── .vscode/             # VSCode settings
│   ├── settings.json    # LaTeX Workshop configuration
│   └── extensions.json  # Recommended extensions
└── README.md            # This file
```

## 📚 Adding Content

### Adding New Sections

Edit `main.tex` and add new sections:

```latex
\section{Your New Section}
\subsection{A Subsection}

Your content here...
```

### Adding Figures

1. Create a `figures/` directory (it's already in `.gitignore` if it contains large files)
2. Add figures to your document:

```latex
\begin{figure}[ht]
    \centering
    \includegraphics[width=0.8\textwidth]{figures/your-figure.pdf}
    \caption{Your caption here}
    \label{fig:your-label}
\end{figure}
```

### Adding References

1. Add entries to `references.bib`:

```bibtex
@article{author2024,
  title={Article Title},
  author={Author Name},
  journal={Journal Name},
  year={2024}
}
```

2. Cite in text:
```latex
As shown in \cite{author2024}...
```

## 🔄 Workflow Recommendations

### Working Solo

1. Edit locally in VSCode (with WSL)
2. Commit and push regularly to GitHub
3. Use Overleaf as needed for quick edits or sharing

### Collaborative Work

1. Use Overleaf for real-time collaboration
2. Periodically sync to GitHub for version control
3. Pull changes locally to work offline

### Best Practices

- ✅ Commit often with clear messages
- ✅ Pull before starting work to get latest changes
- ✅ Use branches for major changes
- ✅ Keep bibliography organized
- ✅ Use meaningful labels for equations, figures, and sections
- ✅ Add comments in LaTeX for complex sections

## 🛠️ Troubleshooting

### VSCode doesn't compile

- Ensure LaTeX Workshop extension is installed
- Check that `pdflatex` and `biber` are in your PATH
- Try manual compilation from terminal

### Bibliography not showing

- Ensure `biber` is installed: `sudo apt install biber`
- Run the full compilation sequence (pdflatex → biber → pdflatex × 2)

### Overleaf sync issues

- Make sure you've committed all local changes before syncing
- Check GitHub permissions in Overleaf settings
- Try manually pulling/pushing from Overleaf menu

### WSL performance

- Keep your LaTeX project on the WSL filesystem (not Windows filesystem)
- Use `/home/username/` rather than `/mnt/c/`

## 📖 Additional Resources

- [LaTeX Workshop Documentation](https://github.com/James-Yu/LaTeX-Workshop/wiki)
- [Overleaf Documentation](https://www.overleaf.com/learn)
- [LaTeX Physics Package](https://ctan.org/pkg/physics)
- [BibLaTeX Documentation](https://ctan.org/pkg/biblatex)

## 📄 License

This project is open source and available for educational purposes.

## 🤝 Contributing

Feel free to open issues or submit pull requests with improvements!