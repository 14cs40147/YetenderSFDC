<aura:application extends="force:slds">
    <div class="slds-align_absolute-center">
        <div  aura:id="menu" class="slds-dropdown-trigger slds-dropdown-trigger_hover" >
            <button class="slds-button slds-button_icon slds-button_icon-border-filled" aria-haspopup="true" title="Show More">
                <lightning:icon iconName="utility:down" size="xx-small" alternativeText="Indicates approval"/>
                
                <span class="slds-assistive-text">Show More</span>
            </button>
            <div class="slds-dropdown slds-dropdown_left">
                <ul class="slds-dropdown__list" role="menu">
                    <li class="slds-dropdown__item" role="presentation">
                        <a href="javascript:void(0);" role="menuitem" tabindex="0">
                            <span class="slds-truncate" title="Menu Item One">Menu Item One</span>
                        </a>
                    </li>
                    <li class="slds-dropdown__item" role="presentation">
                        <a href="javascript:void(0);" role="menuitem" tabindex="-1">
                            <span class="slds-truncate" title="Menu Item Two">Menu Item Two</span>
                        </a>
                    </li>
                    
                </ul>
            </div>
        </div>
    </div>
</aura:application>