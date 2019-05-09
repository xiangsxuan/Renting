/*
Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function( config )
{
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';

	config.language = 'zh-cn'; //中文
	config.uiColor = '#eef5fd'; //'#CCEAFE';  //编辑器颜色
	config.font_names = '宋体;楷体_GB2312;新宋体;黑体;隶书;幼圆;微软雅黑;Arial;Comic Sans MS;Courier New;Tahoma;Times New Roman;Verdana';
//	config.filebrowserUploadUrl = '../common/ckeditor/uploader?Type=Files'; //上传文件的保存路径
//	config.filebrowserImageUploadUrl = '~/common/ckeditor/uploader?Type=Images'; //上传图片的保存路径
//	config.filebrowserFlashUploadUrl = '~/common/ckeditor/uploader?Type=Flash'; //上传flash的保存路径
	config.filebrowserUploadUrl = '../ckeditor/uploader?Type=Files'; //上传文件的保存路径
	config.filebrowserImageUploadUrl = '~/ckeditor/uploader?Type=Images'; //上传图片的保存路径
	config.filebrowserFlashUploadUrl = '~/ckeditor/uploader?Type=Flash'; //上传flash的保存路径
	config.toolbar_Full =
	[	
	    ['Source', '-', 'Preview', '-', 'Templates'],
	    ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Print', 'SpellChecker', 'Scayt'],
	    ['Undo', 'Redo', '-', 'Find', 'Replace', '-', 'SelectAll', 'RemoveFormat'],
	    ['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField'], 
	    '/',
	    ['Bold', 'Italic', 'Underline', 'Strike', '-', 'Subscript', 'Superscript'],
	    ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', 'Blockquote', 'CreateDiv'],
	    ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'],
	    ['Link', 'Unlink', 'Anchor'],
	    ['Image', 'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak'],
	    '/'
	    ['Styles', 'Format', 'Font', 'FontSize'],
	    ['TextColor', 'BGColor'],
	    ['Maximize', 'ShowBlocks', '-', 'About']
	 ];
	 config.toolbar_Basic =
	 [
	    ['Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', '-', 'About']
	 ];
	 config.width = 'auto'; //宽度
	 config.height = '200'; //高度 
};
