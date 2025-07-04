<?php

namespace App\Providers;

use App\Models\EmailConfiguration;
use App\Models\GeneralSetting;
use App\Models\LogoSetting;
use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\View;

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
        require_once app_path('Helper/helpers.php');
        Paginator::useBootstrap();
        
        $generalSetting = GeneralSetting::first();
        $logoSetting = LogoSetting::first();
        $mailSetting = EmailConfiguration::first();

        // Set Time Zone
        Config::set('app.timezone', $generalSetting->time_zone);

        // Mail
        Config::set('mail.mailers.smtp.host', $mailSetting->host);
        Config::set('mail.mailers.smtp.port', $mailSetting->port);
        Config::set('mail.mailers.smtp.encryption', $mailSetting->encryption);
        Config::set('mail.mailers.smtp.username', $mailSetting->username);
        Config::set('mail.mailers.smtp.password', $mailSetting->password);

        // Share Variable to All view
        View::composer('*', function ($view) use ($generalSetting, $logoSetting) {
            $view->with('settings', $generalSetting);
            $view->with('logoSettings', $logoSetting);
        });
    }
}
