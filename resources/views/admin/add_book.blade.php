<!DOCTYPE html>
<html>
  <head> 
    @include('admin.css')

    <style type="text/css">

        .div_center 
        {
            text-align: center;
            margin: auto;
            background-color: #3C5B6F;
            width: 90%;
            padding: 20px;
            box-shadow: 0 6px 12px #ffffff;
        }

        .title_deg
        {
            color: white;
            padding: 35px;
            font-size: 40px;
            font-weight: bold;
        }

        label
        {
            display: inline-block;
            width: 200px;
        }

        .div_pad
        {
            padding: 15px;
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

                <div class="div_center">

                    <h1 class="title_deg"> Add Books</h1>

                    <form action="{{url('store_book')}}" method="Post" enctype="multipart/form-data">
                        @csrf

                        <div class="div_pad">
                            <label> Book Title</label>
                            <input type="text" name="book_name" placeholder="Book name..">
                        </div>

                        <div class="div_pad">
                            <label> Auther Name</label>
                            <input type="text" name="auther_name" placeholder="Author name..">
                        </div>

                        <div class="div_pad">
                            <label> Price</label>
                            <input type="text" name="price" placeholder="Book price..">
                        </div>

                        <div class="div_pad">
                            <label> Quantity</label>
                            <input type="number" name="quantity" placeholder="Book quantity..">
                        </div>

                        <div class="div_pad">
                            <label> Description</label>
                            <textarea name="description" placeholder="Book description.."></textarea>
                        </div>

                        <div class="div_pad">
                            <label> Category</label>

                            <select name="category" required>

                                <option> Select a Category</option>
                                @foreach($data as $data)

                                <option value="{{$data->id}}">{{$data->cat_title}}</option>

                                @endforeach
                            </select>
                        </div>

                        

                        <div class="div_pad">
                            <label> Book Image</label>
                            <input type="file" name="book_img">
                        </div>

                        <div class="div_pad">
                            <label> Auther Image</label>
                            <input type="file" name="author_img">
                        </div>

                        <div class="div_pad">
                        
                            <input type="submit" value="Add Book" class= "btn btn-info">
                        </div>

                    </form>
                
                </div>
            </div>
        </div>
    </div>
        
        @include('admin.footer')
  </body>
</html>