<aura:application controller="addDeleteController" extends="force:slds">
    
    <aura:handler name="init" value="{!this}" action="{!c.doInit}"/>
    
    <aura:attribute name="contactList" type="Contact[]"/>
    <aura:attribute name="currIndex" type="String" default=""/>
    
    <!--Header Part-->        
    <div class="slds-page-header">
        <h1 class="slds-page-header__title">Create Multiple Contacts, With Add/Delete Rows Dynamically</h1>
        <p class="slds-text-body_small slds-line-height_reset">By sfdcmonkey.com</p>
    </div>
    
    <!--Table Part-->           
    <table class="slds-table slds-table_bordered slds-table_cell-buffer"> 
        <thead>
            <tr class="slds-text-title_caps">
                <th scope="col">
                    <div class="slds-truncate">S.No</div>
                </th>
                <th scope="col">
                    <div class="slds-truncate" title="First Name">First Name</div>
                </th>
                <th scope="col">
                    <div class="slds-truncate" title="Last Name">Last Name</div>
                </th>
                <th scope="col">
                    <div class="slds-truncate" title="Phone">Phone</div>
                </th>
                <th scope="col">
                    <a onclick="{!c.addNewRow}">
                        <lightning:icon iconName="utility:add" class="slds-icon slds-icon_small" size="small" alternativeText="add"/>
                        <span class="slds-assistive-text">Add Icon</span>
                    </a>   
                </th>
            </tr>
        </thead>   
        <tbody>         
            <aura:iteration items="{!v.contactList}" var="item" indexVar="index">
                <c:DynamicRowsCmp ContactInstance="{!item}" index="{!index}" currIndex="{!v.currIndex}" pRemoveItemMethod="{!c.removeDeletedRow}"/>
            </aura:iteration>
        </tbody>
    </table>
    <br/>
    <!--Save Button which is call Save js function on click --> 
    <button class="slds-button slds-button_brand" onclick="{!c.Save}">Save</button>
</aura:application>