PRO visit_rainbow_desaturated_pakmor, red, green, blue
; visit_rainbow_desaturated_pakmor
red   = Interpol([0, 0, 95, 0, 19, 0, 0, 0, 255, 151, 255, 91, 91],[0, 7.500009, 32.954925, 56.95119, 82.227045, 105.903285, 129.89955, 156.13548, 180.131745, 204, 229.5, 252.12054, 255],Findgen(256))
green = Interpol([0, 0, 0, 0, 107, 0, 214, 151, 255, 148, 0, 0, 0],[0, 7.500009, 32.954925, 56.95119, 82.227045, 105.903285, 129.89955, 156.13548, 180.131745, 204, 229.5, 252.12054, 255],Findgen(256))
blue  = Interpol([0, 0, 95, 255, 255, 205, 0, 0, 0, 0, 0, 0, 0],[0, 7.500009, 32.954925, 56.95119, 82.227045, 105.903285, 129.89955, 156.13548, 180.131745, 204, 229.5, 252.12054, 255],Findgen(256))
END