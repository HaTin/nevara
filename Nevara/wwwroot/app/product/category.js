﻿
    class CategoryController {
        init() {            
            this.registeredEvent();
            this.loadData();
        }        
        resetForm() {
            $('#hiddenId').val(0);
            $('#txtName').val('');         
        }
        registeredEvent() {
            var self = this; 
            $('#btn-add').on('click',
                function () {
                    self.resetForm();
                    $('.parsley-errors-list').html('');
                    $('#modal').modal('show');
                });                  
           
            $('#form-add-edit').parsley({ 
            });  
            $('body').on('click',
                '.edit',
                function (e) {
                    $('.parsley-errors-list').html('');
                    var id = $(this).data('id');
                    $.ajax({
                        type: "GET",
                        url: "/admin/category/find",
                        data: { id: id },
                        dataType: "json",
                        success: function (response) {
                            self.resetForm();
                            $('#hiddenId').val(response.Id);
                            $('#txtName').val(response.Name);                            
                        }
                    });
                    e.preventDefault();
                    $('#modal').modal('show');
                });
            $('body').on('click', '.remove', function (e) {
                e.preventDefault();
                var id = $(this).data('id');
                     swal({
                    text: 'Are you sure ?',                    
                    icon : "warning",
                    buttons : true,
                    dangerMode: true
                }).then((isConfirm) => {
                    if (isConfirm) {
                        $.ajax({
                            type: "POST",
                            url: "/Admin/Category/Remove",
                            data: { id: id },
                            dataType: "json",
                            success: function(response) {                                                              
                                if (response.Success === false) {                                   
                                    $.toast({                                        
                                        bgColor: '#dc3545',
                                        heading: response.Message,
                                        text: '',
                                        position: 'top-right',
                                        loaderBg: '#dc3545',
                                        icon: 'warning',
                                        hideAfter: 1500,
                                        stack: 1
                                    });                                  
                                } else {
                                    self.loadData(true);
                                    $.toast({
                                        bgColor: '#20c997',
                                        heading: 'Delete Successful',
                                        text: '',
                                        position: 'top-right',
                                        loaderBg: '#20c997',
                                        icon: 'success',
                                        hideAfter: 1500,
                                        stack: 2
                                    });
                                }
                            },
                            error: function (status) {
                                console.log(status);                                                            
                            }
                        });
                    }
                });
                });                           
            $('#btn-save').on('click',
                function (e) {                  
                    if ($('#form-add-edit').parsley().isValid()) {
                        e.preventDefault();
                        $.ajax({
                            type: "POST",
                            url: "/admin/Category/SaveEntity",
                            data: {
                                Id: $('#hiddenId').val(),
                                Name: $('#txtName').val()                               
                            },
                            success: function (response) {
                                console.log(response);
                                $('#modal').modal('hide');
                                self.loadData(true);                            
                                $.toast({
                                        bgColor:'#20c997',
                                        heading: 'Save Successful',
                                        text: '',
                                        position: 'top-right',
                                        loaderBg: '#20c997',
                                        icon: 'success',
                                        hideAfter: 1500,
                                        stack: 6                                   
                                });                                
                            },
                            error: function(err) {
                                console.log(err);
                                $.toast({
                                    bgColor: '#20c997',
                                    heading: 'Save failed',
                                    text: '',
                                    position: 'top-right',
                                    loaderBg: 'red',
                                    icon: 'success',
                                    hideAfter: 1500,
                                    stack: 6
                                });
                            }
                        });
                    }
                });
        }

        loadData() {            
            const template = $('#table-template').html();
            var render = "";
            $.ajax({
                type: "GET",          
                url: "/admin/Category/GetCategory",
                dataType: 'json',
                success: function(respone) {
                    console.log(respone);
                    $.each(respone,
                        function(i, item) {
                            render += Mustache.render(template,
                                {
                                    Id: item.Id,
                                    Name: item.Name                                   
                                });                            
                        });
                    if (render === '') {
                        render += '<tr><td colspan="6"><h3>No Results</h3></td></tr>';
                    }
                    $('#tbl-content').html(render);         
                },
                error: function(status) {
                    console.log(status);

                }
            });
        }

       

      
        
        // end

    }
