<h2>Experience</h2>
<div class="row row-cols-1">
    <?php
    $rows = $Exp->all();
    foreach ($rows as $row) {
    ?>
        <div class="col">
            <h4><?= $row['year']; ?></h4>
            <p><?= $row['exp']; ?></p>
        </div>
    <?php
    }
    ?>
</div>