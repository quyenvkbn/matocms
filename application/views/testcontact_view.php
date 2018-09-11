<section class="content news container">
    <input type="text" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash() ?>" placeholder="" class="form-control hidden" id="csrf_sitecom_token">
    <?php
        echo form_open_multipart('', array('class' => 'form-contact','onsubmit' => 'return false'));
    ?>
	<?php
        foreach (json_decode($detail['data'],true) as $key => $value) {
            $required = isset($value['required']) ? 'required' : '';
            $content_red = isset($value['required']) ? '<span class="help-block hidden" style="margin-bottom:0px;">' . $value['required'] . '</span>' : '';
            switch ($value['type']) {
                case 'textarea':
                    echo '<div class="form-group col-xs-12 ' . $required . '" id="parent_' . $key . '"><label for="' . $value['type'] . '">' . $value['title'] . '</label>' . ($value['description'] ? ' (<i>' .  $value['description'] . '</i>)' : '') . '</br><textarea name="' . $key . '" value="" class="form-control col-xs-12" rows="5"></textarea>' . $content_red . '</div>';
                    break;
                
                case 'radio':
                    $radio = '';
                    foreach ($value['choice'] as $k => $val) {
                        $checked = ($k == 0) ? 'checked' : '';
                        $radio .= '<label class="radio-inline"><input type="radio" name="' . $key . '" value="' . $val . '" >' . $val . '</label>';
                    }
                    echo '<div class="form-group col-xs-12 ' . $required . '" id="parent_' . $key . '"><label for="' . $value['type'] . '">' . $value['title'] . '</label>' . ($value['description'] ? ' (<i>' .  $value['description'] . '</i>)' : '') . '</br>' . $radio .'</br>' . $content_red . '</div>';
                    break;
                
                case 'checkbox':
                    $checkbox = '';
                    foreach ($value['choice'] as $k => $val) {
                       $checkbox .= '<label class="checkbox-inline"><input type="checkbox" name="' . $key . '[]" value="' . $val . '" >' . $val . '</label>';
                    }
                    echo '<div class="form-group col-xs-12 ' . $required . '" id="parent_' . $key . '"><label for="' . $value['type'] . '">' . $value['title'] . '</label>' . ($value['description'] ? ' (<i>' .  $value['description'] . '</i>)' : '') . '</br>' . $checkbox .'</br>' . $content_red . '</div>';
                    break;
                
                case 'select':
                    $select = '';
                    foreach ($value['choice'] as $k => $val) {
                        $select .= '<option value="' . $val . '">' . $val . '</option>';
                    }
                    echo '<div class="form-group col-xs-12 ' . $required . '" id="parent_' . $key . '"><label for="' . $value['type'] . '">' . $value['title'] . '</label>' . ($value['description'] ? ' (<i>' .  $value['description'] . '</i>)' : '') . '<select name="' . $key . '"  class="form-control" ' . (isset($value['select_multiple']) ? 'multiple' : '') . '>' . $select . '</select>' . $content_red . '</div>';
                    break;
                
                case 'date':
                    echo '<div class="form-group col-xs-12 ' . $required . '" id="parent_' . $key . '"><label for="' . $value['type'] . '">' . $value['title'] . '</label><div class="input-group"><div class="input-group-addon"><i class="fa fa-calendar"></i></div><input class="form-control" name="' . $key . '" placeholder="' .  $value['description'] . '" id="realDPX-min" type="text"></div>' . $content_red . '</div>';
                    break;
                
                default:
                    echo '<div class="form-group col-xs-12 ' . $required . '" id="parent_' . $key . '"><label for="' . $value['type'] . '">' . $value['title'] . '</label><input type="' . $value['type'] .'" name="' . $key . '" class="form-control" placeholder="' .  $value['description'] . '" />' . $content_red . '</div>';
                    break;
            }
        }
    ?>
    <?php echo form_close(); ?>
    <button type="button" class="btn btn-default" id="submit_shared" data-dismiss="modal" onclick="submit_shared()">Xác nhận</button>
</section>

