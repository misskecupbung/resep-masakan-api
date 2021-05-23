<?php

use Dingo\Api\Routing\Router;

/** @var Router $api */
$api = app(Router::class);

$api->version('v1', function (Router $api) {

    // index no auth
    $api->get('/', 'App\\Api\\V1\\Controllers\\RecipeController@index');
    $api->get('/recipe/{id}', 'App\\Api\\V1\\Controllers\\RecipeController@show');

    // Fungsi Auth
    $api->group(['prefix' => 'auth'], function(Router $api) {

        $api->post('signup', 'App\\Api\\V1\\Controllers\\SignUpController@signUp');
        $api->post('login', 'App\\Api\\V1\\Controllers\\LoginController@login');

        $api->post('recovery', 'App\\Api\\V1\\Controllers\\ForgotPasswordController@sendResetEmail');
        $api->post('reset', 'App\\Api\\V1\\Controllers\\ResetPasswordController@resetPassword');

        $api->post('logout', 'App\\Api\\V1\\Controllers\\LogoutController@logout');
        $api->post('refresh', 'App\\Api\\V1\\Controllers\\RefreshController@refresh');

    });

    // Admin dashboard
    $api->group(['middleware' => 'jwt.auth', 'prefix' => 'admin'], function(Router $api) {

        $api->group(['middleware' => ['role:admin']], function(Router $api) {

            // Crud permissions
            $api->get('permissions/{id}/edit', 'App\\Api\\V1\\Controllers\\Admin\\PermissionsController@edit');
            $api->resource('permissions', 'App\\Api\\V1\\Controllers\\Admin\\PermissionsController');

            // Crud Roles
            $api->get('roles/create', 'App\\Api\\V1\\Controllers\\Admin\\RolesController@create');
            $api->get('roles/{id}/edit', 'App\\Api\\V1\\Controllers\\Admin\\RolesController@edit');
            $api->resource('roles', 'App\\Api\\V1\\Controllers\\Admin\\RolesController');

            // Crud Users
            $api->get('users/create', 'App\\Api\\V1\\Controllers\\Admin\\UsersController@create');
            $api->get('users/{id}/edit', 'App\\Api\\V1\\Controllers\\Admin\\UsersController@edit');
            $api->resource('users', 'App\\Api\\V1\\Controllers\\Admin\\UsersController');

            // Crud Category
            $api->get('category/{id}/edit', 'App\\Api\\V1\\Controllers\\Admin\\CategoryController@edit');
            $api->resource('category', 'App\\Api\\V1\\Controllers\\Admin\\CategoryController');

            // Crud Ingredient
            $api->get('ingredient/{id}/edit', 'App\\Api\\V1\\Controllers\\Admin\\IngredientController@edit');
            $api->resource('ingredient', 'App\\Api\\V1\\Controllers\\Admin\\IngredientController');
        });

        $api->group(['middleware' => ['role:admin|staff']], function(Router $api) {

            // Crud Recipe
            $api->get('recipe/create', 'App\\Api\\V1\\Controllers\\Admin\\RecipeController@create');
            $api->get('recipe/{id}/edit', 'App\\Api\\V1\\Controllers\\Admin\\RecipeController@edit');
            $api->resource('recipe', 'App\\Api\\V1\\Controllers\\Admin\\RecipeController');

        });

    });

});
