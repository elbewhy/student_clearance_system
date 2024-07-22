<?php
session_start();
error_reporting(E_ALL);
ini_set('display_errors', 1);
include('../connect.php');

if (isset($_POST['btnlogin'])) {
  $username = $_POST['txtusername'];
  $password = $_POST['txtpassword'];
  $status = 'Active';
  $category = $_POST['cmdcategory']; 
 // Updated: 'cmdadmin_type' changed to 'cmdcategory'

  // Updated: Changed 'admin_type' to 'category' in the SQL query
  $sql = "SELECT * FROM admin WHERE username='" . $username . "' AND password='" . $password . "' AND status='" . $status . "' AND category='" . $category . "'";
  $result = mysqli_query($conn, $sql);
  $row = mysqli_fetch_array($result);

  // Debug statements to check the values
  echo "Username: " . $username . "<br>";
  echo "Password: " . $password . "<br>";
  echo "Category: " . $category . "<br>";
  echo "SQL Query: " . $sql . "<br>";
  var_dump($row);

  // New debug statement to check if the query returns any rows
  echo "Number of rows returned: " . mysqli_num_rows($result) . "<br>";

  if ($row) {
    $_SESSION['admin-username'] = $row['username'];
    $_SESSION['category'] = $row['category'];
    $_SESSION['dept'] = $row['dept']; 
    $_SESSION['faculty'] = $row['faculty']; 

    // Redirect to appropriate admin dashboard based on category
    switch ($category) {
      case 'super_admin':
        echo "Redirecting to dashboard for super admin<br>";
        header('Location: super_admin.php');
        exit();
      case 'library':
        echo "Redirecting to dashboard for librarian<br>";
        header('Location: example.php');
        exit();
      case 'bursar':
        echo "Redirecting to dashboard for bursar<br>";
        header('Location: dbursar.php');
        exit();
      case 'hod':
        echo "Redirecting to dashboard for hod<br>";
        header('Location: hod.php');
        exit();
        case 'dean':
          echo "Redirecting to dashboard for dean<br>";
          header('Location: dean.php');
          exit();
          case 'ssa':
            echo "Redirecting to dashboard for ssa<br>";
            header('Location: ssa.php');
            exit();
            case 'sport':
              echo "Redirecting to dashboard for sport<br>";
              header('Location: sport.php');
              exit();
              case 'hoc':
                echo "Redirecting to dashboard for hoc<br>";
                header('Location: hoc.php');
                exit();
                case 'hall_admin':
                  echo "Redirecting to dashboard for hall_admin<br>";
                  header('Location: hall_admin.php');
                  exit();
      // Add more cases for other categories as needed
      default:
        echo "Invalid category: " . $category . "<br>";
        $_SESSION['error'] = 'Invalid category: ' . $category;
        header('Location: login.php');
        exit();
    }
  } else {
    echo "Login failed: Invalid username, password, or category<br>";
    $_SESSION['error'] = 'Invalid username, password, or category';
    header('Location: login.php');
    exit();
  }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin Login Form | Online Clearance System</title>
  <link rel="icon" type="image/png" sizes="16x16" href="../images/favicon.png">
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <style type="text/css">
    .style2 {
      color: #000099;
      font-weight: bold;
    }
    .style3 {font-size: 12px}
    .style4 {
      color: #000000;
      font-size: medium;
    }

    .login-page {
  background-image: url('../images/background1.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center;
}
.login-title{
  position: fixed;
  left: 0;
  top: 0;
  width: 100%;
  background-color: #333; /* Set your desired background color */
  color: #ffffff;
  text-align: center;
  padding: 10px 0;
  font-weight: bold;
  font-size: xx-large;
}
  </style>
</head>
<body class="hold-transition login-page ">
  <div class="login-title">Ksusta Outgoing Student Clearance System.</div>
  <br>
  <div class="login-box">
    <div class="login-logo">
      <a href="#"><b><img src="../images/logo.png" width="161" height="93"><span class="style4"></span></b></a>  
    </div>
    <!-- /.login-logo -->
    <div class="card">
      <div class="card-body login-card-body">
        <p class="login-box-msg style2">LOGIN FORM </p>

        <form action="" method="post">
          <div class="input-group mb-3">
            <input type="text" class="form-control" name="txtusername" placeholder="Enter Username">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-envelope"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <input type="password" class="form-control" name="txtpassword" placeholder="Enter Password">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <label for="selectCategory"></label>
            <select id="selectCategory" name="cmdcategory" class="form-control">
            <option value="">Category</option>  
            <option value="super_admin">Super Admin</option>
              <option value="library">library</option>
              <option value="bursar">Bursar</option>
              <option value="hod">HOD</option>
              <option value="dean">DEAN</option>
              <option value="sport">Sport</option>
              <option value="hall_admin">Hall Admin</option>
              <option value="hoc">Clinic</option>
              <option value="ssa">Secretary Student Affairs</option>
          
              <!-- Add more admin types as needed -->
            </select>
          </div>
          <div class="row">
            <div class="col-8">
              <div class="icheck-primary style3">
                <input type="checkbox" id="remember">
                <label for="remember">Remember Me</label>
              </div>
            </div>
            <!-- /.col -->
            <div><a class="nav-link " href="../login.php">Student</a></div>
            <div class="col-4">
              <button type="submit" name="btnlogin" class="btn btn-primary btn-block">Sign In</button>
            </div>
            <!-- /.col -->
          </div>
        </form>

        
<!-- /.social-auth-links -->
<p class="mb-1">&nbsp;</p>
      </div>
      <!-- /.login-card-body -->
    </div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </div>
  <!-- /.login-box -->
 
  <?php include ('footer.php');  ?>
  
  <!-- jQuery -->
  <script src="plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="dist/js/adminlte.min.js"></script>

  <link rel="stylesheet" href="popup_style.css">
  <?php if(!empty($_SESSION['success'])) {  ?>
  <div class="popup popup--icon -success js_success-popup popup--visible">
    <div class="popup__background"></div>
    <div class="popup__content">
      <h3 class="popup__content__title">
        <strong>Success</strong> 
      </h1>
      <p><?php echo $_SESSION['success']; ?></p>
      <p>
        <button class="button button--success" data-for="js_success-popup">Close</button>
      </p>
    </div>
  </div>
  <?php unset($_SESSION["success"]);  } ?>
  <?php if(!empty($_SESSION['error'])) {  ?>
  <div class="popup popup--icon -error js_error-popup popup--visible">
    <div class="popup__background"></div>
    <div class="popup__content">
      <h3 class="popup__content__title">
        <strong>Error</strong> 
      </h1>
      <p><?php echo $_SESSION['error']; ?></p>
      <p>
        <button class="button button--error" data-for="js_error-popup">Close</button>
      </p>
    </div>
  </div>
  <?php unset($_SESSION["error"]);  } ?>
  <script>
    var addButtonTrigger = function addButtonTrigger(el) {
      el.addEventListener('click', function () {
        var popupEl = document.querySelector('.' + el.dataset.for);
        popupEl.classList.toggle('popup--visible');
      });
    };

    Array.from(document.querySelectorAll('button[data-for]')).forEach(addButtonTrigger);
  </script>
</body>
</html>