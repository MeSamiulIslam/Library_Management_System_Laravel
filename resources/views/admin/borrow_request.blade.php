<!DOCTYPE html>
<html>
  <head> 
    @include('admin.css')
    <style type="text/css">
        .center 
            {
                text-align: center;
                margin: auto;
                width: 90%;
                border: 1px solid white;
                margin-top: 60px;
                padding: 20px;
                box-shadow:0 6px 12px #ffffff;
            }
            

            th 
            {
                background-color: skyblue;
                text-align: center;
                color:white;
                font-size:15px;
                font-weight:bold;
                padding: 10px;

            }
            
            td 
                {
                    color: white;
                    background-color: #3C5B6F;
                    border: 1px solid white;
                }

    </style>

    
  </head>
  <body>
    @include('admin.header')
    <div class="d-flex align-items-stretch">
      <!-- Sidebar Navigation-->
      @include('admin.sidebar')
      <!-- Sidebar Navigation end-->

    <div class="page-content">
        <div class="page-header">
            <div class="container-fluid">

            <table class="center">


            <tr>
                    <th>User Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Book title</th>
                    <th>Quantity</th>
                    <th>Borrow Status</th>
                    <th>Book image</th>
                    <th>Change status</th>
            </tr>

            @foreach($data as $data)
            <tr>
                <td>{{$data->user->name}}</td>
                <td>{{$data->user->email}}</td>
                <td>{{$data->user->phone}}</td>
                <td>{{$data->book->title}}</td>
                <td>{{$data->book->quantity}}</td>

                <td>
                        @if($data->status == 'approved')
                        <span style="color:skyblue;">{{$data->status}}</span>
                        @endif

                        @if($data->status == 'rejected')
                        <span style="color:red;">{{$data->status}}</span>
                        @endif

                        @if($data->status == 'returend')
                        <span style="color:yellow;">{{$data->status}}</span>
                        @endif

                        @if($data->status == 'Applied')
                        <span style="color:white;">{{$data->status}}</span>
                        @endif
                    </td>
                
                <td>
                    <img style="height: 150px; width:90px;" src="book/{{$data->book->book_img}}">
                </td>

                <td>
                    <a class="btn btn-warning" href="{{url('approve_book', $data->id)}}">Approved</a>
                        
                    <a class="btn btn-danger" href="{{url('rejected_book', $data->id)}}">Rejected</a>
                        
                    <a class="btn btn-info" href="{{url('return_book', $data->id)}}">Returned</a>
                </td>
            </tr>            
                
            @endforeach


            </table>
            

            </div>
        </div>
    </div>
        
        @include('admin.footer')
  </body>
</html>