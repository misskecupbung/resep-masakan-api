<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Category;
use App\Recipe;

class RecipeController extends Controller
{
    public function index(Request $request)
    {
        $query = (New Recipe)->newQuery();

        if($request->name) {
            $query->where('name', 'LIKE', '%'.$request->name.'%');
        }

        if(!empty($request->category_id)) {
            $query->whereIn('category_id', $request->category_id);
        }

        $query->with('category');
        $recipes = $query->paginate(4);
        $categories = Category::select('name', 'id')->get();
        return response()->json([
            'recipes' => $recipes,
            'categories' => $categories
        ]);
    }

    public function show($id)
    {
        $recipe = Recipe::find($id);
        $recipe->load('ingredients');
        $recipe->load('category');

        return response()->json($recipe);        
    }

}
