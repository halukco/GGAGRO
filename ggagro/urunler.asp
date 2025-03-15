<% 
set urunler = kayitSeti ("SELECT * from menuler where id = "&guvenlik(request("id"))&"")
set urunleralt = kayitSeti("SELECT * FROM menuler where menuId LIKE "&guvenlik(request("id"))&"")
set icerikResimler = kayitSeti ("SELECT * from icerikResimler where menu_id LIKE '"&urunleralt("id")&"'")
%>

<body>
    <div class="page-wrapper">
        <div class="preloader">
            <div class="vertical-centered-box">
                <div class="content">
                    <div class="loader-circle"></div>
                    <div class="loader-line-mask">
                        <div class="loader-line"></div>
                    </div>
                    <img src="images/favicon.png" alt="">
                </div>
            </div>
        </div>
        <div class="tp-breadcumb-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="tp-breadcumb-wrap">
                            <h2><%=urunler("menu_adi")%></h2>
                            <ul>
                                <li><a href="./?sayfa=hakkimizda">Anasayfa</a></li>
                                <li><span><%=urunler("menu_adi")%></span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        
        <div class="shop-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="grid" role="tabpanel" aria-labelledby="grid-tab">
                                <div class="product-wrap">
                                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-8 col-8">
                                        <% 
                                            set urunler = kayitSeti ("SELECT * from menuler where id = "&guvenlik(request("id"))&"")
                                            while NOT urunler.eof
                                            set urunleralt = kayitSeti("SELECT * FROM menuler where menuId LIKE "&guvenlik(request("id"))&"")
                                            while NOT urunleralt.eof
                                            set icerikResimler = kayitSeti ("SELECT * from icerikResimler where menu_id LIKE '"&urunleralt("id")&"'")
                                            %>
                                            <div class="wpo-category-single">
                                                <div class="wpo-category-img">
                                                    <a href="./?sayfa=urunlerDetay&id=<%=urunleralt("id")%>">
                                                    <img src="icerikResimler/<%=icerikResimler("resim_adi")%>">
                                                </div>
                                                <div class="wpo-category-text">
                                                    <h2><a href="./?sayfa=urunlerDetay&id=<%=urunleralt("id")%>"><%=urunleralt("menu_adi")%></a></h2>
                                                </div>
                                            </div>
                                            <%
                                            urunleralt.movenext
                                            wEnd
                                            %>
                                            <%
                                            urunler.movenext
                                            wEnd
                                            %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>