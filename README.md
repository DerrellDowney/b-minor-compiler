## B-Minor Compiler

### Overview
The B-Minor Compiler project focuses on creating a compiler for the B-Minor programming language, which is a statically-typed, procedural programming language. The compiler is implemented in the C programming languages and uses technologies such as Lex and Bison.

### Features
The B-Minor Compiler encompasses several essential features, including:
1. **Lexical Analysis**: The compiler includes a lexical analyzer to tokenize the input B-Minor source code, recognizing different lexical units such as keywords, identifiers, operators, and literals.

2. **Syntax Parsing**: The compiler employs a syntax parser to analyze the structure of the B-Minor code according to its grammar rules, utilizing techniques like LL(1) parsing or recursive descent parsing.

3. **Semantic Analysis**: The B-Minor Compiler performs semantic analysis to ensure the correctness of the code. This includes type checking, scoping rules, symbol table management, and resolving identifiers.

4. **Intermediate Code Generation**: The compiler generates intermediate code representation, an abstract syntax tree, to facilitate further optimizations and code generation.

5. **Code Generation**: The compiler generates target code, such as assembly or machine code, that can be executed directly on the target platform or virtual machine.
