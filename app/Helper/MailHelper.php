<?php

namespace App\Helper;

use App\Models\EmailConfiguration;

class MailHelper
{
    public static function setMailConfig()
    {
        $emailConfig = EmailConfiguration::first();
        $config = [
            'transport' => 'smtp',
            'host' => $emailConfig->host,
            'port' => $emailConfig->port,
            'encryption' => $emailConfig->encryption,
            'username' => $emailConfig->username,
            'password' => $emailConfig->password,
            'timeout' => null,
            'local_domain' => env('MAIL_EHLO_DOMAIN', parse_url(env('APP_URL', 'http://localhost'), PHP_URL_HOST)),
        ];

        config(['mail.mailers.smtp' => $config]);
        config(['mail.from.address' => $emailConfig->email]);
    }
}