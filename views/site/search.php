<?php
use yii\widgets\LinkPager;
$this->title = "Поиск $q";

$this->registerMetaTag([
    'name' => 'descritption',
    'content' => "Поиск: $q"
]);

$this->registerMetaTag([
    'name' => 'keywords',
    'content' => $q
]);

?>

<?php if($q=='') { ?>
    <h2> Вы задали пустой запрос </h2>
<?php } else { ?>

    <h2> Результаты поиска <?=$q?> </h2>

    <?php if (!$posts) { ?>

        <p> Ничего не найдено</p>

    <?php } else {

        foreach ($posts as $post) include "intro_post.php"; ?>

            <div id="pagination">
                <?= LinkPager::widget([
                    'pagination' => $pagination,
                    'firstPageLabel'=> 'В начало',
                    'lastPageLabel'=> 'В конец',
                    'prevPageLabel'=> '&laquo;',
                    'nextPageLabel' => '&raquo;',
                ])
                ?>
                <span>Страница <?=$active_page?> из <?=$count_pages?></span>

            </div>

    <?php } ?>
<?php }  ?>
