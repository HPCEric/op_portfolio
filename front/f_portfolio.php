<style>
    .card-img-top{
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
    .card a {
        text-decoration: none;
        color: #fff;
    }
    .card:hover img{
        transform: scale(1.05);
    }

</style>
<h2>Portfolio</h2>
<div class="row row-cols-1 row-cols-sm-2">
    <!-- card -->
    <?php
    $rows = $Portfolio->all();
    foreach ($rows as $row) {
    ?>
        <div class="col">
            <div class="card h-100">
                <a href="" class="card-box">
                    <div class="box-img">
                        <img src="img/por/<?= $row['img']; ?>" class="card-img-top">
                    </div>
                    <div class="card-body bg-dark">
                        <h2 class="card-title"><?= $row['name']; ?></h2>
                        <div class="box-txt">
                            <p><?= $row['text']; ?></p>
                            <a href="" class="btn btn-primary">作品連結</a>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    <?php
    }
    ?>
    <!-- card end -->
</div>