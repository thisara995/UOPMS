<?php

namespace App\Http\Controllers;

use App\Models\User;

class UserController extends Controller
{
    public function show($id)
    {
        $user = User::with('orders.payments')->findOrFail($id);
        return view('user.show', compact('user'));
    }
}