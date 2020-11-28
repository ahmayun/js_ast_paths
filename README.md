# Javascript AST Paths | SProj 21
Requirements
------------
* node.js
* npm

They can be installed using:
> sudo apt-get install nodejs npm

Setup
-----
> git clone https://github.com/keffinel/js_ast_paths.git
> sudo npm install

Path-Extraction
---------------
> ./make_paths <paths_to_js_files>
This command will make a folder called ast_paths and follow the same folder heirachy as the dataset

Examples
---------------
> ./make_paths ../dataset/jsinspect/Split_Archive0/data/100invest.ru/\*.js

> ./make_paths ../dataset/jsinspect/Split_Archive0/data/\*/\*.js

