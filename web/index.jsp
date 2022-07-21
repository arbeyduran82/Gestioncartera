<%-- 
    Document   : index
    Created on : 6 jul. 2022, 18:06:40
    Author     : developer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login gestion cartera</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6cs
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="css/adminlte.min.css">
</head>
<body>
<!--Start login-->
<div class="container mt-4 col-lg-4">
  <div class="card col-sm-10">
    <div class="card-body">
      <form class="form-sign" action="Validarlogin" method="POST">
        <div class="form-group text-center">
          <h3 style="color:#525558;">Login</h3>
          <img src="img/accedo-logo.png" alt="70" width="170">
          <br>
          <label style="color:#525558;">Bienvenidos al Sistema.</label>
        </div>
        <div class="form-group">
          <label>Usuario:</label>
          <input type="text" name="txtuser" class="form-control">
        </div>
        <div class="form-group">
          <label>Password:</label>
          <input type="password" name="txtpassword" class="form-control">
        </div>
        <input type="submit" name="accion" value="Ingresar" class="btn btn-secondary btn-block">
      </form>
    </div>
  </div>
</div>
<footer class="bg-light text-center text-lg-start">
  <!-- Copyright -->
  
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    <div class="float-right">
      <b>Version</b> 2.0
    </div>
    © 2022 Todos los derechos reservados:
    <a class="text-dark" href="#">Grupo exposicion ficha 2450025</a>
  </div>
  <!-- Copyright -->
</footer>
<!--End login-->
<!-- 
<footer class="main-footer">
  <div class="float-right">
    <b>Version</b> 2.0
  </div>
  <strong>Copyright &copy; 2022 <a href="#">Proyecto final Sena</a>.</strong> Todos los derechos reservados.
</footer>
-->
<!-- jQuery -->

<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- jquery-validation -->
<script src="plugins/jquery-validation/jquery.validate.min.js"></script>
<script src="plugins/jquery-validation/additional-methods.min.js"></script>
<!-- AdminLTE App -->
<script src="js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="js/demo.js"></script>
<!-- Page specific script -->
<script>
$(function () {
  $.validator.setDefaults({
    submitHandler: function () {
      alert( "Form successful submitted!" );
    }
  });
  $('#quickForm').validate({
    rules: {
      email: {
        required: true,
        email: true,
      },
      password: {
        required: true,
        minlength: 5
      },
      terms: {
        required: true
      },
    },
    messages: {
      email: {
        required: "Please enter a email address",
        email: "Please enter a valid email address"
      },
      password: {
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long"
      },
      terms: "Please accept our terms"
    },
    errorElement: 'span',
    errorPlacement: function (error, element) {
      error.addClass('invalid-feedback');
      element.closest('.form-group').append(error);
    },
    highlight: function (element, errorClass, validClass) {
      $(element).addClass('is-invalid');
    },
    unhighlight: function (element, errorClass, validClass) {
      $(element).removeClass('is-invalid');
    }
  });
});
</script>
</body>
</html>

