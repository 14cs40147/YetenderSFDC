<aura:application extends="force:slds">
    <div class="slds-dropdown-trigger slds-dropdown-trigger_click ">
        <button class="slds-button slds-button_icon slds-button_icon-border-filled" aria-haspopup="true" title="Show More">
            
            <span class="slds-assistive-text">Show More</span>
        </button>
        <div class="slds-dropdown slds-dropdown_left">
            <ul class="slds-dropdown__list" role="menu" aria-label="Show More">
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
                <li class="slds-dropdown__item" role="presentation">
                    <a href="javascript:void(0);" role="menuitem" tabindex="-1">
                        <span class="slds-truncate" title="Menu Item Three">Menu Item Three</span>
                    </a>
                </li>
                <li class="slds-has-divider_top-space" role="separator"></li>
                <li class="slds-dropdown__item" role="presentation">
                    <a href="javascript:void(0);" role="menuitem" tabindex="-1">
                        <span class="slds-truncate" title="Menu Item Four">Menu Item Four</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</aura:application>