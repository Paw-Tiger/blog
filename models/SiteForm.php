<?php
namespace app\models;

use yii\base\Model;

class  SiteForm extends Model
{
    public $address;
    public $description;

    public function rules()
    {
        return [
          ['address' , 'required', 'message' => 'Введите адресс Сайта'],
          ['description' , 'required', 'message' => 'Введите описание Сайта'],
          ['address' , 'url', 'message' => 'Некорректный адресс Сайта'],
        ];
    }
}
?>