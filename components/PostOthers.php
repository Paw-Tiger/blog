<?php
namespace app\components;

use yii\base\Widget;
use yii\helpers\Html;
use app\models\Posts;

class PostOthers extends Widget
{
    public $id;

    public function run()
    {
        $posts = Posts::find()->where(['hide' => 0])->limit(5)->where(['not',['id'=>$this->id]])->orderBy("rand()")->all();

        $div = "";
        foreach ($posts as $post)
        {
            $img = Html::tag('img',null,['src' => $post->img,'alt' => $post->title]);
            $h4 = Html::tag('h4',$post->title);
            $a = Html::tag('a','ПОЛУЧИТЬ БЕСПЛАТНО',['href'=>$post->link]);
            $p = Html::tag('p',$a,['class' => 'more']);
            $div .=Html::tag('div',$img.$h4.$p,['class' => 'course']);


        }
        return Html::tag('div',$div,['id' => 'courses','class'=>'courses']);

}

}

?>