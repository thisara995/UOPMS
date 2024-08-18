<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Details</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.0/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 p-6">
    <div class="max-w-4xl mx-auto bg-white shadow-md rounded-lg p-6">
        <!-- User Details Section -->
        <div class="mb-6">
            <h2 class="text-2xl font-bold mb-2">User Details</h2>
            <div class="border-b border-gray-200 pb-4">
                <p class="text-gray-600">Name: <span class="font-semibold">{{ $user->name }}</span></p>
                <p class="text-gray-600">Email: <span class="font-semibold">{{ $user->email }}</span></p>
            </div>
        </div>
        <!-- Orders Section -->
        <div>
            <h2 class="text-2xl font-bold mb-4">Orders</h2>
            @foreach ($user->orders as $order)
                <div class="mb-6">
                    <div class="bg-gray-100 p-4 rounded-lg shadow-sm mb-4">
                        <h3 class="text-lg font-semibold mb-2">Order #{{ $order->id }}</h3>
                        <p class="text-gray-600">Order Date: <span class="font-semibold">{{ $order->order_date }}</span></p>
                        <p class="text-gray-600">Status:
                            <span class="font-semibold 
                                @if(strtolower($order->status) == 'completed') 
                                    text-green-600
                                @elseif(strtolower($order->status) == 'pending') 
                                    text-yellow-600
                                @elseif(strtolower($order->status) == 'cancelled') 
                                    text-red-600
                                @else 
                                    text-gray-600
                                @endif
                            ">
                                {{ ucfirst($order->status) }}
                            </span>
                        </p>
                        <p class="text-gray-600">Total Amount: <span class="font-semibold">${{ number_format($order->total_amount, 2) }}</span></p>
                        <!-- Payments Section -->
                        <div class="mt-4">
                            <h4 class="text-lg font-bold mb-2">Payments</h4>
                            <ul class="list-disc pl-5">
                                @foreach ($order->payments as $payment)
                                    <li class="mb-2">
                                        <p class="text-gray-600">Amount: <span class="font-semibold">${{ number_format($payment->amount, 2) }}</span></p>
                                        <p class="text-gray-600">Payment Method: <span class="font-semibold">{{ ucfirst($payment->payment_method) }}</span></p>
                                        <p class="text-gray-600">Payment Date: <span class="font-semibold">{{ $payment->payment_date }}</span></p>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</body>
</html>
