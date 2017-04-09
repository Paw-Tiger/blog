<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
use app\components\PostOthers;
use app\models\SearchForm;

AppAsset::register($this);

$action =Yii::$app->controller->action->id;

$model = new SearchForm();
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
    <link  href="favicon.ico" rel="shortcut icon" type="image/x-icon"/>
</head>
<body>
<?php $this->beginBody() ?>
<div id="header">
    <ul class="menu">
        <li>
            <a href="<?= Yii::$app->urlManager->createUrl(["site/author"])?>" <?php if ($action == "index") {?> class="active" <?php } ?> >Об авторе</a>
        </li>
        <li>
            <a href="<?= Yii::$app->urlManager->createUrl(["site/video"])?>" <?php if ($action == "video") {?> class="active" <?php } ?> >Видеокурсы</a>
        </li>
        <li>
            <a href="<?= Yii::$app->urlManager->createUrl(["site/rev"])?>" <?php if ($action == "rev") {?> class="active" <?php } ?> >Отзывы</a>
        </li>
        <li>
            <a href="<?= Yii::$app->urlManager->createUrl(["site/releases"])?>" <?php if ($action == "releases") {?> class="active" <?php } ?> >Выпуски рассылки</a>
        </li>
        <li>
            <a target="_blank" href="https://myrusakov.ru">Мой сайт</a>
        </li>
        <li>
            <a href="<?= Yii::$app->urlManager->createUrl(["site/sites"])?>" <?php if ($action == "sites") {?> class="active" <?php } ?> >Сайты учеников</a>
        </li>
    </ul>		<div class="clear"></div>
    <div id="header_title">
        <h2><a href="<?= Yii::$app->urlManager->createUrl(["site/index"])?>">блог Михаила Русакова</a></h2>
    </div>
    <div id="search">
        <?php $form = ActiveForm::begin(); ?>

            <div>
                <?= $form->field($model, 'q')->textInput(['placeholder'=>'Поиск'])->label('')?>
                <input type="image" src="/web/images/search_icon.png" alt="Поиск" />
            </div>

        <?php ActiveForm::end(); ?>
    </div>
    <div class="clear"></div>
</div>
<div id="content">

    <div id="left">
    <?=$content?>
    </div>
    <div id="right">
        <?php if ($action== "index") { ?>
        <div id="author">
            <h4>Автор блога</h4>
            <img src="/web/images/author.png" alt="Михаил Русаков" />
            <p>Михаил Русаков</p>
            <a target="_blank" href="https://vk.com/myrusakov">СТРАНИЦА АВТОРА</a>
        </div>
        <?php } else { ?>
            <h3> Другие записи </h3>
            <?php if ($action == "post") {$post_id = Yii::$app->getRequest()->getQueryParam('id');} else {$post_id = null;} ?>
            <?=PostOthers::widget(['id' =>$post_id]);?>
        <?php } ?>

    </div>
    <div class="clear"></div>
</div>
<footer>
    <p>
        <img src="/web/images/logo_footer.png" alt="" />
    </p>
    <p>
        <img src="/web/images/logo_arrow.png" alt="" />
        <a href="/"><span>блог Михаила Русакова</span></a>
    </p>
    <ul class="menu">
        <li>
            <a href="<?= Yii::$app->urlManager->createUrl(["site/author"])?>" <?php if ($action == "index") {?> class="active" <?php } ?> >Об авторе</a>
        </li>
        <li>
            <a href="<?= Yii::$app->urlManager->createUrl(["site/courses"])?>" <?php if ($action == "courses") {?> class="active" <?php } ?> >Видеокурсы</a>
        </li>
        <li>
            <a href="<?= Yii::$app->urlManager->createUrl(["site/rev"])?>" <?php if ($action == "rev") {?> class="active" <?php } ?> >Отзывы</a>
        </li>
        <li>
            <a href="<?= Yii::$app->urlManager->createUrl(["site/subscribe"])?>" <?php if ($action == "subscribe") {?> class="active" <?php } ?> >Выпуски рассылки</a>
        </li>
        <li>
            <a target="_blank" href="https://myrusakov.ru">Мой сайт</a>
        </li>
        <li>
            <a href="<?= Yii::$app->urlManager->createUrl(["site/sites"])?>" <?php if ($action == "sites") {?> class="active" <?php } ?> >Сайты учеников</a>
        </li>
    </ul>		<div class="clear"></div>
    <div id="copy">
        <p>&copy; Blog.MyRusakov.ru <?=date("Y")?>г.</p>
        <p>ВСЕ ПРАВА ЗАЩИЩЕНЫ.</p>
    </div>
</footer>


<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
