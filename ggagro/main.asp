        <section class="hero hero-style-2">
            <div class="hero-slider">
                <div class="slide">
                    <img src="images/slider33.jpg" alt class="slider-bg">
                    <div class="container">
                        <div class="row">
                            <div class="col col-lg-6 col-md-8 col-sm-12 slide-caption">
                                <div class="slide-title-sub">
                                    <h5>Tamamen Organik</h5>
                                </div>
                                <div class="slide-title">
                                    <h2>Taze <span>Organik</span>
                                        Meyve & <span>Sebze</span></h2>
                                </div>
                                <div class="slide-subtitle">
                                    <p>Tamamen Organik Taze Meyve ve Sebze</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slide">
                    <img src="images/slider33.jpg" alt class="slider-bg">
                    <div class="container">
                        <div class="row">
                            <div class="col col-lg-6 col-md-8 col-sm-12 slide-caption">
                                <div class="slide-title-sub">
                                    <h5>Kurutulmu� meyve sebze</h5>
                                </div>
                                <div class="slide-title">
                                    <h2>��eri�inde Y�ksek <span>Lif</span>
                                        bulunduran <span>Meyve ve Sebze</span></h2>

                                </div>
                                <div class="slide-subtitle">
                                    <p>Kurutulmu� Meyve ve Sebzelerimiz Y�ksek Lif De�erine Sahiptir</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="category-area section-padding">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="category-wrap">
                            <div class="category-title">
                                <h2>Green Ground</h2>
                                <p>Green Ground hakk�nda veya i�erikler hakk�nda uzun yaz�/metin...</p>
                            </div>
                            <div class="category-item">
                                <div class="category-icon">
                                    <img src="images/domates.jpg" alt="">
                                </div>
                                <div class="category-content">
                                    <h2><a href="./?sayfa=hakkimizda">�lk G�nk� Gibi Taze </a></h2>
                                    <p>Taze �r�nlerimiz ilk g�nk� gibi taze sa�l��a faydal� ve organiktir...</p>
                                </div>
                            </div>
                            <div class="category-item">
                                <div class="category-icon">
                                    <img src="images/biber.jpg" alt="">
                                </div>
                                <div class="category-content">
                                    <h2><a href="./?sayfa=hakkimizda"> Besin De�erleri Y�ksek</a></h2>
                                    <p>Kurutulmu� �r�nlerimiz besin de�erleri y�ksek ve sa�l��a faydal�d�r...</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="category-img">
                            <img src="images/TAZE-SEBZE-ve-MEYVE-9ca2.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <section class="wpo-product-section-s2 section-padding">
            <div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-3">
						<div class="wpo-section-title">
							<span>�r�nlerimiz</span>
							<h2>T�m �r�nlerimiz</h2>
						</div>
					</div>
				</div>
				<div class="product-wrap">
					<div class="row">
						<div class="col col-xs-12 sortable-gallery">
							<div class="gallery-filters">
								<ul class="produc-i-op">
                                    <% 
                                    set mainUrunler = kayitSetiEkle ("SELECT * from menuler where mode LIKE '2'")
                                    while NOT mainUrunler.eof
                                    %>
									<li><a data-filter=".<%=mainUrunler("id")%>" href="#" class="product-btn <% if mainUrunler.absoluteposition=1 then%>current <%end if%>">
                                        <%=mainUrunler("menu_adi")%>
										</a>
									</li>
                                    <%
                                    mainUrunler.movenext
                                    wEnd
                                    %>
                                </li>
								</ul>
							</div>
							<div class="gallery-container gallery-fancybox masonry-gallery row">
                               <% 
                               set mainUrunler = kayitSetiEkle ("SELECT * from menuler where mode LIKE '2'")
                               while NOT mainUrunler.eof
                               set urunleralt = kayitSeti("SELECT * FROM menuler where menuId LIKE "&mainUrunler("id")&"")
                                while NOT urunlerAlt.eof
                                set icerikResimler = kayitSeti ("SELECT * from icerikResimler where menu_id LIKE '"&urunleralt("id")&"'")%>
								<div class="col-lg-3 col-md-6 col-12 custom-grid IllustAtor zoomIn <%=mainUrunler("id")%>" data-wow-duration="2000ms">
									<div class="wpo-category-single ">
										<div class="wpo-category-img">
                                            <a href="./?sayfa=urunlerDetay&id=<%=urunleralt("id")%>">
											<img src="icerikResimler/<%=icerikResimler("resim_adi")%>">
                                            
                                            
										</div>
										<div class="wpo-category-text">
											<h2><a href="./?sayfa=urunlerDetay&id=<%=urunleralt("id")%>"><%=urunleralt("menu_adi")%></a></h2>
										</div>
									</div>
								</div>
                                <%
                                urunleralt.movenext
                                wEnd
                                mainUrunler.movenext
                                wEnd
                                %>
							</div>
						</div>
					</div>
				</div>
			</div>
        </section>