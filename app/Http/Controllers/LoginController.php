<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;

class LoginController extends Controller
{
    /**
     * Handle an authentication attempt.
     */
    public function authenticate(Request $request): RedirectResponse
    {
        $recaptcha = $request->input('g-recaptcha-response');

        if (empty($recaptcha)) {
            return back()->withErrors([
                'g-recaptcha' => 'Para prosseguir é preciso preencher o recaptcha.',
            ])->onlyInput('g-recaptcha');
        }

        // Validação Recaptcha
        $apiResponse = Http::get('https://www.google.com/recaptcha/api/siteverify', [
            'secret' => config('recaptcha.secret_key'),
            'response' => $recaptcha
        ]);

        if (! $apiResponse->json()['success']) {
            return back()->withErrors([
                'g-recaptcha' => 'Recaptcha inválido.',
            ])->onlyInput('g-recaptcha');
        }

        $credentials = $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required'],
        ]);

        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();

            return redirect()->intended('dashboard');
        }

        return back()->withErrors([
            'email' => 'As credenciais fornecidas são inválidas.',
        ])->onlyInput('email');
    }

    /**
     * Log the user out of the application.
     */
    public function logout(Request $request): RedirectResponse
    {
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
