public class SoapApiDemo {
    
    public static String callWebservicePartner(){
        String s;
        
        //Creation of partner WSDL calss object
        partnerXSoapSforceCom.Soap mySoap = new partnerXSoapSforceCom.Soap();
        
        partnerXSoapSforceCom.LoginResult loginRes = mySoap.login('kartikey.hk@gmail.com', 'karthik123');//karthik123
        System.debug('SessionId===>'+loginRes);
        System.debug('SessionId===>'+loginRes.serverUrl);
        
        Dom.Document doc = new Dom.Document();
        Dom.Xmlnode envelope = doc.createRootElement('soapenv:Envelope', null, null);
        envelope.setAttribute('xmlns:soapenv', 'http://schemas.xmlsoap.org/soap/envelope/');
        envelope.setAttribute('xmlns:myw', 'http://soap.sforce.com/schemas/class/myWebServiceClass');
        
        Dom.Xmlnode header = envelope.addChildElement('soapenv:Header', null, null);
        Dom.Xmlnode headerChild = header.addChildElement('myw:SessionHeader',null, null);
        headerChild.addChildElement('myw:sessionId', null, null).addTextNode(loginRes.sessionId);
        
        Dom.Xmlnode body = envelope.addChildElement('soapenv:Body', null, null);
        Dom.Xmlnode method = body.addChildElement('myw:calculatorClass',null, null);
        method.addChildElement('myw:num1',null,null).addTextNode('10');
        method.addChildElement('myw:num2',null,null).addTextNode('10');
        method.addChildElement('myw:action',null,null).addTextNode('Add');
        
        HttpRequest req = new HttpRequest();
        req.setMethod('POST');
        req.setHeader('Content-Type', 'text/xml; charset=utf-8');
        req.setHeader('SOAPAction','""');
        req.setEndpoint('https://ap5.salesforce.com/services/Soap/class/myWebServiceClass');//loginRes.serverUrl);
        req.setBodyDocument(doc);
        req.setTimeout(120000);
        system.debug('xml req---->'+doc.toxmlString());
        Http http = new Http();
        HTTPResponse res = http.send(req);
        system.debug(' Response res:'+ res);
        system.debug(' Response:'+ res.getBody());
        if(res.getStatusCode()==200) {
            System.debug(res.getBody());
            Contact con = new Contact(LastName='check now', Description=res.getBody());
            //INSERT con;
            System.debug('==conID==>'+con.Id);
        } 
        
        return null;
        
    }
    
}