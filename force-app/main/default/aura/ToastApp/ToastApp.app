<aura:application extends="force:slds">
	<aura:attribute type="String" name="saveStatus" default="Saved Successfully" />
    <aura:attribute type="String" name="iconName" default="utility:success" />
    <aura:attribute type="String" name="style" default="slds-theme_success" />
    
    <aura:handler name="init" value="{!this}" action="{!c.doInit}" />
    <div class="slds" style="height:4rem;position:fixed;top:36%;left:30%;z-index:4999;">
        <div class="slds-notify_container slds-is-absolute">
            <div class="{!'slds-notify slds-notify_toast '+v.style}" role="alert">
                <span class="slds-assistive-text">success</span>
                <lightning:icon variant="inverse" iconName="{!v.iconName}" />&nbsp;&nbsp;
                <div class="slds-notify__content">
                    <h2 class="slds-text-heading_small">{!v.saveStatus}</h2>
                </div>
            </div>
        </div>
    </div>
</aura:application>