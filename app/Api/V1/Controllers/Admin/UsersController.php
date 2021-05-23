<?php

namespace App\Api\V1\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\User;
use Spatie\Permission\Models\Role;

class UsersController extends Controller
{

    public function index()
    {
        $users = User::all();

        return response()->json($users);
    }

    public function create()
    {
        $roles = Role::select('id', 'name')->get();

        return response()->json($roles);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required',
            'roles' => 'required'
        ]);

        $user = User::create($request->except('roles'));        
        $roles = $request->input('roles') ? $request->input('roles') : [];
        $user->assignRole($roles); 

        return response()->json(['message' => 'success created data', 'data' => $user]);
    }

    public function edit($id)
    {
        $user = User::find($id);
        $user->load('roles');
        // $user->with('roles')->get();
        $roles = Role::select('id', 'name')->get();

        return response()->json([
            'user' => $user, 
            'roles' => $roles
        ]);
    }

    public function update(Request $request, $id)
    {
        // return $id;
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email|unique:users,email,'.$id,
            'roles' => 'required'
        ]);        

        $user = User::find($id);
        if($request->input('password')) {
            $user->update($request->except('roles'));
        }
        $user->update($request->except(['roles', 'password']));
        $roles = $request->input('roles') ? $request->input('roles') : [];
        $user->syncRoles($roles);

        return response()->json(['message' => 'success update data', 'data' => $user]);

    }

    public function destroy($id)
    {
        $user = User::find($id);
        $user->delete();

        return response()->json(['message' => 'success delete data', 'data' => $user]);
    }


}
