<html>
   <head>
      <title>Connecting Web to Remote SQL Server</title>
   </head>

   <body>
   <?php
      $ip_server = $_SERVER['SERVER_ADDR'];
      echo "Server IP Address is: $ip_server";
      $dbname = "172.20.20.9";
      $username = "admin";
      $password = "Test@1234";
      echo "<br>";

      try {
         $conn = new PDO("mysql:host=$dbname;dbname=DEVOPS", $username, $password);
         // set the PDO error mode to exception
         $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
         echo "Connected successfully to mysql database at IP address $dbname";
      } catch(PDOException $e) {
         echo "Connection failed: " . $e->getMessage();
      }
?>
   </body>
</html>