//Rest class which calls ZOHO and fetches all the Projects:
public class ZohoController {
    
    public static void getAllProjects(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://projectsapi.zoho.com/restapi/portal/660521992/projects/?AUTHTOKEN=c8dca26220f43b85ee9d73758852b8e6');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            
          Map<String, Object> projectsMap = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
          
           List<Object> projectsList = (List<Object>) projectsMap.get('projects');
           
            for(Object obj : projectsList){
                Map<String, Object> projMap = (Map<String, Object>) obj;
                System.debug('====name===='+projMap.get('name'));
            }
        }
    }
    public static void getTasksRelatedToProject(String projectId){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        String endPoint = 'https://projectsapi.zoho.com/restapi/portal/660521992/projects/'+projectId+'/tasks/?AUTHTOKEN=c8dca26220f43b85ee9d73758852b8e6';
        request.setEndpoint(endPoint);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            
            Map<String, Object> tasksMap = (Map<String, Object>)JSON.deserializeUntyped(response.getBody());
            List<Object> tasksList = (List<Object>) tasksMap.get('tasks');
            for(Object obj :tasksList){
                 Map<String, Object> taskMap = (Map<String, Object>) obj;
                System.debug('====Task name===='+taskMap.get('name'));
            }
        	    
        }
    }
    
    
}