<?php
include "db_conn.php";

$output = '';
if(isset($_POST["query"]))
{
 $search = mysqli_real_escape_string($conn, $_POST["query"]);
 $query = "
  SELECT * FROM employees
  WHERE first_name LIKE '%".$search."%'
  OR last_name LIKE '%".$search."%' 
  OR email LIKE '%".$search."%' 
  OR gender LIKE '%".$search."%' 
  OR id LIKE '%".$search."%'
 ";
}
else
{
 $query = "
  SELECT * FROM employees ORDER BY id
 ";
}
$result = mysqli_query($conn, $query);
if(mysqli_num_rows($result) > 0)
{
 $output .= '
  <div class="tbl">
   <table>
    <tr>
    <thead>
     <th>ID</th>
     <th>First Name</th>
     <th>Last Name</th>
     <th>E-mail</th>
     <th>Gender</th>
     </thead>
    </tr>
 ';
 while($row = mysqli_fetch_array($result))
 {
  $output .= '
   <tr>
    <td>'.$row["id"].'</td>
    <td>'.$row["first_name"].'</td>
    <td>'.$row["last_name"].'</td>
    <td>'.$row["email"].'</td>
    <td>'.$row["gender"].'</td>
   </tr>
   ';
 }
 echo $output;
}
else
{
 echo 'Not Found';
}

?>