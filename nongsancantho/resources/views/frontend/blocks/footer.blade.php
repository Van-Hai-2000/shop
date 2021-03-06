  <!-- footer -->  
  <footer id="aa-footer">
    <!-- footer bottom -->
    <div class="aa-footer-top">
     <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-top-area">
            <div class="row">
              <div class="col-md-4 col-sm-6">
                <div class="aa-footer-widget">
                  <h3>Menu</h3>
                  <ul class="aa-footer-nav">
                    <li><a href="{!! url('/') !!}">Trang chủ</a></li>
                    <?php 
                      $nhom =  DB::table('nhom')->get();
                     ?>
                     @foreach ($nhom as $menu_1)
                      <li><a href="{!! url('nhom-thuc-pham',$menu_1->nhom_url) !!}">{!! $menu_1->nhom_ten !!}</a>
                      </li>
                      @endforeach
                  </ul>
                </div>
              </div>
              <div class="col-md-4 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Trang liên quan</h3>
                    <ul class="aa-footer-nav">
                      <li><a href="{!! url('khuyen-mai') !!}">Khuyến mãi</a></li>
                      <li><a href="{!! url('mon-ngon') !!}">Món ngon</a></li>            
                      <li><a href="{!! url('tuyen-dung') !!}">Tuyển dụng</a></li>
                      <li><a href="{!! url('lien-he') !!}">Liên hệ</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget"></div>
              </div>
              <div class="col-md-4 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Liên hệ</h3>
                    <address>
                      <p>Cầu Giấy-Hà Nội</p>
                      <p><span class="fa fa-phone"></span>0167.899.12.81</p>
                      <p><span class="fa fa-envelope"></span>nhaccu@gmail.com</p>
                    </address>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     </div>
    </div>
    <!-- footer-bottom -->
    <div class="aa-footer-bottom">
      <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-bottom-area">
            <p>Design by <a href="#">DHN</a></p>
            <div class="aa-footer-payment">
            </div>
          </div>
        </div>
      </div>
      </div>
    </div>
  </footer>
  <!-- / footer -->