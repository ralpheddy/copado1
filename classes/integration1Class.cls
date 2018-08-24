public with sharing class integration1Class {

    public string vResult {get;set;}
    
    public integration1Class(){
        vResult='---';
    }
    
    public void GetData(){
        vResult='got';
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://oneoh1.herokuapp.com/apex');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            // results = JSON.deserializeUntyped(response.getBody());
            // results.get('animals');
            // System.debug('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
            // String results = JSON.deserializeUntyped(response.getBody());
            // System.debug(JSON.deserializeUntyped(response.getBody());
            // System.debug(response.getBody());
            vResult = response.getBody();
        } else {
            vResult = 'Error: ' + response.getStatusCode(); // System.debug(response.getStatusCode());
        }
    }
    
    
}