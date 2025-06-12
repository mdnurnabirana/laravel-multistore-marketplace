<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Account Created</title>
    <style>
        body {
            background: #f6f8fa;
            font-family: 'Segoe UI', 'Helvetica Neue', Arial, 'Liberation Sans', sans-serif;
            color: #222;
            margin: 0;
            padding: 0;
        }
        .container {
            background: #fff;
            max-width: 500px;
            margin: 40px auto;
            border-radius: 10px;
            box-shadow: 0 4px 24px rgba(0,0,0,0.07);
            padding: 40px 30px;
        }
        h1 {
            font-size: 2.2em;
            color: #2c3e50;
            margin-bottom: 10px;
            font-weight: 600;
            letter-spacing: 1px;
        }
        .details {
            background: #f0f4f8;
            border-radius: 6px;
            padding: 18px 20px;
            margin: 25px 0;
            font-size: 1.08em;
        }
        .details p {
            margin: 8px 0;
        }
        .footer {
            margin-top: 30px;
            font-size: 0.98em;
            color: #888;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome, {{ $name }}!</h1>
        <p style="font-size:1.15em;">Your account has been <strong>successfully created</strong>.</p>
        <div class="details">
            <p><strong>Email:</strong> {{ $email }}</p>
            <p><strong>Password:</strong> {{ $password }}</p>
        </div>
        <p>Thank you for joining us! We look forward to serving you.</p>
        <div class="footer">
            &copy; {{ date('Y') }} Ecommerce Inc. All rights reserved.
        </div>
    </div>
</body>
</html>