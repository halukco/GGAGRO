<%if request("sayfa") = "" or request("sayfa") = "main" then%>
<!-- #include file = "main.asp" -->
<%elseIf request("sayfa") = "hakkimizda" then%>
<!-- #include file = "hakkimizda.asp" -->
<%elseIf request("sayfa") = "urunler" then%>
<!-- #include file = "urunler.asp" -->
<%elseIf request("sayfa") = "iletisim" then%>
<!-- #include file = "iletisim.asp" -->
<%elseIf request("sayfa") = "urunlerDetay" then%>
<!-- #include file = "urunlerDetay.asp" -->
<%End if%>