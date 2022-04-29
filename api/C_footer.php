<?php
include_once "../base.php";
// dd($_POST['text']);
$Footer->save(['id'=>1,'text'=>$_POST['text']]);
// $Footer->save($_POST);

to("../back.php?do=b_footer");
?>