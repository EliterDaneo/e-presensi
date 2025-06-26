<?php

namespace App\Providers;

use Illuminate\Support\Facades\URL;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Paginator::useBootstrapFive();

        // if application is in production then, it only allows request url's having "HTTPS"
        if ($this->app->environment('production')) {
            URL::forceScheme('https');
        } else {
            URL::forceScheme('http');
        }
    }
}
