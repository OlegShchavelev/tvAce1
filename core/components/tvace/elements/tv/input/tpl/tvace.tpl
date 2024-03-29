<div id="tv{$tv->id}"></div>

<script type="text/javascript">

{literal}
setTimeout(function() {
	var TextEditor = MODx.load({
		xtype: 'modx-texteditor'
		{/literal}
		,anchor: '100%'
		,name: 'tv{$tv->id}'
		,renderTo: 'tv{$tv->id}'
		,value: '{$tv->get('value')|escape:'javascript'}'
		,height: {literal} parseInt(MODx.config['ace.height']) || 200 {/literal}
		,width: 'auto'
		,enableKeyEvents: true
		,msgTarget: 'under'
		,allowBlank: {if $params.allowBlank == 1 || $params.allowBlank == 'true'}true{else}false{/if}
		,listeners: {literal} { 'keydown': { fn:MODx.fireResourceFormChange, scope:this}} {/literal}
		,mimeType: 'text/x-smarty'
    ,modxTags: true
		{literal}
	});

    MODx.load({
    	xtype: 'modx-treedrop',
    	target: TextEditor,
    	targetEl: TextEditor.el,
    	onInsert: (function(s){
    		this.insertAtCursor(s);
    		this.focus();
    		return true;
    	}).bind(TextEditor),
        iframe: true
    });
});
{/literal}
</script>
