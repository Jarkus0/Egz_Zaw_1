<?php
    $servername='localhost';
    $username='root';
    $password='';
    $dbname = "baza";
    $conn=mysqli_connect($servername,$username,$password,"$dbname");
      if(!$conn){
          die('Could not Connect MySql Server:' .mysql_error());
        }

    if(isset($_POST['submit']))
{    
     $date = $_POST['date'];
     $persons = $_POST['persons'];
     $phone = $_POST['phone'];

     $sql = "INSERT INTO rezerwacje (data_rez,liczba_osob,telefon)
     VALUES ('$date','$persons','$phone')";
     if (mysqli_query($conn, $sql)) {
        echo "Dodano rezerwację do bazy";
     } else {
        echo "Error: " . $sql . ":-" . mysqli_error($conn);
     }
     mysqli_close($conn);
}
?>