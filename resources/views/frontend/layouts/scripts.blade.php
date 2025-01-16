<script>
    $(document).ready(function() {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        // add cart items
        $('.shopping-cart-form').on('submit', function(e) {
            e.preventDefault();
            let formData = $(this).serialize();

            $.ajax({
                method: 'POST',
                data: formData,
                url: "{{ route('add-to-cart') }}",
                success: function(data) {
                    getCartCount()
                    fetchSidebarCartProducts()
                    $('.mini_cart_actions').removeClass('d-none')
                    toastr.success(data.message);
                },
                error: function(data) {

                }
            })
        })

        // Get Product Cart Item COunt
        function getCartCount() {
            $.ajax({
                method: 'GET',
                url: "{{ route('cart-count') }}",
                success: function(data) {
                    $('#cart-count').text(data);
                },
                error: function(data) {

                }
            })
        }

        // Get Product Cart Items
        function fetchSidebarCartProducts() {
            $.ajax({
                method: 'GET',
                url: "{{ route('cart-products') }}",
                success: function(data) {
                    // Clear the mini cart wrapper
                    $(".mini_cart_wrapper").html("");

                    // Initialize the HTML variable
                    let html = '';

                    // Loop through each product in the data
                    for (let item in data) {
                        let product = data[item];
                        html += `
                        <li id="mini_cart_${product.rowId}">
                            <div class="wsus__cart_img">
                                <a href="{{ url('product-detail') }}/${product.options.slug}">
                                    <img src="{{ asset('/') }}${product.options.image}" alt="product" class="img-fluid w-100">
                                </a>
                                <a class="wsis__del_icon remove_sidebar_product" data-id="${product.rowId}" href="">
                                    <i class="fas fa-minus-circle"></i>
                                </a>
                            </div>
                            <div class="wsus__cart_text">
                                <a class="wsus__cart_title" href="{{ url('product-detail') }}/${product.options.slug}">
                                    ${product.name}
                                </a>
                                <p>{{ $settings->currency_icon }}${product.price}</p>
                                <small>Variants Total: {{ $settings->currency_icon }}${product.options.variants_total}</small><br>
                                <small>Quantity: ${product.qty}</small>
                            </div>
                        </li>
                        `;
                    }

                    // Append the generated HTML to the mini cart wrapper
                    $(".mini_cart_wrapper").html(html);
                    getSidebarCartSubtotal();
                },
                error: function() {
                    console.error("Failed to fetch cart products");
                }
            });
        }

        // Remove Product From Sidebar
        $('body').on('click', '.remove_sidebar_product', function(e) {
            e.preventDefault();

            // Retrieve the row ID from the button's data attribute
            let rowId = $(this).data('id');

            $.ajax({
                method: 'POST',
                url: "{{ route('cart.remove-sidebar-product') }}",
                data: {
                    rowId: rowId
                },
                success: function(data) {
                    // Select the product row in the mini cart and remove it
                    let productId = '#mini_cart_' + rowId;
                    $(productId).remove();

                    getSidebarCartSubtotal();

                    if ($('.mini_cart_wrapper').find('li').length === 0) {
                        $('.mini_cart_actions').addClass('d-none');
                        $('.mini_cart_wrapper').html(
                            '<li class="text-center">Cart is Empty!</li>')
                    }
                    toastr.success(data.message);
                },
                error: function(data) {

                }
            })
        })
        // get mini cart subtotal
        function getSidebarCartSubtotal() {
            $.ajax({
                method: 'GET',
                url: "{{ route('cart.sidebar-product-total') }}",
                success: function(data) {
                    $('#mini_cart_subtotal').text("{{ $settings->currency_icon }}" + data);
                },
                error: function(data) {

                }
            })
        }
    })
</script>
