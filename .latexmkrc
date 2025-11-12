# LaTeX compilation settings
$pdf_mode = 1;  # Use pdflatex
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';
$biber = 'biber %O %S';
$bibtex = 'bibtex %O %S';

# Use biber for bibliography
$bibtex_use = 2;

# Clean up auxiliary files
$clean_ext = 'synctex.gz synctex.gz(busy) run.xml tex.bak bbl bcf fdb_latexmk run tdo %R-blx.bib';

# Output directory (commented out for Overleaf compatibility)
# $out_dir = 'build';

# Continuous preview mode
$preview_continuous_mode = 1;
$preview_mode = 0;

# PDF viewer settings (for local development)
# Uncomment and adjust based on your system
# $pdf_previewer = 'start xdg-open';  # Linux
# $pdf_previewer = 'start';           # Windows
# $pdf_previewer = 'open';            # macOS
