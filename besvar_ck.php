<?php
session_start();

require 'config.php';
include ('database.php');

if (!isset($_SESSION['user_id']) || !hasDiscordRole($_SESSION['user_id'], $ck_role_id)) {
    header('Location: index.php'); 
    exit();
}

function hasDiscordRole($user_id, $ck_role_id) {
    global $discord_bot_token, $guild_id;

    $url = "https://discord.com/api/v10/guilds/{$guild_id}/members/{$user_id}";
    $headers = [
        'Authorization: Bot ' . $discord_bot_token,
    ];

    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

    $response = curl_exec($ch);
    curl_close($ch);

    $data = json_decode($response, true);


    $roles = isset($data['roles']) && is_array($data['roles']) ? $data['roles'] : [];


    return in_array($ck_role_id, $roles);
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Svar på CK | Storm Network</title>
    <link rel="shortcut icon" href="logo.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<link rel="stylesheet" href="style.css">
</head>

<body class=" text-white">
<?php include ('nav.php') ?>

    <div class="container md:px-40 mx-auto my-10 p-4">
        <h1 class="text-sm md:text-2xl font-bold uppercase mb-4 bg-gray-800 px-2 py-1 rounded inline">Besvar CK ansøgninger</h1>


 <?php  
$query = "SELECT * FROM ck_applications WHERE status = 'pending'";
$result = $conn->query($query);
?>

        <?php while ($row = $result->fetch_assoc()) : ?>
            <div class="my-2 mx-auto">

                <div class="flex items-center justify-between bg-gray-900 text-white px-4 py-2 rounded-t cursor-pointer" onclick="toggleApplicationDetails('<?= $row['id'] ?>')">
                    <p>Discord ID:<?= $row['discord_id'] ?></p>
                    <span id="toggleIcon_<?= $row['id'] ?>">+</span>
                </div>

                <div id="applicationDetails_<?= $row['id'] ?>" class="hidden bg-gray-800  text-gray-800 px-4 py-2 rounded-b">
                <h1 class="text-md md:text-lg md:text-3xl font-semibold my-1 text-white">vis CK Ansøgning på dig selv skal vi bruge følgende.</h1>
                <p class="font-bold text-white">Nuværende karakter.</p>    
                <span class="text-gray-300 font-normal"><?= $row['question1'] ?></span>
                <p class="font-bold text-white">CSN nummer på nuværende karakter (kan ses i karakter-vælger-menuen)</p>
                <span class="text-gray-300 font-normal"><?= $row['question2'] ?></span>
               <p class="font-bold text-white">Hvorfor skal han/hun have et CK?</p> 
                <span class="text-gray-300 font-normal"><?= $row['question3'] ?></span>
                <p class="font-bold text-white">Har du givet køretøjer, penge eller andre ejendele væk på denne karakter for nyligt?</p>
                <span class="text-gray-300 font-normal"><?= $row['question4'] ?></span>
                <p class="font-bold text-white">Har du for nyligt solgt køretøjer eller sat køretøjer til salg på denne karakter, beskriv her hvilke køretøjer, prisen på køretøjerne og hvornår du har sat dem til salg, eller solgt dem?</p>
                <span class="text-gray-300 font-normal"><?= $row['question5'] ?></span>
                <p class="font-bold text-white">Navn på ny karakter?</p>
                <span class="text-gray-300 font-normal"><?= $row['question6'] ?></span>
                 <p class="font-bold text-white">Hvad er formålet med din nye karakter?</p>
                <span class="text-gray-300 font-normal"><?= $row['question7'] ?></span>
                <h1 class="text-md md:text-lg md:text-3xl font-semibold my-1 text-white">CK Ansøgning på andre</h1> 
                <p class="font-bold text-white">Hvem søger du CK på?</p> 
                <span class="text-gray-300 font-normal"><?= $row['question8'] ?></span>
                <p class="font-bold text-white">Hvorfor søger du CK ?</p>
                <span class="text-gray-300 font-normal"><?= $row['question9'] ?></span>
                <p class="font-bold text-white">Beviser ? (Der skal fremgå et tydeligt bevis ifm. Video eller Lydfil)</p>    
                 <span class="text-gray-300 font-normal"><?= $row['question10'] ?></span>
                    
                    
                    <form method="post" action="handle_ck.php">
                        <input type="hidden" name="application_id" value="<?= $row['id'] ?>">
                        <input type="hidden" name="action" value="Accepteret">
                        <button type="submit" class="bg-green-500 text-white px-4 py-2 rounded">Godkend</button>
                    </form>
                    <form method="post" action="handle_ck.php">
                        <input type="hidden" name="application_id" value="<?= $row['id'] ?>">
                        <input type="hidden" name="action" value="afventer"> 
                        <button type="submit" class="bg-yellow-500 text-white px-4 py-2 rounded">afventer</button>
                    </form>
                   
                    <form method="post" action="handle_ck.php">
                        <input type="hidden" name="application_id" value="<?= $row['id'] ?>">
                        <input type="hidden" name="action" value="Afvist">
                        <button type="submit" class="bg-red-500 text-white px-4 py-2 rounded">Afvist</button>
                    </form>
                    </div>
                </div>
                
            </div>
        <?php endwhile; 
        ?>

        <script>
            function toggleApplicationDetails(applicationId) {
                const detailsElement = document.getElementById('applicationDetails_' + applicationId);
                const toggleIconElement = document.getElementById('toggleIcon_' + applicationId);

                if (detailsElement.style.display === 'none' || detailsElement.style.display === '') {
                    detailsElement.style.display = 'block';
                    toggleIconElement.innerText = '-';
                } else {
                    detailsElement.style.display = 'none';
                    toggleIconElement.innerText = '+';
                }
            }
        </script>



</body>

</html>
