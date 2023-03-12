<?php
$connect = mysqli_connect('localhost', 'root', '', 'rzd');

$sql = mysqli_query($connect, 'SELECT Поезда.`Номер поезда`, Расписание.`Время отправление`, Пассажиры.ФИО, Пассажиры.`Номер места` FROM 
                              Поезда INNER JOIN Пассажиры ON Поезда.`Номер поезда` = Пассажиры.`Номер поезда` JOIN 
                              Расписание ON Пассажиры.`Номер поезда` = Расписание.`Номер поезда`');

$sql = mysqli_fetch_all($sql);
?>
<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Inner Join</title>
</head>
<body>
<h3>Рейс</h3>
<table>
    <tr>
        <th>Номер поезда</th>
        <th>Время отправление</th>
        <th>ФИО пассажиры</th>
        <th>Номер места</th>
    </tr>
    <?php
    foreach ($sql as $value)
    {
        ?>
        <tr>
            <td><?=$value[0]?></td>
            <td><?=$value[1]?></td>
            <td><?=$value[2]?></td>
            <td><?=$value[3]?></td>
        </tr>
        <?php
    }
    ?>
</table>
</body>
</html>
