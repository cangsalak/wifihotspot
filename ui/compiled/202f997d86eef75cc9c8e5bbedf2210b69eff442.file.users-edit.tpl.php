<?php /* Smarty version Smarty-3.1.13, created on 2019-06-09 11:10:46
         compiled from "ui\theme\default\users-edit.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14675717445cfc86c667f899-30387665%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '202f997d86eef75cc9c8e5bbedf2210b69eff442' => 
    array (
      0 => 'ui\\theme\\default\\users-edit.tpl',
      1 => 1446032970,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14675717445cfc86c667f899-30387665',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_L' => 0,
    '_url' => 0,
    'd' => 0,
    '_admin' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5cfc86c66e3d69_77402384',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5cfc86c66e3d69_77402384')) {function content_5cfc86c66e3d69_77402384($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


		<div class="row">
			<div class="col-sm-12 col-md-12">
				<div class="panel panel-default panel-hovered panel-stacked mb30">
					<div class="panel-heading"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit_User'];?>
</div>
						<div class="panel-body">

                <form class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/users-edit-post">
				<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
">
                    <div class="form-group">
						<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Username'];?>
</label>
						<div class="col-md-6">
							<input type="text" class="form-control" id="username" name="username" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['username'];?>
">
						</div>
                    </div>
                    <div class="form-group">
						<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Full_Name'];?>
</label>
						<div class="col-md-6">
							<input type="text" class="form-control" id="fullname" name="fullname" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['fullname'];?>
">
						</div>
                    </div>
					<?php if (($_smarty_tpl->tpl_vars['_admin']->value['id'])!=($_smarty_tpl->tpl_vars['d']->value['id'])){?>
                    <div class="form-group">
						<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['User_Type'];?>
</label>
						<div class="col-md-6">
							<select name="user_type" id="user_type" class="form-control">
                                <option value="Admin" <?php if ($_smarty_tpl->tpl_vars['d']->value['user_type']=='Admin'){?>selected="selected" <?php }?>>Full Administrator</option>
                                <option value="Sales" <?php if ($_smarty_tpl->tpl_vars['d']->value['user_type']=='Sales'){?>selected="selected" <?php }?>>Sales</option>
                            </select>
							<span class="help-block"><?php echo $_smarty_tpl->tpl_vars['_L']->value['user_type_help'];?>
</span>
						</div>
                    </div>
					<?php }?>
                    <div class="form-group">
						<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Password'];?>
</label>
						<div class="col-md-6">
							<input type="password" class="form-control" id="password" name="password">
							<span class="help-block"><?php echo $_smarty_tpl->tpl_vars['_L']->value['password_change_help'];?>
</span>
						</div>
                    </div>
                    <div class="form-group">
						<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Confirm_Password'];?>
</label>
						<div class="col-md-6">
							<input type="password" class="form-control" id="cpassword" name="cpassword">
						</div>
                    </div>

					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<button class="btn btn-success waves-effect waves-light" type="submit"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Save'];?>
</button>
							Or <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/users"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Cancel'];?>
</a>
						</div>
					</div>
                </form>
				
					</div>
				</div>
			</div>
		</div>

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>