<aura:application extends="force:slds">
    <ltng:require styles="/resource/FlexBoxGrid/flexboxgrid-6.3.1/css/flexboxgrid.css" />
    <aura:handler name="init" value="{!this}" action="{!c.doInit}"/>
    <aura:attribute name="activeSection" type="Map" default="{label:'Project',type:'none'}"/>
    <aura:attribute name="path" type="List"  />
    <div class="slds">
        <div class="wizard small  slds-grid_align-center" style="margin-top:1%;">
            <aura:iteration items="{!v.path}" var="key" indexVar="index">
                <a class="{!key.active ? 'current' : ''}"  style="cursor: default;">
                    <div class="badge slds-grid slds-size--12-of-12 slds-text-align_center" data-index="{!index}" style="cursor: pointer;">
                        <div class="slds-size--10-of-12 label" data-index="{!index}" onclick="{!c.activeStep}">
                            <span>
                                {!key.label}
                            </span>
                        </div>  
                        <div class="slds-size--1-of-12" style="cursor: default;"></div>
                        <div class="slds-size--1-of-12 addIcon" style="cursor: pointer;" data-index="{!index}" onclick="{!c.addRecord}">
                            <span  >
                                <lightning:icon iconName="utility:add"  size="x-small"/>
                            </span>
                        </div>
                    </div>
                </a>
            </aura:iteration>        
        </div>
    </div> 
</aura:application>