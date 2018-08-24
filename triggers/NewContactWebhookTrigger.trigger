trigger NewContactWebhookTrigger on Contact (after insert) { 
    String url = 'https://foo.herokuapp.com/new_contact'; 
    String content = Webhook.jsonContent(Trigger.new, Trigger.old); 
    Webhook.callout(url, content); 
}