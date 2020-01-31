@extends('layout.main2')
@section('content')
<div class="wrapper wrapper-content">
            <div class="row">
                <div class="col-lg-12">
                    <a href="{{route('product_create')}}" class="btn btn-sm btn-success"> <i class="fa fa-add"> thêm sản phẩm</i></a>
                <div class="ibox ">
                    <div class="ibox-content">
                    <form action="{{route('product_delete_all')}}" method="post" accept-charset="utf-8">
                        <button type="submit" class="btn btn-sm btn-primary">xóa all</button>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover dataTables-example" >
                        <thead>
                        <tr>
                            <th><input type="checkbox" id="checked" name="checked" value=""></th>
                            <th>STT</th>
                            <th>name</th>
                            <th>ảnh</th>
                            <th>tên tác giả</th>
                            <th>số lượng sản phẩm</th>
                            <th>Gía tiền</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        	@foreach($prod as $k => $pro)
                        <tr>
                            <td><input type="checkbox" class="checkall" name="id[]" value="{{$pro->id}}"></td>
                            <td>{{$k+1}}</td>
                            <td>{{$pro->name}}</td>
                            <td><img src="{{ url('uploads') }}/{{$pro->image}}" alt="anh" width="100px"></td>
                            <td>{{$pro->writer_name}}</td>
                            <td @if($pro->quantity_now <= 0) style="background-color: red" @endif>{{ $pro->quantity_now }}/{{ $pro->quantity }}</td>
                            <td>{{ number_format($pro->price)  }} VND</td>
                            <td>
                                <a href="{{route('product_edit',['id'=>$pro->id])}}" class="btn btn-xs btn-success"> <i class="fa fa-edit"> sửa</i></a>
                                <a href="{{route('product_delete',['id'=>$pro->id])}}" class="btn btn-xs btn-danger"> <i class="fa fa-edit"> xóa</i></a>
                                
                            </td>
                        </tr>
                            @endforeach()
    					</tbody>
                        </table>
                    </div>
                    @csrf()
                    </form>
                    </div>
                </div>
            </div>
            </div>
    <div class="clearfix">
        {{ $prod->links() }}
    </div>
</div>

    <script>
        document.addEventListener("DOMContentLoaded",function(){
            var nut = document.getElementById('checked');
            var nut1 = document.getElementsByClassName('checkall');
            // console.log(x);
            var x = nut.checked = false;
            nut.onclick = function(){ 
                if(!x){
                    for (var i = 0; i < nut1.length; i++) {
                    nut1[i].checked=true;
                    x = true;
                }
            }else{ 
                alert('ac');
                    for (var i = 0; i < nut1.length; i++) {
                    nut1[i].checked=false;
                    x = false;
                }
                
            }
        }
        })

    </script>
    <script type="text/javascript">
        $(document).ready(function() {
    $('#example').DataTable();
} );
    </script>
@stop()