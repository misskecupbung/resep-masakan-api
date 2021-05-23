<?php

namespace App\Api\V1\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Ingredient;

class IngredientController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ingredients = Ingredient::all();

        return response()->json($ingredients);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required'
        ]);

        $ingridient = Ingredient::create($request->all());
        
        return response()->json(['message' => 'success create data', 'data' => $ingridient]);
    }

    public function edit($id)
    {
        $ingredient = Ingredient::find($id);
        
        return response()->json($ingredient);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Ingredient  $ingredient
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required'
        ]);

        $ingredient = Ingredient::find($id);
        $ingredient->update($request->all());
        
        return response()->json(['message' => 'success update data', 'data' => $ingredient]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Ingredient  $ingredient
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $ingredient = Ingredient::find($id);
        $ingredient->delete();

        return response()->json(['message' => 'success delete data', 'data' => $ingredient]);
    }
}
