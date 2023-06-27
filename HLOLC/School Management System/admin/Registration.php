<?php 
session_start();
if (isset($_SESSION['admin_id'])) {

  
       include "../DB_connection.php";
       include "../Registration_data/Reg.php";
       include "data/grade.php";
       $registration = getAllregistration($conn);
   
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin - Registrar</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/style.css">
	<link rel="icon" href="../logo.png">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <?php 
        include "inc/navbar.php";
        if ($registration != 0) {
     ?>
     <br><hr><br>
           <form action="Registration-search.php" 
                 class="mt-3 "
                 method="get">
             <div class="input-group mb-3 ">
                <input type="text" 
                       class="form-control"
                       name="searchKey"
                       placeholder="Search...">
                <button class="btn btn-primary">
                        <i class="fa fa-search" 
                           aria-hidden="true"></i>
                      </button>
             </div>
           </form>

           <?php if (isset($_GET['error'])) { ?>
            <div class="alert alert-danger mt-3 n-table" 
                 role="alert">
              <?=$_GET['error']?>
            </div>
            <?php } ?>

          <?php if (isset($_GET['success'])) { ?>
            <div class="alert alert-info mt-3 n-table" 
                 role="alert">
              <?=$_GET['success']?>
            </div>
            <?php } ?>

           <div class="table-responsive" >
              <table class="table align-middle table-striped table-bordered mt-3 ">
                <thead>
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">First Name</th>
                    <th scope="col">Middle Name</th>
                    <th scope="col">Last Name</th>
                    <th scope="col">Age</th>
                    <th scope="col">gender</th>
                    <th scope="col">Present Address</th>
                    <th scope="col">Child's Birthday</th>
                    <th scope="col">Type of Student</th>
                    <th scope="col">Incoming Grade</th>
                    <th scope="col">Father's Name</th>
                    <th scope="col">Mother' Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Date of submission</th>
                  </tr>
                </thead>
                <tbody>
                  
                  <?php  foreach ($registration as $registration ) { 
                     ?> 
                  <tr>
                    <td><?=$registration['Registration_id']?></td>
                    <td><?=$registration['First_name']?></td>
                    <td><?=$registration['Middle_name']?></td>
                    <td><?=$registration['Last_name']?></td>
                    <td><?=$registration['Age']?></td>
                    <td><?=$registration['gender']?></td>
                    <td><?=$registration['Present_address']?></td>
                    <td><?=$registration['Child_birthday']?></td>
                    <td><?=$registration['Type_of_student']?></td>
                    <td>
                      <?php 
                           $grade = $registration['grade'];
                           $g_temp = getGradeById($grade, $conn);
                           if ($g_temp != 0) {
                              echo $g_temp['grade_code'].'-'.
                                     $g_temp['grade'];
                            }
                        ?>
                    <td><?=$registration['Father_Name']?></td>
                    <td><?=$registration['Mother_name']?></td>
                    <td><?=$registration['Email']?></td>
                    <td><?=$registration['date_of_submission']?></td>
                    </td>
                    
                    
                  </tr>
                <?php } ?>
                </tbody>
              </table>
           </div>
         <?php }else{ ?>
             <div class="alert alert-info .w-450 m-5" 
                  role="alert">
                Empty!
              </div>
         <?php } ?>
     </div>
     <br><hr><br>
     
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>	
    <script>
        $(document).ready(function(){
             $("#navLinks li:nth-child(4) a").addClass('active');
        });
    </script>

</body>
</html>
<?php 

  }else {
    header("Location: ../login.php");
    exit;
  } 


?>