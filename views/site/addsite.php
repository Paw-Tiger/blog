
<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;


$this->title = "Добавить сайт";

$this->registerMetaTag([
    'name' => 'descritption',
    'content' => 'Добавить сайт на блог Михаила Русакова.'
]);

$this->registerMetaTag([
    'name' => 'keywords',
    'content' => 'добавить сайт, добавить сайт блог, добавить сайт блог михаил русаков'
]);

?>

<div id="other" style="height: 1373px;">
    <h1>Заполните форму</h1>
    <p>Проверка сайта происходит автоматически при добавлении. Обратите внимание, что на добавляемой страницей должно быть упоминание обо мне. Например, "Спасибо Михаилу Русакову!", либо должна быть ссылка на любой из моих сайтов (например, на <b>myrusakov.ru</b>).</p>
    <p>Ежеднено все сайты автоматически проверяются и как только это упоминание/ссылка удаляется, то сайт так же будет сразу удалён из списка.</p>
    <?php if($success) {?>
        <p class="message">Сайт успешно добавлен и отправлен на проверку перед размещением. Если спустя сутки сайт не добавлен, то свяжитесь с администрацией!</p>
    <?php }?>

    <?php if($error) {?>
        <p class="message">Произошла ошибка, повторите</p>
    <?php }?>

    <?php $form = ActiveForm::begin();?>
        <div>
            <?= $form->field($model, 'address')->label('');?>
        </div>
        <div>
            <?= $form->field($model, 'description')->textarea(['rows'=>'6'])->label('');?>
        </div>

        <div>
            <?= Html::submitButton('Добавить сайт',['name' => 'add_site'])?>
        </div>
    <?php $form = ActiveForm::end();?>
</div>
