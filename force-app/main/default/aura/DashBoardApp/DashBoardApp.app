<aura:application extends="force:slds" controller="DashBoardController">
    <ltng:require scripts="/resource/Charts" styles="/resource/FlexBoxGrid/flexboxgrid-6.3.1/css/flexboxgrid.css" afterScriptsLoaded="{!c.afterScriptsLoaded}"/>
    <aura:handler name="init" value="{!this}" action="{!c.doInit}"/>
    <aura:attribute name="ready" type="Boolean" default="false"/>
    
    <div class="slds">
        <div class="slds-page-header" role="banner">
            <div class="slds-media">
                <div class="slds-media__body">
                    <p class="slds-page-header__title slds-truncate slds-align-middle" title="DashBoard Demo">DashBoard Demo</p>
                </div>
            </div>
        </div>
        <div class="slds-grid slds-wrap slds-grid--pull-padded ">
            <div class="slds-p-horizontal--small slds-size--1-of-3 slds-m-top--medium" style="width:100; height:100;">
               <canvas aura:id="radarChart" id="radarCHart123" />
            </div>
        </div>  
    </div>
</aura:application>