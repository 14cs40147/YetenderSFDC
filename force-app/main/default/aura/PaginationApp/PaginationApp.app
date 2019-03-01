<aura:application extends="force:slds" controller="samplePagerCtrl">
	
  <aura:handler name="init" value="{!this}" action="{!c.doInit}" />
   <aura:attribute name="Accounts" type="Account[]"/>
   <aura:attribute name="page" type="integer" description="using for store page Number"/>
   <aura:attribute name="pages" type="integer" description="using for store All Pages page Number"/>
   <aura:attribute name="total" type="integer" description="total records count store "/>
  <aura:attribute name="callController" type="boolean" default="false"/>
    <c:SpinnerCmp callController="{!v.callController}" />
 <div class="slds-m-around--medium">
      <div class="slds-page-header" role="banner">
         <div class="slds-align--absolute-center">
            <aura:if isTrue="{!v.page &gt; 1}">
               <ui:button press="{!c.previousPage}" label="Previous Page"/>
            </aura:if>
            <aura:if isTrue="{!v.page &lt; v.pages}">
               <ui:button aura:id="nextbtn" press="{!c.nextPage}" label="Next Page"/>
            </aura:if>
         </div>
         <p class="slds-page-header__title slds-truncate">{!v.total} Accounts • page {!v.page} / {!v.pages}</p>
     </div>
      
    <ul class="slds-has-dividers--top">
         <!--iterate account records-->
         <aura:iteration items="{!v.Accounts}" var="account">
            <li class="slds-item">{!account.Name}</li>
         </aura:iteration>
    </ul>
 </div>
</aura:application>