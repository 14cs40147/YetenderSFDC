<aura:application extends="force:slds">
    <aura:attribute name="myDateTime" type="DateTime" />
    <ui:inputDateTime label="My DateTime" value="2018-10-10T00:00:00.000Z" displayDatePicker="true" />
    <lightning:button iconName="utility:save" label="Save" onclick="{!c.save}" />
</aura:application>