<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\View;
use Symfony\Component\HttpFoundation\Response;

class AdminMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if (
            !Auth::guard('pengguna')->check() ||
            Auth::guard('pengguna')->user()->role != 'Admin'
        ) {
            return redirect()->route('login')->withErrors('Silahkan Login Dahulu... #1');
        }

        if (Auth::guard('pengguna')->check()) {
            $user = Auth::guard('pengguna')->user();
            View::share('nama_user', $user->nama_user);
            View::share('role', $user->role);
        }

        return $next($request);
    }
}
