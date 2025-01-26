<?php

return [
    'order_status_admin' => [
        'pending' => [
            'status' => 'Pending',
            'details' => 'Your order is currently pending. Please wait for further updates.'
        ],
        'processed_and_ready_to_ship' => [
            'status' => 'Processed and Ready to Ship',
            'details' => 'Your package has been processed and is ready to be handed over to our delivery partner.'
        ],
        'dropped_off' => [
            'status' => 'Dropped Off',
            'details' => 'Your package has been dropped off by the seller and is being prepared for shipping.'
        ],
        'shipped' => [
            'status' => 'Shipped',
            'details' => 'Your package is on its way and has reached our logistics facility.'
        ],
        'out_for_delivery' => [
            'status' => 'Out for Delivery',
            'details' => 'Our delivery partner is on the way to deliver your package. Please be available to receive it.'
        ],
        'delivered' => [
            'status' => 'Delivered',
            'details' => 'Your package has been successfully delivered. Thank you for shopping with us!'
        ]
    ],

    'order_status_vendor' => [
        'pending' => [
            'status' => 'Pending',
            'details' => 'The order is currently pending. Please prepare for further instructions.'
        ],
        'processed_and_ready_to_ship' => [
            'status' => 'Processed and Ready to Ship',
            'details' => 'The order has been processed and is ready to be handed over to the delivery partner.'
        ],
    ]
];
