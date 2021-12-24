<!DOCTYPE html>
<html>
    <head>
        <title>Check MySQL Connection</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Bancos de dados no MySql</h1>
        <?php
            $dbHost = getenv("DATABASE_HOST");
            $dbPort = getenv("DATABASE_PORT");
            $dbName = getenv("DATABASE_NAME");
            $dbUser = getenv("DATABASE_USER");
            $dbPass = getenv("DATABASE_PASS");

            $conn = new mysqli("$dbHost:$dbPort", $dbUser, $dbPass);
            if ($conn->connect_error) {
                die("Falha na conexão: " . $conn->connect_error);
            }
            else {
                $result = mysqli_query($conn, "SHOW DATABASES");

                if ($result === false) {
                    printf("Error: %s\n", mysqli_error($conn));
                }
                else {
                    echo "<h3>Bases de Dados</h3>";
                    while($row = mysqli_fetch_row($result)) {
                        echo $row[0] . "<br />";
                    }

                    $result->free_result();
                }

                $conn->close();
            }
        ?>
    </body>
</html>
