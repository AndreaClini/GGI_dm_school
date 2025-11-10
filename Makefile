.PHONY: all build clean cleanall view help

# Main document
MAIN = main

# Default target
all: build

# Build PDF using latexmk
build:
	latexmk -pdf $(MAIN).tex

# View the PDF (works on most systems)
view: build
	@if command -v xdg-open > /dev/null; then \
		xdg-open $(MAIN).pdf; \
	elif command -v open > /dev/null; then \
		open $(MAIN).pdf; \
	elif command -v start > /dev/null; then \
		start $(MAIN).pdf; \
	else \
		echo "Please open $(MAIN).pdf manually"; \
	fi

# Clean auxiliary files
clean:
	latexmk -c
	rm -f *.bbl *.run.xml *.bcf

# Clean all generated files including PDF
cleanall:
	latexmk -C
	rm -f *.bbl *.run.xml *.bcf

# Watch for changes and rebuild automatically
watch:
	latexmk -pdf -pvc $(MAIN).tex

# Help message
help:
	@echo "Available targets:"
	@echo "  make build    - Compile the LaTeX document"
	@echo "  make view     - Compile and open the PDF"
	@echo "  make clean    - Remove auxiliary files"
	@echo "  make cleanall - Remove all generated files including PDF"
	@echo "  make watch    - Watch for changes and rebuild automatically"
	@echo "  make help     - Show this help message"
