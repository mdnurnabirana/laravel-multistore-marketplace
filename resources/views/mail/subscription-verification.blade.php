<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Verify Your Email</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Inter', sans-serif;
            background: #f9fafb;
            color: #374151;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            overflow: hidden;
        }

        /* Container */
        .container {
            text-align: center;
            background: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
            max-width: 400px;
            width: 100%;
            animation: fadeIn 1s ease-in-out;
        }

        /* Logo */
        .logo {
            width: 60px;
            height: 60px;
            margin-bottom: 20px;
            animation: float 4s ease-in-out infinite;
        }

        /* Heading */
        h1 {
            font-size: 1.8em;
            font-weight: 600;
            margin-bottom: 10px;
            color: #111827;
        }

        /* Paragraph */
        p {
            font-size: 1em;
            color: #6b7280;
            margin-bottom: 30px;
        }

        /* Button */
        a {
            display: inline-block;
            padding: 12px 30px;
            font-size: 1em;
            font-weight: 500;
            color: #ffffff;
            background: #3b82f6;
            border-radius: 8px;
            text-decoration: none;
            transition: background 0.3s ease, transform 0.3s ease;
            box-shadow: 0 4px 6px rgba(59, 130, 246, 0.1);
        }

        a:hover {
            background: #2563eb;
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(59, 130, 246, 0.2);
        }

        /* Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes float {
            0%, 100% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-10px);
            }
        }

        /* Background Circles */
        .background-circles {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            overflow: hidden;
        }

        .circle {
            position: absolute;
            border-radius: 50%;
            background: rgba(59, 130, 246, 0.1);
            animation: float 6s ease-in-out infinite;
        }

        .circle-1 {
            width: 150px;
            height: 150px;
            top: 10%;
            left: 5%;
            animation-delay: 0s;
        }

        .circle-2 {
            width: 200px;
            height: 200px;
            top: 50%;
            left: 70%;
            animation-delay: 2s;
        }

        .circle-3 {
            width: 100px;
            height: 100px;
            top: 80%;
            left: 20%;
            animation-delay: 4s;
        }
    </style>
</head>
<body>
    <!-- Background Circles -->
    <div class="background-circles">
        <div class="circle circle-1"></div>
        <div class="circle circle-2"></div>
        <div class="circle circle-3"></div>
    </div>

    <!-- Container -->
    <div class="container">
        <!-- Logo -->
        <img src="https://cdn-icons-png.flaticon.com/512/3144/3144456.png" alt="Logo" class="logo">
        <!-- Heading -->
        <h1>Verify Your Email</h1>
        <!-- Message -->
        <p>Please click the button below to verify your email address and complete your registration.</p>
        <!-- Button -->
        <a href="{{ route('newsletter-verify', $subscriber->verified_token) }}">Verify Email</a>
    </div>
</body>
</html>