PRO visit_edgy_redblue, red, green, blue
; visit_edgy_redblue
red   = Interpol([255, 0, 0],[0, 127.5, 255],Findgen(256))
green = Interpol([0, 0, 0],[0, 127.5, 255],Findgen(256))
blue  = Interpol([0, 0, 255],[0, 127.5, 255],Findgen(256))
END
