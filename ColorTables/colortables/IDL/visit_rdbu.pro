PRO visit_rdbu, red, green, blue
; visit_rdbu
red   = Interpol([103, 178, 214, 244, 253, 247, 209, 146, 67, 33, 5],[0, 25.5, 51, 76.5, 102, 127.5, 153, 178.5, 204, 229.5, 255],Findgen(256))
green = Interpol([0, 24, 96, 165, 219, 247, 229, 197, 147, 102, 48],[0, 25.5, 51, 76.5, 102, 127.5, 153, 178.5, 204, 229.5, 255],Findgen(256))
blue  = Interpol([31, 43, 77, 130, 199, 247, 240, 222, 195, 172, 97],[0, 25.5, 51, 76.5, 102, 127.5, 153, 178.5, 204, 229.5, 255],Findgen(256))
END
