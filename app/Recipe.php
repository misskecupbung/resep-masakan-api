<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Recipe extends Model
{
    protected $fillable = ['category_id', 'image', 'name', 'step'];

    public function ingredients()
    {
        return $this->belongsToMany('App\Ingredient', 'recipe_ingredient')
    						->withPivot('quantity')
    						->withTimestamps();
    }

    public function category()
    {
        return $this->belongsTo('App\Category');
    }
}
