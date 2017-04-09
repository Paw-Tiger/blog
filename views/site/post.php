<?php

$this->title = $post->title;

$this->registerMetaTag([
    'name' => 'descritption',
    'content' => $post->meta_desc
]);

$this->registerMetaTag([
    'name' => 'keywords',
    'content' => $post->meta_key
]);

?>
<div class="post" id="post_full">
    <h1><?php if($post->is_release){ ?> Выпуск № <?=$post->number?>. <?php } ?><?=$post->title?></h1>
    <div class="img">
        <img src="<?=$post->img?>" alt="<?=$post->title?>">
    </div>
    <div class="info">
        <div class="date"><?=$post->date?></div>
        <div class="hits">
            <img src="/web/images/hits.png" alt="">Просмотров: <?=$post->hits?>	</div>
        <div class="clear"></div>
    </div>
    <div class="text">
        <?=$post->full_text?>
    </div>
    <div id="social">
        <h3>Рекомендуйте этот пост друзьям:</h3>
       <?php include"likes.php"; ?>
    </div>
    <div id="subscribe">
        <h3>Чтобы не пропустить свежие выпуски, заполните форму ниже:</h3>
        <form name="subscribe" action="https://blog.myrusakov.ru/subscribe.html?utm_source=Blog.MyRusakov.ru&amp;utm_campaign=update&amp;utm_content=post_118" method="post" onsubmit="return SR_submit(this)">
            <div>
                <input type="text" name="name" placeholder="Ваше имя">
            </div>
            <div>
                <input type="text" name="email" placeholder="Ваш email">
            </div>
            <div>
                <input type="hidden" name="delivery_id" value="4">
                <input type="submit" name="subscribe" value="ПОЛУЧАТЬ СВЕЖИЕ ВЫПУСКИ">
            </div>
        </form>
    </div>
</div>
