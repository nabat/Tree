<div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Пошук дерева</h3>
              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <div class="row">
                <div class="col-md-6 col-sm-8">
                  <div class="box box-theme box-form">
                    <form role="form" method="get">
                      <input hidden="" name="index" value="%INDEX%">
                      <input hidden="" name="ID" value="%ID%">
                      <div class="box-body">
                        <div class="form-group">
                          <label class="control-label col-md-3">Тип дерева</label>
                          <div class="col-md-9">
                            %TYPE_TREE%
                          </div>
                        </div>
                      </div>
                      <div class="box-body">
                        <div class="form-group">
                          <label class="control-label col-md-3">Сорт дерева</label>
                          <div class="col-md-9">
                            %ADD_TREE_SORT%
                          </div>
                        </div>
                      </div>
                      <div class="box-body">
                        <div class="form-group">
                          <label class="control-label col-md-3">Вік</label>
                          <div class="col-md-9">
                            %AGE%
                          </div>
                        </div>
                      </div>
                      <div class="box-body">
                        <div class="form-group">
                          <label class="control-label col-md-3">Статус</label>
                          <div class="col-md-9">
                            %STATUS%
                          </div>
                        </div>
                      </div>
                      <div class="box-body">
                        <div class="form-group">
                          <label class="control-label col-md-3">Дата зміни</label>
                          <div class="col-md-9">
                            %DATE_CHANGE%
                          </div>
                        </div>
                      </div>
                      <div class="box-footer">
                        %BUTTON_ADD%
                        %BUTTON_CHANGE%
                      </div>
                    </form>
                  </div>
                </div>
                <div class="col-md-6 col-sm-4">
                    <!--<iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0"
                            marginwidth="0" src="https://maps.google.co.uk/maps?f=q&source=s_q&hl=en&geocode=&q=2+Гайдамацька
                            ,+Коломия+G2QF+5P&aq=t&sll=52.8382,-2.327815&sspn=8.047465,13.666992&ie=UTF8&hq=&hnear=2+Гайдамацька
                            ,+Коломия+G2QF+5P,+Україна&t=m&z=14&ll=48.537912, 25.024279&output=embed"></iframe>-->
                    <div id="map" style="width: 100%; height: 400px;"></div>

                    <script>
                        // Initialize and add the map
                        function initMap() {


                            var locations = [
                                ['%PLACE%', %COORD_X%, %COORD_Y%, %LOCATION_ID%],
                                ['Work', 48.530907, 25.049187, 5],
                                ['KPK', 48.533106, 25.040420, 3],
                                ['Park', 48.529317, 25.048737, 2],
                                ['Work1', 48.529183, 25.047848, 1]
                            ];


                            var map = new google.maps.Map(document.getElementById('map'), {
                                zoom: 10,
                                center: new google.maps.LatLng(48.53, 25.04),
                                mapTypeId: google.maps.MapTypeId.ROADMAP
                            });

                            var infowindow = new google.maps.InfoWindow();

                            var marker, i;

                            for (i = 0; i < locations.length; i++) {
                                marker = new google.maps.Marker({
                                    position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                                    map: map
                                });

                                google.maps.event.addListener(marker, 'click', (function (marker, i) {
                                    return function () {
                                        infowindow.setContent(locations[i][0]);
                                        infowindow.open(map, marker);
                                    }
                                })(marker, i));
                            }
                        }
                    </script>
                    <script async defer
                            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2GVoZUtY32MVt2LHjF_wYsHhzVjlsQwE&callback=initMap">
                    </script>
                  </div>

                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- /.box-body -->
          </div>

<!-- /.box-header -->

<div class="box">
  <!--<div class="box-header with-border">
    <h3 class="box-title">Bordered Table</h3>
  </div>-->
  <!-- /.box-header -->
  <div class="box-body">
    <table class="table table-bordered">
      <tbody><tr>
        <th style="width: 10px">ID</th>
        <th>Тип дерева</th>
        <th>Сорт дерева</th>
        <th style="width: 40px">Вік</th>
        <th>Статус</th>
        <th>Коментар</th>
        <th>Дата останньої зміни</th>
      </tr>
      <tr>
        <td>1.</td>
        <td>Вічнозелені</td>
        <td>
            Сосна
        </td>
        <td>70</td>
        <td class="alert-success">Здорове</td>
        <td></td>
        <td>2019-05-30</td>
      </tr>
      <tr>
        <td>2.</td>
        <td>Листопадні</td>
        <td>
            Клен
        </td>
        <td>55</td>
        <td class="alert-success">Здорове</td>
        <td></td>
        <td>2019-05-30</td>
      </tr>
      <tr>
        <td>3.</td>
        <td>Вічнозелені</td>
        <td>
            Смерека
        </td>
        <td>85</td>
        <td class="alert-danger">Хворе</td>
        <td>Декілька сухих гілок</td>
        <td>2019-05-30</td>
      </tr>
      </tbody></table>
  </div>
  <!-- /.box-body -->
  <div class="box-footer clearfix">
    <ul class="pagination pagination-sm no-margin pull-right">
      <li><a href="#">«</a></li>
      <li><a href="#">1</a></li>
      <li><a href="#">2</a></li>
      <li><a href="#">3</a></li>
      <li><a href="#">»</a></li>
    </ul>
  </div>
</div>
