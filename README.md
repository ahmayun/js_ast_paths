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

> python extract_features.py --dir <training_dir> --max_path_length <max_length> --max_path_width <max_width> > training 2> out.err

This command runs the nodeJS scripts using multiple processes (much faster for large datasets, when running on a machine with many cores).


