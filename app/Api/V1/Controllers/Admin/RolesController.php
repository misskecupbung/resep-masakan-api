<?php

namespace App\Api\V1\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;


class RolesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $roles = Role::all();

        return response()->json($roles);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $permissions = Permission::select('id', 'name')->get();

        return response()->json($permissions);        
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
            'name' => 'required',
        ]);

        $role = Role::create($request->except('permissions'));
        $permissions = $request->input('permissions') ? $request->input('permissions') : [];
        $role->givePermissionTo($permissions);

        return response()->json(['message' => 'success create data', 'data' => $role]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $role = Role::find($id);
        $role->load('permissions');
        $permissions = Permission::select('id', 'name')->get();

        return response()->json([
            'role' => $role, 
            'permissions' => $permissions
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
            'name' => 'required',
        ]);

        $role = Role::find($id);
        $role->update($request->except('permissions'));
        $permissions = $request->input('permissions') ? $request->input('permissions') : [];
        $role->syncPermissions($permissions);

        return response()->json(['message' => 'success update data', 'data' => $role]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $role = Role::find($id);
        $role->syncPermissions(); // menghapus permission role
        $role->delete();

        return response()->json(['message' => 'success delete data', 'data' => $role]);
    }
}
