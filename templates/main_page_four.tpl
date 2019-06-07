
<div class="box box-success">
    <div class="box-header with-border">
        <h3 class="box-title">Додати дерево</h3>
        <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
        </div>
    </div>
    <!-- /.box-header -->
    <form role="form" method="get">
        <input hidden="" name="index" value="%INDEX%">
        <input hidden="" name="ID" value="%ID%">
    <div class="box-body no-padding">
        <div class="row">
            <div class="col-md-5 col-sm-5">

                    <!--<div class="box-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Тип дерева</label>
                            <div class="col-md-9">
                                %TYPE_TREE%
                            </div>
                        </div>
                    </div>-->
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
                            <label class="control-label col-md-3">Номер дерева</label>
                            <div class="col-md-9">
                                %TREE_ID%
                            </div>
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Коментар</label>
                            <div class="col-md-9">
                                <textarea class="form-control" id="COMMENTS" name="COMMENTS" rows="8"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        %BUTTON_ADD%
                        %BUTTON_CHANGE%
                    </div>

            </div>
            <div class="col-md-7 col-sm-7">
                <!-- Занесення координат в адресну строку -->
                <input hidden="" id="cord_x" name="COORD_X" value="">
                <input hidden="" id="cord_y" name="COORD_Y" value="">
                <!-- Створення мапи -->
                <div id="map" style="width: 100%; height: 450px;"></div>
                <script>

                    var map, infoWindow;

                    function initMap() {
                        map = new google.maps.Map(document.getElementById('map'), {
                            center: {lat: %COORD_X%, lng: %COORD_Y%},
                            zoom: 6
                        });
                        infoWindow = new google.maps.InfoWindow;
if (navigator.geolocation) {
                            navigator.geolocation.getCurrentPosition(function(position) {
                                var pos = {
                                    lat: position.coords.latitude,
                                    lng: position.coords.longitude
                                };
                                var marker = new google.maps.Marker({position: pos, map: map});
                                infoWindow.open(map);
                                map.setCenter(pos);
                                document.getElementById('cord_x').setAttribute('value', pos.lat);
                                document.getElementById('cord_y').setAttribute('value', pos.lng);
                            }, function() {
                                handleLocationError(true, infoWindow, map.getCenter());
                            });
                        } else {
                            // Browser doesn't support Geolocation
                            handleLocationError(false, infoWindow, map.getCenter());
                        }

                    }



                    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
                        infoWindow.setPosition(pos);
                        infoWindow.setContent(browserHasGeolocation ?
                            'Error: The Geolocation service failed.' :
                            'Error: Your browser doesn\'t support geolocation.');
                        infoWindow.open(map);
                    }
                </script>
                <script async defer
                        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2GVoZUtY32MVt2LHjF_wYsHhzVjlsQwE&callback=initMap">
                </script>
            </div>
        </div>
    </div>
    </form>
</div>
