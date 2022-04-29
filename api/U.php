<?php
include_once "../base.php";

foreach ($_POST['id'] as $key => $id) {
    //$_POST['id'] 即post過來含有id值的欄位
    if (isset($_POST['del']) && in_array($id, $_POST['del'])) {
        // post 內有 del 欄位 且del中帶有id
        // del
        $Banner->del($id);
        // $img=$Banner->find($id);
        // unlink('../img/'.$img['img']); //刪除資料庫圖檔
    } else {
        //update
        $data = $Banner->find($id);
        $data['text'] = $_POST['text'][$key];
        $data['sh'] = ($_POST['sh'] == $id) ? 1 : 0;
    }
    $Banner->save($data);
}

to("../back.php");
