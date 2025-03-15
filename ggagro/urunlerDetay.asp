<%
set urunlerDetay = kayitSeti ("SELECT * from menuler where id = "&guvenlik(request("id"))&"")
set urunler = kayitSeti("SELECT * from menuler where id LIKE "&urunlerDetay("menuId")&"")
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
                            <h2><%=urunlerDetay("menu_adi")%></h2>
                            <ul>
                                <li><a href="./">Anasayfa</a></li>
                                <li><span><%=urunler("menu_adi")%></span></li>
                                <li><span><%=urunlerDetay("menu_adi")%></span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>



        <div class="product-single-section section-padding">
            <div class="container">
                <div class="product-details">
                    <div class="row align-items-center">
                        <div class="col-lg-5">
                            <div class="product-single-img">
                                <div class="product-active owl-carousel">
                                    <%
                                    set icerikResimler = kayitSeti ("SELECT * from icerikResimler where menu_id LIKE '"&urunlerDetay("id")&"' order by id asc")
                                    while NOT icerikResimler.eof
                                    %>
                                    <div class="item">
                                        <img src="icerikResimler/<%=icerikResimler("resim_adi")%>" alt="">
                                    </div> 
                                    <%
                                    icerikResimler.movenext
                                    wEnd
                                    %>
                                </div>
                                <div class="product-thumbnil-active  owl-carousel">
                                    <%
                                    set icerikResimler = kayitSeti ("SELECT * from icerikResimler where menu_id LIKE '"&urunlerDetay("id")&"' order by id asc")
                                    while NOT icerikResimler.eof
                                    %>
                                    <div class="item">
                                        <img src="icerikResimler/<%=icerikResimler("resim_adi")%>" alt="">
                                    </div>
                                    <%
                                    icerikResimler.movenext
                                    wEnd
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="product-single-content">
                                <h5><%=urunlerDetay("menu_adi")%></h5>
                                <h6>%100 Do�al</h6>
                                <p><%=urunlerDetay("yazi")%></p>
                                <div class="wpo-category-img bandrol">
                                    <img src="images/glutensiz.png" alt="">
                                    <img src="images/katkisiz.png" alt="">
                                    <img src="images/vegan.png" alt="">
                                    <img src="images/tuzicermez.png" alt="">
                                    <img src="images/yerliuretim.png" alt="">
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-tab-area">
                    <ul class="nav nav-mb-3 main-tab" id="tab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="Information-tab" data-bs-toggle="pill"
                                data-bs-target="#Information" type="button" role="tab" aria-controls="Information"
                                aria-selected="false">�r�n Detaylar�</button>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade" id="Information" role="tabpanel" aria-labelledby="Information-tab">
                            <div class="container">
                                <div class="Additional-wrap">
                                    <div class="row">
                                        <div class="col-12">
                                            <table class="table-responsive">
                                                <tbody>
                                                    <tr>
                                                        <td>�r�n Ad�</td>
                                                        <td><%=urunlerDetay("menu_adi")%></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Enerji</td>
                                                        <td>342 kcal</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Protein</td>
                                                        <td>6.3 G</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Ya�</td>
                                                        <td>0.6 G</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Karbonhidrat</td>
                                                        <td>84 G</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Kalsiyum</td>
                                                        <td>119.7 G</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Ambalaj Tipi</td>
                                                        <td>Kilitli Doypack</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Men�ei</td>
                                                        <td>T�rkiye</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Saklama Ko�ulu</td>
                                                        <td>Serin ve kuru ortamda muhafaza ediniz, do�rudan g�ne� �����na maruz b�rakmay�n�z. </td>
                                                    </tr>
                                                    <p>Besin de�erleri 100 g i�in de�erlendirilmi�tir.</p>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="related-product">
            </div>
        </div>

    </div>
</body>

</html>