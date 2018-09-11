<!-- Bootstrap -->
<link href="<?php echo site_url('assets/public/sass/bootstrap-4-hover-navbar.css') ?>" rel="stylesheet">


<!--Demo purpose css-->
<style>
    body {
        padding-top: 50px;
    }
    .navbar {
        margin:  40px 0;
    }
    .jumbotron{background-color: #1f1f1f;color: #fff;}

</style>
<section class="content news container">
 	<nav class="navbar navbar-expand-md navbar-light bg-light btco-hover-menu">
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
	        <ul class="navbar-nav">
			  		<?php $details = ''; ?>
			    	<?php
				    	$cate_child = array();
				        foreach ($detail as $key => $item){
				            if ($item['parent_id'] == 0){
				                $cate_child[] = $item;
				                unset($detail[$key]);
				            }
				        }
						foreach ($cate_child as $key => $item){
				            if ($item['parent_id'] == 0){
				            	$parent_id = $item['id'];
				            	$url = $item['url'] ? $item['url'] : 'javascript:void(0)';
				            	$details.= '<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="' . $url . '" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">' . $item['title_vi'] . '</a>';
			    				build_new_category($detail,$item['id'],$details);
				            }
				        }
			    	?>
					<?php echo $details; ?>
			    </ul>
			</div>
		</div>
	</div>

</section>
<?php 
    function build_new_category($categorie, $parent_id = 0,&$result, $id = "",$char="<ul class='dropdown-menu' aria-labelledby='1'>"){
        $cate_child = array();
        foreach ($categorie as $key => $item){
            if ($item['parent_id'] == $parent_id){
                $cate_child[] = $item;
                unset($categorie[$key]);
            }
        }
        if ($cate_child){
            foreach ($cate_child as $key => $value){
            		$url = $value['url'] ? $value['url'] : 'javascript:void(0)';
		            $result.= $char;
		            $result.='<li> <a class="dropdown-item dropdown-toggle" href="' . $url . '" >' . $value['title_vi'] . '</a>';
		            unset($categorie[$key]);
		            build_new_category($categorie, $value['id'],$result, $id, "<ul class='dropdown-menu' aria-labelledby='1'>");
		            $result.= '</ul></li>';
            }
        }
    }
?>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
<script src="<?php echo site_url('assets/public/js/bootstrap-4-hover-navbar.js'); ?>"></script>
<script type="text/javascript">
	for (var i = 0; i < document.querySelectorAll('li').length; i++) {
		if(document.querySelectorAll('li')[i].querySelector('ul') == null){
			document.querySelectorAll('li')[i].querySelector('a').classList.remove("dropdown-toggle");
			document.querySelectorAll('li')[i].querySelector('a').setAttribute("data-toggle","");
		}

	}
</script>