<script src="<?php echo site_url('assets/public/lib/') ?>DatePickerX/DatePickerX.min.js"></script>
<script type="text/javascript">
    function submit_shared(){
        for (var i = 0; i < document.querySelectorAll('div.form-group.required').length; i++) {
            let type = document.querySelectorAll('div.form-group.required')[i].firstChild.getAttribute('for');
            if(type == 'radio' || type == 'checkbox'){
                if(document.querySelectorAll('div.form-group.required')[i].querySelectorAll('input:checked').length == 0){
                    document.querySelectorAll('div.form-group.required')[i].classList.add("has-error");
                    document.querySelectorAll('div.form-group.required')[i].setAttribute('oninput','check_checked(this)');
                    document.querySelectorAll('div.form-group.required')[i].querySelector('span').classList.remove("hidden");
                }
            }else if(type == 'textarea'){
                if(document.querySelectorAll('div.form-group.required')[i].querySelector('textarea').value == ''){
                    document.querySelectorAll('div.form-group.required')[i].classList.add("has-error");
                    document.querySelectorAll('div.form-group.required')[i].setAttribute('oninput','check_textarea(this)');
                    document.querySelectorAll('div.form-group.required')[i].querySelector('span').classList.remove("hidden");
                }
            }else if(type == 'date'){
                if(document.querySelectorAll('div.form-group.required')[i].querySelector('input').value == ''){
                    document.querySelectorAll('div.form-group.required')[i].classList.add("has-error");
                    document.querySelectorAll('div.form-group.required')[i].querySelector('input').setAttribute('onchange','check_date(this)');
                    document.querySelectorAll('div.form-group.required')[i].querySelector('span.help-block').classList.remove("hidden");
                }
            }else{
                if(document.querySelectorAll('div.form-group.required')[i].querySelector('input').value == ''){
                    document.querySelectorAll('div.form-group.required')[i].classList.add("has-error");
                    document.querySelectorAll('div.form-group.required')[i].setAttribute('oninput','check_text(this)');
                    document.querySelectorAll('div.form-group.required')[i].querySelector('span.help-block').classList.remove("hidden");
                }
            }
        }
        if(document.querySelectorAll('.has-error').length > 0){
            return false;
        }
        let data = new FormData(document.querySelector('form.form-contact'));
        data.append('csrf_sitecom_token', document.getElementById('csrf_sitecom_token').value);
        var url = 'http://localhost/adminMato/testcontact/send';
        fetch(url,{method: "POST",body: data}
        ).then(
            response => response.json()
        ).then(
            html => {
                if(html.status == "200"){
                    alert(html.message);
                    if(window.location.pathname.indexOf("/config_contact/edit/") != '-1'){
                        document.getElementById('csrf_sitecom_token').value = html.reponse.csrf_hash;
                    }else{
                        window.location.href=HOSTNAMEADMIN+"/config_contact";
                    }
                }else{
                    alert(html.message);
                    location.reload();
                }
            }

        );
    }
    if(document.querySelectorAll('[id="realDPX-min"]').length > 0){
        for (var m = 0; m < document.querySelectorAll('[id="realDPX-min"]').length; m++) {
            var $min = document.querySelectorAll('[id="realDPX-min"]')[m];
            $min.DatePickerX.init({
                mondayFirst: true,
                format: 'dd/mm/yyyy',
                minDate    : new Date(1900, 8, 13),
                maxDate    : new Date(9999, 8, 13),
            });
        }
    }
    function check_checked(ev){
        if(ev.querySelectorAll('input:checked').length == 0){
            ev.classList.add("has-error");
            ev.querySelector('span').classList.remove("hidden");
        }else{
            ev.querySelector('span').classList.add("hidden");
            ev.classList.remove("has-error");
        }
    }
    function check_textarea(ev){
        if(ev.querySelector('textarea').value == ''){
            ev.classList.add("has-error");
            ev.querySelector('span').classList.remove("hidden");
        }else{
            ev.querySelector('span').classList.add("hidden");
            ev.classList.remove("has-error");
        }
    }
    function check_text(ev){
        if(ev.querySelector('input').value == ''){
            ev.classList.add("has-error");
            ev.querySelector('span.help-block').classList.remove("hidden");
        }else{
            ev.querySelector('span.help-block').classList.add("hidden");
            ev.classList.remove("has-error");
        }
    }
    function check_date(ev){
        if(ev.value == ''){
            ev.closest('.required').classList.add("has-error");
            ev.closest('.required').querySelector('span.help-block').classList.remove("hidden");
        }else{
            ev.closest('.required').querySelector('span.help-block').classList.add("hidden");
            ev.closest('.required').classList.remove("has-error");
        }
    }
</script>