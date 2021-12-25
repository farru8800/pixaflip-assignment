<!DOCTYPE html>
<html lang="en">
<head>
  <title>O+ Blood</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
          <a href="#" class="navbar-brand" ><b>Pixaflip<span class="text-primary"> Assignment  </span></b></a>
  
          <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
  
          <div class="navbar-collapse collapse" id="navbarContent">
         
            <div class="ml-auto">
                <a href="#" class="btn btn-primary">Donate Blood</a>&nbsp;&nbsp;&nbsp;
          
              <a href="#" class="btn btn-primary">Request for Blood</a>
           </div>
          </div>
          </div>

        </div>
    </nav> <hr><br><br>
  
 </body>
 </html>

 <?php
  define("DB_HOST", "localhost");
  define("DB_USER", "root");
  define("DB_PASSWORD", "");
  define("DB_DATABASE", "assignment_db");

  $db = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
  // you could test connection eventually using a if and else conditional statement, 
  // feel free to take out the code below once you see Connected!
  if ($db) {
    
  } else {
    echo "Connection Failed";
  }
  
  $sql = "SELECT b_type,d_name,s_name from blood_group,district,state where b_type='AB+' && blood_group.d_id=district.d_id && district.s_id=state.s_id";
  $res = $db->query($sql);


 if ($res = mysqli_query($db, $sql)) {
    if (mysqli_num_rows($res)>0) {
        echo "<center><h4>Avilable Blood In diffrent Cities</h4></center></br>";
        echo "<table border=1 align=center width=900px height=200px>";
        echo "<tr align=center>";
        echo "<th>Blood Group</th>";
        echo "<th>District</th>";
        echo "<th>State</th>";
        echo "</tr>";
        while ($row = mysqli_fetch_array($res)) {
            echo "<tr align=center>";
            echo "<td>".$row['b_type']."</td>";
            echo "<td>".$row['d_name']."</td>";
            echo "<td>".$row['s_name']."</td>";
            echo "</tr>";
        }
        echo "</table>";
    }
    else {
        echo "No matching records are found.";
    }
}

else {
    echo "ERROR: Could not able to execute $sql. ".mysqli_error($db);
}
mysqli_close($db);

?>