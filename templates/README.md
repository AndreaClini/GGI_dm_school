# Templates Directory

This directory contains LaTeX templates for common document structures.

## Available Templates

### `lecture-template.tex`
A template for individual lecture notes. Copy and customize for each lecture.

**Usage:**
1. Copy the template to create a new lecture file
2. Customize the metadata (lecturer, date, topics)
3. Fill in the content sections
4. Include in main.tex using `\input{lectures/lecture-01.tex}`

## Creating Modular Documents

For larger projects, consider splitting your document into multiple files:

```
GGI_dm_school/
├── main.tex                 # Main document
├── lectures/
│   ├── lecture-01.tex      # Individual lectures
│   ├── lecture-02.tex
│   └── ...
├── chapters/
│   ├── introduction.tex    # Larger chapters
│   ├── theory.tex
│   └── ...
└── appendices/
    ├── math-review.tex     # Supplementary material
    └── ...
```

In `main.tex`, include files with:
```latex
\input{lectures/lecture-01.tex}
\input{lectures/lecture-02.tex}
```

## Tips

- Keep each lecture/chapter in a separate file for easier organization
- Use consistent naming (e.g., `lecture-01`, `lecture-02`, etc.)
- Always use `\label{}` for cross-referencing between files
- Test compilation after adding new files
