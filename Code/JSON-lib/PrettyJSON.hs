string :: String -> Doc
string = enclose '"' '"' . hcat . map onChar