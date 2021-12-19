<body style="background-color:#cce2cb;">
  <div id="app">
    <section class="section">
      <div class="container mt-5">
        <div class="row">
          <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
            <div class="login-brand">
            <center><img src="<?= base_url('assets/upload/logoo.png')  ?>" alt="image description" style= "width:45%; height:45%;" class="shadow-light rounded-circle"></center>
            </div>

            <div class="card card-primary">
              <div class="card-header"><h4>Ganti Password</h4></div>
              <div class="card-body">
                <form method="POST" action="<?= base_url('auth/ganti_password_aksi'); ?>">
                  <div class="form-group">
                    <label for="pass_baru">Password Baru</label>
                    <input id="pass_baru" type="password" class="form-control" name="pass_baru" tabindex="1" autofocus>
                    <?= form_error('pass_baru', '<div class="text-small text-danger">', '</div>'); ?>
                  </div>

                  <div class="form-group">
                    <div class="d-block">
                    	<label for="ulang_pass" class="control-label">Ulangi Password</label>
                    </div>
                    <input id="ulang_pass" type="password" class="form-control" name="ulang_pass" tabindex="2">
                    <?= form_error('ulang_pass', '<div class="text-small text-danger">', '</div>'); ?>
                  </div>

                  <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-lg btn-block" tabindex="4">
                      Ganti Password
                    </button>
                  </div>
                </form>

              </div>
            </div>
            <div class="simple-footer">
              Copyright &copy; Stisla 2018
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>