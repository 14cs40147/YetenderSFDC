({
	callChild : function(component, event, helper) {
		var childComponent= component.find('childCmp');
        childComponent.childMethod('This is Param 1','This is Param 2');
	}
})