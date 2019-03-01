<aura:application extends="force:slds" >
    <aura:attribute name="callController" type="boolean" default="false"/>
    <aura:attribute name="activeAccount" type="object" />
    <div class="slds-grid slds-m-around_small" style="padding-top: 0;">
        <div class="slds-col slds-size--9-of-12" > 
            <img src="{!$Resource.LogoSecurEyes}" alt="SecurEyes Logo" style="height: 50px;" />
        </div>
    </div>
    <c:SpinnerCmp callController="{!v.callController}" />
   
    <div class="slds-m-left_xx-large slds-m-right_xx-large">
        <lightning:tabset >
            <lightning:tab label="Accounts" onactive="{!c.activateAccount}">
                
                <div aura:id="AccountListHolder" />
            </lightning:tab>
            
            <lightning:tab label="Contacts" >
                <div aura:id="ContactListHolder" />
            </lightning:tab>
            
            <lightning:tab label="Opportunities" >  
                <div aura:id="OpportunityListHolder" />
            </lightning:tab>
            
        </lightning:tabset>
    </div>
</aura:application>