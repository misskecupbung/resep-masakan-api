<?php

namespace App\Api\V1\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use File;
use App\Category;
use App\Ingredient;
use App\Recipe;
use App\RecipeIngredient;

class RecipeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $recipes = Recipe::all();
        // $recipes->load('ingredient');
        $recipes->load('category');

        return response()->json($recipes);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::select('id', 'name')->get();
        $ingredients = Ingredient::select('id', 'name')->get();

        return response()->json([
            'categories' => $categories, 
            'ingredients' => $ingredients
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return response()->json($request->input('ingredients'));
        $this->validate($request, [
            'category_id' => 'required',
            'image' => 'required',
            'name' => 'required',
            'step' => 'required'
        ]);

        $recipe = new Recipe;

        if ($request->file('image')) {
            $file = $request->file('image');
            $namaFile = time()."_".$file->getClientOriginalName();
            $tujuanUpload = public_path().'/image';
            $file->move($tujuanUpload, $namaFile);

            $recipe->image = $namaFile;
        }

        $recipe->category_id = $request->category_id;
        $recipe->name = $request->name;
        $recipe->step = $request->step;
        $recipe->save();

        foreach (json_decode($request->ingredients, true) as $ingredient) {
            $recipe->ingredients()->attach($ingredient['ingredient_id'], ['quantity' => $ingredient['quantity']]);
        }

        return response()->json(['message' => 'success create data', 'data' => $recipe]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $recipe = Recipe::find($id);
        $recipe->load('ingredients');
        $categories = Category::select('id', 'name')->get();
        $ingredients = Ingredient::select('id', 'name')->get();

        return response()->json([
            'recipe' => $recipe, 
            'categories' => $categories,
            'ingredients' => $ingredients
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'category_id' => 'required',
            'name' => 'required',
            'step' => 'required'
        ]);        

        $recipe = Recipe::find($id);

        if ($request->file('image')) {
            // check jika ada image maka image akan di hapus
            if ($recipe->image) {
                $imageExist = public_path("image/{$recipe->image}");
                // image akan di hapus disini
                if (File::exists($imageExist)) {
                    unlink($imageExist);
                }
            }

            $file = $request->file('image');
            $namaFile = time()."_".$file->getClientOriginalName();
            $tujuanUpload = public_path().'/image';
            $file->move($tujuanUpload, $namaFile);

            $recipe->image = $namaFile;
        }        

        $recipe->category_id = $request->category_id;
        $recipe->name = $request->name;
        $recipe->step = $request->step;
        $recipe->save();

        // multiple input data untuk update belongsToMany
        $syncData = [];
        foreach (json_decode($request->ingredients, true) as $ingredient) {
            $syncData[$ingredient['ingredient_id']] = ['quantity' => $ingredient['quantity']];
        }
        $recipe->ingredients()->sync($syncData);

        return response()->json(['message' => 'success update data', 'data' => $recipe]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $recipe = Recipe::find($id);
        // mendelete data pada table Recipe Ingredient 
        // $recipe->ingredient->detach(); untuk fungsi yang ini harus ada onDelete Cascade pada migration
        $recipe->ingredients()->sync([]); // untuk mendelete data belongsToMany
        $recipe->delete();

        return response()->json(['message' => 'success delete data', 'data' => $recipe]);
    }
}
