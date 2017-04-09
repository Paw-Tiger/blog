<?php
use yii\widgets\LinkPager;

$this->title = "Личный блог Михаила Русакова";

$this->registerMetaTag([
    'name' => 'descritption',
    'content' => 'Lichniy blog'
]);

$this->registerMetaTag([
    'name' => 'keywords',
    'content' => 'Lichniy blog, i drygie keywords'
]);

?>

<?php

    foreach ($posts as $post)
        include "intro_post.php";
?>


    <div id="pagination">
        <span>Страница <?=$active_page?> из <?=$count_pages?></span>
        <?= LinkPager::widget([
            'pagination' => $pagination,
            'firstPageLabel'=> 'В начало',
            'lastPageLabel'=> 'В конец',
            'prevPageLabel'=> '&laquo;',
            'nextPageLabel' => '&raquo;',
        ])
        ?>
        <div class="clear"></div>

    </div>
