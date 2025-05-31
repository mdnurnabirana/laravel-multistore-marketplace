<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Message</title>
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
            padding: 20px;
            box-sizing: border-box;
        }

        /* Container */
        .container {
            text-align: center;
            background: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
            max-width: 600px;
            width: 100%;
            animation: fadeIn 1s ease-in-out;
        }

        /* Message Styling */
        .message {
            font-size: 1.2em;
            color: #374151;
            line-height: 1.6;
            margin-bottom: 30px;
        }

        /* Button */
        .btn {
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

        .btn:hover {
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
    </style>
</head>
<body>
    <!-- Container -->
    <div class="container">
        <!-- Message -->
        <div class="message">
            {{ $con_message }}
        </div>
        <!-- Optional Button -->
        <a href="#" class="btn">Go Back</a>
    </div>
</body>
</html>