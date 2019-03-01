<aura:application extends="force:slds" controller="customLookUpController">
    <!--declare attributes-->
    <aura:attribute name="selectedRecord" type="sObject" default="{}" description="Use,for store SELECTED sObject Record"/>
    <aura:attribute name="listOfSearchRecords" type="List" description="Use,for store the list of search records which returns from apex class"/>
    <aura:attribute name="SearchKeyWord" type="string"/>
    <aura:attribute name="objectAPIName" type="string" default="Account"/>
    <aura:attribute name="Message" type="String" default=""/>
    <div class="slds-form-element" style="padding: 2% 25%;">
        <label class="slds-form-element__label" for="text-input-01">Input Name</label>
        <div class="slds-form-element__control">
            <input id="text-input-01" class="slds-input" type="text" placeholder="Input Name" />
        </div>
        <label class="slds-form-element__label" for="lookup-348">Account </label>
        <div class="slds-form-element__control">
            <div class="slds-input-has-icon slds-input-has-icon--right">
                <lightning:icon class="slds-input__icon slds-show" iconName="utility:search" size="x-small" alternativeText="search"/> 
                <!-- This markup is for when an record is selected -->
                <div aura:id="lookup-pill" class="slds-pill-container slds-hide">
                    <span class="slds-pill" style="width:100%">
                        <span style="padding-left:1.5%;">
                            {!v.selectedRecord.Name}  
                        </span>
                        <button class="slds-button slds-button--icon slds-pill__remove" onclick="{!c.clear}">
                            <lightning:icon class="slds-button__icon" iconName="utility:close" size="x-small" alternativeText="search"/>  
                            <span class="slds-assistive-text">Remove</span>
                        </button>
                    </span>
                </div>
                <div aura:id="lookupField" class="slds-show">
                    <ui:inputText updateOn="keyup" keyup="{!c.keyPressController}" class="slds-lookup__search-input slds-input " value="{!v.SearchKeyWord}" placeholder="Search account by name"/>
                </div>   
            </div>
        </div>
        <div aura:id="searchRes" class="slds-lookup slds-is-close">
            <ul class="slds-listbox slds-listbox_vertical slds-dropdown slds-dropdown_fluid slds-lookup__menu slds" role="listbox">
                <center> {!v.Message}</center>
                <aura:iteration items="{!v.listOfSearchRecords}" var="singleRec">
                    <c:CustomLookupCmp record="{!singleRec}" selectedRecord="{!v.selectedRecord}" handleComponentEvent="{!c.handleComponentEvent}"/>
                </aura:iteration>
            </ul>
        </div>
    </div>
</aura:application>