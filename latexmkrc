$preview_mode = 1;
# $pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode --shell-escape %O %S';
$pdflatex = 'xelatex -synctex=1 -interaction=nonstopmode --shell-escape %O %S';
$pdf_mode = 1;
$postscript_mode = $dvi_mode = 0;
$pdf_previewer = "open -a /Applications/Skim.app";
$pdf_update_method = 0;
$print_type = 'pdf';
$force_mode = 1;
$clean_ext = "bbl gls glg glo bak backup %R-blx.bib run.xml ist gst
synctex.gz";
$cleanup_includes_cusdep_generated = 1;
$bibtex_use = 2;
