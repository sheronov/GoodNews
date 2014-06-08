GoodNews.panel.BounceParsingRulesSettings = function(config) {
    config = config || {};

    Ext.applyIf(config,{
        id: 'goodnews-panel-settings-bounceparsingrules'
        ,title: _('goodnews.settings_bounceparsingrules_tab')   
        ,defaults: { 
            border: false 
        }
        ,items:[{
            html: '<p>'+_('goodnews.settings_bounceparsingrules_tab_desc')+'</p>'
            ,border: false
            ,bodyCssClass: 'panel-desc'
        },{
            layout: 'form'
            ,cls: 'main-wrapper'
            ,labelAlign: 'top'
            ,anchor: '100%'
            ,defaults: {
                msgTarget: 'under'
            }
            ,items: []
        }]    
    });
    GoodNews.panel.BounceParsingRulesSettings.superclass.constructor.call(this,config);
};
Ext.extend(GoodNews.panel.BounceParsingRulesSettings,Ext.Panel);
Ext.reg('goodnews-panel-settings-bounceparsingrules', GoodNews.panel.BounceParsingRulesSettings);
