@extends('admin.layouts.master')

@section('content')
    <section class="section">
      <div class="section-header">
        <h1>Admin List</h1>
      </div>

      <div class="section-body">
        <div class="row">
          <div class="col-12 col-md-6 col-lg-12">
            <div class="card">
              <div class="card-header">
                <h4>All Admins</h4>
              </div>
              <div class="card-body">
                    {{ $dataTable->table() }}
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
@endsection

@push('scripts')
    {{ $dataTable->scripts(attributes: ['type' => 'module'])}}

    <script>
      $(document).ready(function() {
          $('body').on('click', '.change-status', function() {
              let isChecked = $(this).is(':checked');
              let id = $(this).data('id');

          $.ajax({
              url: "{{ route('admin.admin-list.change-status') }}",
              method: 'PUT',
              data: {
                  status: isChecked,
                  id: id
              },
              success: function(data){
                  toastr.success(data.message)
              },
              error: function(xhr, status, error){
                  console.log(error);
              }
          });
         });
      });
  </script>
@endpush
