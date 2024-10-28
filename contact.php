<div class="container">
    <div class="content py-5 px-3 bg-gradient-olive">
        <h2><b>Contact Us</b></h2>
    </div>
    <div class="row mt-lg-n4 mt-md-n4 justify-content-center">
        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
            <div class="card rounded-0">
                <div class="card-body">
                    <dl>
                        <dt class="text-muted">Email</dt>
                        <dd class="pl-3"><?= $_settings->info('email') ?></dd>
                        <dt class="text-muted">Telephone #</dt>
                        <dd class="pl-3"><?= $_settings->info('phone') ?></dd>
                        <dt class="text-muted">Mobile #</dt>
                        <dd class="pl-3"><?= $_settings->info('mobile') ?></dd>
                        <dt class="text-muted">Address</dt>
                        <dd class="pl-3"><?= $_settings->info('address') ?></dd>
                    </dl>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
            <div class="card rounded-0">
                <div class="card-body">
                    <h5 class="text-center">Send us a Message</h5>
                    <form action="" id="send-inquiry">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <label for="fullname" class="control-label">Fullname <small class="text-danger">*</small></label>
                                    <input type="text" id="fullname" name='fullname' class="form-control form-control-sm rounded-0" required>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <label for="email" class="control-label">Email</label>
                                    <input type="email" id="email" name='email' class="form-control form-control-sm rounded-0">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <label for="contact" class="control-label">Contact # <small class="text-danger">*</small></label>
                                    <input type="text" id="contact" name='contact' class="form-control form-control-sm rounded-0">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <label for="message" class="control-label">Message <small class="text-danger">*</small></label>
                                    <textarea rows="5" id="message" name='message' class="form-control form-control-sm rounded-0" required></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="clear-fix py-2"></div>
                        <div class="text-center">
                            <div class="row justify-content-center">
                                <div class="col-lg-6 col-md-8 col-sm-12 col-xs-12">
                                    <button class="btn btn-lg btn-primary rounded-pill bg-gradient-primary btn-block"><i class="fa fa-paper-plane"></i> Send Message</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(function(){
        $('#send-inquiry').submit(function(e){
			e.preventDefault();
            var _this = $(this)
			 $('.err-msg').remove();
			start_loader();
			$.ajax({
				url:_base_url_+"classes/Master.php?f=save_inquiry",
				data: new FormData($(this)[0]),
                cache: false,
                contentType: false,
                processData: false,
                method: 'POST',
                type: 'POST',
                dataType: 'json',
				error:err=>{
					console.log(err)
					alert_toast("An error occured",'error');
					end_loader();
				},
				success:function(resp){
					if(typeof resp =='object' && resp.status == 'success'){
						location.reload()
					}else if(resp.status == 'failed' && !!resp.msg){
                        var el = $('<div>')
                            el.addClass("alert alert-danger err-msg").text(resp.msg)
                            _this.prepend(el)
                            el.show('slow')
                            $("html, body").animate({ scrollTop: _this.closest('.card').offset().top }, "fast");
                            end_loader()
                    }else{
						alert_toast("An error occured",'error');
						end_loader();
                        console.log(resp)
					}
				}
			})
		})
    })
</script>
