<?php
session_start();
if (!isset($_SESSION["user"])) {
	header("Location: index.php?user=admin&controller=login&action=index");
}
?>

<?php
require_once('views/admin/header.php'); ?>

<!-- Add CSS -->


<?php
require_once('views/admin/content_layouts.php'); ?>

<!-- Code -->
<div class="content-wrapper">
	<!-- Add Content -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Quản lý Sản phẩm</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
						<li class="breadcrumb-item active">Quản lý sản phẩm</li>
					</ol>
				</div>
			</div>
		</div>

    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <!-- /.card-header-->
                        <div class="card-body">
                        <div class="d-flex justify-content-end mb-2">
                            <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#addUserModal">Thêm sản phẩm</button>
						</div>	
                        <div class="modal fade" id="addUserModal"  aria-labelledby="addUserModal" aria-hidden="true">
                            <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Thêm sản phẩm</h5><button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    </div>
                                    <form id="form-add-student" action="index.php?user=admin&controller=products&action=add" enctype="multipart/form-data" method="post">
                                        <div class="modal-body">
                                            <div> <label>Tên sản phẩm</label><input class="form-control" type="text" placeholder="Name" name="name" /></div>
                                            <div> <label>Giá</label><input class="form-control" type="number"  placeholder="Price" name="price" /></div>
                                            <div class="form-group"> <label>Mô tả</label> <textarea class="form-control" placeholder="Description" name="description" rows="5"></textarea></div>
                                            <div class="form-group"> <label>Nội dung</label> <textarea class="form-control" placeholder="Content" name="content" rows="8"></textarea></div>
                                            <div class="form-group"> <label>Hình ảnh </label>&nbsp <input type="file" name="fileToUpload" id="fileToUpload" /></div>
                                        </div>
                                        <div class="modal-footer">
                                            <button class="btn btn-danger" type="button" data-dismiss="modal">Đóng</button>
                                            <button class="btn btn-success" type="submit">Thêm mới</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                            <div class="row"></div>
                                <table id="TAB-product" class="table table-bordered table-striped"> 
                                    <thead>
                                        <tr  class="text-center table-info">
                                            <th scope="col">STT</th>
                                            <th scope="col">Sản phẩm</th>
                                            <th scope="col">Mô tả</th>
                                            <th scope="col">Nội dung</th>
                                            <th scope="col">Giá</th>
                                            <th scope="col">Hình ảnh</th>
                                            <th scope="col">Thao tác</th>
                                        </tr>
                                    </thead>
                                   
                                    <tbody> 
                                        <?php
                                            
                                            $index = 1;

                                            foreach ($products as $product) {  
                                                                                         
                                                echo 
                                                "<tr class=\"text-center\">
                                                    <td>"
                                                        . $index. 
                                                    "</td>
                                                    <td>
                                                       ". $product->name."
                                                    </td>  
                                                    <td>
                                                     " .  $product->description."
                                                    </td> 
                                                    <td>
                                                       " .$product->content."
                                                    </td>  
                                                    <td>
                                                    ".  $product->price."
                                                    </td>  
                                                    <td >
                                                        <img style=\"width: 400px; height:350px;\" src='$product->img'> 
                                                    </td>     
                                                    <td>
                                                    <btn class=\"btn-edit btn btn-info btn-xs\" style=\"margin: 5px; font-size: 17px\" data-id='$product->id' data-name='$product->name' data-price='$product->price' data-description='$product->description' data-content='$product->content' data-img='$product->img'><i class='fas fa-edit'></i></btn>
                                                    <btn class=\"btn-delete btn btn-danger btn-xs\" style=\"margin: 5px; font-size: 17px\" data-id='$product->id' data-name='$product->name'><i class='fas fa-trash'></i></btn>
                                                  </td>                                                                                                                                                                                       
                                                </tr>";
                                                $index++;
                                            }
                                        ?>
                                    </tbody>
                                    <div class="modal fade" id="EditStudentModal" tabindex="-1" role="dialog" aria-labelledby="EditStudentModal" aria-hidden="true">
                                        <div class="modal-dialog modal-xl" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title">Chỉnh sửa</h5><button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                </div>
                                                <form id="form-edit-student" action="index.php?user=admin&controller=products&action=edit" enctype="multipart/form-data" method="post">
                                                    <div class="modal-body">
                                                        <div  class="col-12"><label>ID</label> <input class="form-control" type="text" placeholder="Name" name="id"  readonly/></div>
                                                        <div><label>Tên sản phẩm</label><input class="form-control" type="text" placeholder="Tên sản phẩm" name="name" /></div>
                                                        <div><label>Giá</label><input class="form-control" type="number"  placeholder="Giá" name="price" /></div>                                                       
                                                        <div class="form-group"> <label>Mô tả</label> <textarea class="form-control" name="description" rows="5"></textarea></div>
                                                        <div class="form-group"> <label>Nội dung</label> <textarea class="form-control" name="content" rows="8"></textarea></div>
                                                        <div  class="form-group"><label>Url hình ảnh </label><input class="form-control" type="text"  name="imggg"  readonly/></div>
                                                        <div class="form-group"> <label>Hình ảnh</label>&nbsp <input type="file" name="fileToUpload" id="fileToUpload" /></div>
                                                    </div>
                                                    <div class="modal-footer"><button class="btn btn-danger" type="button" data-dismiss="modal">Đóng</button><button class="btn btn-success formedit" type="submit">Chỉnh sửa</button></div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal fade" id="DeleteStudentModal" tabindex="-1" role="dialog" aria-labelledby="DeleteStudentModal" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title">Xóa sản phẩm</h5><button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                </div>
                                                <form action="index.php?user=admin&controller=products&action=delete" method="post">
                                                    <div class="modal-body">
                                                        <input type="hidden" name="id" />
                                                        <p>Bạn sẽ xóa sản phẩm:</p>
                                                        <input readonly name="name" style="width: 100%;"/>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button class="btn btn-secondary btn-outline-light" type="button" data-dismiss="modal">Đóng</button>
                                                        <button class="btn btn-danger btn-outline-light" type="submit">Xóa</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>




</div>


<?php
require_once('views/admin/footer.php'); ?>
<script src="public/js/products/index.js"></script>
<!-- Add Javascripts -->


</body>

</html>