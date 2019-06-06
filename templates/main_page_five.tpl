<div id="form_2" class="box box-theme box-big-form for_sort">
    <div class="box-header with-border"><h3 class="box-title">Інформація</h3>
        <div class="box-tools pull-right">
            <button type="button" class="btn btn-default btn-xs" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
        </div>
    </div>

    <div class="box-body" style="padding: 0px; display: block;">
        <div style="padding: 10px">

            <div id="simple_fio">
                <div class="form-group">
                    <label class="control-label col-xs-4" for="FIO">Прізвище ІБ</label>
                    <div class="col-xs-8">
                        <div class="input-group">
                            <input name="FIO" class="form-control" id="FIO" value="">
                            <span class="input-group-btn">
                  <button id="show_fio" type="button" class="btn btn-default" tabindex="-1">
                    <i class="fa fa-bars"></i>
                  </button>
                </span>
                        </div>
                    </div>
                </div>
            </div>

            <div id="full_fio" style="display:none">
                <div class="form-group">
                    <label class="control-label col-xs-4" for="FIO1">Прізвище</label>
                    <div class="col-xs-8">
                        <div class="input-group">
                            <input name="FIO1" class="form-control" id="FIO1" value="">
                            <span class="input-group-btn">
                  <button id="hide_fio" type="button" class="btn btn-default" tabindex="-1">
                    <i class="fa fa-reply"></i>
                  </button>
                </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-4" for="FIO2">Ім'я</label>
                    <div class="col-xs-8">
                        <input name="FIO2" class="form-control" id="FIO2" value="">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-4" for="FIO3">По батькові</label>
                    <div class="col-xs-8">
                        <input name="FIO3" class="form-control" id="FIO3" value="">
                    </div>
                </div>
            </div>

            <div class="form-group" data-visible="1" style="display: block;">
                <label class="control-label col-xs-4" for="PHONE">Телефон</label>
                <div class="col-xs-8">
                    <div class="input-group">
                        <input id="PHONE" name="PHONE" value="" placeholder="" class="form-control" type="text" data-inputmask="{&quot;mask&quot; : &quot;(999) 999-9999&quot;, &quot;removeMaskOnSubmit&quot; : true}">

                        <div class="input-group-addon">
                            <i class="fa fa-phone"></i>
                        </div>
                    </div>
                </div>
            </div>

            <div class="form-group" data-visible="1" style="display: block;">
                <label class="control-label col-xs-4" for="EMAIL">E-mail (;)</label>
                <div class="col-xs-8">
                    <div class="input-group">
                        <input id="EMAIL" name="EMAIL" value="" placeholder="" class="form-control" type="text">
                        <span class="input-group-addon">
                    <a href="https://192.168.1.114:9443/admin/index.cgi?UID=&amp;get_index=msgs_admin&amp;add_form=1&amp;SEND_TYPE=1&amp;header=1&amp;full=1" class="fa fa-envelope"></a>
                    </span>
                    </div>
                </div>
            </div>

            <!-- Contact panel -->

            <!-- Address panel -->
            <div class="box box-theme box-big-form">
                <div class="box-header with-border">
                    <h4 class="box-title">Адреса</h4>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-default btn-xs" data-widget="collapse"><i class="fa fa-minus"></i>
                        </button>
                    </div>
                </div>
                <div class="box-body" style="color: black; display: block;">
                    <div class="form-address">
                        <input type="hidden" name="DISTRICT_ID" value="" class="HIDDEN-DISTRICT">
                        <input type="hidden" name="STREET_ID" value="" class="HIDDEN-STREET">
                        <input type="hidden" name="LOCATION_ID" value="" class="HIDDEN-BUILD">

                        <div class="form-group">
                            <label class="control-label col-xs-3 col-md-2 LABEL-DISTRICT">Райони</label>
                            <div class="col-xs-9 col-md-10">
                                <select data-download-on-click="1" name="ADDRESS_DISTRICT" class="form-control SELECT-DISTRICT select-chosen" data-fieldname="DISTRICT"><option></option><option value="1">Main District</option></select><div class="chosen-container chosen-container-single" style="width: 787px;" title=""><a class="chosen-single chosen-single-with-deselect" tabindex="-1"><span>Main District</span><abbr class="search-choice-close"></abbr><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off"></div><ul class="chosen-results"></ul></div></div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-xs-3 col-md-2 LABEL-STREET">Вулиця</label>
                            <div class="col-xs-9 col-md-10">
                                <select data-download-on-click="1" name="ADDRESS_STREET" class="form-control SELECT-STREET select-chosen" data-fieldname="STREET"><option></option></select><div class="chosen-container chosen-container-single" style="width: 787px;" title=""><a class="chosen-single chosen-default" tabindex="-1"><span>--</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off"></div><ul class="chosen-results"></ul></div></div>
                            </div>

                        </div>

                        <div class="form-group">
                            <label class="control-label col-xs-3 col-md-2 LABEL-BUILD">Дім</label>
                            <div class="col-xs-9 col-md-4 addBuildMenu">
                                <div class="input-group">
                                    <select data-download-on-click="1" name="ADDRESS_BUILD" class="form-control SELECT-BUILD select-chosen" data-fieldname="BUILD">
                                        <option value="" selected=""></option>
                                    </select><div class="chosen-container chosen-container-single" style="width: 256px;" title=""><a class="chosen-single chosen-default" tabindex="-1"><span>--</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off"></div><ul class="chosen-results"></ul></div></div>
                                    <!-- Control for toggle build mode SELECT/ADD -->
                                    <span class="input-group-addon">
          <a title="Добавити Будинки" class="BUTTON-ENABLE-ADD">
            <span class="glyphicon glyphicon-plus"></span>
          </a>
        </span>
                                </div>
                            </div>

                            <div class="col-xs-9 col-md-4 changeBuildMenu" style="display : none">
                                <div class="input-group">
                                    <input type="text" name="ADD_ADDRESS_BUILD" class="form-control INPUT-ADD-BUILD">
                                    <span class="input-group-addon">
            <a class="BUTTON-ENABLE-SEL">
              <span class="glyphicon glyphicon-list"></span>
            </a>
           </span>
                                </div>
                            </div>
                            <label class="control-label col-xs-3 col-md-3">Квартира</label>
                            <div class="col-xs-3 col-md-3">
                                <input type="text" name="ADDRESS_FLAT" value="" class="form-control INPUT-FLAT">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-xs-3 col-md-2">Під'їзд</label>
                            <div class="col-xs-3 col-md-4">
                                <input type="text" name="ENTRANCE" value="" class="form-control">
                            </div>

                            <label class="control-label col-xs-3 col-md-3">Поверх</label>
                            <div class="col-xs-3 col-md-3">
                                <input type="text" name="FLOOR" value="" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12" align="right" style="padding-left: 0; ">
                                <a href="https://192.168.1.114:9443/admin/index.cgi?get_index=form_districts&amp;full=1&amp;header=1" class="btn btn-default btn-sm" data-tooltip-position="top" data-tooltip="Добавити Адреса" data-content="Добавити Адреса" data-html="true" data-toggle="popover" data-trigger="hover" data-placement="top" data-container="body" data-original-title="" title=""><i class="fa fa-plus"></i></a>


                            </div>
                        </div>
                    </div>

                    <script>
                        document['FLAT_CHECK_FREE'] = '' || "1";
                        document['FLAT_CHECK_OCCUPIED'] = '' || "0";
                    </script>
                    <script src="/styles/default_adm/js/searchLocation.js"></script>


                </div>
            </div>

            <!-- comment panel -->
            <div class="form-group">
                <label class="control-label col-sm-2 col-md-3" for="COMMENTS">Примітки</label>
                <div class="col-sm-10 col-md-9">
                    <textarea class="form-control" id="COMMENTS" name="COMMENTS" rows="3"></textarea>
                </div>
            </div>
        </div>
        <!-- Pasport panel -->
        <div class="box box-default box-big-form collapsed-box">
            <div class="box-header with-border">
                <h3 class="box-title">Паспорт</h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-default btn-xs" data-widget="collapse"><i class="fa fa-plus"></i>
                    </button>
                </div>
            </div>
            <div class="box-body">
                <div class="form-group">
                    <!-- <label class='col-md-12 bg-primary'>Паспорт</label> -->
                    <label class="control-label col-xs-4 col-md-2" for="PASPORT_NUM">Номер</label>
                    <div class="col-xs-8 col-sm-4">
                        <input id="PASPORT_NUM" name="PASPORT_NUM" value="" placeholder="" class="form-control" type="text">
                    </div>
                    <span class="visible-xs visible-sm col-xs-12" style="padding-top: 10px"> </span>
                    <label class="control-label col-xs-4 col-md-2" for="PASPORT_DATE">Дата</label>
                    <div class="col-xs-8 col-sm-4">
                        <input id="PASPORT_DATE" type="text" name="PASPORT_DATE" value="" class="datepicker form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-4 col-md-2" for="PASPORT_GRANT">Видано</label>
                    <div class="col-xs-8 col-md-10">
                        <textarea class="form-control" id="PASPORT_GRANT" name="PASPORT_GRANT" rows="2"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-4 col-md-2" for="BIRTH_DATE"></label>
                    <div class="col-xs-8 col-md-4">
                        <input class="form-control datepicker" id="BIRTH_DATE" name="BIRTH_DATE" type="text" value="">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-4 col-md-2" for="REG_ADDRESS">Адреса реєстрації</label>
                    <div class="col-xs-8 col-md-10">
                        <textarea class="form-control" id="REG_ADDRESS" name="REG_ADDRESS" rows="2"></textarea>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contract fields -->
        <div class="box box-default box-big-form collapsed-box">
            <div class="box-header with-border">
                <h3 class="box-title">Договір</h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-default btn-xs" data-widget="collapse"><i class="fa fa-plus"></i>
                    </button>
                </div>
            </div>
            <div class="box-body">

                <div class="form-group">
                    <label class="control-label col-xs-4 col-md-2" for="CONTRACT_ID">Номер контракта
                    </label>
                    <div class="col-xs-8 col-md-4">
                        <div class="input-group">
                            <input id="CONTRACT_ID" name="CONTRACT_ID" value="" placeholder="" class="form-control" type="text">
                            <span class="input-group-addon"></span>
                            <span class="input-group-addon"><a href="https://192.168.1.114:9443/admin/index.cgi?qindex=15&amp;UID=&amp;PRINT_CONTRACT=&amp;SEND_EMAIL=1&amp;pdf=1" class="glyphicon glyphicon-envelope" target="_new">
                                        </a></span>
                        </div>
                    </div>
                    <span class="visible-xs visible-sm col-xs-12" style="padding-top: 5px"> </span>
                    <label class="control-label col-xs-4 col-md-2" for="CONTRACT_DATE">Дата</label>
                    <div class="col-xs-8 col-md-4">
                        <input id="CONTRACT_DATE" type="text" name="CONTRACT_DATE" value="" class="datepicker form-control">
                    </div>
                </div>


            </div>
        </div>
        <!-- Other panel  -->
        <div class="box box-default box-big-form collapsed-box">
            <div class="box-header with-border">
                <h3 class="box-title">Дод. Поля</h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-default btn-xs" data-widget="collapse"><i class="fa fa-plus"></i>
                    </button>
                </div>
            </div>
            <div class="box-body">

            </div>
        </div>

    </div>
    <div class="box-footer" style="display: block;">
        <input type="submit" class="btn btn-primary" name="next" value="Далі">
    </div>
</div>