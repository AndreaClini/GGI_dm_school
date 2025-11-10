# Figures Directory

Place your figures (images, plots, diagrams) in this directory.

## Supported Formats

- **PDF** (recommended for vector graphics)
- **PNG** (for raster images)
- **JPG/JPEG** (for photos)
- **EPS** (for older LaTeX workflows)

## Usage

Include figures in your LaTeX document:

```latex
\begin{figure}[ht]
    \centering
    \includegraphics[width=0.8\textwidth]{figures/your-figure.pdf}
    \caption{Your caption here}
    \label{fig:your-label}
\end{figure}
```

## Tips

- Use meaningful filenames (e.g., `rotation-curve-ngc4594.pdf`)
- Keep vector graphics in PDF format when possible
- Optimize large images before adding them
- Consider using TikZ or PGFPlots for creating figures directly in LaTeX
