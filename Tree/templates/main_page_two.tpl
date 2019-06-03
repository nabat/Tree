<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <title>Додати сорт дерева</title>
  </head>
  <body>
    <div class="box box-primary">
      <div class="box-header with-border">
        <h3 class="box-title">Додати сорт</h3>
      </div>
      <form role="form">
        <div class="form-group">
          <label>Тип дерева</label>
          <select class="form-control">
            <option>Тип 1</option>
            <option>Тип 2</option>
            <option>Тип 3</option>
            <option>Тип 4</option>
            <option>Тип 5</option>
          </select>
        </div>
        <div class="box-body">
          <div class="form-group">
            <label for="exampleInputEmail1">Сорт дерева</label>
            <input type="email" class="form-control" id="sortTree" placeholder="Сорт дерева">
          </div>
        </div>
        <div class="box-footer">
          <button type="submit" class="btn btn-primary">Додати</button>
        </div>
      </form>
    </div>
    <div class="box">
      <div class="box-header with-border">
        <h3 class="box-title">Список дерев</h3>
      </div>
      <div class="box-body">
        <table class="table table-bordered">
          <tbody>
            <tr>
              <th style="width: 10px">ID</th>
              <th>Тип</th>
              <th>Сорт</th>
              <th style="width: 40px">Функції</th>
            </tr>
            <tr>
              <td>1.</td>
              <td>Update software</td>
              <td>
                <div class="progress progress-xs">
                  <div class="progress-bar progress-bar-danger" style="width: 55%"></div>
                </div>
              </td>
              <td><span class="badge bg-red">55%</span></td>
            </tr>
            <tr>
              <td>2.</td>
              <td>Clean database</td>
              <td>
                <div class="progress progress-xs">
                  <div class="progress-bar progress-bar-yellow" style="width: 70%"></div>
                </div>
              </td>
              <td><span class="badge bg-yellow">70%</span></td>
            </tr>
            <tr>
              <td>3.</td>
              <td>Cron job running</td>
              <td>
                <div class="progress progress-xs progress-striped active">
                  <div class="progress-bar progress-bar-primary" style="width: 30%"></div>
                </div>
              </td>
              <td><span class="badge bg-light-blue">30%</span></td>
            </tr>
              <tr>
                <td>4.</td>
                <td>Fix and squish bugs</td>
                <td>
                  <div class="progress progress-xs progress-striped active">
                    <div class="progress-bar progress-bar-success" style="width: 90%"></div>
                  </div>
                </td>
                <td><span class="badge bg-green">90%</span></td>
              </tr>
          </tbody>
        </table>
      </div>
    </div>
  </body>
</html>
