<aura:application controller="TreeNodeDataProvider" extends="force:slds">
    <aura:attribute name="nodes" type="Object" />
    <aura:handler name="init" value="{!this}" action="{!c.init}" />
    <div style="margin-top:5%;">
        <table class="slds-table slds-table_bordered slds-tree slds-table_tree" role="treegrid" aria-readonly="true">
            <thead>
                <tr class="slds-grid slds-text-title_caps" >
                    <th class="slds-cell-buffer_left slds-col slds-size--5-of-8" scope="col">
                        
                        <div class="slds-truncate" title="Account Name">Compliance Name</div>
                        
                    </th>
                    <th scope="col" class="slds-col slds-size--2-of-8">
                        <div class="slds-truncate" title="Action">Description</div>
                    </th>
                    <th scope="col" class="slds-col slds-size--1-of-8">
                        <div class="slds-truncate" title="Action">Action</div>
                    </th>
                </tr>
            </thead>
            
            <tbody>
               <!-- <aura:iteration items="{!v.nodes}" var="node">
                    <c:TreeNode node="{!node}" />
                </aura:iteration>-->
            </tbody>
        </table>
        <aura:iteration items="{!v.nodes}" var="node">
                    <c:TestTreeNodeCMP node="{!node}" />
                </aura:iteration>
    </div>
</aura:application>