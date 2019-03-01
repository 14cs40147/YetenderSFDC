<aura:application extends="force:slds">
    <aura:attribute name="selectedMonth" type="String" />
    <aura:attribute name="monthNames" type="object[]" default="[{'month':'January','number':'1'},{'month':'February','number':'2'},{'month':'March','number':'3'},{'month':'April','number':'4'},{'month':'May','number':'5'},{'month':'June','number':'6'},{'month':'July','number':'7'},{'month':'August','number':'8'},{'month':'September','number':'9'},{'month':'October','number':'10'},{'month':'November','number':'11'},{'month':'December','number':'12'}]"/>
    
    <div class="slds-form slds-form-element">
        
        <div class="slds-form-element__control">
            <ui:inputSelect aura:id="months" label="Months" multiple="false" class="slds-select slds-input" change="{!c.selectedMonth}">
                <ui:inputSelectOption text="" label="-SELECT-"/>
                <aura:iteration items="{!v.monthNames}" var="mon">
                    <ui:inputSelectOption text="{!mon.number}" label="{!mon.month}"/>
                </aura:iteration>
            </ui:inputSelect>
        </div>
    </div>
</aura:application>