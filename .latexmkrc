#!/usr/bin/env perl
$latex            = 'platex -synctex=1 -halt-on-error';
$latex_silent     = 'platex -synctex=1 -halt-on-error -interaction=batchmode';
$bibtex           = 'pbibtex';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;
$pdf_mode         = 3; # generates pdf via dvipdfmx
# Set pdf viewer as in 'start VIEWER'
$pdf_previewer = 'start mupdf';

# If zero, check for a previously running previewer on the same file and update it.  If nonzero, always start a new previewer.
$new_viewer_always = 0;

# How to make the PDF viewer update its display when the PDF file changes.  See the man page for a description of each method.
$pdf_update_method = 2;

# When PDF update method 2 is used, the number of the Unix signal to send
$pdf_update_signal = 'SIGHUP';
