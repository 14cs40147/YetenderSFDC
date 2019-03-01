<aura:application extends="force:slds">
    <aura:attribute name="inputs" type="Integer[]" /> 
    <lightning:input type="number" aura:id="num" name="Input Number" label="Enter a number" />
    <lightning:button label="displayInputFields" onclick="{!c.display}" />
    
    <aura:iteration items="{!v.inputs}" var="in" indexVar="index">
        <lightning:input type="number"  label="{!'Some text '+(index+1)}" class="input" value="" />
        
    </aura:iteration>
    <lightning:button label="displayResult" onclick="{!c.displayResult}" />
</aura:application>