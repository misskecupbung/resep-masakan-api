<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RecipeIngredient extends Model
{
    protected $table = 'recipe_ingredient';

    protected $fillable = ['recipe_id', 'ingredient_id', 'quantity'];
}
