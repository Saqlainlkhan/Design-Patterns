# Document Editor - CPSC7700 Term Project

A modular, extensible text-based document editor demonstrating multiple design patterns.

## Features

### Core Features
- Create and manage documents with various elements (paragraphs, headlines, images)
- Undo/Redo functionality
- Multiple export formats (HTML, Plain Text, Markdown, **PDF**)
- Word counting with multiple strategies
- Document persistence (local files)
- Comprehensive logging

### Bonus Features (10 Points)
- **PDF Export** - Export documents to PDF format (simplified implementation)
- **Cloud Storage Integration** - Save/load documents to Google Drive and Dropbox (simulated)
- Runtime cloud provider switching

**Note:** Cloud storage and PDF generation are simulated for demonstration purposes. This allows the project to focus on design patterns without requiring external API keys or libraries. In production, these would use actual Google Drive SDK, Dropbox SDK, and PDF libraries like iText or Apache PDFBox.

## Design Patterns Implemented

### Core Patterns (Required)
1. **Composite Pattern** - Document structure representation
2. **Factory Pattern** - Element creation
3. **Visitor Pattern** - Document operations (word count, export)
4. **Command Pattern** - Undo/Redo functionality
5. **Strategy Pattern** - Word counting algorithms & cloud providers
6. **Adapter Pattern** - Third-party persistence integration
7. **Decorator Pattern** - Export format enhancement
8. **Singleton Pattern** - Logger implementation
9. **Observer Pattern** - UI notifications

### Bonus Feature Patterns
10. **Facade Pattern** - Cloud storage operations simplification
11. **Bridge Pattern** - Export abstraction from implementation

## How to Run

### Windows
```batch
.\build.bat
.\run.bat
```

### Manual Compilation (Cross-platform)
```bash
# Create bin directory
mkdir bin

# Compile all Java files
javac -d bin -cp src/main/java src/main/java/com/documenteditor/*.java src/main/java/com/documenteditor/**/*.java

# Run the application
java -cp bin com.documenteditor.Main
```

## Project Structure

```
src/
├── main/java/com/documenteditor/
│   ├── Main.java
│   ├── core/                    # Core document classes
│   ├── elements/                # Document elements (Composite Pattern)
│   ├── factories/               # Element factories (Factory Pattern)
│   ├── visitors/                # Document visitors (Visitor Pattern)
│   ├── commands/                # Command implementations (Command Pattern)
│   ├── strategies/              # Word counting strategies (Strategy Pattern)
│   ├── adapters/                # Persistence adapters (Adapter Pattern)
│   ├── decorators/              # Export decorators (Decorator Pattern)
│   ├── observers/               # Observer implementations (Observer Pattern)
│   ├── logging/                 # Logger singleton (Singleton Pattern)
│   ├── cloud/                   # Cloud storage (Strategy + Facade Patterns) ⭐ NEW
│   ├── exporters/               # PDF exporter (Bridge Pattern) ⭐ NEW
│   └── ui/                      # CLI interface
```

## Deliverables

This project includes all required deliverables for CPSC7700:

1. **Source Code** - Complete implementation in `src/` directory
2. **UML Class Diagram** - Detailed diagram in `UML_ClassDiagram.md`
3. **Project Report** - Comprehensive pattern analysis in `PROJECT_REPORT.md`
4. **Demonstration** - Step-by-step demo script in `DEMO_SCRIPT.md`
5. **Bonus Features Report** - PDF & Cloud storage implementation in `BONUS_FEATURES_REPORT.md` ⭐
6. **Requirements Compliance** - Full compliance verification in `REQUIREMENTS_COMPLIANCE_REPORT.md`

## Quick Start Demo

1. Run `.\build.bat` to compile
2. Run `.\run.bat` to start the application
3. Follow the `DEMO_SCRIPT.md` for a complete demonstration of all patterns

## Academic Context

This project fulfills the requirements for CPSC7700 Application Architecture, demonstrating practical implementation of 9 design patterns in a cohesive, extensible architecture. The focus is on clean code, proper pattern usage, and educational value rather than commercial-grade features.
