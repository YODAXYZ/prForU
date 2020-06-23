
<?php

require_once("db_connection.php");

if(isset($_POST['submit'])) {
	$fno = trim($_POST['fno']); //trim() - delete space with begin str and end str
	$place = trim($_POST['place']);
	$phone = trim($_POST['phone']);
	$email = trim($_POST['email']);
	$vk = trim($_POST['vk']);
	$ok = trim($_POST['ok']);
	$facebook = trim($_POST['facebook']);
	$instagram = trim($_POST['instagram']);
	$count = NULL;

    $pdoQuery = "INSERT INTO `dep`(`Ф.И.О`, `Населенный пункт`, `Телефон`, `Email`, `VK`, `OK`, `Facebook`, `Instagram`, `Охват`) VALUES (:fno,:place, :phone,:email,:vk,:ok,:facebook,:instagram, :count)";

    $pdoResult = $pdoConnection->prepare($pdoQuery);

    $pdoExec = $pdoResult->execute(array(":fno" => $fno, ":place" => $place, ":phone" => $phone, ":email" => $email, ":vk" => $vk, ":ok" => $ok, ":facebook" => $facebook, ":instagram" => $instagram, ":count" => $count));
	   
		echo "<script type='text/javascript' src='js/validation.js'></script>";

}
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
<script>
swal({ title: "Спасибо!",
	 text: "Ваши данные успешно сохранены в систему!",
	 icon: "success",
	 type: "success"}).then(okay => {
	if (okay) {
		window.location.href = "index.html";
  }
});
</script>
	
</body>
</html>


