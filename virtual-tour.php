<?php
	require_once "view/header.php";
?>
<head>
    <meta charset="utf-8">
    <title>Virtual Tour</title>
    <link rel="stylesheet" href="https://cdn.pannellum.org/2.3/pannellum.css"/>
    <script type="text/javascript" src="https://cdn.pannellum.org/2.3/pannellum.js"></script>

    <style>
    #panorama {
        width: 100%;
        height: 490px;
        align-content: center;
              
    }
    #controls {
        position: absolute;
        bottom: 0;
        z-index: 2;
        text-align: center;
        width: 100%;
        padding-bottom: 10px;
    }
    .ctrl {
        padding: 5px 3px;
        width: 50px;
        font-size: 12px;
        text-align: center;
        background: rgba(200, 200, 200, 0.8);
        display: inline-block;
        cursor: pointer;
    }

    .plus {
    padding: 5px 2px;
    width: 27px;
    font-size: 12px;
    text-align: center;
    border-radius: 50%;
    background: rgba(200, 200, 200, 0.8);
    display: inline-block;
    cursor: pointer;
}

    .ctrl:hover {
        background: rgba(200, 200, 200, 1);
    }
    
    .pnlm-panorama-info {
   
    left: 9px;
   
    }
    </style>
</head>

<body>
<div id="panorama">
    <div id="controls">
        <div class="ctrl" id="pan-up">&#9650;</div>
        <div class="ctrl" id="pan-down">&#9660;</div>
        <div class="ctrl" id="pan-left">&#9664;</div>
        <div class="ctrl" id="pan-right">&#9654;</div>
        <div class="ctrl" id="zoom-in">zoom in</div>
        <div class="ctrl" id="zoom-out">zoom out</div>
        <div class="ctrl" id="fullscreen">&#x2922;</div>

       
    </div>
</div>

<script>
// Create viewer
viewer = pannellum.viewer('panorama', ﻿{
    "default": {
        "author": "Avia Residence",
        "firstScene": "1",
        "sceneFadeDuration": 2000,
        "autoLoad" : true,
        "autoRotate" : 5,
        "showControls": false
    },
    "scenes" : {
        <?php $sql = $pdo->query("SELECT * FROM panorama");
        foreach($sql->fetchAll(\PDO::FETCH_ASSOC) as $row) : ?>
            "<?=$row['id_panorama'];?>": {
                "title": "<?=$row['nama_panorama'];?>",
                "type": "equirectangular",
                "panorama": "/simpangambar/<?=$row['foto_panorama'];?>",
                "hotSpotDebug" : false,
                "hotSpots": [
                    <?php $sql = $pdo->query("SELECT * FROM hotspots WHERE id_panorama=".$row['id_panorama']);
                        foreach($sql->fetchAll(\PDO::FETCH_ASSOC) as $hotspot) : ?>
                        {
                            "pitch": <?=$hotspot['pitch'];?>,
                            "yaw": <?=$hotspot['yaw'];?>,
                            "type": "info",
                        <?php if(!empty($hotspot['sceneId']) || is_null($hotspot['sceneId'])) :?>
                            "text": "<?=$hotspot['text'];?>",
                            "sceneId": "<?=$hotspot['sceneId'];?>"
                        <?php else:?>
                            "text": "<?=$hotspot['text'];?>"
                        <?php endif?>
                        },
                    <?php endforeach?>
                ]
            },
        <?php endforeach?>
    }
});

// Make buttons work
document.getElementById('pan-up').addEventListener('click', function(e) {
    viewer.setPitch(viewer.getPitch() + 10);
});
document.getElementById('pan-down').addEventListener('click', function(e) {
    viewer.setPitch(viewer.getPitch() - 10);
});
document.getElementById('pan-left').addEventListener('click', function(e) {
    viewer.setYaw(viewer.getYaw() - 10);
});
document.getElementById('pan-right').addEventListener('click', function(e) {
    viewer.setYaw(viewer.getYaw() + 10);
});
document.getElementById('zoom-in').addEventListener('click', function(e) {
    viewer.setHfov(viewer.getHfov() - 10);
});
document.getElementById('zoom-out').addEventListener('click', function(e) {
    viewer.setHfov(viewer.getHfov() + 10);
});
document.getElementById('fullscreen').addEventListener('click', function(e) {
    viewer.toggleFullscreen();
});


// viewer.on('click', function(event) {
//     // For pitch and yaw of center of viewer
//     // console.log(viewer.getPitch(), viewer.getYaw());
//     alert('Pitch : '+viewer.getPitch());
//     // For pitch and yaw of mouse location
//     // console.log(viewer.mouseEventToCoords(event));
// });

document.getElementById('add').addEventListener('click', function(e) {
    // 
    // alert('Pitch : '+viewer.getPitch());
    // alert(viewer.getPitch()+' '+viewer.getYaw());
    document.getElementById('pitch').value = viewer.getPitch();
    document.getElementById('yaw').value = viewer.getYaw();

});

</script>

</body>

<?php
	require_once "view/footer.php";
?>